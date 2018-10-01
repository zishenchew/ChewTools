//Maya ASCII 2018ff09 scene
//Name: Joint_test6.ma
//Last modified: Fri, Sep 28, 2018 04:40:23 PM
//Codeset: 932
requires maya "2018ff09";
requires "stereoCamera" "10.0";
requires "PVRTexTool_v2014" "1.0.1";
requires "COLLADA" "3.04C PhyreEngine(TM) 3.15.0.0";
requires "AtgMaterials" "ATG SDK: 1.32.0";
requires "clgDangleCurve" "2.0.2";
requires "Boole" "20110503";
requires "TcToonShader3" "0.00";
requires "DF_locator" "1.11 / Expire: 2011.8.31";
requires "TcSceneManager" "1.00";
requires "clgSymbolMaker" "1.5";
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
createNode transform -s -n "persp";
	rename -uid "281FF302-47B9-00F7-6FE8-2DAB654E4F12";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -237.39580999775919 294.75388668310563 500.53612842967891 ;
	setAttr ".r" -type "double3" -20.138352729652794 -29.799999999999635 9.1630597562844528e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "17CA963E-4808-2D28-86BD-59A9AB8844BD";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 619.91070650285019;
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
createNode parentConstraint -n "Character_Head_parentConstraint1" -p "Character_Head";
	rename -uid "AA32585E-46E2-F892-74CB-17938C4B7272";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_HeadW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 8.4374847412109943 -1.8207657603852567e-14 -3.5959754928952345e-09 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Character_Neck_parentConstraint1" -p "Character_Neck";
	rename -uid "69EEB6E7-4007-0AD2-8D16-2888E8BC2A2D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_NeckW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 17.167678833007784 -3.6637359812630166e-14 -2.3072051501257133e-09 ;
	setAttr -k on ".w0";
createNode joint -n "Character_LeftShoulder" -p "Character_Spine2";
	rename -uid "A1C57E09-4C8B-1300-56BF-E88AF3E802C2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
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
createNode parentConstraint -n "Character_LeftHand_parentConstraint1" -p "Character_LeftHand";
	rename -uid "1328AA5B-41FD-906E-AC3B-028A2F6871D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_LeftHandW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "BoneIK_LeftHandW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 25.506295895149037 -3.3929426379586403e-07 2.8686103235031624e-06 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode parentConstraint -n "Character_LeftForeArm_parentConstraint1" -p "Character_LeftForeArm";
	rename -uid "CFC62523-4CD2-61C0-F4A8-40A715C2423E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_LeftForeArmW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "BoneIK_LeftForeArmW1" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -6.2241537154799809e-18 -3.882513038895893e-19 2.3854159992491479e-15 ;
	setAttr ".rst" -type "double3" 24.66094053030449 3.6698024663550655e-07 -8.3924267642032646e-06 ;
	setAttr ".rsrr" -type "double3" -7.7832253576616108e-18 -6.7943978180678115e-19 
		3.9756933399809055e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode parentConstraint -n "Character_LeftArm_parentConstraint1" -p "Character_LeftArm";
	rename -uid "78F8EB1F-40CE-6A29-A362-3CA712328E83";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_LeftArmW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.3914926731402888e-15 7.1438239915684431e-17 -3.0314661807699147e-15 ;
	setAttr ".rst" -type "double3" 11.632612835754273 0.01563892386619159 -0.14856263374235823 ;
	setAttr ".rsrr" -type "double3" -1.3914926731402888e-15 7.1438239915684431e-17 -3.0314661807699147e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Character_LeftShoulder_parentConstraint1" -p "Character_LeftShoulder";
	rename -uid "FA2D6A15-4916-6DC8-5721-E398F8FB626E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_LeftShoulderW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 3.1805546814635168e-15 4.9696166897867449e-16 7.9513867036587919e-16 ;
	setAttr ".rst" -type "double3" 9.8394165039061932 0.052899718284580066 6.390319824716423 ;
	setAttr ".rsrr" -type "double3" 3.1805546814635168e-15 4.9696166897867449e-16 7.9513867036587919e-16 ;
	setAttr -k on ".w0";
createNode joint -n "Character_RightShoulder" -p "Character_Spine2";
	rename -uid "2CFDBB9D-4E34-0735-9ECB-E5AE5A100E3F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
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
createNode parentConstraint -n "Character_RightHand_parentConstraint1" -p "Character_RightHand";
	rename -uid "27F20A1F-42A4-AE93-B451-3FBFF8BB4D5F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_RightHandW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "BoneIK_RightHandW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -25.506314869888058 2.3324117979228731e-06 0.00022680893349047437 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode parentConstraint -n "Character_RightForeArm_parentConstraint1" -p "Character_RightForeArm";
	rename -uid "9B214A72-4DF4-3A41-0393-58A5B570AC33";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_RightForeArmW0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "BoneIK_RightForeArmW1" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 1.248470599069961e-17 9.706282597239742e-19 -4.7708319392558485e-15 ;
	setAttr ".rst" -type "double3" -24.660947188470885 0.00019023497209724738 -0.00028382321013964429 ;
	setAttr ".rsrr" -type "double3" 1.5602849275062875e-17 1.2618167376411668e-18 -6.3611092622148736e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode parentConstraint -n "Character_RightArm_parentConstraint1" -p "Character_RightArm";
	rename -uid "5A923CCD-449D-D284-3908-1090B43F43F3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_RightArmW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 8.0135069122811263e-16 ;
	setAttr ".rst" -type "double3" -11.632776252564284 -0.015646920521770635 0.14910298634961805 ;
	setAttr ".rsrr" -type "double3" 0 0 8.0135069122811263e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Character_RightShoulder_parentConstraint1" -p "Character_RightShoulder";
	rename -uid "E219EDAF-4D90-0A31-A9A0-878EBA4FF8AF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_RightShoulderW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.8390655517577841 0.052903652191142125 -6.3903198237210725 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Character_Spine2_parentConstraint1" -p "Character_Spine2";
	rename -uid "32E3DF85-47FE-47A2-2828-129284F1158A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_Spine2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -7.9513867036587919e-16 ;
	setAttr ".rst" -type "double3" 13.877898184271331 -1.0424039071921243e-06 -4.9770045284567883e-10 ;
	setAttr ".rsrr" -type "double3" 0 0 -7.9513867036587919e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Character_Spine1_parentConstraint1" -p "Character_Spine1";
	rename -uid "AB43E4C8-412F-20E2-AF3F-3D9B81249354";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_Spine1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -1.9878466759146972e-15 ;
	setAttr ".rst" -type "double3" 9.7650275533156901 4.9054160644601552e-07 -2.5634841165986097e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.9878466759146972e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Character_Spine_parentConstraint1" -p "Character_Spine";
	rename -uid "2559E09D-44DC-CCAC-85CB-8A9221A08091";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_SpineW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 2.7407608032226278 1.613182899451942e-15 -9.9733644900604196e-18 ;
	setAttr -k on ".w0";
createNode joint -n "Character_LeftUpLeg" -p "Character_Hips";
	rename -uid "B345C168-4733-4A67-E5AE-1A905154D753";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
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
	setAttr ".jo" -type "double3" 0 0 28.047999999999995 ;
	setAttr ".bps" -type "matrix" -4.4398645825228063e-16 0.00083775794296192529 0.99999964908075289 0
		 1.2283667620245762e-16 0.99999964908075289 -0.00083775794296192529 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.876975104467979 2.0017551963721187 14.012357556783801 1;
	setAttr ".sd" 1;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode parentConstraint -n "Character_LeftToeBase_parentConstraint1" -p "Character_LeftToeBase";
	rename -uid "FE9A9523-45F0-FFBE-3B6E-7FA2EA9DCA1C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_LeftToeBaseW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 9.5416640443905487e-15 ;
	setAttr ".rst" -type "double3" 15.869999549792119 6.8407789655111628e-07 2.2888183577762788e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 9.5416640443905487e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Character_LeftFoot_parentConstraint1" -p "Character_LeftFoot";
	rename -uid "0DAEA049-4CEA-FD76-2B2B-078D87243BE5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_LeftFootW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "BoneIK_LeftFootW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.00029068911874245484 -0.00015456214611830809 -1.9086671997511866e-15 ;
	setAttr ".rst" -type "double3" 49.426418304443345 -2.1679927134310439e-05 -9.5367431933723879e-06 ;
	setAttr ".rsrr" -type "double3" -0.00029068911874607375 -0.00015456214611367106 
		-1.9086740814094274e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode parentConstraint -n "Character_LeftLeg_parentConstraint1" -p "Character_LeftLeg";
	rename -uid "FB2BC1D7-4665-D340-5C4D-4BA21802F7E8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_LeftLegW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "BoneIK_LeftLegW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 0 4.7708320221952752e-15 ;
	setAttr ".rst" -type "double3" 53.269317626953111 -1.408938622304845e-05 2.0980834934292147e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode parentConstraint -n "Character_LeftUpLeg_parentConstraint1" -p "Character_LeftUpLeg";
	rename -uid "F31F774D-4FA4-E22F-89A6-038AD5C8349D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_LeftUpLegW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -0.00032885706610481579 1.557725435531199e-05 -1.6215591219273923e-17 ;
	setAttr ".rst" -type "double3" -3.1739959716796875 1.1746324687255754e-16 6.876999855041503 ;
	setAttr ".rsrr" -type "double3" -0.00032885706610481579 1.557725435531199e-05 -1.6215591219273923e-17 ;
	setAttr -k on ".w0";
createNode joint -n "Character_RightUpLeg" -p "Character_Hips";
	rename -uid "1B78498E-42DE-12CB-DE72-4597E53656A8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
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
	setAttr ".jo" -type "double3" -2.8283512592212725e-05 1.5070841813460866e-05 28.047999999996271 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode parentConstraint -n "Character_RightToeBase_parentConstraint1" -p "Character_RightToeBase";
	rename -uid "FF77D3A4-4D41-E933-813B-66B950D52CC3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_RightToeBaseW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -2.0853341517507245e-20 1.8199279869824505e-20 2.1695232236176107e-27 ;
	setAttr ".rst" -type "double3" -15.869996713866609 -2.9565675738751906e-06 -3.1471250780512605e-05 ;
	setAttr ".rsrr" -type "double3" -2.0853341517507245e-20 1.8199279869824505e-20 2.1695232236176107e-27 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Character_RightFoot_parentConstraint1" -p "Character_RightFoot";
	rename -uid "E4732286-4EFE-4F41-C812-1FBCDB4480E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_RightFootW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "BoneIK_RightFootW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -49.426387786865291 1.915228266369251e-05 -1.9073532220303946e-06 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode parentConstraint -n "Character_RightLeg_parentConstraint1" -p "Character_RightLeg";
	rename -uid "7BD6646E-4A53-8975-D486-D3A13DDD5E6F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_RightLegW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "BoneIK_RightLegW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 6.0841993575227103e-21 2.1108806916035306e-37 -3.975693351829396e-15 ;
	setAttr ".rst" -type "double3" -53.269348144531257 1.1365220403902754e-05 9.5367431311998985e-06 ;
	setAttr ".rsrr" -type "double3" 7.6008060133414168e-21 -9.4787915988668852e-23 -6.361109362927032e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1" 0;
createNode parentConstraint -n "Character_RightUpLeg_parentConstraint1" -p "Character_RightUpLeg";
	rename -uid "76214D05-421F-D178-BAC9-5A925B64D7FC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_RightUpLegW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.6079504439577934e-48 -1.5448672043175555e-31 -1.1927080055488188e-15 ;
	setAttr ".rst" -type "double3" -3.1739959716797017 -1.4192888351016627e-15 -6.8769998550415057 ;
	setAttr ".rsrr" -type "double3" 1.6079504439577934e-48 -1.5448672043175555e-31 -1.1927080055488188e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "Character_Hips_parentConstraint1" -p "Character_Hips";
	rename -uid "AF5C8A8C-4EEB-215D-01D0-81A8B0A03BBB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "BoneFK_HipsW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -7.0476868156526496e-16 115.32199859619139 1.4095376807678709e-15 ;
	setAttr -k on ".w0";
createNode joint -n "BoneFK_Hips";
	rename -uid "99006457-476F-5C68-91A2-B69B2F8275F2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
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
createNode parentConstraint -n "BoneFK_Head_parentConstraint1" -p "BoneFK_Head";
	rename -uid "7E13AD82-4115-672C-81E8-AFB69DBC171B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_HeadW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 -1.4988010832439613e-15 
		0 ;
	setAttr ".rst" -type "double3" 8.4374847412109943 -1.6209256159527285e-14 -3.5959754928952341e-09 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_Neck_parentConstraint1" -p "BoneFK_Neck";
	rename -uid "8D019239-46EE-B284-38AB-668CA2D55422";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_NeckW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -9.4368957093138306e-16 -1.0339757656912846e-25 ;
	setAttr ".rst" -type "double3" 17.167678833007756 -3.4861002973229915e-14 -2.3072051501257133e-09 ;
	setAttr -k on ".w0";
createNode joint -n "BoneFK_LeftShoulder" -p "BoneFK_Spine2";
	rename -uid "C75B7C59-4BB8-8A83-E6CD-3A90395874D3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
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
createNode parentConstraint -n "BoneFK_LeftHand_parentConstraint1" -p "BoneFK_LeftHand";
	rename -uid "E2E250F9-427A-4D0D-A99D-318103DA0AA1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Hand_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -8.8817841970012523e-16 
		1.4210854715202004e-14 ;
	setAttr ".rst" -type "double3" 25.506295895149023 -3.3929425846679351e-07 2.8686103235031624e-06 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_LeftForeArm_parentConstraint1" -p "BoneFK_LeftForeArm";
	rename -uid "8FD4F996-4E4C-7BAE-47DD-0AAEE91C2303";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_ForeArm_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -1.3322676295501878e-15 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -6.955910360485886e-15 -2.1577824516991847e-16 
		-2.0111582476157212e-15 ;
	setAttr ".lr" -type "double3" -3.0115258364592099e-15 3.9887968333356694e-15 -1.5898632241752936e-15 ;
	setAttr ".rst" -type "double3" 24.660940530304487 3.6698024930004181e-07 -8.3924268210466835e-06 ;
	setAttr ".rsrr" -type "double3" 6.9539812368196828e-15 2.1577066213663921e-16 2.3854378360152939e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_LeftArm_parentConstraint1" -p "BoneFK_LeftArm";
	rename -uid "B5035534-4D3D-7702-71AA-8CBBD02D51B8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_UpperArm_LeftW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6645352591003757e-15 -1.4988010832439613e-15 
		1.0658141036401503e-14 ;
	setAttr ".tg[0].tor" -type "double3" 1.9878466759146987e-14 -3.1805546814635168e-15 
		-2.4848083448933726e-15 ;
	setAttr ".lr" -type "double3" -3.1209192811860758e-14 1.7887514072801161e-14 -8.1128992460768652e-15 ;
	setAttr ".rst" -type "double3" 11.632612835754259 0.015638923866194254 -0.14856263374241507 ;
	setAttr ".rsrr" -type "double3" -1.9480897423964044e-14 1.2517222037400372e-15 4.5347752294304045e-15 ;
	setAttr -k on ".w0";
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
	setAttr ".r" -type "double3" -1.4006894641899333e-14 -8.6240362436322863e-16 3.306633076720813e-22 ;
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
createNode ikEffector -n "effector2" -p "BoneIK_LeftForeArm";
	rename -uid "B3787428-4A96-2FD6-9230-F2B8A35A2016";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "BoneFK_LeftShoulder_parentConstraint1" -p "BoneFK_LeftShoulder";
	rename -uid "200B0B74-459B-3A20-CFA2-638DC92E9A75";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Shoulder_LeftW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -1.4988010832439613e-15 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.3914926731402889e-14 9.5416640443905503e-15 
		-4.7708320221952752e-15 ;
	setAttr ".lr" -type "double3" 5.5659706925611543e-15 1.3020395727241272e-14 -8.7465253740246703e-15 ;
	setAttr ".rst" -type "double3" 9.8394165039061932 0.052899718284582731 6.3903198247164248 ;
	setAttr ".rsrr" -type "double3" 1.113194138512231e-14 1.3914926731402882e-15 4.7708320221952759e-15 ;
	setAttr -k on ".w0";
createNode joint -n "BoneFK_RightShoulder" -p "BoneFK_Spine2";
	rename -uid "3D895055-4C10-823E-4791-509646B629B9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
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
createNode parentConstraint -n "BoneFK_RightHand_parentConstraint1" -p "BoneFK_RightHand";
	rename -uid "EC9E38CF-4B53-4487-6377-A2AA38B1C876";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Hand_RightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 6.6613381477509392e-16 
		0 ;
	setAttr ".rst" -type "double3" -25.506314869888044 2.3324117899292673e-06 0.00022680893349047437 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_RightForeArm_parentConstraint1" -p "BoneFK_RightForeArm";
	rename -uid "5D986A2E-4AFD-B906-6920-53889CF17808";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_ForeArm_RightW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -6.6613381477509392e-16 
		3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.0015131218116117e-14 5.8504618354862502e-16 
		-4.1049322439448731e-15 ;
	setAttr ".lr" -type "double3" 2.033981243742041e-14 -3.1866696394997776e-15 7.9485501752728263e-16 ;
	setAttr ".rst" -type "double3" -24.6609471884709 0.00019023497209724738 -0.00028382321013964429 ;
	setAttr ".rsrr" -type "double3" 2.0012607584640836e-14 -5.8470646365772244e-16 3.9756789440661655e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_RightArm_parentConstraint1" -p "BoneFK_RightArm";
	rename -uid "5386F883-44A0-CFFF-F82C-3BBA18DF47BA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_UpperArm_RightW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.4408920985006262e-16 -4.9960036108132044e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317584e-15 0 -1.8387581752210955e-15 ;
	setAttr ".lr" -type "double3" -4.5322904210855102e-14 -3.2227964233267027e-14 5.5597586716989331e-15 ;
	setAttr ".rst" -type "double3" -11.63277625256427 -0.015646920521772856 0.14910298634961805 ;
	setAttr ".rsrr" -type "double3" 1.987846675914698e-15 -1.2424041724466862e-16 5.0317368984090793e-16 ;
	setAttr -k on ".w0";
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
	setAttr ".r" -type "double3" 8.5216037484509166e-07 5.2461019235861471e-08 -1.0365871446265016e-12 ;
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
	setAttr ".r" -type "double3" 8.5430963710364653e-19 -9.2009994443321985e-20 9.6073335735101347e-14 ;
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
createNode ikEffector -n "effector4" -p "BoneIK_RightForeArm";
	rename -uid "7B08CDBD-4AD3-CD55-379A-428975C92563";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "BoneFK_RightShoulder_parentConstraint1" -p "BoneFK_RightShoulder";
	rename -uid "A033A158-4E8D-9605-3C30-22BC7717AA52";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Shoulder_RightW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -6.106226635438361e-16 
		-7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.8227422797988711e-14 -3.1805546814635168e-15 
		0 ;
	setAttr ".lr" -type "double3" -7.9513867036587935e-14 -3.816665617756222e-14 -1.4312496066585799e-14 ;
	setAttr ".rst" -type "double3" 9.8390655517577841 0.052903652191143458 -6.3903198237210699 ;
	setAttr ".rsrr" -type "double3" -2.7034714792439894e-14 1.8759101766713177e-31 7.9513867036587919e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_Spine2_parentConstraint1" -p "BoneFK_Spine2";
	rename -uid "D9B896B2-4F38-E0F9-CC82-4197356429E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Spine3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 -1.609823385706477e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 9.1440947092076084e-14 ;
	setAttr ".lr" -type "double3" 0 0 -9.2236085762442002e-14 ;
	setAttr ".rst" -type "double3" 13.877898184271359 -1.0424039018630538e-06 -4.9770045284567883e-10 ;
	setAttr ".rsrr" -type "double3" 0 0 -9.3031224432807882e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_Spine1_parentConstraint1" -p "BoneFK_Spine1";
	rename -uid "2B85903C-470C-7FCC-F7F1-7895F173D983";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Spine2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -1.7763568394002505e-15 
		-4.7331654313260708e-30 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.5781240166464568e-15 ;
	setAttr ".lr" -type "double3" 0 0 -3.180554681463516e-15 ;
	setAttr ".rst" -type "double3" 9.7650275533157611 4.9054160911055078e-07 -2.5634841165985971e-15 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.180554681463516e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_Spine_parentConstraint1" -p "BoneFK_Spine";
	rename -uid "6D99E28E-4C7B-7156-6969-3FBDFB752C3E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Spine1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -1.2212453270876722e-15 
		-1.5777218104420236e-30 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.3914926731402889e-14 ;
	setAttr ".lr" -type "double3" 0 0 1.3914926731402885e-14 ;
	setAttr ".rst" -type "double3" 2.7407608032226278 1.6131828994519412e-15 -9.9733644900541088e-18 ;
	setAttr ".rsrr" -type "double3" 0 0 1.3914926731402885e-14 ;
	setAttr -k on ".w0";
createNode joint -n "BoneFK_LeftUpLeg" -p "BoneFK_Hips";
	rename -uid "C8E97CC6-458F-E74E-B3F1-C598C9205C82";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
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
	setAttr ".jo" -type "double3" 0 0 28.048000000000002 ;
	setAttr ".bps" -type "matrix" -4.4398645825228063e-16 0.00083775794296192529 0.99999964908075289 0
		 1.2283667620245762e-16 0.99999964908075289 -0.00083775794296192529 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.876975104467979 2.0017551963721187 14.012357556783801 1;
	setAttr ".sd" 1;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode parentConstraint -n "BoneFK_LeftToeBase_parentConstraint1" -p "BoneFK_LeftToeBase";
	rename -uid "FB0A6807-44B5-6884-18E5-24809D660298";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Toe_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 -1.1102230246251565e-16 
		-2.2204460492503131e-16 ;
	setAttr ".lr" -type "double3" 0 0 9.5416640443905519e-15 ;
	setAttr ".rst" -type "double3" 15.869999549792121 6.8407788944568892e-07 2.2888183580427324e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_LeftFoot_parentConstraint1" -p "BoneFK_LeftFoot";
	rename -uid "4858511F-4D38-AE90-0D23-20AE0CBD14F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Foot_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.7715611723760958e-16 2.6645352591003757e-15 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -9.1991293315339599e-16 3.4327481690462991e-15 
		-2.7988176317612635e-14 ;
	setAttr ".lr" -type "double3" -0.00029068911874245484 -0.00015456214611830806 -1.9086671997974698e-15 ;
	setAttr ".rst" -type "double3" 49.426418304443345 -2.1679927144191424e-05 -9.5367431924842094e-06 ;
	setAttr ".rsrr" -type "double3" -0.00029068911874877276 -0.00015456214611246673 
		1.7174654592830541e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_LeftLeg_parentConstraint1" -p "BoneFK_LeftLeg";
	rename -uid "622CDD20-4338-3334-DDE4-38B742FA06E2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Calf_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 -4.9960036108132044e-16 
		2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.1927080055488187e-14 ;
	setAttr ".lr" -type "double3" 0 0 -3.975693351829396e-15 ;
	setAttr ".rst" -type "double3" 53.269317626953125 -1.4089386225712985e-05 2.0980834934292147e-05 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.1927080055488189e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_LeftUpLeg_parentConstraint1" -p "BoneFK_LeftUpLeg";
	rename -uid "83298899-409F-3075-00F4-B58E05FAD9FE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Thigh_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".tg[0].tor" -type "double3" -1.7545755862552358e-14 -1.6070297778519318e-15 
		3.2423493972224297e-17 ;
	setAttr ".lr" -type "double3" -0.00032885706610481579 1.557725435531199e-05 -1.6215591219273923e-17 ;
	setAttr ".rst" -type "double3" -3.1739959716796875 1.1746324687255556e-16 6.8769998550415039 ;
	setAttr ".rsrr" -type "double3" -0.00032885706610481579 1.5577254355311983e-05 -1.6215591201917739e-17 ;
	setAttr -k on ".w0";
createNode joint -n "BoneFK_RightUpLeg" -p "BoneFK_Hips";
	rename -uid "3775A88B-4BAA-5C65-6A42-0E97AD387D84";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
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
	setAttr ".jo" -type "double3" -2.8283512592212742e-05 1.5070841813460885e-05 28.047999999996271 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".fbxID" 5;
createNode parentConstraint -n "BoneFK_RightToeBase_parentConstraint1" -p "BoneFK_RightToeBase";
	rename -uid "A6D381D5-4351-2CAE-7585-67AB42D39402";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Toe_RightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.3322676295501878e-15 -1.1657341758564144e-15 
		2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" 5.5726188894975998e-14 1.0218243506044459e-14 
		-9.2823854165946868e-15 ;
	setAttr ".lr" -type "double3" -5.5726209369165864e-14 -1.0218232889797866e-14 3.1805448304027097e-15 ;
	setAttr ".rst" -type "double3" -15.869996713866616 -2.9565675863096885e-06 -3.1471250779624427e-05 ;
	setAttr ".rsrr" -type "double3" -5.5726197994615945e-14 -1.0218241989437798e-14 
		9.5416541933304666e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_RightFoot_parentConstraint1" -p "BoneFK_RightFoot";
	rename -uid "D62EAA52-4A9A-8C98-7E29-77993411E10E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Foot_RightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 4.6629367034256575e-15 -6.2172489379008766e-15 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -9.6537321766156183e-15 3.759586003015166e-15 
		-2.514093162603448e-14 ;
	setAttr ".lr" -type "double3" 9.6537306600089637e-15 -3.7596011690817213e-15 -1.2722216868593939e-14 ;
	setAttr ".rst" -type "double3" -49.426387786865263 1.9152282655032771e-05 -1.9073532211422162e-06 ;
	setAttr ".rsrr" -type "double3" 9.6537382430422414e-15 -3.7595905528351337e-15 1.9083329946040869e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_RightLeg_parentConstraint1" -p "BoneFK_RightLeg";
	rename -uid "62433EF6-4168-1185-DB4F-19B3ADF2D06F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Calf_RightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.7755575615628914e-16 0 ;
	setAttr ".tg[0].tor" -type "double3" 1.2251471602921218e-14 4.713719080022958e-15 
		-1.5297266748762975e-14 ;
	setAttr ".lr" -type "double3" -1.8125908922074545e-14 -4.114906942223213e-15 1.272221900185462e-14 ;
	setAttr ".rst" -type "double3" -53.26934814453125 1.136522040035004e-05 9.5367431294235416e-06 ;
	setAttr ".rsrr" -type "double3" -1.2251472775921679e-14 -4.7137190800229564e-15 
		1.6697912493483571e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "BoneFK_RightUpLeg_parentConstraint1" -p "BoneFK_RightUpLeg";
	rename -uid "46D79B21-4E89-A813-0204-7EA361AF3E6D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_Thigh_RightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -4.4408920985006262e-16 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 1.4033418597069752e-14 -7.9450313364902864e-31 
		6.361109362927032e-15 ;
	setAttr ".lr" -type "double3" -1.4033418597069752e-14 -8.0562989192032697e-31 -6.7586786981099735e-15 ;
	setAttr ".rst" -type "double3" -3.1739959716796875 -1.4192888351016647e-15 -6.876999855041503 ;
	setAttr ".rsrr" -type "double3" -1.4033418597069752e-14 -7.3487215905298368e-31 
		-6.3611093629270335e-15 ;
	setAttr -k on ".w0";
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
	setAttr ".r" -type "double3" -0.00032885706612236155 1.5577254353705185e-05 -8.1436136950798681e-11 ;
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
	setAttr ".r" -type "double3" -2.9880908369577149e-20 9.2406722253466528e-19 -1.5486694782140812e-13 ;
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
createNode ikEffector -n "effector1" -p "BoneIK_LeftLeg";
	rename -uid "C468C0E9-43AE-E4F9-B7F4-E787CE9122DD";
	setAttr ".v" no;
	setAttr ".hd" yes;
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
	setAttr ".r" -type "double3" 8.5281746042756204e-07 -4.0396066471209624e-08 -7.3436316680009644e-14 ;
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
createNode ikEffector -n "effector3" -p "BoneIK_RightLeg";
	rename -uid "1E36BAD6-41CA-AC9B-BF0C-2CB6E98B4842";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "BoneFK_Hips_parentConstraint1" -p "BoneFK_Hips";
	rename -uid "B47D26D0-48DF-DF79-8147-08AFFD4EB222";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "fk_HipW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 -1.7763568394002503e-15 
		0 ;
	setAttr ".rst" -type "double3" -7.0476868156526496e-16 115.32199859619139 1.4095376807678709e-15 ;
	setAttr -k on ".w0";
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
createNode transform -n "CharaBob_Master_Controller";
	rename -uid "11DC699A-46DC-349E-CD49-C3AC9A3BBC9C";
	addAttr -ci true -sn "CharaBob_PickerData" -ln "CharaBob_PickerData" -dt "string";
	setAttr -k on ".CharaBob_PickerData" -type "string" "fk_UpperArm_Left 10 10 300 100 1,0,0\nfk_ForeArm_Left 10 10 200 100 1,0,0\nfk_Hand_Left 10 10 100 100 1,0,0\npv_Elbow_Left 10 10 300 250 0,1,0\nik_Hand_Left 10 10 150 250 0,1,0";
createNode nurbsCurve -n "CharaBob_Master_ControllerShape" -p "CharaBob_Master_Controller";
	rename -uid "B2299F1A-4A3C-4AA0-0D35-D792D740597F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "ik_Foot_Left_grp";
	rename -uid "724D85DA-491F-E420-A69C-5395941044B1";
	setAttr ".t" -type "double3" 6.8769884109497132 9.5762306847243721 -0.011345246155716637 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode transform -n "ik_Foot_Left" -p "ik_Foot_Left_grp";
	rename -uid "88170EE8-487F-15D2-05C5-2EA4311E0CA2";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 0 0 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-16 0 0 ;
createNode nurbsCurve -n "curveShape1" -p "ik_Foot_Left";
	rename -uid "7D7D8236-4C1E-AAD8-2CA1-66B9416AF9AD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 0.5 0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		0.5 -0.5 0.5
		0.5 -0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		;
createNode transform -n "ik_Hand_Right_grp";
	rename -uid "A979A055-48CA-8BB0-C449-B8B75ED47F80";
	setAttr ".t" -type "double3" -67.298599243164063 155.03700256347651 -4.6597170829772958 ;
	setAttr ".r" -type "double3" -90.00003349782753 2.4023288094416007 0.00050993747072254451 ;
	setAttr ".s" -type "double3" 5 5 5 ;
createNode transform -n "ik_Hand_Right" -p "ik_Hand_Right_grp";
	rename -uid "E771DBC2-42B3-7ABD-AA05-B7B1A5DC61A5";
createNode nurbsCurve -n "curveShape2" -p "ik_Hand_Right";
	rename -uid "7AE0F937-45FF-A9EF-F45A-C8B7D5BEB9AB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 0.5 0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		0.5 -0.5 0.5
		0.5 -0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		;
createNode transform -n "pv_Knee_Left";
	rename -uid "1CD09348-47C4-3A7C-88AB-A48927D65196";
	setAttr ".t" -type "double3" 6.8769933566882138 58.938066054915033 2.5145279281232877 ;
	setAttr ".r" -type "double3" 89.999670343474364 2.9292775351502773 -90.000016810110992 ;
	setAttr ".s" -type "double3" 5 5 5 ;
createNode locator -n "pv_Knee_LeftShape" -p "pv_Knee_Left";
	rename -uid "B48510F7-46B1-0CEB-1D18-DAAB3CFE95BD";
	setAttr -k off ".v";
createNode transform -n "pv_Knee_Right";
	rename -uid "4EE03801-4811-A43D-B298-17AD4C5B5554";
	setAttr ".t" -type "double3" -6.8770093917846591 58.938035699946667 2.5145320896935179 ;
	setAttr ".r" -type "double3" -89.999986336997111 -2.9292775352430485 89.999998656946985 ;
	setAttr ".s" -type "double3" 5 5 5 ;
createNode locator -n "pv_Knee_RightShape" -p "pv_Knee_Right";
	rename -uid "A2C23022-419E-59BD-4D4A-738463DD9668";
	setAttr -k off ".v";
createNode transform -n "fk_Hip_grp";
	rename -uid "E32D5505-438B-DDA5-65B8-B08A0A7AB199";
	setAttr ".t" -type "double3" -7.0476868156525707e-16 115.32199859619141 1.4095376807678694e-15 ;
	setAttr ".r" -type "double3" 89.999999999999972 0 89.999999999999972 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.7763568394002505e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.7763568394002505e-15 0 ;
createNode transform -n "fk_Hip" -p "fk_Hip_grp";
	rename -uid "72FF3897-4DF8-DD03-D47F-09806CDCCA3C";
createNode nurbsCurve -n "fk_HipShape" -p "fk_Hip";
	rename -uid "E9BCC367-49FE-0F0F-4BDD-35A3BBDA0607";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Thigh_Left_grp" -p "fk_Hip";
	rename -uid "C5F3E07B-4CF9-E719-C978-28B6AF9D7631";
	setAttr ".t" -type "double3" -0.63479919433593679 -1.0874729448130453e-15 1.3753999710083009 ;
	setAttr ".r" -type "double3" 179.99967114293389 -1.557725435531199e-05 177.29438616493832 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".rpt" -type "double3" -3.1444394834400331e-17 7.4256956240001162e-19 -3.8233673374422063e-21 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
createNode transform -n "fk_Thigh_Left" -p "fk_Thigh_Left_grp";
	rename -uid "A3205B34-47B1-AFAA-5F70-5486E9FF4564";
createNode nurbsCurve -n "fk_Thigh_LeftShape" -p "fk_Thigh_Left";
	rename -uid "5A9C7CFE-41E5-07F1-52E5-838BE8D3A3D5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Calf_Left_grp" -p "fk_Thigh_Left";
	rename -uid "32F24112-4D8C-93E1-4890-66B048BA3942";
	setAttr ".t" -type "double3" 10.653863525390619 -2.8178772442100097e-06 4.1961669869916562e-06 ;
	setAttr ".r" -type "double3" 0 0 -5.6348913703049499 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".rpt" -type "double3" -6.5406976203958122e-17 3.2188981751774814e-18 0 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
createNode transform -n "fk_Calf_Left" -p "fk_Calf_Left_grp";
	rename -uid "B56C10B0-474C-A7A6-ED43-EFB86B62FFDC";
createNode nurbsCurve -n "fk_Calf_LeftShape" -p "fk_Calf_Left";
	rename -uid "03706355-4A0A-69D9-DC52-A2A98EDD0D92";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Foot_Left_grp" -p "fk_Calf_Left";
	rename -uid "E2083A7F-4111-F85D-C513-BAB630435DDA";
	setAttr ".t" -type "double3" 9.8852836608886676 -4.3359854275393239e-06 -1.9073486388077043e-06 ;
	setAttr ".r" -type "double3" -0.00029068911874245462 -0.00015456214611830803 62.000000000000014 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -5.5511151231257817e-16 0 ;
	setAttr ".rpt" -type "double3" 4.9013437355479483e-16 2.9450244310339902e-16 2.8163483887990543e-21 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "fk_Foot_Left" -p "fk_Foot_Left_grp";
	rename -uid "8FB43B1D-4283-B1E2-8ADA-60BDC3E10DB9";
createNode nurbsCurve -n "fk_Foot_LeftShape" -p "fk_Foot_Left";
	rename -uid "E6721D55-4149-F0D6-5292-81B0C9D08F60";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Toe_Left_grp" -p "fk_Foot_Left";
	rename -uid "44E3EC89-40D8-37E8-BD18-A88C86EA8E78";
	setAttr ".t" -type "double3" 3.1739999099584266 1.3681556798594841e-07 4.5776367161298737e-06 ;
	setAttr ".r" -type "double3" 0 0 28.048000000000002 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754711e-16 0 ;
	setAttr ".rpt" -type "double3" 1.5661175503059577e-16 3.9117382837937551e-17 0 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 -1.4791141972893978e-31 0 ;
createNode transform -n "fk_Toe_Left" -p "fk_Toe_Left_grp";
	rename -uid "89CA9FFD-4C32-F279-09B0-9C8A61BB4B45";
createNode nurbsCurve -n "fk_Toe_LeftShape" -p "fk_Toe_Left";
	rename -uid "96EB0BBA-4B03-23B7-A052-9AAAC91E9D8F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Thigh_Right_grp" -p "fk_Hip";
	rename -uid "4C4CD8D9-447B-13A3-6A79-B0B563EADD61";
	setAttr ".t" -type "double3" -0.63479919433593679 -2.6715122090170816e-15 -1.3753999710083007 ;
	setAttr ".r" -type "double3" 180 -2.2069531490250793e-32 -2.7056138350617287 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".rpt" -type "double3" 3.1444394833880558e-17 1.3315250599987969e-15 -8.1577864406813414e-32 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
createNode transform -n "fk_Thigh_Right" -p "fk_Thigh_Right_grp";
	rename -uid "B4E9BBFC-47FD-F2D8-960D-A39E39510B79";
createNode nurbsCurve -n "fk_Thigh_RightShape" -p "fk_Thigh_Right";
	rename -uid "17EE5B9A-48A7-287A-4722-6D8F50BCC25D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Calf_Right_grp" -p "fk_Thigh_Right";
	rename -uid "5A10771A-46AC-A0FA-D9E1-8F88F9FC75A6";
	setAttr ".t" -type "double3" -10.653869628906254 2.273044078959785e-06 1.9073486261511619e-06 ;
	setAttr ".r" -type "double3" 1.3594368525319892e-05 1.3412981286673707e-06 -5.6348913703047812 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".rpt" -type "double3" -6.5406976203958048e-17 3.2188981751963143e-18 -1.5805123243260956e-22 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
createNode transform -n "fk_Calf_Right" -p "fk_Calf_Right_grp";
	rename -uid "85E08AA4-479F-09CE-CA70-C4A3FBFAC2F6";
createNode nurbsCurve -n "fk_Calf_RightShape" -p "fk_Calf_Right";
	rename -uid "E44855B6-417E-374B-85DD-8FABD4D1C2FA";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Foot_Right_grp" -p "fk_Calf_Right";
	rename -uid "5FACA470-42FE-504F-7F41-678C27D61726";
	setAttr ".t" -type "double3" -9.8852775573730547 3.8304565313784789e-06 -3.8147064462812352e-07 ;
	setAttr ".r" -type "double3" 2.5638066334062921e-05 1.2061398101059239e-05 61.999999999999282 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -5.5511151231257837e-16 0 ;
	setAttr ".rpt" -type "double3" 4.9013437356459288e-16 2.9450244310672698e-16 -2.4839501087896889e-22 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-16 0 ;
	setAttr ".spt" -type "double3" 0 -9.8607613152626498e-32 0 ;
createNode transform -n "fk_Foot_Right" -p "fk_Foot_Right_grp";
	rename -uid "ADF7B87F-4638-BB8B-72F0-1E92F27020D1";
createNode nurbsCurve -n "fk_Foot_RightShape" -p "fk_Foot_Right";
	rename -uid "1CF38F1D-491B-1242-2B32-678AF68A1D53";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Toe_Right_grp" -p "fk_Foot_Right";
	rename -uid "4E4AC2C9-46A7-8437-1441-DD9F11E1A115";
	setAttr ".t" -type "double3" -3.1739993427733237 -5.9131351592967007e-07 -6.2942501561913389e-06 ;
	setAttr ".r" -type "double3" -2.8283512654691088e-05 1.5070841811099992e-05 28.047999999996271 ;
	setAttr ".s" -type "double3" 1 0.99999999999999967 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -3.3306690738754681e-16 0 ;
	setAttr ".rpt" -type "double3" 1.5661175503059565e-16 3.9117382837983348e-17 1.6441528800219683e-22 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.4791141972893967e-31 0 ;
createNode transform -n "fk_Toe_Right" -p "fk_Toe_Right_grp";
	rename -uid "3E54058D-49E6-7E50-3906-718DD85A7CF1";
createNode nurbsCurve -n "fk_Toe_RightShape" -p "fk_Toe_Right";
	rename -uid "CE1A206B-4C38-6563-706B-109A374A2F4C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Spine1_grp" -p "fk_Hip";
	rename -uid "FA280501-479B-75C4-FF3A-50B0FB4A2C0D";
	setAttr ".t" -type "double3" 0.54815216064453409 -4.8119472071495506e-16 -1.9946728980105062e-18 ;
	setAttr ".r" -type "double3" 0 0 -1.9999999999999332 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-15 0 ;
	setAttr ".rpt" -type "double3" -3.874622478694501e-17 6.7631786937913528e-19 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-15 0 ;
createNode transform -n "fk_Spine1" -p "fk_Spine1_grp";
	rename -uid "3F631815-4E5A-36F5-564F-2E82D84C2834";
createNode nurbsCurve -n "fk_Spine1Shape" -p "fk_Spine1";
	rename -uid "583E1068-41AF-ED79-A07A-57B88BCDE73A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Spine2_grp" -p "fk_Spine1";
	rename -uid "6D4DE920-49EB-9013-0ABB-80BBE747391E";
	setAttr ".t" -type "double3" 1.953005510663143 9.8108321355816486e-08 -5.1269682331972036e-16 ;
	setAttr ".r" -type "double3" 0 0 -2.9999999999999756 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-15 0 ;
	setAttr ".rpt" -type "double3" -5.8104583636690458e-17 1.5215220699209277e-18 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-15 0 ;
createNode transform -n "fk_Spine2" -p "fk_Spine2_grp";
	rename -uid "178B71D9-4378-1D9D-C20F-1FBF02D33985";
createNode nurbsCurve -n "fk_Spine2Shape" -p "fk_Spine2";
	rename -uid "DDDB3C4F-4090-2A3A-B7DA-2895BD0E45AB";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Spine3_grp" -p "fk_Spine2";
	rename -uid "D7FCAA9E-4ED4-6425-402C-08A5052361B0";
	setAttr ".t" -type "double3" 2.775579636854264 -2.0848078063906428e-07 -9.9540090569135791e-11 ;
	setAttr ".r" -type "double3" 0 0 4.9999999999999094 ;
	setAttr ".s" -type "double3" 1 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-15 0 ;
	setAttr ".rpt" -type "double3" 9.6762312326755332e-17 4.2247337941940113e-18 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-15 0 ;
createNode transform -n "fk_Spine3" -p "fk_Spine3_grp";
	rename -uid "A1E4A07B-4B3C-3309-95F7-F18D574A01B7";
createNode nurbsCurve -n "fk_Spine3Shape" -p "fk_Spine3";
	rename -uid "5491626B-43C1-9D54-29CA-EB912AB8DD0A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Neck_grp" -p "fk_Spine3";
	rename -uid "F12499CF-42F1-89A9-4432-09A6B136A3B9";
	setAttr ".t" -type "double3" 3.4335357666015547 -1.8318679906315083e-15 -4.6144103002514262e-10 ;
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-16 0 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-16 0 ;
createNode transform -n "fk_Neck" -p "fk_Neck_grp";
	rename -uid "CBA0E12A-4DA4-361A-2DB3-E79F2B02F2F0";
createNode nurbsCurve -n "fk_NeckShape" -p "fk_Neck";
	rename -uid "E6D191AA-4F9B-8201-A931-6ABDE5004A14";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Head_grp" -p "fk_Neck";
	rename -uid "FAABAF2A-41E9-60DC-20B6-34A915540E44";
	setAttr ".t" -type "double3" 1.6874969482421882 1.1102230246251565e-16 -7.1919509857904707e-10 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-15 0 ;
	setAttr ".sp" -type "double3" 0 -1.1102230246251565e-15 0 ;
createNode transform -n "fk_Head" -p "fk_Head_grp";
	rename -uid "A3AC9113-40A2-5E2E-1808-F585A862AE6D";
createNode nurbsCurve -n "fk_HeadShape" -p "fk_Head";
	rename -uid "8044A910-4063-408F-166A-6B88CFED9DD8";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Shoulder_Right_grp" -p "fk_Spine3";
	rename -uid "76A90175-48ED-671B-AAD0-C7955CA6B90B";
	setAttr ".t" -type "double3" 1.9678131103515604 0.010580730438230102 -1.2780639647442136 ;
	setAttr ".r" -type "double3" 35.117237161758574 -69.279601633018572 145.903881503436 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1 ;
	setAttr ".rp" -type "double3" 0 -8.8817841970012543e-16 0 ;
	setAttr ".rpt" -type "double3" 1.1538521377617877e-17 1.7576898498662033e-15 -1.8076957862420403e-16 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".spt" -type "double3" 0 -1.9721522630525304e-31 0 ;
createNode transform -n "fk_Shoulder_Right" -p "fk_Shoulder_Right_grp";
	rename -uid "7F6AA446-4D4B-DC80-2C80-A393D10353CF";
createNode nurbsCurve -n "fk_Shoulder_RightShape" -p "fk_Shoulder_Right";
	rename -uid "7561BEE2-4F44-5092-0104-48A962BA6E40";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_UpperArm_Right_grp" -p "fk_Shoulder_Right";
	rename -uid "7E52AD1A-4C3B-4FC8-32DC-F38224415921";
	setAttr ".t" -type "double3" -2.3265552505128539 -0.0031293841043545934 0.029820597269917926 ;
	setAttr ".r" -type "double3" -1.4555763353237432 -16.992121869059147 7.5482423428558061 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".rpt" -type "double3" 8.2573563246054653e-17 5.3358144204285346e-18 1.6182353566294571e-17 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
createNode transform -n "fk_UpperArm_Right" -p "fk_UpperArm_Right_grp";
	rename -uid "251E3E7F-49D6-7233-0224-CB9FE78BDA7E";
createNode nurbsCurve -n "fk_UpperArm_RightShape" -p "fk_UpperArm_Right";
	rename -uid "2A566C27-4CDF-F262-9F58-CDB1D9D8E203";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_ForeArm_Right_grp" -p "fk_UpperArm_Right";
	rename -uid "1CAD5F91-48D7-07E1-07EE-89B37151D980";
	setAttr ".t" -type "double3" -4.9321894376941788 3.8046994419282942e-05 -5.6764642039297541e-05 ;
	setAttr ".r" -type "double3" -0.011890357948275216 0.00026469852438924205 6.9291711667608711 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".rp" -type "double3" 0 -5.5511151231257817e-16 0 ;
	setAttr ".rpt" -type "double3" 6.6969911298206265e-17 4.0545199682063607e-18 1.1520001283253877e-19 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-16 0 ;
	setAttr ".spt" -type "double3" 0 9.8607613152626465e-32 0 ;
createNode transform -n "fk_ForeArm_Right" -p "fk_ForeArm_Right_grp";
	rename -uid "90F60F7D-4B9A-2240-A9F4-23BEB7016EC9";
createNode nurbsCurve -n "fk_ForeArm_RightShape" -p "fk_ForeArm_Right";
	rename -uid "F92C8222-4BC8-4227-9472-C0B7A7488817";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Hand_Right_grp" -p "fk_ForeArm_Right";
	rename -uid "0755D55B-428B-1ECE-03FE-FC977EE501FE";
	setAttr ".t" -type "double3" -5.101262973977617 4.6648235829671592e-07 4.5361786696673789e-05 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-16 0 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-16 0 ;
createNode transform -n "fk_Hand_Right" -p "fk_Hand_Right_grp";
	rename -uid "A8B979BF-4D7D-16DC-6F39-5596AE6B1450";
createNode nurbsCurve -n "fk_Hand_RightShape" -p "fk_Hand_Right";
	rename -uid "E2E4E55A-4018-CA7A-93BF-E8917FA1C13F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Shoulder_Left_grp" -p "fk_Spine3";
	rename -uid "BCB4526D-42E0-C114-167F-A7895225E5AB";
	setAttr ".t" -type "double3" 1.9678833007812422 0.010579943656919388 1.2780639649432866 ;
	setAttr ".r" -type "double3" 35.117237161758709 -69.279601633018459 -34.096118496563932 ;
	setAttr ".rp" -type "double3" 0 -8.8817841970012523e-16 0 ;
	setAttr ".rpt" -type "double3" -1.1538521377614784e-17 1.8666989534047957e-17 -1.8076957862420553e-16 ;
	setAttr ".sp" -type "double3" 0 -8.8817841970012523e-16 0 ;
createNode transform -n "fk_Shoulder_Left" -p "fk_Shoulder_Left_grp";
	rename -uid "6FF79E64-48E7-2E1E-8983-76A17315439C";
createNode nurbsCurve -n "fk_Shoulder_LeftShape" -p "fk_Shoulder_Left";
	rename -uid "117F4471-442A-B4FB-70C0-94928EE3212E";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_UpperArm_Left_grp" -p "fk_Shoulder_Left";
	rename -uid "9A18E9EC-4174-A04F-4055-7D8D96337CC7";
	setAttr ".t" -type "double3" 2.3265225671508514 0.0031277847732380515 -0.029712526748475909 ;
	setAttr ".r" -type "double3" -1.455447121458779 -16.991854247264108 7.5478001883629195 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999967 ;
	setAttr ".rp" -type "double3" 0 -6.6613381477509373e-16 0 ;
	setAttr ".rpt" -type "double3" 8.2568978847275341e-17 5.3352069636720844e-18 1.6180940436941528e-17 ;
	setAttr ".sp" -type "double3" 0 -6.6613381477509392e-16 0 ;
	setAttr ".spt" -type "double3" 0 1.9721522630525291e-31 0 ;
createNode transform -n "fk_UpperArm_Left" -p "fk_UpperArm_Left_grp";
	rename -uid "E2C7BF45-4D3E-D51A-69E9-9AAEE0DFAFDC";
createNode nurbsCurve -n "fk_UpperArm_LeftShape" -p "fk_UpperArm_Left";
	rename -uid "AD262C7F-4B0E-4A10-F863-B8B690171B72";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_ForeArm_Left_grp" -p "fk_UpperArm_Left";
	rename -uid "04047B20-4EA8-09DF-B540-719429DFDF6D";
	setAttr ".t" -type "double3" 4.932188106060897 7.339605118117376e-08 -1.6784853649198794e-06 ;
	setAttr ".r" -type "double3" -0.011890357530561358 -9.7577304597276642e-06 6.9295886836102394 ;
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-16 0 ;
	setAttr ".rpt" -type "double3" 6.6973926325018813e-17 4.0550079289290308e-18 1.1520000878673602e-19 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-16 0 ;
createNode transform -n "fk_ForeArm_Left" -p "fk_ForeArm_Left_grp";
	rename -uid "129E94F7-4E5F-54DB-5F6F-4E945F0E7F0F";
createNode nurbsCurve -n "fk_ForeArm_LeftShape" -p "fk_ForeArm_Left";
	rename -uid "9169E5B5-4BBA-444A-4345-AA91C2E65311";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Hand_Left_grp" -p "fk_ForeArm_Left";
	rename -uid "B851A8C6-4883-93A4-3BFC-1A90EE276B55";
	setAttr ".t" -type "double3" 5.1012591790298032 -6.7858851426905176e-08 5.7372205475303417e-07 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".rp" -type "double3" 0 -5.5511151231257827e-16 0 ;
	setAttr ".sp" -type "double3" 0 -5.5511151231257827e-16 0 ;
createNode transform -n "fk_Hand_Left" -p "fk_Hand_Left_grp";
	rename -uid "41BDACCF-49C8-DE72-AD26-098B075F183E";
createNode nurbsCurve -n "fk_Hand_LeftShape" -p "fk_Hand_Left";
	rename -uid "C0D58FD5-4A65-38C6-AADD-D1A10995A436";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "ik_Foot_Right_grp";
	rename -uid "55180A3B-480F-14C6-387B-2F9AB27A26B1";
	setAttr ".t" -type "double3" -6.8770086415111322 9.5762306782900666 -0.011337000721297397 ;
	setAttr ".s" -type "double3" 10 10 10 ;
createNode transform -n "ik_Foot_Right" -p "ik_Foot_Right_grp";
	rename -uid "3267BE92-478E-34E0-76FA-85BF6F047978";
createNode nurbsCurve -n "curveShape3" -p "ik_Foot_Right";
	rename -uid "25252CF1-4493-1EEE-9299-AEB665EFB0BC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 0.5 0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		0.5 -0.5 0.5
		0.5 -0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		;
createNode transform -n "ik_Hand_Left_grp";
	rename -uid "24E540BD-4747-C844-8846-63AC20626B27";
	setAttr ".t" -type "double3" 67.298576354980455 155.03697204589841 -4.6597080230712997 ;
	setAttr ".r" -type "double3" 90.000000000028649 -2.4023304084440547 -0.00050814885339114414 ;
	setAttr ".s" -type "double3" 5 5 5 ;
createNode transform -n "ik_Hand_Left" -p "ik_Hand_Left_grp";
	rename -uid "49124861-4CEE-B021-32B2-C7BC248DA873";
createNode nurbsCurve -n "curveShape4" -p "ik_Hand_Left";
	rename -uid "BA948E9F-4B8A-F0E5-479C-D787BCC4ECDA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		0.5 0.5 0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 -0.5 -0.5
		0.5 -0.5 -0.5
		0.5 0.5 -0.5
		-0.5 0.5 -0.5
		-0.5 0.5 0.5
		0.5 0.5 0.5
		0.5 -0.5 0.5
		0.5 -0.5 -0.5
		-0.5 -0.5 -0.5
		-0.5 -0.5 0.5
		0.5 -0.5 0.5
		-0.5 -0.5 0.5
		-0.5 0.5 0.5
		;
createNode transform -n "pv_Elbow_Left";
	rename -uid "726E507A-4B14-B58F-288F-1FB03A0A21B4";
	setAttr ".t" -type "double3" 41.814697265625 155.03720092773426 -5.7288370132446413 ;
	setAttr ".r" -type "double3" 90.000000000028649 -2.4023304084440547 -0.00050814885339114414 ;
	setAttr ".s" -type "double3" 5 5 5 ;
createNode locator -n "pv_Elbow_LeftShape" -p "pv_Elbow_Left";
	rename -uid "91B9BA63-4B83-89FD-B032-6A80E0D6FDF3";
	setAttr -k off ".v";
createNode transform -n "pv_Elbow_Right";
	rename -uid "3F5E0CF4-49AE-479F-BAAF-E1B13DD985C0";
	setAttr ".t" -type "double3" -41.814701080322266 155.03700256347662 -5.7288441658020082 ;
	setAttr ".r" -type "double3" -90.00003349782753 2.4023288094416007 0.00050993747072254451 ;
	setAttr ".s" -type "double3" 5 5 5 ;
createNode locator -n "pv_Elbow_RightShape" -p "pv_Elbow_Right";
	rename -uid "4B77F1C1-4A9E-7449-B1A3-5590CC01A2D9";
	setAttr -k off ".v";
createNode ikHandle -n "ikHandle_Leg_Left";
	rename -uid "471CA681-48B5-FDB2-E47F-728C36BAC6BB";
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle_Leg_Left_parentConstraint1" -p "ikHandle_Leg_Left";
	rename -uid "A8D14196-480D-BE5F-C7D8-3A8AAC886D84";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_Foot_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 6.8769884109497141 9.5762306847243721 -0.011345246155716637 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "ikHandle_Leg_Left_poleVectorConstraint1" -p "ikHandle_Leg_Left";
	rename -uid "9BAF988B-483E-70EA-AAA1-5AAF403DC300";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pv_Knee_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -6.4983532874762773e-06 -53.209936569596671 2.5145279281232833 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle_Arm_Left";
	rename -uid "F9C7FE78-4111-F6C0-B7D2-B7B12D166138";
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle_Arm_Left_parentConstraint1" -p "ikHandle_Arm_Left";
	rename -uid "9897F527-4FD5-7BC6-1743-28961B79DB5B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_Hand_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 90.000000000028649 -2.4023304084440547 -0.00050814885339114414 ;
	setAttr ".rst" -type "double3" 67.298576354980455 155.03697204589841 -4.6597080230712997 ;
	setAttr ".rsrr" -type "double3" 90.000000000028649 -2.4023304084440547 -0.00050814885339114414 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "ikHandle_Arm_Left_poleVectorConstraint1" -p "ikHandle_Arm_Left";
	rename -uid "C9DFD1AD-4376-C3E4-514F-D588DE19246B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pv_Elbow_LeftW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 24.583995819091797 0.00041198730463065658 -1.9465706348419207 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle_Leg_Right";
	rename -uid "775718D6-4E89-A4E9-83D6-398764C37BAA";
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle_Leg_Right_parentConstraint1" -p "ikHandle_Leg_Right";
	rename -uid "B0C889C3-4504-35CF-334C-809A330E9CB4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_Foot_RightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -6.8770086415111322 9.5762306782900666 -0.011337000721297397 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "ikHandle_Leg_Right_poleVectorConstraint1" -p "ikHandle_Leg_Right";
	rename -uid "5174846A-4CE3-F853-FE36-D7A9964B1BFE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pv_Knee_RightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -9.536743153404359e-06 -53.209966924565038 2.5145320896935206 ;
	setAttr -k on ".w0";
createNode ikHandle -n "ikHandle_Arm_Right";
	rename -uid "E4BF1087-47BF-293D-E42F-77999183030F";
	setAttr ".roc" yes;
createNode parentConstraint -n "ikHandle_Arm_Right_parentConstraint1" -p "ikHandle_Arm_Right";
	rename -uid "CBCB9600-4D5B-4BD5-F471-B6AD74555A02";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ik_Hand_RightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -90.00003349782753 2.4023288094416007 0.00050993747072254451 ;
	setAttr ".rst" -type "double3" -67.298599243164063 155.03700256347651 -4.6597170829772958 ;
	setAttr ".rsrr" -type "double3" -90.00003349782753 2.4023288094416007 0.00050993747072254451 ;
	setAttr -k on ".w0";
createNode poleVectorConstraint -n "ikHandle_Arm_Right_poleVectorConstraint1" -p "ikHandle_Arm_Right";
	rename -uid "7C007F44-4BFD-2F56-9199-CB94907BE4F1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pv_Elbow_RightW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -24.584001541137724 0 -1.9465827941894571 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "BA547DB0-489B-F422-9691-E3B45507ED6D";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DAC892BF-4B06-DFCB-B9A1-32A71C182F72";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B83581EE-48E2-BDD2-7FC0-9590B1C72F98";
createNode displayLayerManager -n "layerManager";
	rename -uid "CCD7FE3D-4F7C-84EB-3FA5-4C860C8808E1";
createNode displayLayer -n "defaultLayer";
	rename -uid "E48109C9-4674-8222-0E62-899DDA94BC0D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "27F01D43-4302-0B9F-873F-77A9D03644FC";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "09B0FE90-421E-D630-942E-75A9E134B679";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "587977FC-49C3-D325-CF67-D7B60508D96C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1385\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1385\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1385\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "EAE5B632-436F-EB0F-21D3-D38A54D3D4CC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "2CE19DB3-4E45-17E4-C954-12BA1337622C";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 75;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "BBE47934-4CE1-88AE-990F-B79B8C5CF2FB";
createNode unitConversion -n "Chara1Picker";
	rename -uid "B69543F7-48BB-8A86-75FB-DC8434EA3F3F";
	addAttr -ci true -sn "chara1" -ln "chara1" -dt "string";
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "38ECA53B-4FD3-B3D5-D9A1-8B9123A196C8";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 1.5;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "08E9D00F-414E-424C-6415-0788F8C3479D";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 1.5;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "C9CAA435-43DB-C730-868F-76A8457BCB98";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "0E433B10-4DB0-1278-C965-D1B738A7CC18";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "2E197DC0-4CBF-C94F-D888-B7808F23445F";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "3F984CA7-4986-34B2-E8AD-58BDFE673378";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "4468144B-48E8-15F9-4AE9-668192A857C0";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 1.5;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "7314E32E-49F2-A51C-667C-9892D57E8B2E";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 5;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "53EC3E68-4316-BB38-534A-24813087A8A9";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "5CD65802-42F1-12A8-0B1A-30A80ECB1915";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "C6471F33-4E74-D08D-7033-A3BC536CE25C";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 1.5;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "5FF9362A-4421-2134-C96B-0CA8798F30F0";
	setAttr ".nr" -type "double3" 1 0 0 ;
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "9CB8F8BA-4B68-C89E-C073-5796FBC2D53B";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 1.5;
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "B117613F-4ABC-D7B1-DADE-5DA9E8408829";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2;
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "5051CB7A-4827-970A-892E-D2B08771BEDF";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2;
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "023767B7-47BC-739A-347B-B88D235CDFC7";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 1.75;
createNode makeNurbCircle -n "makeNurbCircle18";
	rename -uid "625EE550-48C8-1CF1-B8EE-B0A78B2948D9";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2.5;
createNode makeNurbCircle -n "makeNurbCircle19";
	rename -uid "8CC2DAF9-41F0-6B60-CF8E-9E8097EE1C37";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle20";
	rename -uid "37473EA8-4310-25E6-4A6E-F394D58AD391";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 3;
createNode makeNurbCircle -n "makeNurbCircle21";
	rename -uid "C9035088-4794-BB70-2C64-ACA5F8D54480";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 1.75;
createNode makeNurbCircle -n "makeNurbCircle22";
	rename -uid "9FD8BECF-4067-8950-D884-A6BD10929D38";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 2.5;
createNode makeNurbCircle -n "makeNurbCircle23";
	rename -uid "C4948B07-4815-B36E-8574-8E8713EBA87C";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 3;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "45433668-4E9A-C86C-49B7-BA9B3281641A";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -23.59022327578905 -279.53801929250682 ;
	setAttr ".tgi[0].vh" -type "double2" 587.25494535497853 27.667187110320963 ;
	setAttr -s 172 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 591.4285888671875;
	setAttr ".tgi[0].ni[0].y" -7141.4287109375;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 591.4285888671875;
	setAttr ".tgi[0].ni[1].y" 2998.571533203125;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 591.4285888671875;
	setAttr ".tgi[0].ni[2].y" -7011.4287109375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 541.4285888671875;
	setAttr ".tgi[0].ni[3].y" -1941.4285888671875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 591.4285888671875;
	setAttr ".tgi[0].ni[4].y" -6881.4287109375;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 591.4285888671875;
	setAttr ".tgi[0].ni[5].y" -6751.4287109375;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -215.71427917480469;
	setAttr ".tgi[0].ni[6].y" 6807.14306640625;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 591.4285888671875;
	setAttr ".tgi[0].ni[7].y" -6621.4287109375;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 591.4285888671875;
	setAttr ".tgi[0].ni[8].y" 3128.571533203125;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 284.28570556640625;
	setAttr ".tgi[0].ni[9].y" 3258.571533203125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 498.57144165039063;
	setAttr ".tgi[0].ni[10].y" 1178.5714111328125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 512.85711669921875;
	setAttr ".tgi[0].ni[11].y" 398.57144165039063;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 591.4285888671875;
	setAttr ".tgi[0].ni[12].y" 3258.571533203125;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 314.21148681640625;
	setAttr ".tgi[0].ni[13].y" -90.559677124023438;
	setAttr ".tgi[0].ni[13].nvs" 18304;
	setAttr ".tgi[0].ni[14].x" 284.28570556640625;
	setAttr ".tgi[0].ni[14].y" 3388.571533203125;
	setAttr ".tgi[0].ni[14].nvs" 18304;
	setAttr ".tgi[0].ni[15].x" 284.28570556640625;
	setAttr ".tgi[0].ni[15].y" 3128.571533203125;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 284.28570556640625;
	setAttr ".tgi[0].ni[16].y" 2998.571533203125;
	setAttr ".tgi[0].ni[16].nvs" 18304;
	setAttr ".tgi[0].ni[17].x" 591.4285888671875;
	setAttr ".tgi[0].ni[17].y" 3388.571533203125;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" 550;
	setAttr ".tgi[0].ni[18].y" -2721.428466796875;
	setAttr ".tgi[0].ni[18].nvs" 18304;
	setAttr ".tgi[0].ni[19].x" 180;
	setAttr ".tgi[0].ni[19].y" 6960;
	setAttr ".tgi[0].ni[19].nvs" 18304;
	setAttr ".tgi[0].ni[20].x" 591.4285888671875;
	setAttr ".tgi[0].ni[20].y" -6491.4287109375;
	setAttr ".tgi[0].ni[20].nvs" 18304;
	setAttr ".tgi[0].ni[21].x" -192.85714721679688;
	setAttr ".tgi[0].ni[21].y" 6524.28564453125;
	setAttr ".tgi[0].ni[21].nvs" 18304;
	setAttr ".tgi[0].ni[22].x" 591.4285888671875;
	setAttr ".tgi[0].ni[22].y" -6361.4287109375;
	setAttr ".tgi[0].ni[22].nvs" 18304;
	setAttr ".tgi[0].ni[23].x" -257.14285278320313;
	setAttr ".tgi[0].ni[23].y" 104.28571319580078;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[0].ni[24].x" 284.28570556640625;
	setAttr ".tgi[0].ni[24].y" 3518.571533203125;
	setAttr ".tgi[0].ni[24].nvs" 18304;
	setAttr ".tgi[0].ni[25].x" 518.5714111328125;
	setAttr ".tgi[0].ni[25].y" -381.42855834960938;
	setAttr ".tgi[0].ni[25].nvs" 18304;
	setAttr ".tgi[0].ni[26].x" 50;
	setAttr ".tgi[0].ni[26].y" 104.28571319580078;
	setAttr ".tgi[0].ni[26].nvs" 18304;
	setAttr ".tgi[0].ni[27].x" 284.28570556640625;
	setAttr ".tgi[0].ni[27].y" 3648.571533203125;
	setAttr ".tgi[0].ni[27].nvs" 18304;
	setAttr ".tgi[0].ni[28].x" 510;
	setAttr ".tgi[0].ni[28].y" 658.5714111328125;
	setAttr ".tgi[0].ni[28].nvs" 18304;
	setAttr ".tgi[0].ni[29].x" 591.4285888671875;
	setAttr ".tgi[0].ni[29].y" 3518.571533203125;
	setAttr ".tgi[0].ni[29].nvs" 18304;
	setAttr ".tgi[0].ni[30].x" 545.71429443359375;
	setAttr ".tgi[0].ni[30].y" -2461.428466796875;
	setAttr ".tgi[0].ni[30].nvs" 18304;
	setAttr ".tgi[0].ni[31].x" 284.28570556640625;
	setAttr ".tgi[0].ni[31].y" 3778.571533203125;
	setAttr ".tgi[0].ni[31].nvs" 18304;
	setAttr ".tgi[0].ni[32].x" 591.4285888671875;
	setAttr ".tgi[0].ni[32].y" -6231.4287109375;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 591.4285888671875;
	setAttr ".tgi[0].ni[33].y" 3648.571533203125;
	setAttr ".tgi[0].ni[33].nvs" 18304;
	setAttr ".tgi[0].ni[34].x" 49.405792236328125;
	setAttr ".tgi[0].ni[34].y" -18.583797454833984;
	setAttr ".tgi[0].ni[34].nvs" 18304;
	setAttr ".tgi[0].ni[35].x" 591.4285888671875;
	setAttr ".tgi[0].ni[35].y" -6101.4287109375;
	setAttr ".tgi[0].ni[35].nvs" 18304;
	setAttr ".tgi[0].ni[36].x" 591.4285888671875;
	setAttr ".tgi[0].ni[36].y" 3778.571533203125;
	setAttr ".tgi[0].ni[36].nvs" 18304;
	setAttr ".tgi[0].ni[37].x" 591.4285888671875;
	setAttr ".tgi[0].ni[37].y" -5971.4287109375;
	setAttr ".tgi[0].ni[37].nvs" 18304;
	setAttr ".tgi[0].ni[38].x" 530;
	setAttr ".tgi[0].ni[38].y" -1161.4285888671875;
	setAttr ".tgi[0].ni[38].nvs" 18304;
	setAttr ".tgi[0].ni[39].x" 591.4285888671875;
	setAttr ".tgi[0].ni[39].y" -5841.4287109375;
	setAttr ".tgi[0].ni[39].nvs" 18304;
	setAttr ".tgi[0].ni[40].x" 527.14288330078125;
	setAttr ".tgi[0].ni[40].y" 398.57144165039063;
	setAttr ".tgi[0].ni[40].nvs" 18304;
	setAttr ".tgi[0].ni[41].x" 560;
	setAttr ".tgi[0].ni[41].y" -2461.428466796875;
	setAttr ".tgi[0].ni[41].nvs" 18304;
	setAttr ".tgi[0].ni[42].x" 284.28570556640625;
	setAttr ".tgi[0].ni[42].y" 3908.571533203125;
	setAttr ".tgi[0].ni[42].nvs" 18304;
	setAttr ".tgi[0].ni[43].x" 525.71429443359375;
	setAttr ".tgi[0].ni[43].y" -901.4285888671875;
	setAttr ".tgi[0].ni[43].nvs" 18304;
	setAttr ".tgi[0].ni[44].x" 505.71429443359375;
	setAttr ".tgi[0].ni[44].y" 918.5714111328125;
	setAttr ".tgi[0].ni[44].nvs" 18304;
	setAttr ".tgi[0].ni[45].x" 532.85711669921875;
	setAttr ".tgi[0].ni[45].y" -1681.4285888671875;
	setAttr ".tgi[0].ni[45].nvs" 18304;
	setAttr ".tgi[0].ni[46].x" 564.28570556640625;
	setAttr ".tgi[0].ni[46].y" -2721.428466796875;
	setAttr ".tgi[0].ni[46].nvs" 18304;
	setAttr ".tgi[0].ni[47].x" 591.4285888671875;
	setAttr ".tgi[0].ni[47].y" 4038.571533203125;
	setAttr ".tgi[0].ni[47].nvs" 18304;
	setAttr ".tgi[0].ni[48].x" 591.4285888671875;
	setAttr ".tgi[0].ni[48].y" 3908.571533203125;
	setAttr ".tgi[0].ni[48].nvs" 18304;
	setAttr ".tgi[0].ni[49].x" 531.4285888671875;
	setAttr ".tgi[0].ni[49].y" -121.42857360839844;
	setAttr ".tgi[0].ni[49].nvs" 18304;
	setAttr ".tgi[0].ni[50].x" 508.57144165039063;
	setAttr ".tgi[0].ni[50].y" 1698.5714111328125;
	setAttr ".tgi[0].ni[50].nvs" 18304;
	setAttr ".tgi[0].ni[51].x" 532.85711669921875;
	setAttr ".tgi[0].ni[51].y" -381.42855834960938;
	setAttr ".tgi[0].ni[51].nvs" 18304;
	setAttr ".tgi[0].ni[52].x" 555.71429443359375;
	setAttr ".tgi[0].ni[52].y" -1941.4285888671875;
	setAttr ".tgi[0].ni[52].nvs" 18304;
	setAttr ".tgi[0].ni[53].x" 591.4285888671875;
	setAttr ".tgi[0].ni[53].y" -5711.4287109375;
	setAttr ".tgi[0].ni[53].nvs" 18304;
	setAttr ".tgi[0].ni[54].x" 512.85711669921875;
	setAttr ".tgi[0].ni[54].y" 1308.5714111328125;
	setAttr ".tgi[0].ni[54].nvs" 18304;
	setAttr ".tgi[0].ni[55].x" 528.5714111328125;
	setAttr ".tgi[0].ni[55].y" 138.57142639160156;
	setAttr ".tgi[0].ni[55].nvs" 18304;
	setAttr ".tgi[0].ni[56].x" 547.14288330078125;
	setAttr ".tgi[0].ni[56].y" -1551.4285888671875;
	setAttr ".tgi[0].ni[56].nvs" 18304;
	setAttr ".tgi[0].ni[57].x" 558.5714111328125;
	setAttr ".tgi[0].ni[57].y" -2201.428466796875;
	setAttr ".tgi[0].ni[57].nvs" 18304;
	setAttr ".tgi[0].ni[58].x" 540;
	setAttr ".tgi[0].ni[58].y" -771.4285888671875;
	setAttr ".tgi[0].ni[58].nvs" 18304;
	setAttr ".tgi[0].ni[59].x" 544.28570556640625;
	setAttr ".tgi[0].ni[59].y" -1161.4285888671875;
	setAttr ".tgi[0].ni[59].nvs" 18304;
	setAttr ".tgi[0].ni[60].x" 507.14285278320313;
	setAttr ".tgi[0].ni[60].y" 1958.5714111328125;
	setAttr ".tgi[0].ni[60].nvs" 18304;
	setAttr ".tgi[0].ni[61].x" 547.14288330078125;
	setAttr ".tgi[0].ni[61].y" -1681.4285888671875;
	setAttr ".tgi[0].ni[61].nvs" 18304;
	setAttr ".tgi[0].ni[62].x" 187.14285278320313;
	setAttr ".tgi[0].ni[62].y" 5960;
	setAttr ".tgi[0].ni[62].nvs" 18304;
	setAttr ".tgi[0].ni[63].x" -201.42857360839844;
	setAttr ".tgi[0].ni[63].y" 6908.5712890625;
	setAttr ".tgi[0].ni[63].nvs" 18304;
	setAttr ".tgi[0].ni[64].x" 175.71427917480469;
	setAttr ".tgi[0].ni[64].y" 6292.85693359375;
	setAttr ".tgi[0].ni[64].nvs" 18304;
	setAttr ".tgi[0].ni[65].x" 520;
	setAttr ".tgi[0].ni[65].y" 1048.5714111328125;
	setAttr ".tgi[0].ni[65].nvs" 18304;
	setAttr ".tgi[0].ni[66].x" 528.5714111328125;
	setAttr ".tgi[0].ni[66].y" 6641.4287109375;
	setAttr ".tgi[0].ni[66].nvs" 18304;
	setAttr ".tgi[0].ni[67].x" 494.28570556640625;
	setAttr ".tgi[0].ni[67].y" 6010;
	setAttr ".tgi[0].ni[67].nvs" 18304;
	setAttr ".tgi[0].ni[68].x" 512.85711669921875;
	setAttr ".tgi[0].ni[68].y" 1178.5714111328125;
	setAttr ".tgi[0].ni[68].nvs" 18304;
	setAttr ".tgi[0].ni[69].x" 175.71427917480469;
	setAttr ".tgi[0].ni[69].y" 6191.4287109375;
	setAttr ".tgi[0].ni[69].nvs" 18304;
	setAttr ".tgi[0].ni[70].x" -178.57142639160156;
	setAttr ".tgi[0].ni[70].y" 6625.71435546875;
	setAttr ".tgi[0].ni[70].nvs" 18304;
	setAttr ".tgi[0].ni[71].x" -201.42857360839844;
	setAttr ".tgi[0].ni[71].y" 6807.14306640625;
	setAttr ".tgi[0].ni[71].nvs" 18304;
	setAttr ".tgi[0].ni[72].x" 537.14288330078125;
	setAttr ".tgi[0].ni[72].y" -641.4285888671875;
	setAttr ".tgi[0].ni[72].nvs" 18304;
	setAttr ".tgi[0].ni[73].x" 498.57144165039063;
	setAttr ".tgi[0].ni[73].y" 2478.571533203125;
	setAttr ".tgi[0].ni[73].nvs" 18304;
	setAttr ".tgi[0].ni[74].x" 591.4285888671875;
	setAttr ".tgi[0].ni[74].y" -5581.4287109375;
	setAttr ".tgi[0].ni[74].nvs" 18304;
	setAttr ".tgi[0].ni[75].x" 495.71429443359375;
	setAttr ".tgi[0].ni[75].y" 2738.571533203125;
	setAttr ".tgi[0].ni[75].nvs" 18304;
	setAttr ".tgi[0].ni[76].x" 172.85714721679688;
	setAttr ".tgi[0].ni[76].y" 5960;
	setAttr ".tgi[0].ni[76].nvs" 18304;
	setAttr ".tgi[0].ni[77].x" 482.85714721679688;
	setAttr ".tgi[0].ni[77].y" 6342.85693359375;
	setAttr ".tgi[0].ni[77].nvs" 18304;
	setAttr ".tgi[0].ni[78].x" -178.57142639160156;
	setAttr ".tgi[0].ni[78].y" 6524.28564453125;
	setAttr ".tgi[0].ni[78].nvs" 18304;
	setAttr ".tgi[0].ni[79].x" 494.28570556640625;
	setAttr ".tgi[0].ni[79].y" 5908.5712890625;
	setAttr ".tgi[0].ni[79].nvs" 18304;
	setAttr ".tgi[0].ni[80].x" 284.28570556640625;
	setAttr ".tgi[0].ni[80].y" 4038.571533203125;
	setAttr ".tgi[0].ni[80].nvs" 18304;
	setAttr ".tgi[0].ni[81].x" 161.42857360839844;
	setAttr ".tgi[0].ni[81].y" 6292.85693359375;
	setAttr ".tgi[0].ni[81].nvs" 18304;
	setAttr ".tgi[0].ni[82].x" 487.14285278320313;
	setAttr ".tgi[0].ni[82].y" 6924.28564453125;
	setAttr ".tgi[0].ni[82].nvs" 18304;
	setAttr ".tgi[0].ni[83].x" 524.28570556640625;
	setAttr ".tgi[0].ni[83].y" 658.5714111328125;
	setAttr ".tgi[0].ni[83].nvs" 18304;
	setAttr ".tgi[0].ni[84].x" 501.42855834960938;
	setAttr ".tgi[0].ni[84].y" 2218.571533203125;
	setAttr ".tgi[0].ni[84].nvs" 18304;
	setAttr ".tgi[0].ni[85].x" 482.85714721679688;
	setAttr ".tgi[0].ni[85].y" 6241.4287109375;
	setAttr ".tgi[0].ni[85].nvs" 18304;
	setAttr ".tgi[0].ni[86].x" 492.85714721679688;
	setAttr ".tgi[0].ni[86].y" 1958.5714111328125;
	setAttr ".tgi[0].ni[86].nvs" 18304;
	setAttr ".tgi[0].ni[87].x" 221.42857360839844;
	setAttr ".tgi[0].ni[87].y" 6575.71435546875;
	setAttr ".tgi[0].ni[87].nvs" 18304;
	setAttr ".tgi[0].ni[88].x" 180;
	setAttr ".tgi[0].ni[88].y" 6858.5712890625;
	setAttr ".tgi[0].ni[88].nvs" 18304;
	setAttr ".tgi[0].ni[89].x" 544.28570556640625;
	setAttr ".tgi[0].ni[89].y" -2071.428466796875;
	setAttr ".tgi[0].ni[89].nvs" 18304;
	setAttr ".tgi[0].ni[90].x" 545.71429443359375;
	setAttr ".tgi[0].ni[90].y" -2331.428466796875;
	setAttr ".tgi[0].ni[90].nvs" 18304;
	setAttr ".tgi[0].ni[91].x" 517.14288330078125;
	setAttr ".tgi[0].ni[91].y" 8.5714282989501953;
	setAttr ".tgi[0].ni[91].nvs" 18304;
	setAttr ".tgi[0].ni[92].x" 494.28570556640625;
	setAttr ".tgi[0].ni[92].y" 1828.5714111328125;
	setAttr ".tgi[0].ni[92].nvs" 18304;
	setAttr ".tgi[0].ni[93].x" 492.85714721679688;
	setAttr ".tgi[0].ni[93].y" 2088.571533203125;
	setAttr ".tgi[0].ni[93].nvs" 18304;
	setAttr ".tgi[0].ni[94].x" 484.28570556640625;
	setAttr ".tgi[0].ni[94].y" 2608.571533203125;
	setAttr ".tgi[0].ni[94].nvs" 18304;
	setAttr ".tgi[0].ni[95].x" 514.28570556640625;
	setAttr ".tgi[0].ni[95].y" 268.57144165039063;
	setAttr ".tgi[0].ni[95].nvs" 18304;
	setAttr ".tgi[0].ni[96].x" 481.42855834960938;
	setAttr ".tgi[0].ni[96].y" 2868.571533203125;
	setAttr ".tgi[0].ni[96].nvs" 18304;
	setAttr ".tgi[0].ni[97].x" 532.85711669921875;
	setAttr ".tgi[0].ni[97].y" -1421.4285888671875;
	setAttr ".tgi[0].ni[97].nvs" 18304;
	setAttr ".tgi[0].ni[98].x" 532.85711669921875;
	setAttr ".tgi[0].ni[98].y" -1291.4285888671875;
	setAttr ".tgi[0].ni[98].nvs" 18304;
	setAttr ".tgi[0].ni[99].x" 541.4285888671875;
	setAttr ".tgi[0].ni[99].y" -1811.4285888671875;
	setAttr ".tgi[0].ni[99].nvs" 18304;
	setAttr ".tgi[0].ni[100].x" 498.57144165039063;
	setAttr ".tgi[0].ni[100].y" 1438.5714111328125;
	setAttr ".tgi[0].ni[100].nvs" 18304;
	setAttr ".tgi[0].ni[101].x" 522.85711669921875;
	setAttr ".tgi[0].ni[101].y" -511.42855834960938;
	setAttr ".tgi[0].ni[101].nvs" 18304;
	setAttr ".tgi[0].ni[102].x" 530;
	setAttr ".tgi[0].ni[102].y" -1031.4285888671875;
	setAttr ".tgi[0].ni[102].nvs" 18304;
	setAttr ".tgi[0].ni[103].x" 510;
	setAttr ".tgi[0].ni[103].y" 788.5714111328125;
	setAttr ".tgi[0].ni[103].nvs" 18304;
	setAttr ".tgi[0].ni[104].x" 550;
	setAttr ".tgi[0].ni[104].y" -2591.428466796875;
	setAttr ".tgi[0].ni[104].nvs" 18304;
	setAttr ".tgi[0].ni[105].x" 498.57144165039063;
	setAttr ".tgi[0].ni[105].y" 1568.5714111328125;
	setAttr ".tgi[0].ni[105].nvs" 18304;
	setAttr ".tgi[0].ni[106].x" 487.14285278320313;
	setAttr ".tgi[0].ni[106].y" 2348.571533203125;
	setAttr ".tgi[0].ni[106].nvs" 18304;
	setAttr ".tgi[0].ni[107].x" 518.5714111328125;
	setAttr ".tgi[0].ni[107].y" -251.42857360839844;
	setAttr ".tgi[0].ni[107].nvs" 18304;
	setAttr ".tgi[0].ni[108].x" 512.85711669921875;
	setAttr ".tgi[0].ni[108].y" 528.5714111328125;
	setAttr ".tgi[0].ni[108].nvs" 18304;
	setAttr ".tgi[0].ni[109].x" 591.4285888671875;
	setAttr ".tgi[0].ni[109].y" 4168.5712890625;
	setAttr ".tgi[0].ni[109].nvs" 18304;
	setAttr ".tgi[0].ni[110].x" 591.4285888671875;
	setAttr ".tgi[0].ni[110].y" 4298.5712890625;
	setAttr ".tgi[0].ni[110].nvs" 18304;
	setAttr ".tgi[0].ni[111].x" 284.28570556640625;
	setAttr ".tgi[0].ni[111].y" 4428.5712890625;
	setAttr ".tgi[0].ni[111].nvs" 18304;
	setAttr ".tgi[0].ni[112].x" 591.4285888671875;
	setAttr ".tgi[0].ni[112].y" -5451.4287109375;
	setAttr ".tgi[0].ni[112].nvs" 18304;
	setAttr ".tgi[0].ni[113].x" 591.4285888671875;
	setAttr ".tgi[0].ni[113].y" -5321.4287109375;
	setAttr ".tgi[0].ni[113].nvs" 18304;
	setAttr ".tgi[0].ni[114].x" 591.4285888671875;
	setAttr ".tgi[0].ni[114].y" 4428.5712890625;
	setAttr ".tgi[0].ni[114].nvs" 18304;
	setAttr ".tgi[0].ni[115].x" 544.28570556640625;
	setAttr ".tgi[0].ni[115].y" -2201.428466796875;
	setAttr ".tgi[0].ni[115].nvs" 18304;
	setAttr ".tgi[0].ni[116].x" 284.28570556640625;
	setAttr ".tgi[0].ni[116].y" 4168.5712890625;
	setAttr ".tgi[0].ni[116].nvs" 18304;
	setAttr ".tgi[0].ni[117].x" 591.4285888671875;
	setAttr ".tgi[0].ni[117].y" -5191.4287109375;
	setAttr ".tgi[0].ni[117].nvs" 18304;
	setAttr ".tgi[0].ni[118].x" 591.4285888671875;
	setAttr ".tgi[0].ni[118].y" -5061.4287109375;
	setAttr ".tgi[0].ni[118].nvs" 18304;
	setAttr ".tgi[0].ni[119].x" 187.14285278320313;
	setAttr ".tgi[0].ni[119].y" 5858.5712890625;
	setAttr ".tgi[0].ni[119].nvs" 18304;
	setAttr ".tgi[0].ni[120].x" 284.28570556640625;
	setAttr ".tgi[0].ni[120].y" 4298.5712890625;
	setAttr ".tgi[0].ni[120].nvs" 18304;
	setAttr ".tgi[0].ni[121].x" 481.42855834960938;
	setAttr ".tgi[0].ni[121].y" 2738.571533203125;
	setAttr ".tgi[0].ni[121].nvs" 18304;
	setAttr ".tgi[0].ni[122].x" 591.4285888671875;
	setAttr ".tgi[0].ni[122].y" -4931.4287109375;
	setAttr ".tgi[0].ni[122].nvs" 18304;
	setAttr ".tgi[0].ni[123].x" 532.85711669921875;
	setAttr ".tgi[0].ni[123].y" -1551.4285888671875;
	setAttr ".tgi[0].ni[123].nvs" 18304;
	setAttr ".tgi[0].ni[124].x" 284.28570556640625;
	setAttr ".tgi[0].ni[124].y" 4558.5712890625;
	setAttr ".tgi[0].ni[124].nvs" 18304;
	setAttr ".tgi[0].ni[125].x" 591.4285888671875;
	setAttr ".tgi[0].ni[125].y" 4558.5712890625;
	setAttr ".tgi[0].ni[125].nvs" 18304;
	setAttr ".tgi[0].ni[126].x" 484.28570556640625;
	setAttr ".tgi[0].ni[126].y" 2478.571533203125;
	setAttr ".tgi[0].ni[126].nvs" 18304;
	setAttr ".tgi[0].ni[127].x" 591.4285888671875;
	setAttr ".tgi[0].ni[127].y" -4801.4287109375;
	setAttr ".tgi[0].ni[127].nvs" 18304;
	setAttr ".tgi[0].ni[128].x" 591.4285888671875;
	setAttr ".tgi[0].ni[128].y" -4671.4287109375;
	setAttr ".tgi[0].ni[128].nvs" 18304;
	setAttr ".tgi[0].ni[129].x" 591.4285888671875;
	setAttr ".tgi[0].ni[129].y" -4541.4287109375;
	setAttr ".tgi[0].ni[129].nvs" 18304;
	setAttr ".tgi[0].ni[130].x" 517.14288330078125;
	setAttr ".tgi[0].ni[130].y" -121.42857360839844;
	setAttr ".tgi[0].ni[130].nvs" 18304;
	setAttr ".tgi[0].ni[131].x" 591.4285888671875;
	setAttr ".tgi[0].ni[131].y" -4411.4287109375;
	setAttr ".tgi[0].ni[131].nvs" 18304;
	setAttr ".tgi[0].ni[132].x" 591.4285888671875;
	setAttr ".tgi[0].ni[132].y" -4281.4287109375;
	setAttr ".tgi[0].ni[132].nvs" 18304;
	setAttr ".tgi[0].ni[133].x" 284.28570556640625;
	setAttr ".tgi[0].ni[133].y" 4688.5712890625;
	setAttr ".tgi[0].ni[133].nvs" 18304;
	setAttr ".tgi[0].ni[134].x" 591.4285888671875;
	setAttr ".tgi[0].ni[134].y" 4688.5712890625;
	setAttr ".tgi[0].ni[134].nvs" 18304;
	setAttr ".tgi[0].ni[135].x" 525.71429443359375;
	setAttr ".tgi[0].ni[135].y" -771.4285888671875;
	setAttr ".tgi[0].ni[135].nvs" 18304;
	setAttr ".tgi[0].ni[136].x" 591.4285888671875;
	setAttr ".tgi[0].ni[136].y" -4151.4287109375;
	setAttr ".tgi[0].ni[136].nvs" 18304;
	setAttr ".tgi[0].ni[137].x" 591.4285888671875;
	setAttr ".tgi[0].ni[137].y" 4818.5712890625;
	setAttr ".tgi[0].ni[137].nvs" 18304;
	setAttr ".tgi[0].ni[138].x" 591.4285888671875;
	setAttr ".tgi[0].ni[138].y" 4948.5712890625;
	setAttr ".tgi[0].ni[138].nvs" 18304;
	setAttr ".tgi[0].ni[139].x" 284.28570556640625;
	setAttr ".tgi[0].ni[139].y" 5078.5712890625;
	setAttr ".tgi[0].ni[139].nvs" 18304;
	setAttr ".tgi[0].ni[140].x" 284.28570556640625;
	setAttr ".tgi[0].ni[140].y" 5208.5712890625;
	setAttr ".tgi[0].ni[140].nvs" 18304;
	setAttr ".tgi[0].ni[141].x" 284.28570556640625;
	setAttr ".tgi[0].ni[141].y" 4948.5712890625;
	setAttr ".tgi[0].ni[141].nvs" 18304;
	setAttr ".tgi[0].ni[142].x" 591.4285888671875;
	setAttr ".tgi[0].ni[142].y" 5208.5712890625;
	setAttr ".tgi[0].ni[142].nvs" 18304;
	setAttr ".tgi[0].ni[143].x" 591.4285888671875;
	setAttr ".tgi[0].ni[143].y" -4021.428466796875;
	setAttr ".tgi[0].ni[143].nvs" 18304;
	setAttr ".tgi[0].ni[144].x" 284.28570556640625;
	setAttr ".tgi[0].ni[144].y" 4818.5712890625;
	setAttr ".tgi[0].ni[144].nvs" 18304;
	setAttr ".tgi[0].ni[145].x" 591.4285888671875;
	setAttr ".tgi[0].ni[145].y" -3891.428466796875;
	setAttr ".tgi[0].ni[145].nvs" 18304;
	setAttr ".tgi[0].ni[146].x" 591.4285888671875;
	setAttr ".tgi[0].ni[146].y" 5078.5712890625;
	setAttr ".tgi[0].ni[146].nvs" 18304;
	setAttr ".tgi[0].ni[147].x" 498.57144165039063;
	setAttr ".tgi[0].ni[147].y" 1308.5714111328125;
	setAttr ".tgi[0].ni[147].nvs" 18304;
	setAttr ".tgi[0].ni[148].x" 187.14285278320313;
	setAttr ".tgi[0].ni[148].y" 6061.4287109375;
	setAttr ".tgi[0].ni[148].nvs" 18304;
	setAttr ".tgi[0].ni[149].x" 514.28570556640625;
	setAttr ".tgi[0].ni[149].y" 138.57142639160156;
	setAttr ".tgi[0].ni[149].nvs" 18304;
	setAttr ".tgi[0].ni[150].x" 591.4285888671875;
	setAttr ".tgi[0].ni[150].y" -3761.428466796875;
	setAttr ".tgi[0].ni[150].nvs" 18304;
	setAttr ".tgi[0].ni[151].x" 494.28570556640625;
	setAttr ".tgi[0].ni[151].y" 1698.5714111328125;
	setAttr ".tgi[0].ni[151].nvs" 18304;
	setAttr ".tgi[0].ni[152].x" 221.42857360839844;
	setAttr ".tgi[0].ni[152].y" 6677.14306640625;
	setAttr ".tgi[0].ni[152].nvs" 18304;
	setAttr ".tgi[0].ni[153].x" 591.4285888671875;
	setAttr ".tgi[0].ni[153].y" -3631.428466796875;
	setAttr ".tgi[0].ni[153].nvs" 18304;
	setAttr ".tgi[0].ni[154].x" 591.4285888671875;
	setAttr ".tgi[0].ni[154].y" 5338.5712890625;
	setAttr ".tgi[0].ni[154].nvs" 18304;
	setAttr ".tgi[0].ni[155].x" 175.71427917480469;
	setAttr ".tgi[0].ni[155].y" 6394.28564453125;
	setAttr ".tgi[0].ni[155].nvs" 18304;
	setAttr ".tgi[0].ni[156].x" 591.4285888671875;
	setAttr ".tgi[0].ni[156].y" -3501.428466796875;
	setAttr ".tgi[0].ni[156].nvs" 18304;
	setAttr ".tgi[0].ni[157].x" 505.71429443359375;
	setAttr ".tgi[0].ni[157].y" 1048.5714111328125;
	setAttr ".tgi[0].ni[157].nvs" 18304;
	setAttr ".tgi[0].ni[158].x" 591.4285888671875;
	setAttr ".tgi[0].ni[158].y" -3371.428466796875;
	setAttr ".tgi[0].ni[158].nvs" 18304;
	setAttr ".tgi[0].ni[159].x" 591.4285888671875;
	setAttr ".tgi[0].ni[159].y" -3241.428466796875;
	setAttr ".tgi[0].ni[159].nvs" 18304;
	setAttr ".tgi[0].ni[160].x" 284.28570556640625;
	setAttr ".tgi[0].ni[160].y" 5338.5712890625;
	setAttr ".tgi[0].ni[160].nvs" 18304;
	setAttr ".tgi[0].ni[161].x" 522.85711669921875;
	setAttr ".tgi[0].ni[161].y" -641.4285888671875;
	setAttr ".tgi[0].ni[161].nvs" 18304;
	setAttr ".tgi[0].ni[162].x" 591.4285888671875;
	setAttr ".tgi[0].ni[162].y" -3111.428466796875;
	setAttr ".tgi[0].ni[162].nvs" 18304;
	setAttr ".tgi[0].ni[163].x" 284.28570556640625;
	setAttr ".tgi[0].ni[163].y" 5468.5712890625;
	setAttr ".tgi[0].ni[163].nvs" 18304;
	setAttr ".tgi[0].ni[164].x" 591.4285888671875;
	setAttr ".tgi[0].ni[164].y" 5468.5712890625;
	setAttr ".tgi[0].ni[164].nvs" 18304;
	setAttr ".tgi[0].ni[165].x" 591.4285888671875;
	setAttr ".tgi[0].ni[165].y" 5598.5712890625;
	setAttr ".tgi[0].ni[165].nvs" 18304;
	setAttr ".tgi[0].ni[166].x" 591.4285888671875;
	setAttr ".tgi[0].ni[166].y" -2981.428466796875;
	setAttr ".tgi[0].ni[166].nvs" 18304;
	setAttr ".tgi[0].ni[167].x" 591.4285888671875;
	setAttr ".tgi[0].ni[167].y" 5728.5712890625;
	setAttr ".tgi[0].ni[167].nvs" 18304;
	setAttr ".tgi[0].ni[168].x" 284.28570556640625;
	setAttr ".tgi[0].ni[168].y" 5728.5712890625;
	setAttr ".tgi[0].ni[168].nvs" 18304;
	setAttr ".tgi[0].ni[169].x" 487.14285278320313;
	setAttr ".tgi[0].ni[169].y" 2218.571533203125;
	setAttr ".tgi[0].ni[169].nvs" 18304;
	setAttr ".tgi[0].ni[170].x" 591.4285888671875;
	setAttr ".tgi[0].ni[170].y" -2851.428466796875;
	setAttr ".tgi[0].ni[170].nvs" 18304;
	setAttr ".tgi[0].ni[171].x" 284.28570556640625;
	setAttr ".tgi[0].ni[171].y" 5598.5712890625;
	setAttr ".tgi[0].ni[171].nvs" 18304;
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
select -ne :defaultRenderUtilityList1;
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
connectAttr "Character_Hips_parentConstraint1.ctx" "Character_Hips.tx";
connectAttr "Character_Hips_parentConstraint1.cty" "Character_Hips.ty";
connectAttr "Character_Hips_parentConstraint1.ctz" "Character_Hips.tz";
connectAttr "Character_Hips_parentConstraint1.crx" "Character_Hips.rx";
connectAttr "Character_Hips_parentConstraint1.cry" "Character_Hips.ry";
connectAttr "Character_Hips_parentConstraint1.crz" "Character_Hips.rz";
connectAttr "Character_Hips.s" "Character_Spine.is";
connectAttr "Character_Spine_parentConstraint1.ctx" "Character_Spine.tx";
connectAttr "Character_Spine_parentConstraint1.cty" "Character_Spine.ty";
connectAttr "Character_Spine_parentConstraint1.ctz" "Character_Spine.tz";
connectAttr "Character_Spine_parentConstraint1.crx" "Character_Spine.rx";
connectAttr "Character_Spine_parentConstraint1.cry" "Character_Spine.ry";
connectAttr "Character_Spine_parentConstraint1.crz" "Character_Spine.rz";
connectAttr "Character_Spine.s" "Character_Spine1.is";
connectAttr "Character_Spine1_parentConstraint1.ctx" "Character_Spine1.tx";
connectAttr "Character_Spine1_parentConstraint1.cty" "Character_Spine1.ty";
connectAttr "Character_Spine1_parentConstraint1.ctz" "Character_Spine1.tz";
connectAttr "Character_Spine1_parentConstraint1.crx" "Character_Spine1.rx";
connectAttr "Character_Spine1_parentConstraint1.cry" "Character_Spine1.ry";
connectAttr "Character_Spine1_parentConstraint1.crz" "Character_Spine1.rz";
connectAttr "Character_Spine1.s" "Character_Spine2.is";
connectAttr "Character_Spine2_parentConstraint1.ctx" "Character_Spine2.tx";
connectAttr "Character_Spine2_parentConstraint1.cty" "Character_Spine2.ty";
connectAttr "Character_Spine2_parentConstraint1.ctz" "Character_Spine2.tz";
connectAttr "Character_Spine2_parentConstraint1.crx" "Character_Spine2.rx";
connectAttr "Character_Spine2_parentConstraint1.cry" "Character_Spine2.ry";
connectAttr "Character_Spine2_parentConstraint1.crz" "Character_Spine2.rz";
connectAttr "Character_Spine2.s" "Character_Neck.is";
connectAttr "Character_Neck_parentConstraint1.ctx" "Character_Neck.tx";
connectAttr "Character_Neck_parentConstraint1.cty" "Character_Neck.ty";
connectAttr "Character_Neck_parentConstraint1.ctz" "Character_Neck.tz";
connectAttr "Character_Neck_parentConstraint1.crx" "Character_Neck.rx";
connectAttr "Character_Neck_parentConstraint1.cry" "Character_Neck.ry";
connectAttr "Character_Neck_parentConstraint1.crz" "Character_Neck.rz";
connectAttr "Character_Neck.s" "Character_Head.is";
connectAttr "Character_Head_parentConstraint1.ctx" "Character_Head.tx";
connectAttr "Character_Head_parentConstraint1.cty" "Character_Head.ty";
connectAttr "Character_Head_parentConstraint1.ctz" "Character_Head.tz";
connectAttr "Character_Head_parentConstraint1.crx" "Character_Head.rx";
connectAttr "Character_Head_parentConstraint1.cry" "Character_Head.ry";
connectAttr "Character_Head_parentConstraint1.crz" "Character_Head.rz";
connectAttr "Character_Head.s" "Character_HeadUp.is";
connectAttr "Character_Head.s" "Character_Eye_L.is";
connectAttr "Character_Head.s" "Character_Eye_R.is";
connectAttr "Character_Head.ro" "Character_Head_parentConstraint1.cro";
connectAttr "Character_Head.pim" "Character_Head_parentConstraint1.cpim";
connectAttr "Character_Head.rp" "Character_Head_parentConstraint1.crp";
connectAttr "Character_Head.rpt" "Character_Head_parentConstraint1.crt";
connectAttr "Character_Head.jo" "Character_Head_parentConstraint1.cjo";
connectAttr "BoneFK_Head.t" "Character_Head_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_Head.rp" "Character_Head_parentConstraint1.tg[0].trp";
connectAttr "BoneFK_Head.rpt" "Character_Head_parentConstraint1.tg[0].trt";
connectAttr "BoneFK_Head.r" "Character_Head_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_Head.ro" "Character_Head_parentConstraint1.tg[0].tro";
connectAttr "BoneFK_Head.s" "Character_Head_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_Head.pm" "Character_Head_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Head.jo" "Character_Head_parentConstraint1.tg[0].tjo";
connectAttr "BoneFK_Head.ssc" "Character_Head_parentConstraint1.tg[0].tsc";
connectAttr "BoneFK_Head.is" "Character_Head_parentConstraint1.tg[0].tis";
connectAttr "Character_Head_parentConstraint1.w0" "Character_Head_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_Neck.ro" "Character_Neck_parentConstraint1.cro";
connectAttr "Character_Neck.pim" "Character_Neck_parentConstraint1.cpim";
connectAttr "Character_Neck.rp" "Character_Neck_parentConstraint1.crp";
connectAttr "Character_Neck.rpt" "Character_Neck_parentConstraint1.crt";
connectAttr "Character_Neck.jo" "Character_Neck_parentConstraint1.cjo";
connectAttr "BoneFK_Neck.t" "Character_Neck_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_Neck.rp" "Character_Neck_parentConstraint1.tg[0].trp";
connectAttr "BoneFK_Neck.rpt" "Character_Neck_parentConstraint1.tg[0].trt";
connectAttr "BoneFK_Neck.r" "Character_Neck_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_Neck.ro" "Character_Neck_parentConstraint1.tg[0].tro";
connectAttr "BoneFK_Neck.s" "Character_Neck_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_Neck.pm" "Character_Neck_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Neck.jo" "Character_Neck_parentConstraint1.tg[0].tjo";
connectAttr "BoneFK_Neck.ssc" "Character_Neck_parentConstraint1.tg[0].tsc";
connectAttr "BoneFK_Neck.is" "Character_Neck_parentConstraint1.tg[0].tis";
connectAttr "Character_Neck_parentConstraint1.w0" "Character_Neck_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_Spine2.s" "Character_LeftShoulder.is";
connectAttr "Character_LeftShoulder_parentConstraint1.ctx" "Character_LeftShoulder.tx"
		;
connectAttr "Character_LeftShoulder_parentConstraint1.cty" "Character_LeftShoulder.ty"
		;
connectAttr "Character_LeftShoulder_parentConstraint1.ctz" "Character_LeftShoulder.tz"
		;
connectAttr "Character_LeftShoulder_parentConstraint1.crx" "Character_LeftShoulder.rx"
		;
connectAttr "Character_LeftShoulder_parentConstraint1.cry" "Character_LeftShoulder.ry"
		;
connectAttr "Character_LeftShoulder_parentConstraint1.crz" "Character_LeftShoulder.rz"
		;
connectAttr "Character_LeftShoulder.s" "Character_LeftArm.is";
connectAttr "Character_LeftArm_parentConstraint1.ctx" "Character_LeftArm.tx";
connectAttr "Character_LeftArm_parentConstraint1.cty" "Character_LeftArm.ty";
connectAttr "Character_LeftArm_parentConstraint1.ctz" "Character_LeftArm.tz";
connectAttr "Character_LeftArm_parentConstraint1.crx" "Character_LeftArm.rx";
connectAttr "Character_LeftArm_parentConstraint1.cry" "Character_LeftArm.ry";
connectAttr "Character_LeftArm_parentConstraint1.crz" "Character_LeftArm.rz";
connectAttr "Character_LeftArm.s" "Character_LeftForeArm.is";
connectAttr "Character_LeftForeArm_parentConstraint1.ctx" "Character_LeftForeArm.tx"
		;
connectAttr "Character_LeftForeArm_parentConstraint1.cty" "Character_LeftForeArm.ty"
		;
connectAttr "Character_LeftForeArm_parentConstraint1.ctz" "Character_LeftForeArm.tz"
		;
connectAttr "Character_LeftForeArm_parentConstraint1.crx" "Character_LeftForeArm.rx"
		;
connectAttr "Character_LeftForeArm_parentConstraint1.cry" "Character_LeftForeArm.ry"
		;
connectAttr "Character_LeftForeArm_parentConstraint1.crz" "Character_LeftForeArm.rz"
		;
connectAttr "Character_LeftForeArm.s" "Character_LeftHand.is";
connectAttr "Character_LeftHand_parentConstraint1.ctx" "Character_LeftHand.tx";
connectAttr "Character_LeftHand_parentConstraint1.cty" "Character_LeftHand.ty";
connectAttr "Character_LeftHand_parentConstraint1.ctz" "Character_LeftHand.tz";
connectAttr "Character_LeftHand_parentConstraint1.crx" "Character_LeftHand.rx";
connectAttr "Character_LeftHand_parentConstraint1.cry" "Character_LeftHand.ry";
connectAttr "Character_LeftHand_parentConstraint1.crz" "Character_LeftHand.rz";
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
connectAttr "Character_LeftHand.ro" "Character_LeftHand_parentConstraint1.cro";
connectAttr "Character_LeftHand.pim" "Character_LeftHand_parentConstraint1.cpim"
		;
connectAttr "Character_LeftHand.rp" "Character_LeftHand_parentConstraint1.crp";
connectAttr "Character_LeftHand.rpt" "Character_LeftHand_parentConstraint1.crt";
connectAttr "Character_LeftHand.jo" "Character_LeftHand_parentConstraint1.cjo";
connectAttr "BoneFK_LeftHand.t" "Character_LeftHand_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_LeftHand.rp" "Character_LeftHand_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_LeftHand.rpt" "Character_LeftHand_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_LeftHand.r" "Character_LeftHand_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_LeftHand.ro" "Character_LeftHand_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_LeftHand.s" "Character_LeftHand_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_LeftHand.pm" "Character_LeftHand_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_LeftHand.jo" "Character_LeftHand_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_LeftHand.ssc" "Character_LeftHand_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_LeftHand.is" "Character_LeftHand_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_LeftHand_parentConstraint1.w0" "Character_LeftHand_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_LeftHand.t" "Character_LeftHand_parentConstraint1.tg[1].tt";
connectAttr "BoneIK_LeftHand.rp" "Character_LeftHand_parentConstraint1.tg[1].trp"
		;
connectAttr "BoneIK_LeftHand.rpt" "Character_LeftHand_parentConstraint1.tg[1].trt"
		;
connectAttr "BoneIK_LeftHand.r" "Character_LeftHand_parentConstraint1.tg[1].tr";
connectAttr "BoneIK_LeftHand.ro" "Character_LeftHand_parentConstraint1.tg[1].tro"
		;
connectAttr "BoneIK_LeftHand.s" "Character_LeftHand_parentConstraint1.tg[1].ts";
connectAttr "BoneIK_LeftHand.pm" "Character_LeftHand_parentConstraint1.tg[1].tpm"
		;
connectAttr "BoneIK_LeftHand.jo" "Character_LeftHand_parentConstraint1.tg[1].tjo"
		;
connectAttr "BoneIK_LeftHand.ssc" "Character_LeftHand_parentConstraint1.tg[1].tsc"
		;
connectAttr "BoneIK_LeftHand.is" "Character_LeftHand_parentConstraint1.tg[1].tis"
		;
connectAttr "Character_LeftHand_parentConstraint1.w1" "Character_LeftHand_parentConstraint1.tg[1].tw"
		;
connectAttr "Character_LeftForeArm.ro" "Character_LeftForeArm_parentConstraint1.cro"
		;
connectAttr "Character_LeftForeArm.pim" "Character_LeftForeArm_parentConstraint1.cpim"
		;
connectAttr "Character_LeftForeArm.rp" "Character_LeftForeArm_parentConstraint1.crp"
		;
connectAttr "Character_LeftForeArm.rpt" "Character_LeftForeArm_parentConstraint1.crt"
		;
connectAttr "Character_LeftForeArm.jo" "Character_LeftForeArm_parentConstraint1.cjo"
		;
connectAttr "BoneFK_LeftForeArm.t" "Character_LeftForeArm_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_LeftForeArm.rp" "Character_LeftForeArm_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_LeftForeArm.rpt" "Character_LeftForeArm_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_LeftForeArm.r" "Character_LeftForeArm_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_LeftForeArm.ro" "Character_LeftForeArm_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_LeftForeArm.s" "Character_LeftForeArm_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_LeftForeArm.pm" "Character_LeftForeArm_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_LeftForeArm.jo" "Character_LeftForeArm_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_LeftForeArm.ssc" "Character_LeftForeArm_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_LeftForeArm.is" "Character_LeftForeArm_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_LeftForeArm_parentConstraint1.w0" "Character_LeftForeArm_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_LeftForeArm.t" "Character_LeftForeArm_parentConstraint1.tg[1].tt"
		;
connectAttr "BoneIK_LeftForeArm.rp" "Character_LeftForeArm_parentConstraint1.tg[1].trp"
		;
connectAttr "BoneIK_LeftForeArm.rpt" "Character_LeftForeArm_parentConstraint1.tg[1].trt"
		;
connectAttr "BoneIK_LeftForeArm.r" "Character_LeftForeArm_parentConstraint1.tg[1].tr"
		;
connectAttr "BoneIK_LeftForeArm.ro" "Character_LeftForeArm_parentConstraint1.tg[1].tro"
		;
connectAttr "BoneIK_LeftForeArm.s" "Character_LeftForeArm_parentConstraint1.tg[1].ts"
		;
connectAttr "BoneIK_LeftForeArm.pm" "Character_LeftForeArm_parentConstraint1.tg[1].tpm"
		;
connectAttr "BoneIK_LeftForeArm.jo" "Character_LeftForeArm_parentConstraint1.tg[1].tjo"
		;
connectAttr "BoneIK_LeftForeArm.ssc" "Character_LeftForeArm_parentConstraint1.tg[1].tsc"
		;
connectAttr "BoneIK_LeftForeArm.is" "Character_LeftForeArm_parentConstraint1.tg[1].tis"
		;
connectAttr "Character_LeftForeArm_parentConstraint1.w1" "Character_LeftForeArm_parentConstraint1.tg[1].tw"
		;
connectAttr "Character_LeftArm.ro" "Character_LeftArm_parentConstraint1.cro";
connectAttr "Character_LeftArm.pim" "Character_LeftArm_parentConstraint1.cpim";
connectAttr "Character_LeftArm.rp" "Character_LeftArm_parentConstraint1.crp";
connectAttr "Character_LeftArm.rpt" "Character_LeftArm_parentConstraint1.crt";
connectAttr "Character_LeftArm.jo" "Character_LeftArm_parentConstraint1.cjo";
connectAttr "BoneFK_LeftArm.t" "Character_LeftArm_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_LeftArm.rp" "Character_LeftArm_parentConstraint1.tg[0].trp";
connectAttr "BoneFK_LeftArm.rpt" "Character_LeftArm_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_LeftArm.r" "Character_LeftArm_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_LeftArm.ro" "Character_LeftArm_parentConstraint1.tg[0].tro";
connectAttr "BoneFK_LeftArm.s" "Character_LeftArm_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_LeftArm.pm" "Character_LeftArm_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_LeftArm.jo" "Character_LeftArm_parentConstraint1.tg[0].tjo";
connectAttr "BoneFK_LeftArm.ssc" "Character_LeftArm_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_LeftArm.is" "Character_LeftArm_parentConstraint1.tg[0].tis";
connectAttr "Character_LeftArm_parentConstraint1.w0" "Character_LeftArm_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_LeftShoulder.ro" "Character_LeftShoulder_parentConstraint1.cro"
		;
connectAttr "Character_LeftShoulder.pim" "Character_LeftShoulder_parentConstraint1.cpim"
		;
connectAttr "Character_LeftShoulder.rp" "Character_LeftShoulder_parentConstraint1.crp"
		;
connectAttr "Character_LeftShoulder.rpt" "Character_LeftShoulder_parentConstraint1.crt"
		;
connectAttr "Character_LeftShoulder.jo" "Character_LeftShoulder_parentConstraint1.cjo"
		;
connectAttr "BoneFK_LeftShoulder.t" "Character_LeftShoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_LeftShoulder.rp" "Character_LeftShoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_LeftShoulder.rpt" "Character_LeftShoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_LeftShoulder.r" "Character_LeftShoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_LeftShoulder.ro" "Character_LeftShoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_LeftShoulder.s" "Character_LeftShoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_LeftShoulder.pm" "Character_LeftShoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_LeftShoulder.jo" "Character_LeftShoulder_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_LeftShoulder.ssc" "Character_LeftShoulder_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_LeftShoulder.is" "Character_LeftShoulder_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_LeftShoulder_parentConstraint1.w0" "Character_LeftShoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_Spine2.s" "Character_RightShoulder.is";
connectAttr "Character_RightShoulder_parentConstraint1.ctx" "Character_RightShoulder.tx"
		;
connectAttr "Character_RightShoulder_parentConstraint1.cty" "Character_RightShoulder.ty"
		;
connectAttr "Character_RightShoulder_parentConstraint1.ctz" "Character_RightShoulder.tz"
		;
connectAttr "Character_RightShoulder_parentConstraint1.crx" "Character_RightShoulder.rx"
		;
connectAttr "Character_RightShoulder_parentConstraint1.cry" "Character_RightShoulder.ry"
		;
connectAttr "Character_RightShoulder_parentConstraint1.crz" "Character_RightShoulder.rz"
		;
connectAttr "Character_RightShoulder.s" "Character_RightArm.is";
connectAttr "Character_RightArm_parentConstraint1.ctx" "Character_RightArm.tx";
connectAttr "Character_RightArm_parentConstraint1.cty" "Character_RightArm.ty";
connectAttr "Character_RightArm_parentConstraint1.ctz" "Character_RightArm.tz";
connectAttr "Character_RightArm_parentConstraint1.crx" "Character_RightArm.rx";
connectAttr "Character_RightArm_parentConstraint1.cry" "Character_RightArm.ry";
connectAttr "Character_RightArm_parentConstraint1.crz" "Character_RightArm.rz";
connectAttr "Character_RightArm.s" "Character_RightForeArm.is";
connectAttr "Character_RightForeArm_parentConstraint1.ctx" "Character_RightForeArm.tx"
		;
connectAttr "Character_RightForeArm_parentConstraint1.cty" "Character_RightForeArm.ty"
		;
connectAttr "Character_RightForeArm_parentConstraint1.ctz" "Character_RightForeArm.tz"
		;
connectAttr "Character_RightForeArm_parentConstraint1.crx" "Character_RightForeArm.rx"
		;
connectAttr "Character_RightForeArm_parentConstraint1.cry" "Character_RightForeArm.ry"
		;
connectAttr "Character_RightForeArm_parentConstraint1.crz" "Character_RightForeArm.rz"
		;
connectAttr "Character_RightForeArm.s" "Character_RightHand.is";
connectAttr "Character_RightHand_parentConstraint1.ctx" "Character_RightHand.tx"
		;
connectAttr "Character_RightHand_parentConstraint1.cty" "Character_RightHand.ty"
		;
connectAttr "Character_RightHand_parentConstraint1.ctz" "Character_RightHand.tz"
		;
connectAttr "Character_RightHand_parentConstraint1.crx" "Character_RightHand.rx"
		;
connectAttr "Character_RightHand_parentConstraint1.cry" "Character_RightHand.ry"
		;
connectAttr "Character_RightHand_parentConstraint1.crz" "Character_RightHand.rz"
		;
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
connectAttr "Character_RightHand.ro" "Character_RightHand_parentConstraint1.cro"
		;
connectAttr "Character_RightHand.pim" "Character_RightHand_parentConstraint1.cpim"
		;
connectAttr "Character_RightHand.rp" "Character_RightHand_parentConstraint1.crp"
		;
connectAttr "Character_RightHand.rpt" "Character_RightHand_parentConstraint1.crt"
		;
connectAttr "Character_RightHand.jo" "Character_RightHand_parentConstraint1.cjo"
		;
connectAttr "BoneFK_RightHand.t" "Character_RightHand_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_RightHand.rp" "Character_RightHand_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_RightHand.rpt" "Character_RightHand_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_RightHand.r" "Character_RightHand_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_RightHand.ro" "Character_RightHand_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_RightHand.s" "Character_RightHand_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_RightHand.pm" "Character_RightHand_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightHand.jo" "Character_RightHand_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_RightHand.ssc" "Character_RightHand_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_RightHand.is" "Character_RightHand_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_RightHand_parentConstraint1.w0" "Character_RightHand_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_RightHand.t" "Character_RightHand_parentConstraint1.tg[1].tt"
		;
connectAttr "BoneIK_RightHand.rp" "Character_RightHand_parentConstraint1.tg[1].trp"
		;
connectAttr "BoneIK_RightHand.rpt" "Character_RightHand_parentConstraint1.tg[1].trt"
		;
connectAttr "BoneIK_RightHand.r" "Character_RightHand_parentConstraint1.tg[1].tr"
		;
connectAttr "BoneIK_RightHand.ro" "Character_RightHand_parentConstraint1.tg[1].tro"
		;
connectAttr "BoneIK_RightHand.s" "Character_RightHand_parentConstraint1.tg[1].ts"
		;
connectAttr "BoneIK_RightHand.pm" "Character_RightHand_parentConstraint1.tg[1].tpm"
		;
connectAttr "BoneIK_RightHand.jo" "Character_RightHand_parentConstraint1.tg[1].tjo"
		;
connectAttr "BoneIK_RightHand.ssc" "Character_RightHand_parentConstraint1.tg[1].tsc"
		;
connectAttr "BoneIK_RightHand.is" "Character_RightHand_parentConstraint1.tg[1].tis"
		;
connectAttr "Character_RightHand_parentConstraint1.w1" "Character_RightHand_parentConstraint1.tg[1].tw"
		;
connectAttr "Character_RightForeArm.ro" "Character_RightForeArm_parentConstraint1.cro"
		;
connectAttr "Character_RightForeArm.pim" "Character_RightForeArm_parentConstraint1.cpim"
		;
connectAttr "Character_RightForeArm.rp" "Character_RightForeArm_parentConstraint1.crp"
		;
connectAttr "Character_RightForeArm.rpt" "Character_RightForeArm_parentConstraint1.crt"
		;
connectAttr "Character_RightForeArm.jo" "Character_RightForeArm_parentConstraint1.cjo"
		;
connectAttr "BoneFK_RightForeArm.t" "Character_RightForeArm_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_RightForeArm.rp" "Character_RightForeArm_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_RightForeArm.rpt" "Character_RightForeArm_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_RightForeArm.r" "Character_RightForeArm_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_RightForeArm.ro" "Character_RightForeArm_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_RightForeArm.s" "Character_RightForeArm_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_RightForeArm.pm" "Character_RightForeArm_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightForeArm.jo" "Character_RightForeArm_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_RightForeArm.ssc" "Character_RightForeArm_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_RightForeArm.is" "Character_RightForeArm_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_RightForeArm_parentConstraint1.w0" "Character_RightForeArm_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_RightForeArm.t" "Character_RightForeArm_parentConstraint1.tg[1].tt"
		;
connectAttr "BoneIK_RightForeArm.rp" "Character_RightForeArm_parentConstraint1.tg[1].trp"
		;
connectAttr "BoneIK_RightForeArm.rpt" "Character_RightForeArm_parentConstraint1.tg[1].trt"
		;
connectAttr "BoneIK_RightForeArm.r" "Character_RightForeArm_parentConstraint1.tg[1].tr"
		;
connectAttr "BoneIK_RightForeArm.ro" "Character_RightForeArm_parentConstraint1.tg[1].tro"
		;
connectAttr "BoneIK_RightForeArm.s" "Character_RightForeArm_parentConstraint1.tg[1].ts"
		;
connectAttr "BoneIK_RightForeArm.pm" "Character_RightForeArm_parentConstraint1.tg[1].tpm"
		;
connectAttr "BoneIK_RightForeArm.jo" "Character_RightForeArm_parentConstraint1.tg[1].tjo"
		;
connectAttr "BoneIK_RightForeArm.ssc" "Character_RightForeArm_parentConstraint1.tg[1].tsc"
		;
connectAttr "BoneIK_RightForeArm.is" "Character_RightForeArm_parentConstraint1.tg[1].tis"
		;
connectAttr "Character_RightForeArm_parentConstraint1.w1" "Character_RightForeArm_parentConstraint1.tg[1].tw"
		;
connectAttr "Character_RightArm.ro" "Character_RightArm_parentConstraint1.cro";
connectAttr "Character_RightArm.pim" "Character_RightArm_parentConstraint1.cpim"
		;
connectAttr "Character_RightArm.rp" "Character_RightArm_parentConstraint1.crp";
connectAttr "Character_RightArm.rpt" "Character_RightArm_parentConstraint1.crt";
connectAttr "Character_RightArm.jo" "Character_RightArm_parentConstraint1.cjo";
connectAttr "BoneFK_RightArm.t" "Character_RightArm_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_RightArm.rp" "Character_RightArm_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_RightArm.rpt" "Character_RightArm_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_RightArm.r" "Character_RightArm_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_RightArm.ro" "Character_RightArm_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_RightArm.s" "Character_RightArm_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_RightArm.pm" "Character_RightArm_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightArm.jo" "Character_RightArm_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_RightArm.ssc" "Character_RightArm_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_RightArm.is" "Character_RightArm_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_RightArm_parentConstraint1.w0" "Character_RightArm_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_RightShoulder.ro" "Character_RightShoulder_parentConstraint1.cro"
		;
connectAttr "Character_RightShoulder.pim" "Character_RightShoulder_parentConstraint1.cpim"
		;
connectAttr "Character_RightShoulder.rp" "Character_RightShoulder_parentConstraint1.crp"
		;
connectAttr "Character_RightShoulder.rpt" "Character_RightShoulder_parentConstraint1.crt"
		;
connectAttr "Character_RightShoulder.jo" "Character_RightShoulder_parentConstraint1.cjo"
		;
connectAttr "BoneFK_RightShoulder.t" "Character_RightShoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_RightShoulder.rp" "Character_RightShoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_RightShoulder.rpt" "Character_RightShoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_RightShoulder.r" "Character_RightShoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_RightShoulder.ro" "Character_RightShoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_RightShoulder.s" "Character_RightShoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_RightShoulder.pm" "Character_RightShoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightShoulder.jo" "Character_RightShoulder_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_RightShoulder.ssc" "Character_RightShoulder_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_RightShoulder.is" "Character_RightShoulder_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_RightShoulder_parentConstraint1.w0" "Character_RightShoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_Spine2.ro" "Character_Spine2_parentConstraint1.cro";
connectAttr "Character_Spine2.pim" "Character_Spine2_parentConstraint1.cpim";
connectAttr "Character_Spine2.rp" "Character_Spine2_parentConstraint1.crp";
connectAttr "Character_Spine2.rpt" "Character_Spine2_parentConstraint1.crt";
connectAttr "Character_Spine2.jo" "Character_Spine2_parentConstraint1.cjo";
connectAttr "BoneFK_Spine2.t" "Character_Spine2_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_Spine2.rp" "Character_Spine2_parentConstraint1.tg[0].trp";
connectAttr "BoneFK_Spine2.rpt" "Character_Spine2_parentConstraint1.tg[0].trt";
connectAttr "BoneFK_Spine2.r" "Character_Spine2_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_Spine2.ro" "Character_Spine2_parentConstraint1.tg[0].tro";
connectAttr "BoneFK_Spine2.s" "Character_Spine2_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_Spine2.pm" "Character_Spine2_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Spine2.jo" "Character_Spine2_parentConstraint1.tg[0].tjo";
connectAttr "BoneFK_Spine2.ssc" "Character_Spine2_parentConstraint1.tg[0].tsc";
connectAttr "BoneFK_Spine2.is" "Character_Spine2_parentConstraint1.tg[0].tis";
connectAttr "Character_Spine2_parentConstraint1.w0" "Character_Spine2_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_Spine1.ro" "Character_Spine1_parentConstraint1.cro";
connectAttr "Character_Spine1.pim" "Character_Spine1_parentConstraint1.cpim";
connectAttr "Character_Spine1.rp" "Character_Spine1_parentConstraint1.crp";
connectAttr "Character_Spine1.rpt" "Character_Spine1_parentConstraint1.crt";
connectAttr "Character_Spine1.jo" "Character_Spine1_parentConstraint1.cjo";
connectAttr "BoneFK_Spine1.t" "Character_Spine1_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_Spine1.rp" "Character_Spine1_parentConstraint1.tg[0].trp";
connectAttr "BoneFK_Spine1.rpt" "Character_Spine1_parentConstraint1.tg[0].trt";
connectAttr "BoneFK_Spine1.r" "Character_Spine1_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_Spine1.ro" "Character_Spine1_parentConstraint1.tg[0].tro";
connectAttr "BoneFK_Spine1.s" "Character_Spine1_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_Spine1.pm" "Character_Spine1_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Spine1.jo" "Character_Spine1_parentConstraint1.tg[0].tjo";
connectAttr "BoneFK_Spine1.ssc" "Character_Spine1_parentConstraint1.tg[0].tsc";
connectAttr "BoneFK_Spine1.is" "Character_Spine1_parentConstraint1.tg[0].tis";
connectAttr "Character_Spine1_parentConstraint1.w0" "Character_Spine1_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_Spine.ro" "Character_Spine_parentConstraint1.cro";
connectAttr "Character_Spine.pim" "Character_Spine_parentConstraint1.cpim";
connectAttr "Character_Spine.rp" "Character_Spine_parentConstraint1.crp";
connectAttr "Character_Spine.rpt" "Character_Spine_parentConstraint1.crt";
connectAttr "Character_Spine.jo" "Character_Spine_parentConstraint1.cjo";
connectAttr "BoneFK_Spine.t" "Character_Spine_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_Spine.rp" "Character_Spine_parentConstraint1.tg[0].trp";
connectAttr "BoneFK_Spine.rpt" "Character_Spine_parentConstraint1.tg[0].trt";
connectAttr "BoneFK_Spine.r" "Character_Spine_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_Spine.ro" "Character_Spine_parentConstraint1.tg[0].tro";
connectAttr "BoneFK_Spine.s" "Character_Spine_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_Spine.pm" "Character_Spine_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Spine.jo" "Character_Spine_parentConstraint1.tg[0].tjo";
connectAttr "BoneFK_Spine.ssc" "Character_Spine_parentConstraint1.tg[0].tsc";
connectAttr "BoneFK_Spine.is" "Character_Spine_parentConstraint1.tg[0].tis";
connectAttr "Character_Spine_parentConstraint1.w0" "Character_Spine_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_Hips.s" "Character_LeftUpLeg.is";
connectAttr "Character_LeftUpLeg_parentConstraint1.ctx" "Character_LeftUpLeg.tx"
		;
connectAttr "Character_LeftUpLeg_parentConstraint1.cty" "Character_LeftUpLeg.ty"
		;
connectAttr "Character_LeftUpLeg_parentConstraint1.ctz" "Character_LeftUpLeg.tz"
		;
connectAttr "Character_LeftUpLeg_parentConstraint1.crx" "Character_LeftUpLeg.rx"
		;
connectAttr "Character_LeftUpLeg_parentConstraint1.cry" "Character_LeftUpLeg.ry"
		;
connectAttr "Character_LeftUpLeg_parentConstraint1.crz" "Character_LeftUpLeg.rz"
		;
connectAttr "Character_LeftUpLeg.s" "Character_LeftLeg.is";
connectAttr "Character_LeftLeg_parentConstraint1.ctx" "Character_LeftLeg.tx";
connectAttr "Character_LeftLeg_parentConstraint1.cty" "Character_LeftLeg.ty";
connectAttr "Character_LeftLeg_parentConstraint1.ctz" "Character_LeftLeg.tz";
connectAttr "Character_LeftLeg_parentConstraint1.crx" "Character_LeftLeg.rx";
connectAttr "Character_LeftLeg_parentConstraint1.cry" "Character_LeftLeg.ry";
connectAttr "Character_LeftLeg_parentConstraint1.crz" "Character_LeftLeg.rz";
connectAttr "Character_LeftLeg.s" "Character_LeftFoot.is";
connectAttr "Character_LeftFoot_parentConstraint1.ctx" "Character_LeftFoot.tx";
connectAttr "Character_LeftFoot_parentConstraint1.cty" "Character_LeftFoot.ty";
connectAttr "Character_LeftFoot_parentConstraint1.ctz" "Character_LeftFoot.tz";
connectAttr "Character_LeftFoot_parentConstraint1.crx" "Character_LeftFoot.rx";
connectAttr "Character_LeftFoot_parentConstraint1.cry" "Character_LeftFoot.ry";
connectAttr "Character_LeftFoot_parentConstraint1.crz" "Character_LeftFoot.rz";
connectAttr "Character_LeftFoot.s" "Character_LeftToeBase.is";
connectAttr "Character_LeftToeBase_parentConstraint1.ctx" "Character_LeftToeBase.tx"
		;
connectAttr "Character_LeftToeBase_parentConstraint1.cty" "Character_LeftToeBase.ty"
		;
connectAttr "Character_LeftToeBase_parentConstraint1.ctz" "Character_LeftToeBase.tz"
		;
connectAttr "Character_LeftToeBase_parentConstraint1.crx" "Character_LeftToeBase.rx"
		;
connectAttr "Character_LeftToeBase_parentConstraint1.cry" "Character_LeftToeBase.ry"
		;
connectAttr "Character_LeftToeBase_parentConstraint1.crz" "Character_LeftToeBase.rz"
		;
connectAttr "Character_LeftToeBase.ro" "Character_LeftToeBase_parentConstraint1.cro"
		;
connectAttr "Character_LeftToeBase.pim" "Character_LeftToeBase_parentConstraint1.cpim"
		;
connectAttr "Character_LeftToeBase.rp" "Character_LeftToeBase_parentConstraint1.crp"
		;
connectAttr "Character_LeftToeBase.rpt" "Character_LeftToeBase_parentConstraint1.crt"
		;
connectAttr "Character_LeftToeBase.jo" "Character_LeftToeBase_parentConstraint1.cjo"
		;
connectAttr "BoneFK_LeftToeBase.t" "Character_LeftToeBase_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_LeftToeBase.rp" "Character_LeftToeBase_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_LeftToeBase.rpt" "Character_LeftToeBase_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_LeftToeBase.r" "Character_LeftToeBase_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_LeftToeBase.ro" "Character_LeftToeBase_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_LeftToeBase.s" "Character_LeftToeBase_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_LeftToeBase.pm" "Character_LeftToeBase_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_LeftToeBase.jo" "Character_LeftToeBase_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_LeftToeBase.ssc" "Character_LeftToeBase_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_LeftToeBase.is" "Character_LeftToeBase_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_LeftToeBase_parentConstraint1.w0" "Character_LeftToeBase_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_LeftFoot.ro" "Character_LeftFoot_parentConstraint1.cro";
connectAttr "Character_LeftFoot.pim" "Character_LeftFoot_parentConstraint1.cpim"
		;
connectAttr "Character_LeftFoot.rp" "Character_LeftFoot_parentConstraint1.crp";
connectAttr "Character_LeftFoot.rpt" "Character_LeftFoot_parentConstraint1.crt";
connectAttr "Character_LeftFoot.jo" "Character_LeftFoot_parentConstraint1.cjo";
connectAttr "BoneFK_LeftFoot.t" "Character_LeftFoot_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_LeftFoot.rp" "Character_LeftFoot_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_LeftFoot.rpt" "Character_LeftFoot_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_LeftFoot.r" "Character_LeftFoot_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_LeftFoot.ro" "Character_LeftFoot_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_LeftFoot.s" "Character_LeftFoot_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_LeftFoot.pm" "Character_LeftFoot_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_LeftFoot.jo" "Character_LeftFoot_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_LeftFoot.ssc" "Character_LeftFoot_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_LeftFoot.is" "Character_LeftFoot_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_LeftFoot_parentConstraint1.w0" "Character_LeftFoot_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_LeftFoot.t" "Character_LeftFoot_parentConstraint1.tg[1].tt";
connectAttr "BoneIK_LeftFoot.rp" "Character_LeftFoot_parentConstraint1.tg[1].trp"
		;
connectAttr "BoneIK_LeftFoot.rpt" "Character_LeftFoot_parentConstraint1.tg[1].trt"
		;
connectAttr "BoneIK_LeftFoot.r" "Character_LeftFoot_parentConstraint1.tg[1].tr";
connectAttr "BoneIK_LeftFoot.ro" "Character_LeftFoot_parentConstraint1.tg[1].tro"
		;
connectAttr "BoneIK_LeftFoot.s" "Character_LeftFoot_parentConstraint1.tg[1].ts";
connectAttr "BoneIK_LeftFoot.pm" "Character_LeftFoot_parentConstraint1.tg[1].tpm"
		;
connectAttr "BoneIK_LeftFoot.jo" "Character_LeftFoot_parentConstraint1.tg[1].tjo"
		;
connectAttr "BoneIK_LeftFoot.ssc" "Character_LeftFoot_parentConstraint1.tg[1].tsc"
		;
connectAttr "BoneIK_LeftFoot.is" "Character_LeftFoot_parentConstraint1.tg[1].tis"
		;
connectAttr "Character_LeftFoot_parentConstraint1.w1" "Character_LeftFoot_parentConstraint1.tg[1].tw"
		;
connectAttr "Character_LeftLeg.ro" "Character_LeftLeg_parentConstraint1.cro";
connectAttr "Character_LeftLeg.pim" "Character_LeftLeg_parentConstraint1.cpim";
connectAttr "Character_LeftLeg.rp" "Character_LeftLeg_parentConstraint1.crp";
connectAttr "Character_LeftLeg.rpt" "Character_LeftLeg_parentConstraint1.crt";
connectAttr "Character_LeftLeg.jo" "Character_LeftLeg_parentConstraint1.cjo";
connectAttr "BoneFK_LeftLeg.t" "Character_LeftLeg_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_LeftLeg.rp" "Character_LeftLeg_parentConstraint1.tg[0].trp";
connectAttr "BoneFK_LeftLeg.rpt" "Character_LeftLeg_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_LeftLeg.r" "Character_LeftLeg_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_LeftLeg.ro" "Character_LeftLeg_parentConstraint1.tg[0].tro";
connectAttr "BoneFK_LeftLeg.s" "Character_LeftLeg_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_LeftLeg.pm" "Character_LeftLeg_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_LeftLeg.jo" "Character_LeftLeg_parentConstraint1.tg[0].tjo";
connectAttr "BoneFK_LeftLeg.ssc" "Character_LeftLeg_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_LeftLeg.is" "Character_LeftLeg_parentConstraint1.tg[0].tis";
connectAttr "Character_LeftLeg_parentConstraint1.w0" "Character_LeftLeg_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_LeftLeg.t" "Character_LeftLeg_parentConstraint1.tg[1].tt";
connectAttr "BoneIK_LeftLeg.rp" "Character_LeftLeg_parentConstraint1.tg[1].trp";
connectAttr "BoneIK_LeftLeg.rpt" "Character_LeftLeg_parentConstraint1.tg[1].trt"
		;
connectAttr "BoneIK_LeftLeg.r" "Character_LeftLeg_parentConstraint1.tg[1].tr";
connectAttr "BoneIK_LeftLeg.ro" "Character_LeftLeg_parentConstraint1.tg[1].tro";
connectAttr "BoneIK_LeftLeg.s" "Character_LeftLeg_parentConstraint1.tg[1].ts";
connectAttr "BoneIK_LeftLeg.pm" "Character_LeftLeg_parentConstraint1.tg[1].tpm";
connectAttr "BoneIK_LeftLeg.jo" "Character_LeftLeg_parentConstraint1.tg[1].tjo";
connectAttr "BoneIK_LeftLeg.ssc" "Character_LeftLeg_parentConstraint1.tg[1].tsc"
		;
connectAttr "BoneIK_LeftLeg.is" "Character_LeftLeg_parentConstraint1.tg[1].tis";
connectAttr "Character_LeftLeg_parentConstraint1.w1" "Character_LeftLeg_parentConstraint1.tg[1].tw"
		;
connectAttr "Character_LeftUpLeg.ro" "Character_LeftUpLeg_parentConstraint1.cro"
		;
connectAttr "Character_LeftUpLeg.pim" "Character_LeftUpLeg_parentConstraint1.cpim"
		;
connectAttr "Character_LeftUpLeg.rp" "Character_LeftUpLeg_parentConstraint1.crp"
		;
connectAttr "Character_LeftUpLeg.rpt" "Character_LeftUpLeg_parentConstraint1.crt"
		;
connectAttr "Character_LeftUpLeg.jo" "Character_LeftUpLeg_parentConstraint1.cjo"
		;
connectAttr "BoneFK_LeftUpLeg.t" "Character_LeftUpLeg_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_LeftUpLeg.rp" "Character_LeftUpLeg_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_LeftUpLeg.rpt" "Character_LeftUpLeg_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_LeftUpLeg.r" "Character_LeftUpLeg_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_LeftUpLeg.ro" "Character_LeftUpLeg_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_LeftUpLeg.s" "Character_LeftUpLeg_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_LeftUpLeg.pm" "Character_LeftUpLeg_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_LeftUpLeg.jo" "Character_LeftUpLeg_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_LeftUpLeg.ssc" "Character_LeftUpLeg_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_LeftUpLeg.is" "Character_LeftUpLeg_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_LeftUpLeg_parentConstraint1.w0" "Character_LeftUpLeg_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_Hips.s" "Character_RightUpLeg.is";
connectAttr "Character_RightUpLeg_parentConstraint1.ctx" "Character_RightUpLeg.tx"
		;
connectAttr "Character_RightUpLeg_parentConstraint1.cty" "Character_RightUpLeg.ty"
		;
connectAttr "Character_RightUpLeg_parentConstraint1.ctz" "Character_RightUpLeg.tz"
		;
connectAttr "Character_RightUpLeg_parentConstraint1.crx" "Character_RightUpLeg.rx"
		;
connectAttr "Character_RightUpLeg_parentConstraint1.cry" "Character_RightUpLeg.ry"
		;
connectAttr "Character_RightUpLeg_parentConstraint1.crz" "Character_RightUpLeg.rz"
		;
connectAttr "Character_RightUpLeg.s" "Character_RightLeg.is";
connectAttr "Character_RightLeg_parentConstraint1.ctx" "Character_RightLeg.tx";
connectAttr "Character_RightLeg_parentConstraint1.cty" "Character_RightLeg.ty";
connectAttr "Character_RightLeg_parentConstraint1.ctz" "Character_RightLeg.tz";
connectAttr "Character_RightLeg_parentConstraint1.crx" "Character_RightLeg.rx";
connectAttr "Character_RightLeg_parentConstraint1.cry" "Character_RightLeg.ry";
connectAttr "Character_RightLeg_parentConstraint1.crz" "Character_RightLeg.rz";
connectAttr "Character_RightLeg.s" "Character_RightFoot.is";
connectAttr "Character_RightFoot_parentConstraint1.ctx" "Character_RightFoot.tx"
		;
connectAttr "Character_RightFoot_parentConstraint1.cty" "Character_RightFoot.ty"
		;
connectAttr "Character_RightFoot_parentConstraint1.ctz" "Character_RightFoot.tz"
		;
connectAttr "Character_RightFoot_parentConstraint1.crx" "Character_RightFoot.rx"
		;
connectAttr "Character_RightFoot_parentConstraint1.cry" "Character_RightFoot.ry"
		;
connectAttr "Character_RightFoot_parentConstraint1.crz" "Character_RightFoot.rz"
		;
connectAttr "Character_RightFoot.s" "Character_RightToeBase.is";
connectAttr "Character_RightToeBase_parentConstraint1.ctx" "Character_RightToeBase.tx"
		;
connectAttr "Character_RightToeBase_parentConstraint1.cty" "Character_RightToeBase.ty"
		;
connectAttr "Character_RightToeBase_parentConstraint1.ctz" "Character_RightToeBase.tz"
		;
connectAttr "Character_RightToeBase_parentConstraint1.crx" "Character_RightToeBase.rx"
		;
connectAttr "Character_RightToeBase_parentConstraint1.cry" "Character_RightToeBase.ry"
		;
connectAttr "Character_RightToeBase_parentConstraint1.crz" "Character_RightToeBase.rz"
		;
connectAttr "Character_RightToeBase.ro" "Character_RightToeBase_parentConstraint1.cro"
		;
connectAttr "Character_RightToeBase.pim" "Character_RightToeBase_parentConstraint1.cpim"
		;
connectAttr "Character_RightToeBase.rp" "Character_RightToeBase_parentConstraint1.crp"
		;
connectAttr "Character_RightToeBase.rpt" "Character_RightToeBase_parentConstraint1.crt"
		;
connectAttr "Character_RightToeBase.jo" "Character_RightToeBase_parentConstraint1.cjo"
		;
connectAttr "BoneFK_RightToeBase.t" "Character_RightToeBase_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_RightToeBase.rp" "Character_RightToeBase_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_RightToeBase.rpt" "Character_RightToeBase_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_RightToeBase.r" "Character_RightToeBase_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_RightToeBase.ro" "Character_RightToeBase_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_RightToeBase.s" "Character_RightToeBase_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_RightToeBase.pm" "Character_RightToeBase_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightToeBase.jo" "Character_RightToeBase_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_RightToeBase.ssc" "Character_RightToeBase_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_RightToeBase.is" "Character_RightToeBase_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_RightToeBase_parentConstraint1.w0" "Character_RightToeBase_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_RightFoot.ro" "Character_RightFoot_parentConstraint1.cro"
		;
connectAttr "Character_RightFoot.pim" "Character_RightFoot_parentConstraint1.cpim"
		;
connectAttr "Character_RightFoot.rp" "Character_RightFoot_parentConstraint1.crp"
		;
connectAttr "Character_RightFoot.rpt" "Character_RightFoot_parentConstraint1.crt"
		;
connectAttr "Character_RightFoot.jo" "Character_RightFoot_parentConstraint1.cjo"
		;
connectAttr "BoneFK_RightFoot.t" "Character_RightFoot_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_RightFoot.rp" "Character_RightFoot_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_RightFoot.rpt" "Character_RightFoot_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_RightFoot.r" "Character_RightFoot_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_RightFoot.ro" "Character_RightFoot_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_RightFoot.s" "Character_RightFoot_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_RightFoot.pm" "Character_RightFoot_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightFoot.jo" "Character_RightFoot_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_RightFoot.ssc" "Character_RightFoot_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_RightFoot.is" "Character_RightFoot_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_RightFoot_parentConstraint1.w0" "Character_RightFoot_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_RightFoot.t" "Character_RightFoot_parentConstraint1.tg[1].tt"
		;
connectAttr "BoneIK_RightFoot.rp" "Character_RightFoot_parentConstraint1.tg[1].trp"
		;
connectAttr "BoneIK_RightFoot.rpt" "Character_RightFoot_parentConstraint1.tg[1].trt"
		;
connectAttr "BoneIK_RightFoot.r" "Character_RightFoot_parentConstraint1.tg[1].tr"
		;
connectAttr "BoneIK_RightFoot.ro" "Character_RightFoot_parentConstraint1.tg[1].tro"
		;
connectAttr "BoneIK_RightFoot.s" "Character_RightFoot_parentConstraint1.tg[1].ts"
		;
connectAttr "BoneIK_RightFoot.pm" "Character_RightFoot_parentConstraint1.tg[1].tpm"
		;
connectAttr "BoneIK_RightFoot.jo" "Character_RightFoot_parentConstraint1.tg[1].tjo"
		;
connectAttr "BoneIK_RightFoot.ssc" "Character_RightFoot_parentConstraint1.tg[1].tsc"
		;
connectAttr "BoneIK_RightFoot.is" "Character_RightFoot_parentConstraint1.tg[1].tis"
		;
connectAttr "Character_RightFoot_parentConstraint1.w1" "Character_RightFoot_parentConstraint1.tg[1].tw"
		;
connectAttr "Character_RightLeg.ro" "Character_RightLeg_parentConstraint1.cro";
connectAttr "Character_RightLeg.pim" "Character_RightLeg_parentConstraint1.cpim"
		;
connectAttr "Character_RightLeg.rp" "Character_RightLeg_parentConstraint1.crp";
connectAttr "Character_RightLeg.rpt" "Character_RightLeg_parentConstraint1.crt";
connectAttr "Character_RightLeg.jo" "Character_RightLeg_parentConstraint1.cjo";
connectAttr "BoneFK_RightLeg.t" "Character_RightLeg_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_RightLeg.rp" "Character_RightLeg_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_RightLeg.rpt" "Character_RightLeg_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_RightLeg.r" "Character_RightLeg_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_RightLeg.ro" "Character_RightLeg_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_RightLeg.s" "Character_RightLeg_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_RightLeg.pm" "Character_RightLeg_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightLeg.jo" "Character_RightLeg_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_RightLeg.ssc" "Character_RightLeg_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_RightLeg.is" "Character_RightLeg_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_RightLeg_parentConstraint1.w0" "Character_RightLeg_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_RightLeg.t" "Character_RightLeg_parentConstraint1.tg[1].tt";
connectAttr "BoneIK_RightLeg.rp" "Character_RightLeg_parentConstraint1.tg[1].trp"
		;
connectAttr "BoneIK_RightLeg.rpt" "Character_RightLeg_parentConstraint1.tg[1].trt"
		;
connectAttr "BoneIK_RightLeg.r" "Character_RightLeg_parentConstraint1.tg[1].tr";
connectAttr "BoneIK_RightLeg.ro" "Character_RightLeg_parentConstraint1.tg[1].tro"
		;
connectAttr "BoneIK_RightLeg.s" "Character_RightLeg_parentConstraint1.tg[1].ts";
connectAttr "BoneIK_RightLeg.pm" "Character_RightLeg_parentConstraint1.tg[1].tpm"
		;
connectAttr "BoneIK_RightLeg.jo" "Character_RightLeg_parentConstraint1.tg[1].tjo"
		;
connectAttr "BoneIK_RightLeg.ssc" "Character_RightLeg_parentConstraint1.tg[1].tsc"
		;
connectAttr "BoneIK_RightLeg.is" "Character_RightLeg_parentConstraint1.tg[1].tis"
		;
connectAttr "Character_RightLeg_parentConstraint1.w1" "Character_RightLeg_parentConstraint1.tg[1].tw"
		;
connectAttr "Character_RightUpLeg.ro" "Character_RightUpLeg_parentConstraint1.cro"
		;
connectAttr "Character_RightUpLeg.pim" "Character_RightUpLeg_parentConstraint1.cpim"
		;
connectAttr "Character_RightUpLeg.rp" "Character_RightUpLeg_parentConstraint1.crp"
		;
connectAttr "Character_RightUpLeg.rpt" "Character_RightUpLeg_parentConstraint1.crt"
		;
connectAttr "Character_RightUpLeg.jo" "Character_RightUpLeg_parentConstraint1.cjo"
		;
connectAttr "BoneFK_RightUpLeg.t" "Character_RightUpLeg_parentConstraint1.tg[0].tt"
		;
connectAttr "BoneFK_RightUpLeg.rp" "Character_RightUpLeg_parentConstraint1.tg[0].trp"
		;
connectAttr "BoneFK_RightUpLeg.rpt" "Character_RightUpLeg_parentConstraint1.tg[0].trt"
		;
connectAttr "BoneFK_RightUpLeg.r" "Character_RightUpLeg_parentConstraint1.tg[0].tr"
		;
connectAttr "BoneFK_RightUpLeg.ro" "Character_RightUpLeg_parentConstraint1.tg[0].tro"
		;
connectAttr "BoneFK_RightUpLeg.s" "Character_RightUpLeg_parentConstraint1.tg[0].ts"
		;
connectAttr "BoneFK_RightUpLeg.pm" "Character_RightUpLeg_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightUpLeg.jo" "Character_RightUpLeg_parentConstraint1.tg[0].tjo"
		;
connectAttr "BoneFK_RightUpLeg.ssc" "Character_RightUpLeg_parentConstraint1.tg[0].tsc"
		;
connectAttr "BoneFK_RightUpLeg.is" "Character_RightUpLeg_parentConstraint1.tg[0].tis"
		;
connectAttr "Character_RightUpLeg_parentConstraint1.w0" "Character_RightUpLeg_parentConstraint1.tg[0].tw"
		;
connectAttr "Character_Hips.ro" "Character_Hips_parentConstraint1.cro";
connectAttr "Character_Hips.pim" "Character_Hips_parentConstraint1.cpim";
connectAttr "Character_Hips.rp" "Character_Hips_parentConstraint1.crp";
connectAttr "Character_Hips.rpt" "Character_Hips_parentConstraint1.crt";
connectAttr "Character_Hips.jo" "Character_Hips_parentConstraint1.cjo";
connectAttr "BoneFK_Hips.t" "Character_Hips_parentConstraint1.tg[0].tt";
connectAttr "BoneFK_Hips.rp" "Character_Hips_parentConstraint1.tg[0].trp";
connectAttr "BoneFK_Hips.rpt" "Character_Hips_parentConstraint1.tg[0].trt";
connectAttr "BoneFK_Hips.r" "Character_Hips_parentConstraint1.tg[0].tr";
connectAttr "BoneFK_Hips.ro" "Character_Hips_parentConstraint1.tg[0].tro";
connectAttr "BoneFK_Hips.s" "Character_Hips_parentConstraint1.tg[0].ts";
connectAttr "BoneFK_Hips.pm" "Character_Hips_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Hips.jo" "Character_Hips_parentConstraint1.tg[0].tjo";
connectAttr "BoneFK_Hips.ssc" "Character_Hips_parentConstraint1.tg[0].tsc";
connectAttr "BoneFK_Hips.is" "Character_Hips_parentConstraint1.tg[0].tis";
connectAttr "Character_Hips_parentConstraint1.w0" "Character_Hips_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_Hips_parentConstraint1.ctx" "BoneFK_Hips.tx";
connectAttr "BoneFK_Hips_parentConstraint1.cty" "BoneFK_Hips.ty";
connectAttr "BoneFK_Hips_parentConstraint1.ctz" "BoneFK_Hips.tz";
connectAttr "BoneFK_Hips_parentConstraint1.crx" "BoneFK_Hips.rx";
connectAttr "BoneFK_Hips_parentConstraint1.cry" "BoneFK_Hips.ry";
connectAttr "BoneFK_Hips_parentConstraint1.crz" "BoneFK_Hips.rz";
connectAttr "BoneFK_Spine_parentConstraint1.ctx" "BoneFK_Spine.tx";
connectAttr "BoneFK_Spine_parentConstraint1.cty" "BoneFK_Spine.ty";
connectAttr "BoneFK_Spine_parentConstraint1.ctz" "BoneFK_Spine.tz";
connectAttr "BoneFK_Spine_parentConstraint1.crx" "BoneFK_Spine.rx";
connectAttr "BoneFK_Spine_parentConstraint1.cry" "BoneFK_Spine.ry";
connectAttr "BoneFK_Spine_parentConstraint1.crz" "BoneFK_Spine.rz";
connectAttr "BoneFK_Hips.s" "BoneFK_Spine.is";
connectAttr "BoneFK_Spine1_parentConstraint1.ctx" "BoneFK_Spine1.tx";
connectAttr "BoneFK_Spine1_parentConstraint1.cty" "BoneFK_Spine1.ty";
connectAttr "BoneFK_Spine1_parentConstraint1.ctz" "BoneFK_Spine1.tz";
connectAttr "BoneFK_Spine1_parentConstraint1.crx" "BoneFK_Spine1.rx";
connectAttr "BoneFK_Spine1_parentConstraint1.cry" "BoneFK_Spine1.ry";
connectAttr "BoneFK_Spine1_parentConstraint1.crz" "BoneFK_Spine1.rz";
connectAttr "BoneFK_Spine.s" "BoneFK_Spine1.is";
connectAttr "BoneFK_Spine2_parentConstraint1.ctx" "BoneFK_Spine2.tx";
connectAttr "BoneFK_Spine2_parentConstraint1.cty" "BoneFK_Spine2.ty";
connectAttr "BoneFK_Spine2_parentConstraint1.ctz" "BoneFK_Spine2.tz";
connectAttr "BoneFK_Spine2_parentConstraint1.crx" "BoneFK_Spine2.rx";
connectAttr "BoneFK_Spine2_parentConstraint1.cry" "BoneFK_Spine2.ry";
connectAttr "BoneFK_Spine2_parentConstraint1.crz" "BoneFK_Spine2.rz";
connectAttr "BoneFK_Spine1.s" "BoneFK_Spine2.is";
connectAttr "BoneFK_Neck_parentConstraint1.ctx" "BoneFK_Neck.tx";
connectAttr "BoneFK_Neck_parentConstraint1.cty" "BoneFK_Neck.ty";
connectAttr "BoneFK_Neck_parentConstraint1.ctz" "BoneFK_Neck.tz";
connectAttr "BoneFK_Neck_parentConstraint1.crx" "BoneFK_Neck.rx";
connectAttr "BoneFK_Neck_parentConstraint1.cry" "BoneFK_Neck.ry";
connectAttr "BoneFK_Neck_parentConstraint1.crz" "BoneFK_Neck.rz";
connectAttr "BoneFK_Spine2.s" "BoneFK_Neck.is";
connectAttr "BoneFK_Head_parentConstraint1.ctx" "BoneFK_Head.tx";
connectAttr "BoneFK_Head_parentConstraint1.cty" "BoneFK_Head.ty";
connectAttr "BoneFK_Head_parentConstraint1.ctz" "BoneFK_Head.tz";
connectAttr "BoneFK_Head_parentConstraint1.crx" "BoneFK_Head.rx";
connectAttr "BoneFK_Head_parentConstraint1.cry" "BoneFK_Head.ry";
connectAttr "BoneFK_Head_parentConstraint1.crz" "BoneFK_Head.rz";
connectAttr "BoneFK_Neck.s" "BoneFK_Head.is";
connectAttr "BoneFK_Head.s" "BoneFK_HeadUp.is";
connectAttr "BoneFK_Head.s" "BoneFK_Eye_L.is";
connectAttr "BoneFK_Head.s" "BoneFK_Eye_R.is";
connectAttr "BoneFK_Head.ro" "BoneFK_Head_parentConstraint1.cro";
connectAttr "BoneFK_Head.pim" "BoneFK_Head_parentConstraint1.cpim";
connectAttr "BoneFK_Head.rp" "BoneFK_Head_parentConstraint1.crp";
connectAttr "BoneFK_Head.rpt" "BoneFK_Head_parentConstraint1.crt";
connectAttr "BoneFK_Head.jo" "BoneFK_Head_parentConstraint1.cjo";
connectAttr "fk_Head.t" "BoneFK_Head_parentConstraint1.tg[0].tt";
connectAttr "fk_Head.rp" "BoneFK_Head_parentConstraint1.tg[0].trp";
connectAttr "fk_Head.rpt" "BoneFK_Head_parentConstraint1.tg[0].trt";
connectAttr "fk_Head.r" "BoneFK_Head_parentConstraint1.tg[0].tr";
connectAttr "fk_Head.ro" "BoneFK_Head_parentConstraint1.tg[0].tro";
connectAttr "fk_Head.s" "BoneFK_Head_parentConstraint1.tg[0].ts";
connectAttr "fk_Head.pm" "BoneFK_Head_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Head_parentConstraint1.w0" "BoneFK_Head_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_Neck.ro" "BoneFK_Neck_parentConstraint1.cro";
connectAttr "BoneFK_Neck.pim" "BoneFK_Neck_parentConstraint1.cpim";
connectAttr "BoneFK_Neck.rp" "BoneFK_Neck_parentConstraint1.crp";
connectAttr "BoneFK_Neck.rpt" "BoneFK_Neck_parentConstraint1.crt";
connectAttr "BoneFK_Neck.jo" "BoneFK_Neck_parentConstraint1.cjo";
connectAttr "fk_Neck.t" "BoneFK_Neck_parentConstraint1.tg[0].tt";
connectAttr "fk_Neck.rp" "BoneFK_Neck_parentConstraint1.tg[0].trp";
connectAttr "fk_Neck.rpt" "BoneFK_Neck_parentConstraint1.tg[0].trt";
connectAttr "fk_Neck.r" "BoneFK_Neck_parentConstraint1.tg[0].tr";
connectAttr "fk_Neck.ro" "BoneFK_Neck_parentConstraint1.tg[0].tro";
connectAttr "fk_Neck.s" "BoneFK_Neck_parentConstraint1.tg[0].ts";
connectAttr "fk_Neck.pm" "BoneFK_Neck_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Neck_parentConstraint1.w0" "BoneFK_Neck_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_LeftShoulder_parentConstraint1.ctx" "BoneFK_LeftShoulder.tx"
		;
connectAttr "BoneFK_LeftShoulder_parentConstraint1.cty" "BoneFK_LeftShoulder.ty"
		;
connectAttr "BoneFK_LeftShoulder_parentConstraint1.ctz" "BoneFK_LeftShoulder.tz"
		;
connectAttr "BoneFK_LeftShoulder_parentConstraint1.crx" "BoneFK_LeftShoulder.rx"
		;
connectAttr "BoneFK_LeftShoulder_parentConstraint1.cry" "BoneFK_LeftShoulder.ry"
		;
connectAttr "BoneFK_LeftShoulder_parentConstraint1.crz" "BoneFK_LeftShoulder.rz"
		;
connectAttr "BoneFK_Spine2.s" "BoneFK_LeftShoulder.is";
connectAttr "BoneFK_LeftArm_parentConstraint1.ctx" "BoneFK_LeftArm.tx";
connectAttr "BoneFK_LeftArm_parentConstraint1.cty" "BoneFK_LeftArm.ty";
connectAttr "BoneFK_LeftArm_parentConstraint1.ctz" "BoneFK_LeftArm.tz";
connectAttr "BoneFK_LeftArm_parentConstraint1.crx" "BoneFK_LeftArm.rx";
connectAttr "BoneFK_LeftArm_parentConstraint1.cry" "BoneFK_LeftArm.ry";
connectAttr "BoneFK_LeftArm_parentConstraint1.crz" "BoneFK_LeftArm.rz";
connectAttr "BoneFK_LeftShoulder.s" "BoneFK_LeftArm.is";
connectAttr "BoneFK_LeftForeArm_parentConstraint1.ctx" "BoneFK_LeftForeArm.tx";
connectAttr "BoneFK_LeftForeArm_parentConstraint1.cty" "BoneFK_LeftForeArm.ty";
connectAttr "BoneFK_LeftForeArm_parentConstraint1.ctz" "BoneFK_LeftForeArm.tz";
connectAttr "BoneFK_LeftForeArm_parentConstraint1.crx" "BoneFK_LeftForeArm.rx";
connectAttr "BoneFK_LeftForeArm_parentConstraint1.cry" "BoneFK_LeftForeArm.ry";
connectAttr "BoneFK_LeftForeArm_parentConstraint1.crz" "BoneFK_LeftForeArm.rz";
connectAttr "BoneFK_LeftArm.s" "BoneFK_LeftForeArm.is";
connectAttr "BoneFK_LeftHand_parentConstraint1.ctx" "BoneFK_LeftHand.tx";
connectAttr "BoneFK_LeftHand_parentConstraint1.cty" "BoneFK_LeftHand.ty";
connectAttr "BoneFK_LeftHand_parentConstraint1.ctz" "BoneFK_LeftHand.tz";
connectAttr "BoneFK_LeftHand_parentConstraint1.crx" "BoneFK_LeftHand.rx";
connectAttr "BoneFK_LeftHand_parentConstraint1.cry" "BoneFK_LeftHand.ry";
connectAttr "BoneFK_LeftHand_parentConstraint1.crz" "BoneFK_LeftHand.rz";
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
connectAttr "BoneFK_LeftHand.ro" "BoneFK_LeftHand_parentConstraint1.cro";
connectAttr "BoneFK_LeftHand.pim" "BoneFK_LeftHand_parentConstraint1.cpim";
connectAttr "BoneFK_LeftHand.rp" "BoneFK_LeftHand_parentConstraint1.crp";
connectAttr "BoneFK_LeftHand.rpt" "BoneFK_LeftHand_parentConstraint1.crt";
connectAttr "BoneFK_LeftHand.jo" "BoneFK_LeftHand_parentConstraint1.cjo";
connectAttr "fk_Hand_Left.t" "BoneFK_LeftHand_parentConstraint1.tg[0].tt";
connectAttr "fk_Hand_Left.rp" "BoneFK_LeftHand_parentConstraint1.tg[0].trp";
connectAttr "fk_Hand_Left.rpt" "BoneFK_LeftHand_parentConstraint1.tg[0].trt";
connectAttr "fk_Hand_Left.r" "BoneFK_LeftHand_parentConstraint1.tg[0].tr";
connectAttr "fk_Hand_Left.ro" "BoneFK_LeftHand_parentConstraint1.tg[0].tro";
connectAttr "fk_Hand_Left.s" "BoneFK_LeftHand_parentConstraint1.tg[0].ts";
connectAttr "fk_Hand_Left.pm" "BoneFK_LeftHand_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_LeftHand_parentConstraint1.w0" "BoneFK_LeftHand_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_LeftForeArm.ro" "BoneFK_LeftForeArm_parentConstraint1.cro";
connectAttr "BoneFK_LeftForeArm.pim" "BoneFK_LeftForeArm_parentConstraint1.cpim"
		;
connectAttr "BoneFK_LeftForeArm.rp" "BoneFK_LeftForeArm_parentConstraint1.crp";
connectAttr "BoneFK_LeftForeArm.rpt" "BoneFK_LeftForeArm_parentConstraint1.crt";
connectAttr "BoneFK_LeftForeArm.jo" "BoneFK_LeftForeArm_parentConstraint1.cjo";
connectAttr "fk_ForeArm_Left.t" "BoneFK_LeftForeArm_parentConstraint1.tg[0].tt";
connectAttr "fk_ForeArm_Left.rp" "BoneFK_LeftForeArm_parentConstraint1.tg[0].trp"
		;
connectAttr "fk_ForeArm_Left.rpt" "BoneFK_LeftForeArm_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_ForeArm_Left.r" "BoneFK_LeftForeArm_parentConstraint1.tg[0].tr";
connectAttr "fk_ForeArm_Left.ro" "BoneFK_LeftForeArm_parentConstraint1.tg[0].tro"
		;
connectAttr "fk_ForeArm_Left.s" "BoneFK_LeftForeArm_parentConstraint1.tg[0].ts";
connectAttr "fk_ForeArm_Left.pm" "BoneFK_LeftForeArm_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_LeftForeArm_parentConstraint1.w0" "BoneFK_LeftForeArm_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_LeftArm.ro" "BoneFK_LeftArm_parentConstraint1.cro";
connectAttr "BoneFK_LeftArm.pim" "BoneFK_LeftArm_parentConstraint1.cpim";
connectAttr "BoneFK_LeftArm.rp" "BoneFK_LeftArm_parentConstraint1.crp";
connectAttr "BoneFK_LeftArm.rpt" "BoneFK_LeftArm_parentConstraint1.crt";
connectAttr "BoneFK_LeftArm.jo" "BoneFK_LeftArm_parentConstraint1.cjo";
connectAttr "fk_UpperArm_Left.t" "BoneFK_LeftArm_parentConstraint1.tg[0].tt";
connectAttr "fk_UpperArm_Left.rp" "BoneFK_LeftArm_parentConstraint1.tg[0].trp";
connectAttr "fk_UpperArm_Left.rpt" "BoneFK_LeftArm_parentConstraint1.tg[0].trt";
connectAttr "fk_UpperArm_Left.r" "BoneFK_LeftArm_parentConstraint1.tg[0].tr";
connectAttr "fk_UpperArm_Left.ro" "BoneFK_LeftArm_parentConstraint1.tg[0].tro";
connectAttr "fk_UpperArm_Left.s" "BoneFK_LeftArm_parentConstraint1.tg[0].ts";
connectAttr "fk_UpperArm_Left.pm" "BoneFK_LeftArm_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_LeftArm_parentConstraint1.w0" "BoneFK_LeftArm_parentConstraint1.tg[0].tw"
		;
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
connectAttr "BoneIK_LeftHand.tx" "effector2.tx";
connectAttr "BoneIK_LeftHand.ty" "effector2.ty";
connectAttr "BoneIK_LeftHand.tz" "effector2.tz";
connectAttr "BoneFK_LeftShoulder.ro" "BoneFK_LeftShoulder_parentConstraint1.cro"
		;
connectAttr "BoneFK_LeftShoulder.pim" "BoneFK_LeftShoulder_parentConstraint1.cpim"
		;
connectAttr "BoneFK_LeftShoulder.rp" "BoneFK_LeftShoulder_parentConstraint1.crp"
		;
connectAttr "BoneFK_LeftShoulder.rpt" "BoneFK_LeftShoulder_parentConstraint1.crt"
		;
connectAttr "BoneFK_LeftShoulder.jo" "BoneFK_LeftShoulder_parentConstraint1.cjo"
		;
connectAttr "fk_Shoulder_Left.t" "BoneFK_LeftShoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "fk_Shoulder_Left.rp" "BoneFK_LeftShoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "fk_Shoulder_Left.rpt" "BoneFK_LeftShoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_Shoulder_Left.r" "BoneFK_LeftShoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "fk_Shoulder_Left.ro" "BoneFK_LeftShoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "fk_Shoulder_Left.s" "BoneFK_LeftShoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "fk_Shoulder_Left.pm" "BoneFK_LeftShoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_LeftShoulder_parentConstraint1.w0" "BoneFK_LeftShoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_RightShoulder_parentConstraint1.ctx" "BoneFK_RightShoulder.tx"
		;
connectAttr "BoneFK_RightShoulder_parentConstraint1.cty" "BoneFK_RightShoulder.ty"
		;
connectAttr "BoneFK_RightShoulder_parentConstraint1.ctz" "BoneFK_RightShoulder.tz"
		;
connectAttr "BoneFK_RightShoulder_parentConstraint1.crx" "BoneFK_RightShoulder.rx"
		;
connectAttr "BoneFK_RightShoulder_parentConstraint1.cry" "BoneFK_RightShoulder.ry"
		;
connectAttr "BoneFK_RightShoulder_parentConstraint1.crz" "BoneFK_RightShoulder.rz"
		;
connectAttr "BoneFK_Spine2.s" "BoneFK_RightShoulder.is";
connectAttr "BoneFK_RightArm_parentConstraint1.ctx" "BoneFK_RightArm.tx";
connectAttr "BoneFK_RightArm_parentConstraint1.cty" "BoneFK_RightArm.ty";
connectAttr "BoneFK_RightArm_parentConstraint1.ctz" "BoneFK_RightArm.tz";
connectAttr "BoneFK_RightArm_parentConstraint1.crx" "BoneFK_RightArm.rx";
connectAttr "BoneFK_RightArm_parentConstraint1.cry" "BoneFK_RightArm.ry";
connectAttr "BoneFK_RightArm_parentConstraint1.crz" "BoneFK_RightArm.rz";
connectAttr "BoneFK_RightShoulder.s" "BoneFK_RightArm.is";
connectAttr "BoneFK_RightForeArm_parentConstraint1.ctx" "BoneFK_RightForeArm.tx"
		;
connectAttr "BoneFK_RightForeArm_parentConstraint1.cty" "BoneFK_RightForeArm.ty"
		;
connectAttr "BoneFK_RightForeArm_parentConstraint1.ctz" "BoneFK_RightForeArm.tz"
		;
connectAttr "BoneFK_RightForeArm_parentConstraint1.crx" "BoneFK_RightForeArm.rx"
		;
connectAttr "BoneFK_RightForeArm_parentConstraint1.cry" "BoneFK_RightForeArm.ry"
		;
connectAttr "BoneFK_RightForeArm_parentConstraint1.crz" "BoneFK_RightForeArm.rz"
		;
connectAttr "BoneFK_RightArm.s" "BoneFK_RightForeArm.is";
connectAttr "BoneFK_RightHand_parentConstraint1.ctx" "BoneFK_RightHand.tx";
connectAttr "BoneFK_RightHand_parentConstraint1.cty" "BoneFK_RightHand.ty";
connectAttr "BoneFK_RightHand_parentConstraint1.ctz" "BoneFK_RightHand.tz";
connectAttr "BoneFK_RightHand_parentConstraint1.crx" "BoneFK_RightHand.rx";
connectAttr "BoneFK_RightHand_parentConstraint1.cry" "BoneFK_RightHand.ry";
connectAttr "BoneFK_RightHand_parentConstraint1.crz" "BoneFK_RightHand.rz";
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
connectAttr "BoneFK_RightHand.ro" "BoneFK_RightHand_parentConstraint1.cro";
connectAttr "BoneFK_RightHand.pim" "BoneFK_RightHand_parentConstraint1.cpim";
connectAttr "BoneFK_RightHand.rp" "BoneFK_RightHand_parentConstraint1.crp";
connectAttr "BoneFK_RightHand.rpt" "BoneFK_RightHand_parentConstraint1.crt";
connectAttr "BoneFK_RightHand.jo" "BoneFK_RightHand_parentConstraint1.cjo";
connectAttr "fk_Hand_Right.t" "BoneFK_RightHand_parentConstraint1.tg[0].tt";
connectAttr "fk_Hand_Right.rp" "BoneFK_RightHand_parentConstraint1.tg[0].trp";
connectAttr "fk_Hand_Right.rpt" "BoneFK_RightHand_parentConstraint1.tg[0].trt";
connectAttr "fk_Hand_Right.r" "BoneFK_RightHand_parentConstraint1.tg[0].tr";
connectAttr "fk_Hand_Right.ro" "BoneFK_RightHand_parentConstraint1.tg[0].tro";
connectAttr "fk_Hand_Right.s" "BoneFK_RightHand_parentConstraint1.tg[0].ts";
connectAttr "fk_Hand_Right.pm" "BoneFK_RightHand_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_RightHand_parentConstraint1.w0" "BoneFK_RightHand_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_RightForeArm.ro" "BoneFK_RightForeArm_parentConstraint1.cro"
		;
connectAttr "BoneFK_RightForeArm.pim" "BoneFK_RightForeArm_parentConstraint1.cpim"
		;
connectAttr "BoneFK_RightForeArm.rp" "BoneFK_RightForeArm_parentConstraint1.crp"
		;
connectAttr "BoneFK_RightForeArm.rpt" "BoneFK_RightForeArm_parentConstraint1.crt"
		;
connectAttr "BoneFK_RightForeArm.jo" "BoneFK_RightForeArm_parentConstraint1.cjo"
		;
connectAttr "fk_ForeArm_Right.t" "BoneFK_RightForeArm_parentConstraint1.tg[0].tt"
		;
connectAttr "fk_ForeArm_Right.rp" "BoneFK_RightForeArm_parentConstraint1.tg[0].trp"
		;
connectAttr "fk_ForeArm_Right.rpt" "BoneFK_RightForeArm_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_ForeArm_Right.r" "BoneFK_RightForeArm_parentConstraint1.tg[0].tr"
		;
connectAttr "fk_ForeArm_Right.ro" "BoneFK_RightForeArm_parentConstraint1.tg[0].tro"
		;
connectAttr "fk_ForeArm_Right.s" "BoneFK_RightForeArm_parentConstraint1.tg[0].ts"
		;
connectAttr "fk_ForeArm_Right.pm" "BoneFK_RightForeArm_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightForeArm_parentConstraint1.w0" "BoneFK_RightForeArm_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_RightArm.ro" "BoneFK_RightArm_parentConstraint1.cro";
connectAttr "BoneFK_RightArm.pim" "BoneFK_RightArm_parentConstraint1.cpim";
connectAttr "BoneFK_RightArm.rp" "BoneFK_RightArm_parentConstraint1.crp";
connectAttr "BoneFK_RightArm.rpt" "BoneFK_RightArm_parentConstraint1.crt";
connectAttr "BoneFK_RightArm.jo" "BoneFK_RightArm_parentConstraint1.cjo";
connectAttr "fk_UpperArm_Right.t" "BoneFK_RightArm_parentConstraint1.tg[0].tt";
connectAttr "fk_UpperArm_Right.rp" "BoneFK_RightArm_parentConstraint1.tg[0].trp"
		;
connectAttr "fk_UpperArm_Right.rpt" "BoneFK_RightArm_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_UpperArm_Right.r" "BoneFK_RightArm_parentConstraint1.tg[0].tr";
connectAttr "fk_UpperArm_Right.ro" "BoneFK_RightArm_parentConstraint1.tg[0].tro"
		;
connectAttr "fk_UpperArm_Right.s" "BoneFK_RightArm_parentConstraint1.tg[0].ts";
connectAttr "fk_UpperArm_Right.pm" "BoneFK_RightArm_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightArm_parentConstraint1.w0" "BoneFK_RightArm_parentConstraint1.tg[0].tw"
		;
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
connectAttr "BoneIK_RightHand.tx" "effector4.tx";
connectAttr "BoneIK_RightHand.ty" "effector4.ty";
connectAttr "BoneIK_RightHand.tz" "effector4.tz";
connectAttr "BoneFK_RightShoulder.ro" "BoneFK_RightShoulder_parentConstraint1.cro"
		;
connectAttr "BoneFK_RightShoulder.pim" "BoneFK_RightShoulder_parentConstraint1.cpim"
		;
connectAttr "BoneFK_RightShoulder.rp" "BoneFK_RightShoulder_parentConstraint1.crp"
		;
connectAttr "BoneFK_RightShoulder.rpt" "BoneFK_RightShoulder_parentConstraint1.crt"
		;
connectAttr "BoneFK_RightShoulder.jo" "BoneFK_RightShoulder_parentConstraint1.cjo"
		;
connectAttr "fk_Shoulder_Right.t" "BoneFK_RightShoulder_parentConstraint1.tg[0].tt"
		;
connectAttr "fk_Shoulder_Right.rp" "BoneFK_RightShoulder_parentConstraint1.tg[0].trp"
		;
connectAttr "fk_Shoulder_Right.rpt" "BoneFK_RightShoulder_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_Shoulder_Right.r" "BoneFK_RightShoulder_parentConstraint1.tg[0].tr"
		;
connectAttr "fk_Shoulder_Right.ro" "BoneFK_RightShoulder_parentConstraint1.tg[0].tro"
		;
connectAttr "fk_Shoulder_Right.s" "BoneFK_RightShoulder_parentConstraint1.tg[0].ts"
		;
connectAttr "fk_Shoulder_Right.pm" "BoneFK_RightShoulder_parentConstraint1.tg[0].tpm"
		;
connectAttr "BoneFK_RightShoulder_parentConstraint1.w0" "BoneFK_RightShoulder_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_Spine2.ro" "BoneFK_Spine2_parentConstraint1.cro";
connectAttr "BoneFK_Spine2.pim" "BoneFK_Spine2_parentConstraint1.cpim";
connectAttr "BoneFK_Spine2.rp" "BoneFK_Spine2_parentConstraint1.crp";
connectAttr "BoneFK_Spine2.rpt" "BoneFK_Spine2_parentConstraint1.crt";
connectAttr "BoneFK_Spine2.jo" "BoneFK_Spine2_parentConstraint1.cjo";
connectAttr "fk_Spine3.t" "BoneFK_Spine2_parentConstraint1.tg[0].tt";
connectAttr "fk_Spine3.rp" "BoneFK_Spine2_parentConstraint1.tg[0].trp";
connectAttr "fk_Spine3.rpt" "BoneFK_Spine2_parentConstraint1.tg[0].trt";
connectAttr "fk_Spine3.r" "BoneFK_Spine2_parentConstraint1.tg[0].tr";
connectAttr "fk_Spine3.ro" "BoneFK_Spine2_parentConstraint1.tg[0].tro";
connectAttr "fk_Spine3.s" "BoneFK_Spine2_parentConstraint1.tg[0].ts";
connectAttr "fk_Spine3.pm" "BoneFK_Spine2_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Spine2_parentConstraint1.w0" "BoneFK_Spine2_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_Spine1.ro" "BoneFK_Spine1_parentConstraint1.cro";
connectAttr "BoneFK_Spine1.pim" "BoneFK_Spine1_parentConstraint1.cpim";
connectAttr "BoneFK_Spine1.rp" "BoneFK_Spine1_parentConstraint1.crp";
connectAttr "BoneFK_Spine1.rpt" "BoneFK_Spine1_parentConstraint1.crt";
connectAttr "BoneFK_Spine1.jo" "BoneFK_Spine1_parentConstraint1.cjo";
connectAttr "fk_Spine2.t" "BoneFK_Spine1_parentConstraint1.tg[0].tt";
connectAttr "fk_Spine2.rp" "BoneFK_Spine1_parentConstraint1.tg[0].trp";
connectAttr "fk_Spine2.rpt" "BoneFK_Spine1_parentConstraint1.tg[0].trt";
connectAttr "fk_Spine2.r" "BoneFK_Spine1_parentConstraint1.tg[0].tr";
connectAttr "fk_Spine2.ro" "BoneFK_Spine1_parentConstraint1.tg[0].tro";
connectAttr "fk_Spine2.s" "BoneFK_Spine1_parentConstraint1.tg[0].ts";
connectAttr "fk_Spine2.pm" "BoneFK_Spine1_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Spine1_parentConstraint1.w0" "BoneFK_Spine1_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_Spine.ro" "BoneFK_Spine_parentConstraint1.cro";
connectAttr "BoneFK_Spine.pim" "BoneFK_Spine_parentConstraint1.cpim";
connectAttr "BoneFK_Spine.rp" "BoneFK_Spine_parentConstraint1.crp";
connectAttr "BoneFK_Spine.rpt" "BoneFK_Spine_parentConstraint1.crt";
connectAttr "BoneFK_Spine.jo" "BoneFK_Spine_parentConstraint1.cjo";
connectAttr "fk_Spine1.t" "BoneFK_Spine_parentConstraint1.tg[0].tt";
connectAttr "fk_Spine1.rp" "BoneFK_Spine_parentConstraint1.tg[0].trp";
connectAttr "fk_Spine1.rpt" "BoneFK_Spine_parentConstraint1.tg[0].trt";
connectAttr "fk_Spine1.r" "BoneFK_Spine_parentConstraint1.tg[0].tr";
connectAttr "fk_Spine1.ro" "BoneFK_Spine_parentConstraint1.tg[0].tro";
connectAttr "fk_Spine1.s" "BoneFK_Spine_parentConstraint1.tg[0].ts";
connectAttr "fk_Spine1.pm" "BoneFK_Spine_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Spine_parentConstraint1.w0" "BoneFK_Spine_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_LeftUpLeg_parentConstraint1.ctx" "BoneFK_LeftUpLeg.tx";
connectAttr "BoneFK_LeftUpLeg_parentConstraint1.cty" "BoneFK_LeftUpLeg.ty";
connectAttr "BoneFK_LeftUpLeg_parentConstraint1.ctz" "BoneFK_LeftUpLeg.tz";
connectAttr "BoneFK_LeftUpLeg_parentConstraint1.crx" "BoneFK_LeftUpLeg.rx";
connectAttr "BoneFK_LeftUpLeg_parentConstraint1.cry" "BoneFK_LeftUpLeg.ry";
connectAttr "BoneFK_LeftUpLeg_parentConstraint1.crz" "BoneFK_LeftUpLeg.rz";
connectAttr "BoneFK_Hips.s" "BoneFK_LeftUpLeg.is";
connectAttr "BoneFK_LeftLeg_parentConstraint1.ctx" "BoneFK_LeftLeg.tx";
connectAttr "BoneFK_LeftLeg_parentConstraint1.cty" "BoneFK_LeftLeg.ty";
connectAttr "BoneFK_LeftLeg_parentConstraint1.ctz" "BoneFK_LeftLeg.tz";
connectAttr "BoneFK_LeftLeg_parentConstraint1.crx" "BoneFK_LeftLeg.rx";
connectAttr "BoneFK_LeftLeg_parentConstraint1.cry" "BoneFK_LeftLeg.ry";
connectAttr "BoneFK_LeftLeg_parentConstraint1.crz" "BoneFK_LeftLeg.rz";
connectAttr "BoneFK_LeftUpLeg.s" "BoneFK_LeftLeg.is";
connectAttr "BoneFK_LeftFoot_parentConstraint1.ctx" "BoneFK_LeftFoot.tx";
connectAttr "BoneFK_LeftFoot_parentConstraint1.cty" "BoneFK_LeftFoot.ty";
connectAttr "BoneFK_LeftFoot_parentConstraint1.ctz" "BoneFK_LeftFoot.tz";
connectAttr "BoneFK_LeftFoot_parentConstraint1.crx" "BoneFK_LeftFoot.rx";
connectAttr "BoneFK_LeftFoot_parentConstraint1.cry" "BoneFK_LeftFoot.ry";
connectAttr "BoneFK_LeftFoot_parentConstraint1.crz" "BoneFK_LeftFoot.rz";
connectAttr "BoneFK_LeftLeg.s" "BoneFK_LeftFoot.is";
connectAttr "BoneFK_LeftToeBase_parentConstraint1.ctx" "BoneFK_LeftToeBase.tx";
connectAttr "BoneFK_LeftToeBase_parentConstraint1.cty" "BoneFK_LeftToeBase.ty";
connectAttr "BoneFK_LeftToeBase_parentConstraint1.ctz" "BoneFK_LeftToeBase.tz";
connectAttr "BoneFK_LeftToeBase_parentConstraint1.crx" "BoneFK_LeftToeBase.rx";
connectAttr "BoneFK_LeftToeBase_parentConstraint1.cry" "BoneFK_LeftToeBase.ry";
connectAttr "BoneFK_LeftToeBase_parentConstraint1.crz" "BoneFK_LeftToeBase.rz";
connectAttr "BoneFK_LeftFoot.s" "BoneFK_LeftToeBase.is";
connectAttr "BoneFK_LeftToeBase.ro" "BoneFK_LeftToeBase_parentConstraint1.cro";
connectAttr "BoneFK_LeftToeBase.pim" "BoneFK_LeftToeBase_parentConstraint1.cpim"
		;
connectAttr "BoneFK_LeftToeBase.rp" "BoneFK_LeftToeBase_parentConstraint1.crp";
connectAttr "BoneFK_LeftToeBase.rpt" "BoneFK_LeftToeBase_parentConstraint1.crt";
connectAttr "BoneFK_LeftToeBase.jo" "BoneFK_LeftToeBase_parentConstraint1.cjo";
connectAttr "fk_Toe_Left.t" "BoneFK_LeftToeBase_parentConstraint1.tg[0].tt";
connectAttr "fk_Toe_Left.rp" "BoneFK_LeftToeBase_parentConstraint1.tg[0].trp";
connectAttr "fk_Toe_Left.rpt" "BoneFK_LeftToeBase_parentConstraint1.tg[0].trt";
connectAttr "fk_Toe_Left.r" "BoneFK_LeftToeBase_parentConstraint1.tg[0].tr";
connectAttr "fk_Toe_Left.ro" "BoneFK_LeftToeBase_parentConstraint1.tg[0].tro";
connectAttr "fk_Toe_Left.s" "BoneFK_LeftToeBase_parentConstraint1.tg[0].ts";
connectAttr "fk_Toe_Left.pm" "BoneFK_LeftToeBase_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_LeftToeBase_parentConstraint1.w0" "BoneFK_LeftToeBase_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_LeftFoot.ro" "BoneFK_LeftFoot_parentConstraint1.cro";
connectAttr "BoneFK_LeftFoot.pim" "BoneFK_LeftFoot_parentConstraint1.cpim";
connectAttr "BoneFK_LeftFoot.rp" "BoneFK_LeftFoot_parentConstraint1.crp";
connectAttr "BoneFK_LeftFoot.rpt" "BoneFK_LeftFoot_parentConstraint1.crt";
connectAttr "BoneFK_LeftFoot.jo" "BoneFK_LeftFoot_parentConstraint1.cjo";
connectAttr "fk_Foot_Left.t" "BoneFK_LeftFoot_parentConstraint1.tg[0].tt";
connectAttr "fk_Foot_Left.rp" "BoneFK_LeftFoot_parentConstraint1.tg[0].trp";
connectAttr "fk_Foot_Left.rpt" "BoneFK_LeftFoot_parentConstraint1.tg[0].trt";
connectAttr "fk_Foot_Left.r" "BoneFK_LeftFoot_parentConstraint1.tg[0].tr";
connectAttr "fk_Foot_Left.ro" "BoneFK_LeftFoot_parentConstraint1.tg[0].tro";
connectAttr "fk_Foot_Left.s" "BoneFK_LeftFoot_parentConstraint1.tg[0].ts";
connectAttr "fk_Foot_Left.pm" "BoneFK_LeftFoot_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_LeftFoot_parentConstraint1.w0" "BoneFK_LeftFoot_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_LeftLeg.ro" "BoneFK_LeftLeg_parentConstraint1.cro";
connectAttr "BoneFK_LeftLeg.pim" "BoneFK_LeftLeg_parentConstraint1.cpim";
connectAttr "BoneFK_LeftLeg.rp" "BoneFK_LeftLeg_parentConstraint1.crp";
connectAttr "BoneFK_LeftLeg.rpt" "BoneFK_LeftLeg_parentConstraint1.crt";
connectAttr "BoneFK_LeftLeg.jo" "BoneFK_LeftLeg_parentConstraint1.cjo";
connectAttr "fk_Calf_Left.t" "BoneFK_LeftLeg_parentConstraint1.tg[0].tt";
connectAttr "fk_Calf_Left.rp" "BoneFK_LeftLeg_parentConstraint1.tg[0].trp";
connectAttr "fk_Calf_Left.rpt" "BoneFK_LeftLeg_parentConstraint1.tg[0].trt";
connectAttr "fk_Calf_Left.r" "BoneFK_LeftLeg_parentConstraint1.tg[0].tr";
connectAttr "fk_Calf_Left.ro" "BoneFK_LeftLeg_parentConstraint1.tg[0].tro";
connectAttr "fk_Calf_Left.s" "BoneFK_LeftLeg_parentConstraint1.tg[0].ts";
connectAttr "fk_Calf_Left.pm" "BoneFK_LeftLeg_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_LeftLeg_parentConstraint1.w0" "BoneFK_LeftLeg_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_LeftUpLeg.ro" "BoneFK_LeftUpLeg_parentConstraint1.cro";
connectAttr "BoneFK_LeftUpLeg.pim" "BoneFK_LeftUpLeg_parentConstraint1.cpim";
connectAttr "BoneFK_LeftUpLeg.rp" "BoneFK_LeftUpLeg_parentConstraint1.crp";
connectAttr "BoneFK_LeftUpLeg.rpt" "BoneFK_LeftUpLeg_parentConstraint1.crt";
connectAttr "BoneFK_LeftUpLeg.jo" "BoneFK_LeftUpLeg_parentConstraint1.cjo";
connectAttr "fk_Thigh_Left.t" "BoneFK_LeftUpLeg_parentConstraint1.tg[0].tt";
connectAttr "fk_Thigh_Left.rp" "BoneFK_LeftUpLeg_parentConstraint1.tg[0].trp";
connectAttr "fk_Thigh_Left.rpt" "BoneFK_LeftUpLeg_parentConstraint1.tg[0].trt";
connectAttr "fk_Thigh_Left.r" "BoneFK_LeftUpLeg_parentConstraint1.tg[0].tr";
connectAttr "fk_Thigh_Left.ro" "BoneFK_LeftUpLeg_parentConstraint1.tg[0].tro";
connectAttr "fk_Thigh_Left.s" "BoneFK_LeftUpLeg_parentConstraint1.tg[0].ts";
connectAttr "fk_Thigh_Left.pm" "BoneFK_LeftUpLeg_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_LeftUpLeg_parentConstraint1.w0" "BoneFK_LeftUpLeg_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_RightUpLeg_parentConstraint1.ctx" "BoneFK_RightUpLeg.tx";
connectAttr "BoneFK_RightUpLeg_parentConstraint1.cty" "BoneFK_RightUpLeg.ty";
connectAttr "BoneFK_RightUpLeg_parentConstraint1.ctz" "BoneFK_RightUpLeg.tz";
connectAttr "BoneFK_RightUpLeg_parentConstraint1.crx" "BoneFK_RightUpLeg.rx";
connectAttr "BoneFK_RightUpLeg_parentConstraint1.cry" "BoneFK_RightUpLeg.ry";
connectAttr "BoneFK_RightUpLeg_parentConstraint1.crz" "BoneFK_RightUpLeg.rz";
connectAttr "BoneFK_Hips.s" "BoneFK_RightUpLeg.is";
connectAttr "BoneFK_RightLeg_parentConstraint1.ctx" "BoneFK_RightLeg.tx";
connectAttr "BoneFK_RightLeg_parentConstraint1.cty" "BoneFK_RightLeg.ty";
connectAttr "BoneFK_RightLeg_parentConstraint1.ctz" "BoneFK_RightLeg.tz";
connectAttr "BoneFK_RightLeg_parentConstraint1.crx" "BoneFK_RightLeg.rx";
connectAttr "BoneFK_RightLeg_parentConstraint1.cry" "BoneFK_RightLeg.ry";
connectAttr "BoneFK_RightLeg_parentConstraint1.crz" "BoneFK_RightLeg.rz";
connectAttr "BoneFK_RightUpLeg.s" "BoneFK_RightLeg.is";
connectAttr "BoneFK_RightFoot_parentConstraint1.ctx" "BoneFK_RightFoot.tx";
connectAttr "BoneFK_RightFoot_parentConstraint1.cty" "BoneFK_RightFoot.ty";
connectAttr "BoneFK_RightFoot_parentConstraint1.ctz" "BoneFK_RightFoot.tz";
connectAttr "BoneFK_RightFoot_parentConstraint1.crx" "BoneFK_RightFoot.rx";
connectAttr "BoneFK_RightFoot_parentConstraint1.cry" "BoneFK_RightFoot.ry";
connectAttr "BoneFK_RightFoot_parentConstraint1.crz" "BoneFK_RightFoot.rz";
connectAttr "BoneFK_RightLeg.s" "BoneFK_RightFoot.is";
connectAttr "BoneFK_RightToeBase_parentConstraint1.ctx" "BoneFK_RightToeBase.tx"
		;
connectAttr "BoneFK_RightToeBase_parentConstraint1.cty" "BoneFK_RightToeBase.ty"
		;
connectAttr "BoneFK_RightToeBase_parentConstraint1.ctz" "BoneFK_RightToeBase.tz"
		;
connectAttr "BoneFK_RightToeBase_parentConstraint1.crx" "BoneFK_RightToeBase.rx"
		;
connectAttr "BoneFK_RightToeBase_parentConstraint1.cry" "BoneFK_RightToeBase.ry"
		;
connectAttr "BoneFK_RightToeBase_parentConstraint1.crz" "BoneFK_RightToeBase.rz"
		;
connectAttr "BoneFK_RightFoot.s" "BoneFK_RightToeBase.is";
connectAttr "BoneFK_RightToeBase.ro" "BoneFK_RightToeBase_parentConstraint1.cro"
		;
connectAttr "BoneFK_RightToeBase.pim" "BoneFK_RightToeBase_parentConstraint1.cpim"
		;
connectAttr "BoneFK_RightToeBase.rp" "BoneFK_RightToeBase_parentConstraint1.crp"
		;
connectAttr "BoneFK_RightToeBase.rpt" "BoneFK_RightToeBase_parentConstraint1.crt"
		;
connectAttr "BoneFK_RightToeBase.jo" "BoneFK_RightToeBase_parentConstraint1.cjo"
		;
connectAttr "fk_Toe_Right.t" "BoneFK_RightToeBase_parentConstraint1.tg[0].tt";
connectAttr "fk_Toe_Right.rp" "BoneFK_RightToeBase_parentConstraint1.tg[0].trp";
connectAttr "fk_Toe_Right.rpt" "BoneFK_RightToeBase_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_Toe_Right.r" "BoneFK_RightToeBase_parentConstraint1.tg[0].tr";
connectAttr "fk_Toe_Right.ro" "BoneFK_RightToeBase_parentConstraint1.tg[0].tro";
connectAttr "fk_Toe_Right.s" "BoneFK_RightToeBase_parentConstraint1.tg[0].ts";
connectAttr "fk_Toe_Right.pm" "BoneFK_RightToeBase_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_RightToeBase_parentConstraint1.w0" "BoneFK_RightToeBase_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_RightFoot.ro" "BoneFK_RightFoot_parentConstraint1.cro";
connectAttr "BoneFK_RightFoot.pim" "BoneFK_RightFoot_parentConstraint1.cpim";
connectAttr "BoneFK_RightFoot.rp" "BoneFK_RightFoot_parentConstraint1.crp";
connectAttr "BoneFK_RightFoot.rpt" "BoneFK_RightFoot_parentConstraint1.crt";
connectAttr "BoneFK_RightFoot.jo" "BoneFK_RightFoot_parentConstraint1.cjo";
connectAttr "fk_Foot_Right.t" "BoneFK_RightFoot_parentConstraint1.tg[0].tt";
connectAttr "fk_Foot_Right.rp" "BoneFK_RightFoot_parentConstraint1.tg[0].trp";
connectAttr "fk_Foot_Right.rpt" "BoneFK_RightFoot_parentConstraint1.tg[0].trt";
connectAttr "fk_Foot_Right.r" "BoneFK_RightFoot_parentConstraint1.tg[0].tr";
connectAttr "fk_Foot_Right.ro" "BoneFK_RightFoot_parentConstraint1.tg[0].tro";
connectAttr "fk_Foot_Right.s" "BoneFK_RightFoot_parentConstraint1.tg[0].ts";
connectAttr "fk_Foot_Right.pm" "BoneFK_RightFoot_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_RightFoot_parentConstraint1.w0" "BoneFK_RightFoot_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_RightLeg.ro" "BoneFK_RightLeg_parentConstraint1.cro";
connectAttr "BoneFK_RightLeg.pim" "BoneFK_RightLeg_parentConstraint1.cpim";
connectAttr "BoneFK_RightLeg.rp" "BoneFK_RightLeg_parentConstraint1.crp";
connectAttr "BoneFK_RightLeg.rpt" "BoneFK_RightLeg_parentConstraint1.crt";
connectAttr "BoneFK_RightLeg.jo" "BoneFK_RightLeg_parentConstraint1.cjo";
connectAttr "fk_Calf_Right.t" "BoneFK_RightLeg_parentConstraint1.tg[0].tt";
connectAttr "fk_Calf_Right.rp" "BoneFK_RightLeg_parentConstraint1.tg[0].trp";
connectAttr "fk_Calf_Right.rpt" "BoneFK_RightLeg_parentConstraint1.tg[0].trt";
connectAttr "fk_Calf_Right.r" "BoneFK_RightLeg_parentConstraint1.tg[0].tr";
connectAttr "fk_Calf_Right.ro" "BoneFK_RightLeg_parentConstraint1.tg[0].tro";
connectAttr "fk_Calf_Right.s" "BoneFK_RightLeg_parentConstraint1.tg[0].ts";
connectAttr "fk_Calf_Right.pm" "BoneFK_RightLeg_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_RightLeg_parentConstraint1.w0" "BoneFK_RightLeg_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_RightUpLeg.ro" "BoneFK_RightUpLeg_parentConstraint1.cro";
connectAttr "BoneFK_RightUpLeg.pim" "BoneFK_RightUpLeg_parentConstraint1.cpim";
connectAttr "BoneFK_RightUpLeg.rp" "BoneFK_RightUpLeg_parentConstraint1.crp";
connectAttr "BoneFK_RightUpLeg.rpt" "BoneFK_RightUpLeg_parentConstraint1.crt";
connectAttr "BoneFK_RightUpLeg.jo" "BoneFK_RightUpLeg_parentConstraint1.cjo";
connectAttr "fk_Thigh_Right.t" "BoneFK_RightUpLeg_parentConstraint1.tg[0].tt";
connectAttr "fk_Thigh_Right.rp" "BoneFK_RightUpLeg_parentConstraint1.tg[0].trp";
connectAttr "fk_Thigh_Right.rpt" "BoneFK_RightUpLeg_parentConstraint1.tg[0].trt"
		;
connectAttr "fk_Thigh_Right.r" "BoneFK_RightUpLeg_parentConstraint1.tg[0].tr";
connectAttr "fk_Thigh_Right.ro" "BoneFK_RightUpLeg_parentConstraint1.tg[0].tro";
connectAttr "fk_Thigh_Right.s" "BoneFK_RightUpLeg_parentConstraint1.tg[0].ts";
connectAttr "fk_Thigh_Right.pm" "BoneFK_RightUpLeg_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_RightUpLeg_parentConstraint1.w0" "BoneFK_RightUpLeg_parentConstraint1.tg[0].tw"
		;
connectAttr "BoneFK_Hips.s" "BoneIK_LeftUpLeg.is";
connectAttr "BoneIK_LeftUpLeg.s" "BoneIK_LeftLeg.is";
connectAttr "BoneIK_LeftLeg.s" "BoneIK_LeftFoot.is";
connectAttr "BoneIK_LeftFoot.s" "BoneIK_LeftToeBase.is";
connectAttr "BoneIK_LeftFoot.tx" "effector1.tx";
connectAttr "BoneIK_LeftFoot.ty" "effector1.ty";
connectAttr "BoneIK_LeftFoot.tz" "effector1.tz";
connectAttr "BoneFK_Hips.s" "BoneIK_RightUpLeg.is";
connectAttr "BoneIK_RightUpLeg.s" "BoneIK_RightLeg.is";
connectAttr "BoneIK_RightLeg.s" "BoneIK_RightFoot.is";
connectAttr "BoneIK_RightFoot.s" "BoneIK_RightToeBase.is";
connectAttr "BoneIK_RightFoot.tx" "effector3.tx";
connectAttr "BoneIK_RightFoot.ty" "effector3.ty";
connectAttr "BoneIK_RightFoot.tz" "effector3.tz";
connectAttr "BoneFK_Hips.ro" "BoneFK_Hips_parentConstraint1.cro";
connectAttr "BoneFK_Hips.pim" "BoneFK_Hips_parentConstraint1.cpim";
connectAttr "BoneFK_Hips.rp" "BoneFK_Hips_parentConstraint1.crp";
connectAttr "BoneFK_Hips.rpt" "BoneFK_Hips_parentConstraint1.crt";
connectAttr "BoneFK_Hips.jo" "BoneFK_Hips_parentConstraint1.cjo";
connectAttr "fk_Hip.t" "BoneFK_Hips_parentConstraint1.tg[0].tt";
connectAttr "fk_Hip.rp" "BoneFK_Hips_parentConstraint1.tg[0].trp";
connectAttr "fk_Hip.rpt" "BoneFK_Hips_parentConstraint1.tg[0].trt";
connectAttr "fk_Hip.r" "BoneFK_Hips_parentConstraint1.tg[0].tr";
connectAttr "fk_Hip.ro" "BoneFK_Hips_parentConstraint1.tg[0].tro";
connectAttr "fk_Hip.s" "BoneFK_Hips_parentConstraint1.tg[0].ts";
connectAttr "fk_Hip.pm" "BoneFK_Hips_parentConstraint1.tg[0].tpm";
connectAttr "BoneFK_Hips_parentConstraint1.w0" "BoneFK_Hips_parentConstraint1.tg[0].tw"
		;
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
connectAttr "makeNurbCircle1.oc" "CharaBob_Master_ControllerShape.cr";
connectAttr "makeNurbCircle9.oc" "fk_HipShape.cr";
connectAttr "makeNurbCircle6.oc" "fk_Thigh_LeftShape.cr";
connectAttr "makeNurbCircle5.oc" "fk_Calf_LeftShape.cr";
connectAttr "makeNurbCircle2.oc" "fk_Foot_LeftShape.cr";
connectAttr "makeNurbCircle13.oc" "fk_Toe_LeftShape.cr";
connectAttr "makeNurbCircle10.oc" "fk_Thigh_RightShape.cr";
connectAttr "makeNurbCircle7.oc" "fk_Calf_RightShape.cr";
connectAttr "makeNurbCircle12.oc" "fk_Foot_RightShape.cr";
connectAttr "makeNurbCircle4.oc" "fk_Toe_RightShape.cr";
connectAttr "makeNurbCircle11.oc" "fk_Spine1Shape.cr";
connectAttr "makeNurbCircle19.oc" "fk_Spine2Shape.cr";
connectAttr "makeNurbCircle23.oc" "fk_Spine3Shape.cr";
connectAttr "makeNurbCircle8.oc" "fk_NeckShape.cr";
connectAttr "makeNurbCircle20.oc" "fk_HeadShape.cr";
connectAttr "makeNurbCircle18.oc" "fk_Shoulder_RightShape.cr";
connectAttr "makeNurbCircle16.oc" "fk_UpperArm_RightShape.cr";
connectAttr "makeNurbCircle21.oc" "fk_ForeArm_RightShape.cr";
connectAttr "makeNurbCircle3.oc" "fk_Hand_RightShape.cr";
connectAttr "makeNurbCircle22.oc" "fk_Shoulder_LeftShape.cr";
connectAttr "makeNurbCircle15.oc" "fk_UpperArm_LeftShape.cr";
connectAttr "makeNurbCircle17.oc" "fk_ForeArm_LeftShape.cr";
connectAttr "makeNurbCircle14.oc" "fk_Hand_LeftShape.cr";
connectAttr "BoneIK_LeftUpLeg.msg" "ikHandle_Leg_Left.hsj";
connectAttr "effector1.hp" "ikHandle_Leg_Left.hee";
connectAttr "ikRPsolver.msg" "ikHandle_Leg_Left.hsv";
connectAttr "ikHandle_Leg_Left_parentConstraint1.ctx" "ikHandle_Leg_Left.tx";
connectAttr "ikHandle_Leg_Left_parentConstraint1.cty" "ikHandle_Leg_Left.ty";
connectAttr "ikHandle_Leg_Left_parentConstraint1.ctz" "ikHandle_Leg_Left.tz";
connectAttr "ikHandle_Leg_Left_parentConstraint1.crx" "ikHandle_Leg_Left.rx";
connectAttr "ikHandle_Leg_Left_parentConstraint1.cry" "ikHandle_Leg_Left.ry";
connectAttr "ikHandle_Leg_Left_parentConstraint1.crz" "ikHandle_Leg_Left.rz";
connectAttr "ikHandle_Leg_Left_poleVectorConstraint1.ctx" "ikHandle_Leg_Left.pvx"
		;
connectAttr "ikHandle_Leg_Left_poleVectorConstraint1.cty" "ikHandle_Leg_Left.pvy"
		;
connectAttr "ikHandle_Leg_Left_poleVectorConstraint1.ctz" "ikHandle_Leg_Left.pvz"
		;
connectAttr "ikHandle_Leg_Left.ro" "ikHandle_Leg_Left_parentConstraint1.cro";
connectAttr "ikHandle_Leg_Left.pim" "ikHandle_Leg_Left_parentConstraint1.cpim";
connectAttr "ikHandle_Leg_Left.rp" "ikHandle_Leg_Left_parentConstraint1.crp";
connectAttr "ikHandle_Leg_Left.rpt" "ikHandle_Leg_Left_parentConstraint1.crt";
connectAttr "ik_Foot_Left.t" "ikHandle_Leg_Left_parentConstraint1.tg[0].tt";
connectAttr "ik_Foot_Left.rp" "ikHandle_Leg_Left_parentConstraint1.tg[0].trp";
connectAttr "ik_Foot_Left.rpt" "ikHandle_Leg_Left_parentConstraint1.tg[0].trt";
connectAttr "ik_Foot_Left.r" "ikHandle_Leg_Left_parentConstraint1.tg[0].tr";
connectAttr "ik_Foot_Left.ro" "ikHandle_Leg_Left_parentConstraint1.tg[0].tro";
connectAttr "ik_Foot_Left.s" "ikHandle_Leg_Left_parentConstraint1.tg[0].ts";
connectAttr "ik_Foot_Left.pm" "ikHandle_Leg_Left_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle_Leg_Left_parentConstraint1.w0" "ikHandle_Leg_Left_parentConstraint1.tg[0].tw"
		;
connectAttr "ikHandle_Leg_Left.pim" "ikHandle_Leg_Left_poleVectorConstraint1.cpim"
		;
connectAttr "BoneIK_LeftUpLeg.pm" "ikHandle_Leg_Left_poleVectorConstraint1.ps";
connectAttr "BoneIK_LeftUpLeg.t" "ikHandle_Leg_Left_poleVectorConstraint1.crp";
connectAttr "pv_Knee_Left.t" "ikHandle_Leg_Left_poleVectorConstraint1.tg[0].tt";
connectAttr "pv_Knee_Left.rp" "ikHandle_Leg_Left_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "pv_Knee_Left.rpt" "ikHandle_Leg_Left_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "pv_Knee_Left.pm" "ikHandle_Leg_Left_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle_Leg_Left_poleVectorConstraint1.w0" "ikHandle_Leg_Left_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_LeftArm.msg" "ikHandle_Arm_Left.hsj";
connectAttr "effector2.hp" "ikHandle_Arm_Left.hee";
connectAttr "ikRPsolver.msg" "ikHandle_Arm_Left.hsv";
connectAttr "ikHandle_Arm_Left_parentConstraint1.ctx" "ikHandle_Arm_Left.tx";
connectAttr "ikHandle_Arm_Left_parentConstraint1.cty" "ikHandle_Arm_Left.ty";
connectAttr "ikHandle_Arm_Left_parentConstraint1.ctz" "ikHandle_Arm_Left.tz";
connectAttr "ikHandle_Arm_Left_parentConstraint1.crx" "ikHandle_Arm_Left.rx";
connectAttr "ikHandle_Arm_Left_parentConstraint1.cry" "ikHandle_Arm_Left.ry";
connectAttr "ikHandle_Arm_Left_parentConstraint1.crz" "ikHandle_Arm_Left.rz";
connectAttr "ikHandle_Arm_Left_poleVectorConstraint1.ctx" "ikHandle_Arm_Left.pvx"
		;
connectAttr "ikHandle_Arm_Left_poleVectorConstraint1.cty" "ikHandle_Arm_Left.pvy"
		;
connectAttr "ikHandle_Arm_Left_poleVectorConstraint1.ctz" "ikHandle_Arm_Left.pvz"
		;
connectAttr "ikHandle_Arm_Left.ro" "ikHandle_Arm_Left_parentConstraint1.cro";
connectAttr "ikHandle_Arm_Left.pim" "ikHandle_Arm_Left_parentConstraint1.cpim";
connectAttr "ikHandle_Arm_Left.rp" "ikHandle_Arm_Left_parentConstraint1.crp";
connectAttr "ikHandle_Arm_Left.rpt" "ikHandle_Arm_Left_parentConstraint1.crt";
connectAttr "ik_Hand_Left.t" "ikHandle_Arm_Left_parentConstraint1.tg[0].tt";
connectAttr "ik_Hand_Left.rp" "ikHandle_Arm_Left_parentConstraint1.tg[0].trp";
connectAttr "ik_Hand_Left.rpt" "ikHandle_Arm_Left_parentConstraint1.tg[0].trt";
connectAttr "ik_Hand_Left.r" "ikHandle_Arm_Left_parentConstraint1.tg[0].tr";
connectAttr "ik_Hand_Left.ro" "ikHandle_Arm_Left_parentConstraint1.tg[0].tro";
connectAttr "ik_Hand_Left.s" "ikHandle_Arm_Left_parentConstraint1.tg[0].ts";
connectAttr "ik_Hand_Left.pm" "ikHandle_Arm_Left_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle_Arm_Left_parentConstraint1.w0" "ikHandle_Arm_Left_parentConstraint1.tg[0].tw"
		;
connectAttr "ikHandle_Arm_Left.pim" "ikHandle_Arm_Left_poleVectorConstraint1.cpim"
		;
connectAttr "BoneIK_LeftArm.pm" "ikHandle_Arm_Left_poleVectorConstraint1.ps";
connectAttr "BoneIK_LeftArm.t" "ikHandle_Arm_Left_poleVectorConstraint1.crp";
connectAttr "pv_Elbow_Left.t" "ikHandle_Arm_Left_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "pv_Elbow_Left.rp" "ikHandle_Arm_Left_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "pv_Elbow_Left.rpt" "ikHandle_Arm_Left_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "pv_Elbow_Left.pm" "ikHandle_Arm_Left_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle_Arm_Left_poleVectorConstraint1.w0" "ikHandle_Arm_Left_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_RightUpLeg.msg" "ikHandle_Leg_Right.hsj";
connectAttr "effector3.hp" "ikHandle_Leg_Right.hee";
connectAttr "ikRPsolver.msg" "ikHandle_Leg_Right.hsv";
connectAttr "ikHandle_Leg_Right_parentConstraint1.ctx" "ikHandle_Leg_Right.tx";
connectAttr "ikHandle_Leg_Right_parentConstraint1.cty" "ikHandle_Leg_Right.ty";
connectAttr "ikHandle_Leg_Right_parentConstraint1.ctz" "ikHandle_Leg_Right.tz";
connectAttr "ikHandle_Leg_Right_parentConstraint1.crx" "ikHandle_Leg_Right.rx";
connectAttr "ikHandle_Leg_Right_parentConstraint1.cry" "ikHandle_Leg_Right.ry";
connectAttr "ikHandle_Leg_Right_parentConstraint1.crz" "ikHandle_Leg_Right.rz";
connectAttr "ikHandle_Leg_Right_poleVectorConstraint1.ctx" "ikHandle_Leg_Right.pvx"
		;
connectAttr "ikHandle_Leg_Right_poleVectorConstraint1.cty" "ikHandle_Leg_Right.pvy"
		;
connectAttr "ikHandle_Leg_Right_poleVectorConstraint1.ctz" "ikHandle_Leg_Right.pvz"
		;
connectAttr "ikHandle_Leg_Right.ro" "ikHandle_Leg_Right_parentConstraint1.cro";
connectAttr "ikHandle_Leg_Right.pim" "ikHandle_Leg_Right_parentConstraint1.cpim"
		;
connectAttr "ikHandle_Leg_Right.rp" "ikHandle_Leg_Right_parentConstraint1.crp";
connectAttr "ikHandle_Leg_Right.rpt" "ikHandle_Leg_Right_parentConstraint1.crt";
connectAttr "ik_Foot_Right.t" "ikHandle_Leg_Right_parentConstraint1.tg[0].tt";
connectAttr "ik_Foot_Right.rp" "ikHandle_Leg_Right_parentConstraint1.tg[0].trp";
connectAttr "ik_Foot_Right.rpt" "ikHandle_Leg_Right_parentConstraint1.tg[0].trt"
		;
connectAttr "ik_Foot_Right.r" "ikHandle_Leg_Right_parentConstraint1.tg[0].tr";
connectAttr "ik_Foot_Right.ro" "ikHandle_Leg_Right_parentConstraint1.tg[0].tro";
connectAttr "ik_Foot_Right.s" "ikHandle_Leg_Right_parentConstraint1.tg[0].ts";
connectAttr "ik_Foot_Right.pm" "ikHandle_Leg_Right_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle_Leg_Right_parentConstraint1.w0" "ikHandle_Leg_Right_parentConstraint1.tg[0].tw"
		;
connectAttr "ikHandle_Leg_Right.pim" "ikHandle_Leg_Right_poleVectorConstraint1.cpim"
		;
connectAttr "BoneIK_RightUpLeg.pm" "ikHandle_Leg_Right_poleVectorConstraint1.ps"
		;
connectAttr "BoneIK_RightUpLeg.t" "ikHandle_Leg_Right_poleVectorConstraint1.crp"
		;
connectAttr "pv_Knee_Right.t" "ikHandle_Leg_Right_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "pv_Knee_Right.rp" "ikHandle_Leg_Right_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "pv_Knee_Right.rpt" "ikHandle_Leg_Right_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "pv_Knee_Right.pm" "ikHandle_Leg_Right_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle_Leg_Right_poleVectorConstraint1.w0" "ikHandle_Leg_Right_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "BoneIK_RightArm.msg" "ikHandle_Arm_Right.hsj";
connectAttr "effector4.hp" "ikHandle_Arm_Right.hee";
connectAttr "ikRPsolver.msg" "ikHandle_Arm_Right.hsv";
connectAttr "ikHandle_Arm_Right_parentConstraint1.ctx" "ikHandle_Arm_Right.tx";
connectAttr "ikHandle_Arm_Right_parentConstraint1.cty" "ikHandle_Arm_Right.ty";
connectAttr "ikHandle_Arm_Right_parentConstraint1.ctz" "ikHandle_Arm_Right.tz";
connectAttr "ikHandle_Arm_Right_parentConstraint1.crx" "ikHandle_Arm_Right.rx";
connectAttr "ikHandle_Arm_Right_parentConstraint1.cry" "ikHandle_Arm_Right.ry";
connectAttr "ikHandle_Arm_Right_parentConstraint1.crz" "ikHandle_Arm_Right.rz";
connectAttr "ikHandle_Arm_Right_poleVectorConstraint1.ctx" "ikHandle_Arm_Right.pvx"
		;
connectAttr "ikHandle_Arm_Right_poleVectorConstraint1.cty" "ikHandle_Arm_Right.pvy"
		;
connectAttr "ikHandle_Arm_Right_poleVectorConstraint1.ctz" "ikHandle_Arm_Right.pvz"
		;
connectAttr "ikHandle_Arm_Right.ro" "ikHandle_Arm_Right_parentConstraint1.cro";
connectAttr "ikHandle_Arm_Right.pim" "ikHandle_Arm_Right_parentConstraint1.cpim"
		;
connectAttr "ikHandle_Arm_Right.rp" "ikHandle_Arm_Right_parentConstraint1.crp";
connectAttr "ikHandle_Arm_Right.rpt" "ikHandle_Arm_Right_parentConstraint1.crt";
connectAttr "ik_Hand_Right.t" "ikHandle_Arm_Right_parentConstraint1.tg[0].tt";
connectAttr "ik_Hand_Right.rp" "ikHandle_Arm_Right_parentConstraint1.tg[0].trp";
connectAttr "ik_Hand_Right.rpt" "ikHandle_Arm_Right_parentConstraint1.tg[0].trt"
		;
connectAttr "ik_Hand_Right.r" "ikHandle_Arm_Right_parentConstraint1.tg[0].tr";
connectAttr "ik_Hand_Right.ro" "ikHandle_Arm_Right_parentConstraint1.tg[0].tro";
connectAttr "ik_Hand_Right.s" "ikHandle_Arm_Right_parentConstraint1.tg[0].ts";
connectAttr "ik_Hand_Right.pm" "ikHandle_Arm_Right_parentConstraint1.tg[0].tpm";
connectAttr "ikHandle_Arm_Right_parentConstraint1.w0" "ikHandle_Arm_Right_parentConstraint1.tg[0].tw"
		;
connectAttr "ikHandle_Arm_Right.pim" "ikHandle_Arm_Right_poleVectorConstraint1.cpim"
		;
connectAttr "BoneIK_RightArm.pm" "ikHandle_Arm_Right_poleVectorConstraint1.ps";
connectAttr "BoneIK_RightArm.t" "ikHandle_Arm_Right_poleVectorConstraint1.crp";
connectAttr "pv_Elbow_Right.t" "ikHandle_Arm_Right_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "pv_Elbow_Right.rp" "ikHandle_Arm_Right_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "pv_Elbow_Right.rpt" "ikHandle_Arm_Right_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "pv_Elbow_Right.pm" "ikHandle_Arm_Right_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "ikHandle_Arm_Right_poleVectorConstraint1.w0" "ikHandle_Arm_Right_poleVectorConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "CharaBob_Master_Controller.v" "Chara1Picker.i";
connectAttr "fk_Thigh_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "fk_Spine1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "fk_Hip_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "fk_Spine1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "fk_Spine1_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn";
connectAttr "curveShape3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "ik_Foot_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "ik_Foot_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "fk_Thigh_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "makeNurbCircle12.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "fk_Thigh_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn";
connectAttr "fk_Foot_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "fk_Foot_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Chara1Picker.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "makeNurbCircle9.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "makeNurbCircle10.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "makeNurbCircle11.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "fk_HipShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "fk_Hip.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn";
connectAttr "pv_Knee_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "fk_Calf_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "pv_Knee_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn";
connectAttr "pv_Knee_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "makeNurbCircle1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "makeNurbCircle8.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "fk_Calf_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[25].dn";
connectAttr "CharaBob_Master_ControllerShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "makeNurbCircle6.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "fk_Thigh_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[28].dn";
connectAttr "fk_NeckShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[29].dn";
connectAttr "fk_Neck.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[30].dn";
connectAttr "makeNurbCircle7.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "fk_Neck_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[32].dn";
connectAttr "fk_Thigh_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "CharaBob_Master_Controller.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[34].dn"
		;
connectAttr "pv_Knee_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[35].dn"
		;
connectAttr "fk_Calf_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[36].dn"
		;
connectAttr "fk_Calf_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[37].dn"
		;
connectAttr "fk_Calf_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[38].dn";
connectAttr "fk_Thigh_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[39].dn"
		;
connectAttr "BoneFK_RightFoot_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[40].dn"
		;
connectAttr "BoneFK_Neck_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[41].dn"
		;
connectAttr "makeNurbCircle23.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[42].dn"
		;
connectAttr "Character_LeftArm_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[43].dn"
		;
connectAttr "Character_RightHand_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[44].dn"
		;
connectAttr "fk_Spine3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[45].dn";
connectAttr "BoneFK_Hips_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[46].dn"
		;
connectAttr "fk_Shoulder_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[47].dn"
		;
connectAttr "fk_Spine3Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[48].dn";
connectAttr "BoneFK_LeftHand_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[49].dn"
		;
connectAttr "BoneFK_LeftForeArm_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[50].dn"
		;
connectAttr "BoneFK_RightLeg_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[51].dn"
		;
connectAttr "BoneFK_Spine_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[52].dn"
		;
connectAttr "fk_Shoulder_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[53].dn"
		;
connectAttr "BoneFK_LeftToeBase_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[54].dn"
		;
connectAttr "BoneFK_RightArm_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[55].dn"
		;
connectAttr "BoneFK_Spine1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[56].dn"
		;
connectAttr "BoneFK_Head_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[57].dn"
		;
connectAttr "BoneFK_LeftArm_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[58].dn"
		;
connectAttr "BoneFK_LeftLeg_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[59].dn"
		;
connectAttr "BoneFK_LeftShoulder_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[60].dn"
		;
connectAttr "BoneFK_Spine2_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[61].dn"
		;
connectAttr "ikHandle_Arm_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[62].dn"
		;
connectAttr "effector3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[63].dn";
connectAttr "ikHandle_Arm_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[64].dn"
		;
connectAttr "BoneFK_RightHand_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[65].dn"
		;
connectAttr "ikHandle_Leg_Left_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[66].dn"
		;
connectAttr "ikHandle_Arm_Left_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[67].dn"
		;
connectAttr "BoneFK_RightUpLeg_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[68].dn"
		;
connectAttr "pv_Elbow_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[69].dn";
connectAttr "effector1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[70].dn";
connectAttr "ikHandle_Leg_Right_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[71].dn"
		;
connectAttr "BoneFK_LeftFoot_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[72].dn"
		;
connectAttr "BoneFK_RightForeArm_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[73].dn"
		;
connectAttr "fk_Spine3_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[74].dn";
connectAttr "BoneFK_RightShoulder_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[75].dn"
		;
connectAttr "effector2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[76].dn";
connectAttr "ikHandle_Arm_Right_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[77].dn"
		;
connectAttr "ikHandle_Leg_Left_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[78].dn"
		;
connectAttr "ikHandle_Arm_Left_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[79].dn"
		;
connectAttr "makeNurbCircle22.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[80].dn"
		;
connectAttr "effector4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[81].dn";
connectAttr "ikHandle_Leg_Right_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[82].dn"
		;
connectAttr "BoneFK_LeftUpLeg_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[83].dn"
		;
connectAttr "BoneFK_RightToeBase_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[84].dn"
		;
connectAttr "ikHandle_Arm_Right_poleVectorConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[85].dn"
		;
connectAttr "fk_Shoulder_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[86].dn"
		;
connectAttr "ikHandle_Leg_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[87].dn"
		;
connectAttr "ikHandle_Leg_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[88].dn"
		;
connectAttr "Character_Head_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[89].dn"
		;
connectAttr "Character_Neck_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[90].dn"
		;
connectAttr "Character_LeftHand_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[91].dn"
		;
connectAttr "Character_LeftForeArm_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[92].dn"
		;
connectAttr "Character_LeftShoulder_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[93].dn"
		;
connectAttr "Character_RightForeArm_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[94].dn"
		;
connectAttr "Character_RightArm_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[95].dn"
		;
connectAttr "Character_RightShoulder_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[96].dn"
		;
connectAttr "Character_Spine2_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[97].dn"
		;
connectAttr "Character_Spine1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[98].dn"
		;
connectAttr "Character_Spine_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[99].dn"
		;
connectAttr "Character_LeftToeBase_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[100].dn"
		;
connectAttr "Character_LeftFoot_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[101].dn"
		;
connectAttr "Character_LeftLeg_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[102].dn"
		;
connectAttr "Character_LeftUpLeg_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[103].dn"
		;
connectAttr "Character_Hips_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[104].dn"
		;
connectAttr "Character_RightUpLeg_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[105].dn"
		;
connectAttr "Character_RightToeBase_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[106].dn"
		;
connectAttr "Character_RightLeg_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[107].dn"
		;
connectAttr "Character_RightFoot_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[108].dn"
		;
connectAttr "fk_Spine2Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[109].dn"
		;
connectAttr "fk_Shoulder_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[110].dn"
		;
connectAttr "makeNurbCircle20.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[111].dn"
		;
connectAttr "pv_Elbow_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[112].dn"
		;
connectAttr "fk_Spine2_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[113].dn";
connectAttr "fk_HeadShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[114].dn";
connectAttr "fk_Head.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[115].dn";
connectAttr "makeNurbCircle19.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[116].dn"
		;
connectAttr "fk_Head_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[117].dn";
connectAttr "fk_ForeArm_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[118].dn"
		;
connectAttr "pv_Elbow_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[119].dn";
connectAttr "makeNurbCircle18.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[120].dn"
		;
connectAttr "fk_Shoulder_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[121].dn"
		;
connectAttr "fk_Shoulder_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[122].dn"
		;
connectAttr "fk_Spine2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[123].dn";
connectAttr "makeNurbCircle21.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[124].dn"
		;
connectAttr "fk_ForeArm_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[125].dn"
		;
connectAttr "fk_ForeArm_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[126].dn"
		;
connectAttr "fk_ForeArm_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[127].dn"
		;
connectAttr "pv_Elbow_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[128].dn"
		;
connectAttr "curveShape4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[129].dn";
connectAttr "fk_Hand_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[130].dn";
connectAttr "fk_Toe_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[131].dn"
		;
connectAttr "fk_Hand_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[132].dn"
		;
connectAttr "makeNurbCircle15.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[133].dn"
		;
connectAttr "fk_UpperArm_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[134].dn"
		;
connectAttr "fk_UpperArm_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[135].dn"
		;
connectAttr "fk_UpperArm_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[136].dn"
		;
connectAttr "fk_Toe_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[137].dn"
		;
connectAttr "fk_Hand_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[138].dn"
		;
connectAttr "makeNurbCircle16.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[139].dn"
		;
connectAttr "makeNurbCircle17.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[140].dn"
		;
connectAttr "makeNurbCircle14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[141].dn"
		;
connectAttr "fk_ForeArm_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[142].dn"
		;
connectAttr "fk_Foot_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[143].dn"
		;
connectAttr "makeNurbCircle13.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[144].dn"
		;
connectAttr "ik_Hand_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[145].dn"
		;
connectAttr "fk_UpperArm_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[146].dn"
		;
connectAttr "fk_Toe_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[147].dn";
connectAttr "ik_Hand_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[148].dn";
connectAttr "fk_UpperArm_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[149].dn"
		;
connectAttr "fk_UpperArm_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[150].dn"
		;
connectAttr "fk_ForeArm_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[151].dn"
		;
connectAttr "ik_Foot_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[152].dn";
connectAttr "fk_Foot_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[153].dn"
		;
connectAttr "fk_Foot_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[154].dn"
		;
connectAttr "ik_Hand_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[155].dn";
connectAttr "ik_Hand_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[156].dn"
		;
connectAttr "fk_Hand_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[157].dn";
connectAttr "curveShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[158].dn";
connectAttr "ik_Foot_Left_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[159].dn"
		;
connectAttr "makeNurbCircle2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[160].dn"
		;
connectAttr "fk_Foot_Left.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[161].dn";
connectAttr "curveShape2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[162].dn";
connectAttr "makeNurbCircle3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[163].dn"
		;
connectAttr "fk_Hand_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[164].dn"
		;
connectAttr "fk_Calf_LeftShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[165].dn"
		;
connectAttr "fk_Hand_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[166].dn"
		;
connectAttr "fk_Toe_RightShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[167].dn"
		;
connectAttr "makeNurbCircle4.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[168].dn"
		;
connectAttr "fk_Toe_Right.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[169].dn";
connectAttr "fk_Toe_Right_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[170].dn"
		;
connectAttr "makeNurbCircle5.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[171].dn"
		;
connectAttr "Chara1Picker.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Joint_test6.ma
