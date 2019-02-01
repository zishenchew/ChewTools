//Maya ASCII 2018 scene
//Name: prinny_011a2_rigTesting.ma
//Last modified: Sun, Jan 27, 2019 08:14:27 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "2.0.1";
requires "stereoCamera" "10.0";
requires "DF_locator" "1.11 / Expire: 2011.8.31";
requires "vstUtils" "1.0";
requires "AtgMaterials" "ATG SDK: 1.32.0";
requires "mayall_maya60" "0.9.1(Beta)";
requires "Boole" "20110503";
requires "clgDangleCurve" "2.0.2";
requires "TcSceneManager" "1.00";
requires "COLLADA" "3.04C PhyreEngine(TM) 3.15.0.0";
requires "PVRTexTool_v2014" "1.0.1";
requires "clgSymbolMaker" "1.5";
requires "TcToonShader3" "0.00";
requires "stereoCamera" "10.0";
requires "sxmaterial" "8.5";
requires "transIT3" "1.0";
requires "vsMaster" "1.0";
requires "xfrog" "1.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "A79D9069-4096-24B7-E0D1-4B81480E2CBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 39.343163077262517 22.802514815630897 2.745860419038904 ;
	setAttr ".r" -type "double3" -378.93835261914256 -5315.4000000214801 1.6898372506604901e-14 ;
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 -3.5527136788005009e-15 0 ;
	setAttr ".rpt" -type "double3" -2.55334829075566e-15 2.7134502653139366e-16 3.6711629705252778e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CCFFC9E0-4BFB-EDF5-0045-02B8D05B988E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 38.961197641481448;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 8.0490138332223182e-08 12.984657768391063 1.1474449584695239 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "EA7BEABD-426E-4415-6635-9A8B1A6B7245";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.26057824369890259 1001.4360529876257 1.662773850516666 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C49AE41C-4A06-E3FD-111D-BDAD70851AF2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.01;
	setAttr ".coi" 986.02581208896459;
	setAttr ".ow" 17.075599164211479;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -0.0001986392431092554 15.410240898661078 1.1582883668833492 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "2F686688-40D4-6C6A-53E1-D384B5549AD7";
	setAttr ".t" -type "double3" 2.4090850748662254 3.3418149020338088 1004.4040196732202 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8E0EB8AD-48FF-AFBA-B086-6FAB6246D134";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1002.3946534097403;
	setAttr ".ow" 20.41955163449963;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.00017890223086780566 12.875977517352194 2.0093662634798921 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "1627FB44-48EE-70B1-A59E-19823ECE2D38";
	setAttr ".t" -type "double3" 1006.7394836947777 14.994978203309271 -2.132095879113248 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5EDBD2C1-4E03-78B9-508B-6EA3CFA37AF8";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1006.7394836749868;
	setAttr ".ow" 10.28802515614983;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 1.9790895255944463e-08 14.994978203309271 -2.1320958791134714 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "left";
	rename -uid "FAD0A1A0-4FE8-35C4-8BF2-BBAB3EFFBE00";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1001.8549073380569 10.29867974065718 -20.265461483390908 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "BAEF77F9-41CC-C59D-9B6B-DC8732DB75B0";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1021.2410238289184;
	setAttr ".ow" 108.22609199522758;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".tp" -type "double3" 19.386116490861497 12.648132930882364 -21.084831024829931 ;
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "back";
	rename -uid "2DB3C6A5-4BBE-FDAD-FF75-189D27FB359D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.4479594417697594 6.857389917413542 -1000.1 ;
	setAttr ".r" -type "double3" 0 180 0 ;
createNode camera -n "backShape" -p "back";
	rename -uid "B22C522F-4727-711A-2637-AB9410369D42";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 71.554892770169587;
	setAttr ".imn" -type "string" "back1";
	setAttr ".den" -type "string" "back1_depth";
	setAttr ".man" -type "string" "back1_mask";
	setAttr ".hc" -type "string" "viewSet -b %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "Character_Hips";
	rename -uid "9C24F0A1-49E9-1DD5-87F4-46A941CE0340";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v" no;
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -7.0476868156526496e-16 4.4247303365243873 0.51308489454966699 ;
	setAttr ".jo" -type "double3" -90.000000000000924 3.8660624896492859 89.999999999999929 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -4.4408920985006262e-16 0 1 0
		 1 -4.4408920985006262e-16 4.4408920985006262e-16 0 0 115.322 0 1;
	setAttr ".typ" 1;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Spine" -p "Character_Hips";
	rename -uid "6E59516F-4D2E-596E-41AF-F78E66096140";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1025088794347777 -1.1102230246251565e-16 1.7386227455371339e-17 ;
	setAttr ".jo" -type "double3" 0 0 3.0875187984002395 ;
	setAttr ".bps" -type "matrix" 4.59317172617089e-16 0.99939082701909576 -0.034899496702500046 0
		 -4.2832019278753274e-16 0.034899496702500046 0.99939082701909576 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2171422980600254e-15 118.06276080000001 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Spine1" -p "Character_Spine";
	rename -uid "DE7994AB-4F4D-A895-A6A6-678E669948D3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.0037490258416035 1.7763568394002505e-15 3.9135720809641512e-15 ;
	setAttr ".r" -type "double3" 0 0 -1.9878466759146972e-15 ;
	setAttr ".jo" -type "double3" 0 0 4.2014233955039986 ;
	setAttr ".bps" -type "matrix" 4.811042412630871e-16 0.99619469809174577 -0.087155742747656501 0
		 -4.0369439140168292e-16 0.087155742747656501 0.99619469809174577 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 5.7023869557109906e-15 127.82183982614796 -0.3407940582832466 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Spine2" -p "Character_Spine1";
	rename -uid "720B5E2B-4DD3-96E9-0390-85BDFB7EA792";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.0057979432376891 1.1102230246251565e-15 4.9770269150057308e-10 ;
	setAttr ".r" -type "double3" 0 0 -7.9513867036587919e-16 ;
	setAttr ".jo" -type "double3" 179.99999879761162 0 -13.342766220926807 ;
	setAttr ".pa" -type "double3" 36.762975808112202 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2379102964140113e-14 141.64692814355453 -1.5503336046867018 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Neck" -p "Character_Spine2";
	rename -uid "4C5101BC-44F8-D520-BDD2-9AA3EDB12B74";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 3.074040853929155 1.1102230246251565e-16 -2.3072032307037241e-09 ;
	setAttr ".jo" -type "double3" 179.99999457248381 0 -6.7009634795323878 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.0003083966209613e-14 158.81460714355453 -1.5503336046866729 1;
	setAttr ".typ" 7;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Head" -p "Character_Neck";
	rename -uid "65247884-48EE-B587-268D-D8BA1DA4D2A6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.54229528350776057 -6.6613381477509392e-16 4.4908343288752494e-09 ;
	setAttr ".jo" -type "double3" 0 0 -4.5132019421589682 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.3750079879754599e-14 167.25209184355452 -1.5503336046866587 1;
	setAttr ".typ" 8;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_HeadUp" -p "Character_Head";
	rename -uid "C5559D62-4EE1-27C5-E2FF-8BA57470E8E8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 3.8706857516979554 -1.3877787807814457e-15 1.236431950205584e-14 ;
	setAttr ".jo" -type "double3" -179.99999338780049 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.4472470234754516e-14 191.05709214873031 -1.5503336046866183 1;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Eye_L" -p "Character_Head";
	rename -uid "4BF907BD-4642-A299-3B2C-81B306F315AD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.7556714630600858 -1.8118825475369622 -1.4000002090996853 ;
	setAttr ".jo" -type "double3" -179.99999338780049 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.5366422083400559 177.23253955033724 3.0363418446599533 1;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_Eye_R" -p "Character_Head";
	rename -uid "F1863D54-4260-1773-1277-18A3EBB89B9B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.755671463060116 -1.8122074213234027 1.3999997908628412 ;
	setAttr ".jo" -type "double3" -179.99999338780049 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 -2.5369999999999742 177.23253955033724 3.0366663953133579 1;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftShoulder" -p "Character_Spine2";
	rename -uid "EA1653E9-4065-47BD-67C7-1FA04155C1F5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4109837227530644 -0.00096443313263916419 1.9999999999797615 ;
	setAttr ".r" -type "double3" 3.1805546814635168e-15 4.9696166897867449e-16 7.9513867036587919e-16 ;
	setAttr ".jo" -type "double3" 90.000002783988563 -68.720137912019325 -34.950423237109746 ;
	setAttr ".bps" -type "matrix" 0.93531812790679647 0.29298768950820886 -0.19833863316451253 0
		 0.20352845173297279 0.012991220144158131 0.9789828382225837 0 0.28940658068555486 -0.95602795042603639 -0.047480407117967652 0
		 6.3903198000000172 151.48634464355453 -1.4974338866866823 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftArm" -p "Character_LeftShoulder";
	rename -uid "CEBC2662-491D-3DD9-96E5-F68DA116AF55";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.9999999999999973 -7.9936057773011271e-15 -0.39738978491528698 ;
	setAttr ".jo" -type "double3" -59.469158494186907 -13.320740803288302 34.297134795948104 ;
	setAttr ".bps" -type "matrix" 0.99687989433796631 1.6365756745850835e-05 -0.078933364282078589 0
		 0.078933365978686804 -0.00020668944817928483 0.99687987291084734 0 -1.4432899320127035e-15 -0.99999997850581701 -0.00020733635952847884 0
		 17.230701752468534 155.03679030466319 -3.7822654811142296 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftForeArm" -p "Character_LeftArm";
	rename -uid "C5BF44A4-47AB-67D5-6408-E89696499D47";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.4999999999999991 3.2640556923979602e-14 2.6645352591003757e-14 ;
	setAttr ".r" -type "double3" -6.2241537154799809e-18 -3.882513038895893e-19 2.3854159992491479e-15 ;
	setAttr ".jo" -type "double3" 179.99984562021874 -6.4440316786719525e-06 6.9295879227833241 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 41.814698039790343 155.03720229197558 -5.7288361530307972 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHand" -p "Character_LeftForeArm";
	rename -uid "42B57B10-41F0-ACF8-F188-F29874B51D2E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.4999999999999996 1.5348833315442789e-14 -3.5527136788005009e-15 ;
	setAttr ".jo" -type "double3" -87.767646628588807 6.0312221375351278e-13 -9.2218097318156618e-13 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 67.298577233904624 155.03697341013856 -4.6597071584624938 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandThumb1" -p "Character_LeftHand";
	rename -uid "8C193DCF-4B11-0AAD-740C-50A1645271FD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.11101704028621384 0.13433274280899887 -0.14011247116904643 ;
	setAttr ".jo" -type "double3" 18.790588056972769 27.570472268547949 21.448126741236766 ;
	setAttr ".bps" -type "matrix" 0.80547343999123588 -0.34201960654863806 0.48397843568179799 0
		 -0.44548133796126083 0.18915999506567224 0.87507992423263836 0 -0.3908438498901195 -0.92045699791085844 9.5276172820342116e-16 0
		 68.913086843277995 152.89415119117646 -2.5236056427767197 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandThumb2" -p "Character_LeftHandThumb1";
	rename -uid "0F19209B-4281-32A5-2DC1-83B778A0C71E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.66586133802605885 -1.5339532715198078e-15 -1.8481364717106117e-16 ;
	setAttr ".jo" -type "double3" -9.8045046081662814 -12.908750023196292 5.465915538773868 ;
	setAttr ".bps" -type "matrix" 0.88867716975422772 -0.37912893086221627 0.25790335736645409 0
		 -0.23721773097305252 0.10120222256890085 0.96617071900317464 0 -0.39240366469951893 -0.91979310930795077 -6.0076007477282067e-15 0
		 74.403168656423702 150.56295916351945 0.77517839043033421 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandThumb3" -p "Character_LeftHandThumb2";
	rename -uid "1512BDAF-46DB-9EFC-59CA-0685B9FB3831";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.46128408986632485 1.6483079145382713e-16 -5.2558825749239355e-17 ;
	setAttr ".jo" -type "double3" -103.46546934732969 -15.003645005777448 2.9002363031853724 ;
	setAttr ".bps" -type "matrix" 0.92394866465539172 -0.38247642854366959 -0.0055359452669147729 0
		 0.0059914860957702648 -5.3138214564218272e-08 0.99998205088609549 0 -0.38246956372485796 -0.92396524913466127 0.0022915531065968702 0
		 77.315903680311848 149.32032914219604 1.6204849173076719 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandIndex1" -p "Character_LeftHand";
	rename -uid "D617C646-40E5-2B9D-032F-188B8DED4B16";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.91253312554906341 -0.024419882047252983 -0.28754117610715485 ;
	setAttr ".jo" -type "double3" -1.356268013537469 -1.8338491787549815 13.090135655860836 ;
	setAttr ".bps" -type "matrix" 0.97437032489133113 -0.22494992769647076 7.1731482060442627e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22494992769652852 -0.97437032489158193 2.6145273013878586e-13 0
		 76.340401601408985 155.16896193937217 -1.3805256761372346 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandIndex2" -p "Character_LeftHandIndex1";
	rename -uid "123FC817-4310-F150-9F5B-C689BC67472D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2032223158702833 -1.1259370933367249e-15 -3.0275709499722651e-16 ;
	setAttr ".bps" -type "matrix" 0.97436797583058254 -0.22496010240773551 7.1731482056804748e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22496010240779327 -0.97436797583083334 -7.2290052576600057e-12 0
		 81.822663237492023 153.90329116799901 -1.3805220998585621 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandIndex3" -p "Character_LeftHandIndex2";
	rename -uid "F5E1E87D-4415-2CA9-0281-77ABF997C30A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.85325718504257075 -3.3084809292205364e-06 1.9774767379132641e-06 ;
	setAttr ".jo" -type "double3" -91.372229785314644 -1.9163579008791372e-05 0.00061936062784932809 ;
	setAttr ".bps" -type "matrix" 0.97436771571272174 -0.2249612290524142 2.5345000513944453e-16 0
		 -1.6264896639984095e-12 -7.0436480187232799e-12 1.0000000000000002 0 -0.22496122905241411 -0.97436771571272185 -7.2290052579578998e-12 0
		 84.547909765745871 153.27410957041241 -1.3805223382771667 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandMiddle1" -p "Character_LeftHand";
	rename -uid "A13754E6-4ACB-5173-8DA7-59A3F3BABDAC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.92617982718088498 -0.095310773506191993 -0.049046263856021288 ;
	setAttr ".jo" -type "double3" -1.3562688772171598 -1.8338469315604196 13.090182071975207 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 76.576668619710659 155.97476332398344 -3.7399264243781523 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandMiddle2" -p "Character_LeftHandMiddle1";
	rename -uid "011BC888-4074-F214-2136-D4835149B2F1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2019415747434554 -3.6049017642479946e-17 -4.6111248747872408e-16 ;
	setAttr ".jo" -type "double3" 0 -6.9162340591493525e-05 0.00065155389607113074 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 82.053093823878541 154.71043531337293 -3.7399235633551875 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandMiddle3" -p "Character_LeftHandMiddle2";
	rename -uid "318E7BB1-4F9F-1683-E789-6FB64295FCCE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.0197540300924883 2.6639881406936506e-12 2.709471032806058e-13 ;
	setAttr ".jo" -type "double3" -91.372230407876742 3.6185082759759014e-05 -0.00060734388413907965 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386539 2.2146400200471794e-16 0
		 2.2934393675898366e-14 1.0034191271609109e-13 1.0000000000000002 0 -0.22495105434386534 -0.97437006478523536 1.0292690418428619e-13 0
		 85.310120459172154 153.95848219693116 -3.7399230865180253 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandRing1" -p "Character_LeftHand";
	rename -uid "C6BC0D26-4847-4E80-14FA-53A6BB2A9C61";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.90151843934456544 -0.081451828395367798 0.18039860599377344 ;
	setAttr ".jo" -type "double3" -1.3562810082744312 -1.8338501802323619 13.090413575395939 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 76.425843163767624 155.92588942163411 -6.0579853615696839 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandRing2" -p "Character_LeftHandRing1";
	rename -uid "7BE09E59-4A2A-A2D2-539A-2AA087B22F04";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1822944937519795 -1.3544272282241894e-15 4.6640657303439454e-16 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 81.812745037900868 154.68220655599728 -6.0579834542210511 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandRing3" -p "Character_LeftHandRing2";
	rename -uid "E56E3F1F-4D8A-8C3B-59EB-6B89BB998188";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.84820625469195132 1.6408676195567296e-07 4.7859081803158787e-07 ;
	setAttr ".jo" -type "double3" -91.372225684487915 -2.4252783934555641e-05 -0.00018703312385403659 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386525 1.9327053868663757e-16 0
		 8.5964561194605169e-15 3.8098478279405135e-14 1.0000000000000002 0 -0.2249510543438652 -0.97437006478523547 3.9052740828714455e-14 0
		 84.521859073754101 154.05674880129553 -6.0579829773839009 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandPinky1" -p "Character_LeftHand";
	rename -uid "BABD2272-4C54-EA01-2713-57828C9804B6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.83696517139615256 0.010162487067919557 0.38282493352892699 ;
	setAttr ".jo" -type "double3" -1.3562587699264304 -1.8338299544939745 13.090161538989626 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 75.864342647658447 155.08551161847751 -8.1523266303473392 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandPinky2" -p "Character_LeftHandPinky1";
	rename -uid "13F146DD-4413-05D8-244E-EEADEC34FEE5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.89952461342401913 -6.038161634121182e-17 -2.1907706544800263e-16 ;
	setAttr ".jo" -type "double3" 0 -0.00089563950155108684 0.0013604011579065474 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 79.96286104734304 154.13929884343474 -8.1523228156500576 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftHandPinky3" -p "Character_LeftHandPinky2";
	rename -uid "A0DE8C02-42C6-5FE4-E0C5-33A6C1652B56";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.64909058186299962 -2.693544125845693e-13 -1.7820104482825728e-13 ;
	setAttr ".jo" -type "double3" -91.372239877642912 0.00084520407180245884 -0.0012960760627671827 ;
	setAttr ".bps" -type "matrix" 0.97437006478523536 -0.22495105434386539 2.1405281614918304e-16 0
		 5.9055182610590735e-14 2.5669229096200602e-13 1.0000000000000004 0 -0.22495105434386531 -0.97437006478523536 2.6339237458237977e-13 0
		 82.036011708884317 153.66066114194035 -8.1523294913702635 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightShoulder" -p "Character_Spine2";
	rename -uid "60FF4512-4BC8-FC26-280F-65ACD722DE4A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4109838729274511 -0.00096041815091951754 -2.0000000000201541 ;
	setAttr ".jo" -type "double3" 90.000002783846725 68.717959649180557 -34.946260152340621 ;
	setAttr ".bps" -type "matrix" 0.93531812790679658 -0.29298768950820808 0.19833863316451264 0
		 0.20352845173297221 -0.012991220144160213 -0.9789828382225837 0 0.28940658068555464 0.9560279504260365 0.047480407117965404 0
		 -6.3903197999999835 151.48599374355453 -1.4974299526866881 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightArm" -p "Character_RightShoulder";
	rename -uid "599C5051-498D-ACF6-9B57-83ADBA49CCDA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.9999999999999964 -4.4408920985006262e-15 -0.39738978491528609 ;
	setAttr ".jo" -type "double3" 59.485468119278224 -13.317094434240598 -34.303057005210725 ;
	setAttr ".bps" -type "matrix" 0.99688042858593739 -1.1857041610663366e-05 0.078926617574352376 0
		 0.078926618337086779 0.00020668955122356281 -0.996880407168935 0 -4.4932546973130982e-06 0.99999997856941991 0.0002069806046058123 0
		 -17.230699456094506 155.03700385525036 -3.7822603913477 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightForeArm" -p "Character_RightArm";
	rename -uid "7AAE56F0-43C2-6C3D-74E6-DC94C1C002BB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.5 8.3266726846886741e-16 1.7763568394002505e-15 ;
	setAttr ".r" -type "double3" 1.248470599069961e-17 9.706282597239742e-19 -4.7708319392558485e-15 ;
	setAttr ".jo" -type "double3" -179.99999999999997 0 -6.9296079503859964 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -41.814711729839736 155.03689267236439 -5.7287052565477303 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHand" -p "Character_RightForeArm";
	rename -uid "25F0B936-4349-A38A-2AED-85A81A54C061";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.4999999999999991 8.2572837456496018e-16 -1.4743761767022079e-13 ;
	setAttr ".jo" -type "double3" -92.244931464466831 -2.3496950964266864e-13 -9.8146522525504714e-14 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -67.29861011445918 155.03686650011409 -4.659580356446817 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandThumb1" -p "Character_RightHand";
	rename -uid "96701376-46BC-AF71-F75A-6D95D1B4B5F7";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.11101712848605416 0.13434641768555089 0.14011665191412809 ;
	setAttr ".jo" -type "double3" -18.789309697357918 -27.570916679834273 21.446541594178971 ;
	setAttr ".bps" -type "matrix" 0.80547319430682263 0.34202020876278227 -0.48397841899306471 0
		 -0.44548093564676355 -0.18916089983560244 -0.87507993346246371 0 -0.39084481476469357 0.92045658820568421 -5.5161878991457219e-07 0
		 -68.91311014364021 152.89386045747364 -2.5234799748863912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandThumb2" -p "Character_RightHandThumb1";
	rename -uid "4B3C0871-494B-61CF-BE76-D28EDB087A5D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.66580774850934743 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".jo" -type "double3" 9.8048014690182281 12.906458028327707 5.4734766152550467 ;
	setAttr ".bps" -type "matrix" 0.88867683245996809 0.37912973339767564 -0.25790333984406844 0
		 -0.23721739962308361 -0.10120295459665032 -0.96617072368032941 0 -0.39240462887812605 0.91979269796770857 -5.5165015155613088e-07 0
		 -74.403205259015067 150.56286270926071 0.77530908521889508 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandThumb3" -p "Character_RightHandThumb2";
	rename -uid "F6682608-4DBE-4338-9CA5-C480366681B0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.46139678191871791 0 4.4408920985006262e-16 ;
	setAttr ".jo" -type "double3" 76.53321334433663 195.00449941326787 2.8945259882969649 ;
	setAttr ".bps" -type "matrix" 0.9239482624308385 0.38247739984804541 0.0055359693381279744 0
		 0.0059917192429357041 -4.40859602094789e-07 -0.99998204948904956 0 -0.38247053174270568 0.92396484706144788 -0.0022921045281208297 0
		 -77.315908573797742 149.31986385788954 1.6206200506415134 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandIndex1" -p "Character_RightHand";
	rename -uid "89945AD1-488A-EBDC-E1B9-0AA5A2AC7B80";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.91253091977132339 -0.024416306210753191 0.28754104721248108 ;
	setAttr ".jo" -type "double3" 1.3563865918305249 1.8334681970781916 13.093906653442245 ;
	setAttr ".bps" -type "matrix" 0.97437008908576894 0.22495094908585606 -6.0267919916913977e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22495094908618105 0.97437008908573097 -5.3991289831873109e-07 0
		 -76.34041222636084 155.16886245195798 -1.3804025202840906 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandIndex2" -p "Character_RightHandIndex1";
	rename -uid "106C1AF7-4CB6-5C22-1F82-FA9C7D3D503B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2032464151855962 0 3.3306690738754696e-16 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22516966696526888 0.97431956825184363 -5.397775971761036e-07 0
		 -81.822710698736657 153.90285023805987 -1.3803929920816722 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandIndex3" -p "Character_RightHandIndex2";
	rename -uid "B9ACFBC7-4F5A-9A03-3F79-63A6F23A394B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.85323032522117703 -2.8983522248893223e-07 -4.9879916356188048e-06 ;
	setAttr ".jo" -type "double3" 88.627198490291676 179.99996914875894 0.0032747022646613007 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -6.2718169315325164e-07 3.6750130026321287e-08 -0.99999999999980282 0 -0.22516966696487717 0.97431956825206756 1.7702866381073903e-07 0
		 -84.547768121360747 153.27324088419635 -1.3803932338809421 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandMiddle1" -p "Character_RightHand";
	rename -uid "6AD8D5D6-4EF3-5312-0BFD-349973808284";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.92618140474756316 -0.095324227383072113 0.049044525547330853 ;
	setAttr ".jo" -type "double3" 1.3564535025881486 1.8333002883814788 13.097428619758288 ;
	setAttr ".bps" -type "matrix" 0.97436980048330502 0.22495219915798281 -3.3416445784117952e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22495219915813827 0.9743698004831769 -5.3991285311103368e-07 0
		 -76.5767103384607 155.97486077821819 -3.7398030153174018 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandMiddle2" -p "Character_RightHandMiddle1";
	rename -uid "1D69E30B-434E-F925-F079-BE918F72FAB0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2019691113634385 -1.7763568394002505e-15 -2.3453461395206432e-15 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22513939437467367 0.97432656388929162 -5.3984864229041822e-07 0
		 -82.053111301757056 154.70985564784684 -3.7397934866717502 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandMiddle3" -p "Character_RightHandMiddle2";
	rename -uid "79665C91-49CA-3038-C205-2492C6DD29CD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.0197496864503544 -1.2830770916849588e-06 -5.5622389325687971e-06 ;
	setAttr ".jo" -type "double3" -91.372862623451226 -9.2914867328243079e-05 179.9987565997061 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -3.0523664680879646e-07 -1.6375636296968799e-07 -0.99999999999994016 0 -0.22513939437455929 0.97432656388946337 -9.0831380626858224e-08 0
		 -85.309964116181547 153.95721309633331 -3.7397936331033912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandRing1" -p "Character_RightHand";
	rename -uid "82432B28-41EB-5168-477D-59A774F8C02B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.90151245601231356 -0.081449430092341402 -0.18039840623443509 ;
	setAttr ".jo" -type "double3" 1.3564482260719144 1.8335720780123788 13.094027416100792 ;
	setAttr ".bps" -type "matrix" 0.97436962108483272 0.22495297621275007 -1.5912026621453004e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22495297621280366 0.97436962108468395 -5.3991288717108039e-07 0
		 -76.425808045545125 155.92584854503897 -6.0578529007656012 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandRing2" -p "Character_RightHandRing1";
	rename -uid "E902FA79-4223-C3FB-A10C-93B84E26DCCB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1823091764223062 0 -4.7184478546569153e-16 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22539119582751765 0.97426834539727836 -5.3984126501516452e-07 0
		 -81.812708567365576 154.68185486936704 -6.0578536202589355 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandRing3" -p "Character_RightHandRing2";
	rename -uid "F433272F-4A6F-0D03-023E-38B95B81AF55";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.84819980543334594 -3.5790814099101453e-06 6.3383952780826647e-07 ;
	setAttr ".jo" -type "double3" 88.627230935262205 179.9997306851007 0.0097154151306962887 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -9.5425152606591665e-08 -2.9456954182239943e-07 -0.99999999999995226 0 -0.22539119582749995 0.97426834539739582 -2.6548179084031164e-07 0
		 -84.521625317834804 154.05563671038874 -6.0578537419483496 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandPinky1" -p "Character_RightHand";
	rename -uid "44796284-4FC4-3658-73BC-F9B09109E6EF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.8369591789765547 0.010128599029545882 -0.38282629147675468 ;
	setAttr ".jo" -type "double3" 1.3564910898354734 1.8330925676328673 13.100777490309534 ;
	setAttr ".bps" -type "matrix" 0.97436964176632901 0.22495288663137786 -6.0498728305827529e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22495288663170435 0.97436964176629204 -5.399130809349263e-07 0
		 -75.86431395149684 155.08585174762635 -8.1522026999491715 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandPinky2" -p "Character_RightHandPinky1";
	rename -uid "370DEEDD-4121-D620-258D-88BE12C577CC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.89957796046110428 1.7763568394002505e-15 -6.106226635438361e-16 ;
	setAttr ".jo" -type "double3" 0 0.001486548405685711 -0.00031238545013077671 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22583539151806814 0.97416547667097619 -5.3936485378922968e-07 0
		 -79.962907656896093 154.13885647804688 -8.1521923939003997 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightHandPinky3" -p "Character_RightHandPinky2";
	rename -uid "AE9140F7-4464-4A13-FFC7-8A9FC527C5FB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.64903442796746091 -3.1619151741324458e-13 -1.5094037131291316e-12 ;
	setAttr ".jo" -type "double3" 88.627083772546825 179.9982196684378 0.016563255691631574 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -6.3046514971948549e-07 3.852933602261688e-08 -0.99999999999980071 0 -0.22583539151767307 0.97416547667120046 1.7991529293698981e-07 0
		 -82.035580166848888 153.65896802638753 -8.1522029770432454 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftUpLeg" -p "Character_Hips";
	rename -uid "1978AC88-4D1C-7089-3B1E-11B63DF81C62";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.65163331720565099 0.044036148315035106 -3.5000000000000004 ;
	setAttr ".jo" -type "double3" 0.00021528964720317112 1.2977656721534295e-05 173.10077097191609 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999986 112.148004 3.0540014517299598e-15 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftLeg" -p "Character_LeftUpLeg";
	rename -uid "F4C594FC-4069-8EA9-F0F0-19B5784F3083";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1120734631628588 -8.3266726846886741e-16 0 ;
	setAttr ".r" -type "double3" 0 0 4.7708320221952752e-15 ;
	setAttr ".jo" -type "double3" -2.7007191372776084e-06 2.7675157025649982e-05 -11.147282346955222 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769846412109921 58.878686000000002 -6.5421176969460048e-06 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftFoot" -p "Character_LeftLeg";
	rename -uid "D957D835-435B-1147-AF87-D3A8BE0DF112";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.2213531788651824 5.5511151231257827e-17 4.4408920985006262e-16 ;
	setAttr ".jo" -type "double3" 179.99983497857926 0.00021887268189400803 73.25117382028472 ;
	setAttr ".bps" -type "matrix" -4.4960118351738033e-16 -0.46947156278589086 0.88294759285892688 0
		 -1.0035736102370583e-16 0.88294759285892688 0.46947156278589086 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999862 9.4522680000000037 -2.1219247696945997e-05 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_LeftToeBase" -p "Character_LeftFoot";
	rename -uid "9C64BFB6-406B-F7CB-0826-23928C69AD5E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.93000788585662519 4.9960036108132044e-16 8.8817841970012523e-16 ;
	setAttr ".r" -type "double3" 0 0 9.5416640443905487e-15 ;
	setAttr ".jo" -type "double3" 179.99965691131629 -0.00027642247763510244 -28.047997529120028 ;
	setAttr ".bps" -type "matrix" -4.4398645825228063e-16 0.00083775794296192529 0.99999964908075289 0
		 1.2283667620245762e-16 0.99999964908075289 -0.00083775794296192529 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.876975104467979 2.0017551963721187 14.012357556783801 1;
	setAttr ".sd" 1;
	setAttr ".typ" 25;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightUpLeg" -p "Character_Hips";
	rename -uid "CDD136BF-4C80-B7C0-EEA0-41AE022F124E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.65163331720567008 0.044036148314924972 3.4999999999999996 ;
	setAttr ".r" -type "double3" 1.6079504439577934e-48 -1.5448672043175555e-31 -1.1927080055488188e-15 ;
	setAttr ".jo" -type "double3" 0.00031595049259447672 1.9045482872164723e-05 173.10077390188843 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 3.2162452993532727e-16 5.4385242937875642e-32 -1 0
		 -1 4.4408920985006262e-16 -3.2162452993532727e-16 0 -6.8769999000000022 112.148004 -3.0540014517299598e-15 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightLeg" -p "Character_RightUpLeg";
	rename -uid "21026E16-4BFE-FA12-C46A-808B1BC0C6A4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1120734631628442 -3.3306690738754696e-16 0 ;
	setAttr ".r" -type "double3" 6.0841993575227103e-21 2.1108806916035306e-37 -3.975693351829396e-15 ;
	setAttr ".jo" -type "double3" -4.8520061833516868e-06 4.9720102754378077e-05 -11.147282346750556 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -2.3841857877993067e-07 1.0587911846116953e-22 -0.99999999999997158 0
		 -0.99999999999997158 4.4408920985004999e-16 2.3841857877993067e-07 0 -6.8770065757202259 58.878655999999999 -9.5101896030540031e-06 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightFoot" -p "Character_RightLeg";
	rename -uid "2DE69B57-4718-8E1E-D4CE-BAA5E3570362";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.2213531788651828 -4.7878367936959876e-16 -4.4408920985006262e-16 ;
	setAttr ".jo" -type "double3" 179.99972146447627 0.00036428443081769124 73.251179093099083 ;
	setAttr ".bps" -type "matrix" -4.4959791509231056e-16 0.46947156278589108 -0.88294759285892677 0
		 -5.5939941416277452e-07 -0.88294759285878865 -0.46947156278581759 0 -0.99999999999984357 4.9392036597064218e-07 2.6262211758548109e-07 0
		 -6.8770113440918035 9.4522679999999966 -2.6941264466186132e-05 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "Character_RightToeBase" -p "Character_RightFoot";
	rename -uid "EA269CBE-426C-E630-CD30-10988F3E39A6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.9300050499460647 4.4408920985006262e-16 0 ;
	setAttr ".r" -type "double3" -2.0853341517507245e-20 1.8199279869824505e-20 2.1695232236176107e-27 ;
	setAttr ".jo" -type "double3" 179.99999472691997 -0.00013155271958049339 151.95201067416613 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Hips";
	rename -uid "5EBB4ABF-44B0-E1A8-6093-2B819EAFE06B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" -7.0476868156526496e-16 4.4247303365243873 0.51308489454966699 ;
	setAttr ".jo" -type "double3" -90.000000000000924 3.8660624896492859 89.999999999999929 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -4.4408920985006262e-16 0 1 0
		 1 -4.4408920985006262e-16 4.4408920985006262e-16 0 0 115.322 0 1;
	setAttr ".typ" 1;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Spine" -p "BoneFK_Hips";
	rename -uid "AB326095-4C54-88EC-7090-208205B9282C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1025088794347777 -1.1102230246251565e-16 1.7386227455371339e-17 ;
	setAttr ".r" -type "double3" 0 0 1.3914926731402885e-14 ;
	setAttr ".jo" -type "double3" 0 0 3.0875187984018919 ;
	setAttr ".bps" -type "matrix" 4.59317172617089e-16 0.99939082701909576 -0.034899496702500046 0
		 -4.2832019278753274e-16 0.034899496702500046 0.99939082701909576 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2171422980600254e-15 118.06276080000001 0 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Spine1" -p "BoneFK_Spine";
	rename -uid "F5092F45-433B-12A2-D53C-73956514885C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.0037490258416062 6.6613381477509392e-16 3.8908574926909828e-15 ;
	setAttr ".r" -type "double3" 0 0 -3.180554681463516e-15 ;
	setAttr ".jo" -type "double3" 0 0 4.2014233955016538 ;
	setAttr ".bps" -type "matrix" 4.811042412630871e-16 0.99619469809174577 -0.087155742747656501 0
		 -4.0369439140168292e-16 0.087155742747656501 0.99619469809174577 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 5.7023869557109906e-15 127.82183982614796 -0.3407940582832466 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Spine2" -p "BoneFK_Spine1";
	rename -uid "0551D83C-4E74-79A7-26C2-D69F64E10FC2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.0057979432376873 8.8817841970012523e-16 4.9770261940672904e-10 ;
	setAttr ".r" -type "double3" 0 0 -9.2236085762442015e-14 ;
	setAttr ".jo" -type "double3" 179.99999852625058 0 -13.342766220926123 ;
	setAttr ".pa" -type "double3" 36.762975808112202 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 1.2379102964140113e-14 141.64692814355453 -1.5503336046867018 1;
	setAttr ".typ" 6;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Neck" -p "BoneFK_Spine2";
	rename -uid "53022ABC-425F-D81E-3DD0-D9A3C965A659";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 3.074040853929155 -1.1102230246251565e-15 -2.307203277597292e-09 ;
	setAttr ".jo" -type "double3" 179.99999477892013 0 -6.7009634795323496 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.0003083966209613e-14 158.81460714355453 -1.5503336046866729 1;
	setAttr ".typ" 7;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Head" -p "BoneFK_Neck";
	rename -uid "507B6D5E-418E-4B72-4F9F-4BBE5AF0CA7C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.5422952835077588 -2.2204460492503131e-16 4.4908343307509244e-09 ;
	setAttr ".jo" -type "double3" 0 0 -4.5132019421590499 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.3750079879754599e-14 167.25209184355452 -1.5503336046866587 1;
	setAttr ".typ" 8;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_HeadUp" -p "BoneFK_Head";
	rename -uid "94A247BC-4BA1-47A7-2CA2-6F8A2EEDC612";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 3.8706857516979571 2.7755575615628914e-17 1.233746117255937e-14 ;
	setAttr ".jo" -type "double3" -179.99999332092835 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.4472470234754516e-14 191.05709214873031 -1.5503336046866183 1;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Eye_L" -p "BoneFK_Head";
	rename -uid "096B896A-4055-5D24-9C32-2E866C5C1D5D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.7556714630600894 -1.8118825459029664 -1.400000211214403 ;
	setAttr ".jo" -type "double3" -179.99999332092835 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 2.5366422083400559 177.23253955033724 3.0363418446599533 1;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_Eye_R" -p "BoneFK_Head";
	rename -uid "FB7E5547-46EE-A091-FE57-7B9D6FB89936";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 1.755671463060116 -1.8122074229573955 1.3999997887477442 ;
	setAttr ".jo" -type "double3" -179.99999332092835 0 0 ;
	setAttr ".bps" -type "matrix" 4.4408920985006183e-16 1.0000000000000002 1.6792123247455493e-15 0
		 -4.4408920985006341e-16 -1.6792123247455493e-15 1.0000000000000002 0 1 -4.4408920985006262e-16 4.4408920985006262e-16 0
		 -2.5369999999999742 177.23253955033724 3.0366663953133579 1;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftShoulder" -p "BoneFK_Spine2";
	rename -uid "31EBFB15-4B91-3A27-7AD6-05A888BF623B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4109837227530679 -0.00096444260492720146 1.9999999999751945 ;
	setAttr ".r" -type "double3" 5.5659706925611543e-15 1.3020395727241272e-14 -8.7465253740246703e-15 ;
	setAttr ".jo" -type "double3" 90.000002783988478 -68.720137912019311 -34.950423237109767 ;
	setAttr ".bps" -type "matrix" 0.93531812790679647 0.29298768950820886 -0.19833863316451253 0
		 0.20352845173297279 0.012991220144158131 0.9789828382225837 0 0.28940658068555486 -0.95602795042603639 -0.047480407117967652 0
		 6.3903198000000172 151.48634464355453 -1.4974338866866823 1;
	setAttr ".sd" 1;
	setAttr ".typ" 9;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftArm" -p "BoneFK_LeftShoulder";
	rename -uid "CB7D4B95-40F7-F6EA-5EC2-EDB27A311FDF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.9999999999999991 -3.5527136788005009e-15 -0.3973897849152852 ;
	setAttr ".jo" -type "double3" -59.469158494184171 -13.320740803288828 34.297134795947599 ;
	setAttr ".bps" -type "matrix" 0.99687989433796631 1.6365756745850835e-05 -0.078933364282078589 0
		 0.078933365978686804 -0.00020668944817928483 0.99687987291084734 0 -1.4432899320127035e-15 -0.99999997850581701 -0.00020733635952847884 0
		 17.230701752468534 155.03679030466319 -3.7822654811142296 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftForeArm" -p "BoneFK_LeftArm";
	rename -uid "5509C510-44BD-486F-B907-FF9A3D3E97C4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.4999999999999991 -1.9373391779708982e-14 -7.1054273576010019e-15 ;
	setAttr ".r" -type "double3" -3.0115258364592099e-15 3.9887968333356694e-15 -1.5898632241752938e-15 ;
	setAttr ".jo" -type "double3" 179.99984562021874 -6.4440317556643802e-06 6.9295879227832753 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 41.814698039790343 155.03720229197558 -5.7288361530307972 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHand" -p "BoneFK_LeftForeArm";
	rename -uid "F5C34664-40A1-A073-0453-5E82CDAD632C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.5 -7.6674777638174874e-15 3.1974423109204508e-14 ;
	setAttr ".jo" -type "double3" -87.7676466280694 3.9233832743686072e-13 6.9489358341497332e-13 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 67.298577233904624 155.03697341013856 -4.6597071584624938 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandThumb1" -p "BoneFK_LeftHand";
	rename -uid "3130B9E0-4E49-D73A-2627-A7A69670403D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.11101704028620851 0.13433274280772345 -0.1401124711702707 ;
	setAttr ".jo" -type "double3" 18.790588064270509 27.570472273827651 21.448126737342754 ;
	setAttr ".bps" -type "matrix" 0.80547343999123588 -0.34201960654863806 0.48397843568179799 0
		 -0.44548133796126083 0.18915999506567224 0.87507992423263836 0 -0.3908438498901195 -0.92045699791085844 9.5276172820342116e-16 0
		 68.913086843277995 152.89415119117646 -2.5236056427767197 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandThumb2" -p "BoneFK_LeftHandThumb1";
	rename -uid "39AC92C3-46B0-2FEB-4B74-1E9016D9D48A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.6658613380260634 -1.7763568394002505e-15 2.6645352591003757e-15 ;
	setAttr ".jo" -type "double3" -9.8045046094558863 -12.908750023198481 5.4659155387692371 ;
	setAttr ".bps" -type "matrix" 0.88867716975422772 -0.37912893086221627 0.25790335736645409 0
		 -0.23721773097305252 0.10120222256890085 0.96617071900317464 0 -0.39240366469951893 -0.91979310930795077 -6.0076007477282067e-15 0
		 74.403168656423702 150.56295916351945 0.77517839043033421 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandThumb3" -p "BoneFK_LeftHandThumb2";
	rename -uid "D25B6899-4EE6-EC41-F2B0-8388312CA8C4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.46128408986636416 3.5527136788005009e-15 0 ;
	setAttr ".jo" -type "double3" -103.46546934732716 -15.00364500577783 2.9002363031881817 ;
	setAttr ".bps" -type "matrix" 0.92394866465539172 -0.38247642854366959 -0.0055359452669147729 0
		 0.0059914860957702648 -5.3138214564218272e-08 0.99998205088609549 0 -0.38246956372485796 -0.92396524913466127 0.0022915531065968702 0
		 77.315903680311848 149.32032914219604 1.6204849173076719 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandIndex1" -p "BoneFK_LeftHand";
	rename -uid "F54DC612-4424-414A-619B-0CBDBF242DEB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.91253312554905985 -0.024419882049871333 -0.2875411761069307 ;
	setAttr ".jo" -type "double3" -1.3562680101080047 -1.8338491722652761 13.090135647165935 ;
	setAttr ".bps" -type "matrix" 0.97437032489133113 -0.22494992769647076 7.1731482060442627e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22494992769652852 -0.97437032489158193 2.6145273013878586e-13 0
		 76.340401601408985 155.16896193937217 -1.3805256761372346 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandIndex2" -p "BoneFK_LeftHandIndex1";
	rename -uid "377F39AE-4D97-810F-2357-9D8CB14BCBC1";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2032223158702857 -1.7763568394002505e-15 8.3266726846886741e-16 ;
	setAttr ".bps" -type "matrix" 0.97436797583058254 -0.22496010240773551 7.1731482056804748e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22496010240779327 -0.97436797583083334 -7.2290052576600057e-12 0
		 81.822663237492023 153.90329116799901 -1.3805220998585621 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandIndex3" -p "BoneFK_LeftHandIndex2";
	rename -uid "C41340AB-4A57-E7C3-D15F-3181F67960FA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.85325718504257342 -3.3084807480321388e-06 1.9774767364699741e-06 ;
	setAttr ".jo" -type "double3" -91.372229785314289 -1.9163579082088267e-05 0.00061936062804356302 ;
	setAttr ".bps" -type "matrix" 0.97436771571272174 -0.2249612290524142 2.5345000513944453e-16 0
		 -1.6264896639984095e-12 -7.0436480187232799e-12 1.0000000000000002 0 -0.22496122905241411 -0.97436771571272185 -7.2290052579578998e-12 0
		 84.547909765745871 153.27410957041241 -1.3805223382771667 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandMiddle1" -p "BoneFK_LeftHand";
	rename -uid "047C919C-42A6-ADB6-50ED-8B932A797023";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.92617982718088054 -0.095310773506639634 -0.049046263855152428 ;
	setAttr ".jo" -type "double3" -1.3562688737876638 -1.8338469250705434 13.090182063281731 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 76.576668619710659 155.97476332398344 -3.7399264243781523 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandMiddle2" -p "BoneFK_LeftHandMiddle1";
	rename -uid "5F3B5CD5-407A-355A-9587-5FABAD870F35";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.201941574743457 0 1.2212453270876722e-15 ;
	setAttr ".jo" -type "double3" 0 -6.9162340886930431e-05 0.00065155389603977008 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 82.053093823878541 154.71043531337293 -3.7399235633551875 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandMiddle3" -p "BoneFK_LeftHandMiddle2";
	rename -uid "3A011355-45B9-C385-8A99-B4A5439DB305";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.0197540300924972 2.6059154834001674e-12 2.7687574455370623e-13 ;
	setAttr ".jo" -type "double3" -91.372230407876557 3.6185083110504325e-05 -0.00060734388464056825 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386539 2.2146400200471794e-16 0
		 2.2934393675898366e-14 1.0034191271609109e-13 1.0000000000000002 0 -0.22495105434386534 -0.97437006478523536 1.0292690418428619e-13 0
		 85.310120459172154 153.95848219693116 -3.7399230865180253 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandRing1" -p "BoneFK_LeftHand";
	rename -uid "FCCBCCE4-4963-1961-4B82-53BC8ED6E976";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.90151843934456277 -0.081451828393724668 0.18039860599451663 ;
	setAttr ".jo" -type "double3" -1.356281004844925 -1.8338501737425543 13.09041356670291 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 76.425843163767624 155.92588942163411 -6.0579853615696839 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandRing2" -p "BoneFK_LeftHandRing1";
	rename -uid "512BFDDD-41C9-0BF3-CFD9-B98B92CC26D4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1822944937519839 3.5527136788005009e-15 7.2164496600635175e-16 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 81.812745037900868 154.68220655599728 -6.0579834542210511 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandRing3" -p "BoneFK_LeftHandRing2";
	rename -uid "E8E3E116-444F-6A4D-E031-F4812892BBD8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.84820625469194422 1.6408672998124985e-07 4.785908216398127e-07 ;
	setAttr ".jo" -type "double3" -91.372225684487873 -2.4252784000554894e-05 -0.00018703312504868663 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386525 1.9327053868663757e-16 0
		 8.5964561194605169e-15 3.8098478279405135e-14 1.0000000000000002 0 -0.2249510543438652 -0.97437006478523547 3.9052740828714455e-14 0
		 84.521859073754101 154.05674880129553 -6.0579829773839009 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandPinky1" -p "BoneFK_LeftHand";
	rename -uid "254C9692-44F3-7189-0F04-3784E7F23B7E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.8369651713961499 0.010162487071397663 0.38282493352883507 ;
	setAttr ".jo" -type "double3" -1.3562587664969725 -1.8338299480037814 13.090161530300932 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 75.864342647658447 155.08551161847751 -8.1523266303473392 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandPinky2" -p "BoneFK_LeftHandPinky1";
	rename -uid "9D78772C-4907-7874-989A-8F96919AACF3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.89952461342403023 -1.7763568394002505e-15 7.2164496600635175e-16 ;
	setAttr ".jo" -type "double3" 0 -0.00089563939224532156 0.0013604009619597999 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 79.96286104734304 154.13929884343474 -8.1523228156500576 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftHandPinky3" -p "BoneFK_LeftHandPinky2";
	rename -uid "98FE099C-49EA-B9F0-4AA0-E084CB91F525";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.64909058186300772 1.6324719354088302e-12 1.0739187317199139e-12 ;
	setAttr ".jo" -type "double3" -91.372239877642826 0.00084520408540260383 -0.0012960760577985866 ;
	setAttr ".bps" -type "matrix" 0.97437006478523536 -0.22495105434386539 2.1405281614918304e-16 0
		 5.9055182610590735e-14 2.5669229096200602e-13 1.0000000000000004 0 -0.22495105434386531 -0.97437006478523536 2.6339237458237977e-13 0
		 82.036011708884317 153.66066114194035 -8.1523294913702635 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftArm" -p "BoneFK_LeftShoulder";
	rename -uid "174ABFA3-460E-9594-4AC3-16B287E6D433";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.9999999999999991 -1.4210854715202004e-13 -0.39738978491538379 ;
	setAttr ".jo" -type "double3" -59.469158494188221 -13.320740803287954 34.297134795948537 ;
	setAttr ".bps" -type "matrix" 0.99687989433796631 1.6365756745850835e-05 -0.078933364282078589 0
		 0.078933365978686804 -0.00020668944817928483 0.99687987291084734 0 -1.4432899320127035e-15 -0.99999997850581701 -0.00020733635952847884 0
		 17.230701752468534 155.03679030466319 -3.7822654811142296 1;
	setAttr ".sd" 1;
	setAttr ".typ" 10;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftForeArm" -p "BoneIK_LeftArm";
	rename -uid "0FB58E21-4572-20DF-D102-78B2AA8A99DE";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.4999999999999982 -7.6050277186823223e-15 5.3290705182007514e-15 ;
	setAttr ".jo" -type "double3" 179.99984562495246 -6.4440315378209079e-06 6.9295879227832966 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 41.814698039790343 155.03720229197558 -5.7288361530307972 1;
	setAttr ".sd" 1;
	setAttr ".typ" 11;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHand" -p "BoneIK_LeftForeArm";
	rename -uid "B64605E4-4625-397F-3B47-468F21573C05";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.5000000000000022 -2.581268532253489e-15 -8.8817841970012523e-15 ;
	setAttr ".jo" -type "double3" -87.767646632798886 -2.4683770936710309e-13 -1.5763123600001079e-13 ;
	setAttr ".bps" -type "matrix" 0.99912112601209402 -8.8610759624914769e-06 0.041916291317420869 0
		 -0.041916291315772361 3.7174966304245882e-07 0.99912112605138803 0 -8.8688705607842278e-06 -0.99999999996067179 -4.9948380934777825e-13 0
		 67.298577233904624 155.03697341013856 -4.6597071584624938 1;
	setAttr ".sd" 1;
	setAttr ".typ" 12;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandThumb1" -p "BoneIK_LeftHand";
	rename -uid "D36A34BB-4350-623B-4FD0-26B04B7EA56D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.11101704028620585 0.13433274280771457 -0.14011247117026979 ;
	setAttr ".jo" -type "double3" 18.79058806426778 27.570472273827324 21.448126737339173 ;
	setAttr ".bps" -type "matrix" 0.80547343999123588 -0.34201960654863806 0.48397843568179799 0
		 -0.44548133796126083 0.18915999506567224 0.87507992423263836 0 -0.3908438498901195 -0.92045699791085844 9.5276172820342116e-16 0
		 68.913086843277995 152.89415119117646 -2.5236056427767197 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandThumb2" -p "BoneIK_LeftHandThumb1";
	rename -uid "54C3BAFA-4A3A-0531-A05A-51AD5DA6BC19";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.66586133802610803 -1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr ".jo" -type "double3" -9.8045046094540549 -12.908750023196838 5.4659155387702345 ;
	setAttr ".bps" -type "matrix" 0.88867716975422772 -0.37912893086221627 0.25790335736645409 0
		 -0.23721773097305252 0.10120222256890085 0.96617071900317464 0 -0.39240366469951893 -0.91979310930795077 -6.0076007477282067e-15 0
		 74.403168656423702 150.56295916351945 0.77517839043033421 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandThumb3" -p "BoneIK_LeftHandThumb2";
	rename -uid "4EF4D250-4055-C844-88A5-D2A609E0BAF4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.46128408986637437 1.7763568394002505e-15 4.4408920985006262e-16 ;
	setAttr ".jo" -type "double3" -103.46546934732908 -15.003645005777472 2.900236303187445 ;
	setAttr ".bps" -type "matrix" 0.92394866465539172 -0.38247642854366959 -0.0055359452669147729 0
		 0.0059914860957702648 -5.3138214564218272e-08 0.99998205088609549 0 -0.38246956372485796 -0.92396524913466127 0.0022915531065968702 0
		 77.315903680311848 149.32032914219604 1.6204849173076719 1;
	setAttr ".sd" 1;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandIndex1" -p "BoneIK_LeftHand";
	rename -uid "63A022FE-435A-EA2D-7E82-029FE8C97395";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.91253312554905808 -0.024419882049881991 -0.28754117610693181 ;
	setAttr ".jo" -type "double3" -1.3562680101080673 -1.8338491722652444 13.090135647167438 ;
	setAttr ".bps" -type "matrix" 0.97437032489133113 -0.22494992769647076 7.1731482060442627e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22494992769652852 -0.97437032489158193 2.6145273013878586e-13 0
		 76.340401601408985 155.16896193937217 -1.3805256761372346 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandIndex2" -p "BoneIK_LeftHandIndex1";
	rename -uid "E3BF680F-4531-AAEF-4AA0-AFAE8CCDABB4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2032223158703008 0 6.6613381477509392e-16 ;
	setAttr ".bps" -type "matrix" 0.97436797583058254 -0.22496010240773551 7.1731482056804748e-07 0
		 -6.9893021598491139e-07 1.6136017178670059e-07 0.99999999999974287 0 -0.22496010240779327 -0.97436797583083334 -7.2290052576600057e-12 0
		 81.822663237492023 153.90329116799901 -1.3805220998585621 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandIndex3" -p "BoneIK_LeftHandIndex2";
	rename -uid "7B2DAF21-4C7A-9DA4-1D12-67959166DBEF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.85325718504254855 -3.3084810286965194e-06 1.9774767303082363e-06 ;
	setAttr ".jo" -type "double3" -91.37222978531517 -1.9163578862139923e-05 0.0006193606263012125 ;
	setAttr ".bps" -type "matrix" 0.97436771571272174 -0.2249612290524142 2.5345000513944453e-16 0
		 -1.6264896639984095e-12 -7.0436480187232799e-12 1.0000000000000002 0 -0.22496122905241411 -0.97436771571272185 -7.2290052579578998e-12 0
		 84.547909765745871 153.27410957041241 -1.3805223382771667 1;
	setAttr ".sd" 1;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandMiddle1" -p "BoneIK_LeftHand";
	rename -uid "FA7D4CD8-449F-86D2-5D3D-06A47A973CAA";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.92617982718088321 -0.095310773506650293 -0.049046263855153427 ;
	setAttr ".jo" -type "double3" -1.3562688737879607 -1.8338469250709246 13.090182063282755 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 76.576668619710659 155.97476332398344 -3.7399264243781523 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandMiddle2" -p "BoneIK_LeftHandMiddle1";
	rename -uid "05CC92ED-4B69-AF6B-BB42-C696EA78B314";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2019415747434552 3.5527136788005009e-15 -1.0685896612017132e-15 ;
	setAttr ".jo" -type "double3" 0 -6.9162281927893845e-05 0.00065155334292032519 ;
	setAttr ".bps" -type "matrix" 0.9743700362902401 -0.22495117776876575 4.4879938651484573e-07 0
		 -4.3729665137535747e-07 1.0095805087051542e-07 0.99999999999989952 0 -0.22495117776878834 -0.97437003629033836 1.0292690415623217e-13 0
		 82.053093823878541 154.71043531337293 -3.7399235633551875 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandMiddle3" -p "BoneIK_LeftHandMiddle2";
	rename -uid "07813643-4095-F3C5-D37B-F19A6F9604A3";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.0197540300925123 1.2390088954816747e-11 1.3152118283343839e-12 ;
	setAttr ".jo" -type "double3" -91.372230407877112 3.6185082997296556e-05 -0.00060734388617217925 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386539 2.2146400200471794e-16 0
		 2.2934393675898366e-14 1.0034191271609109e-13 1.0000000000000002 0 -0.22495105434386534 -0.97437006478523536 1.0292690418428619e-13 0
		 85.310120459172154 153.95848219693116 -3.7399230865180253 1;
	setAttr ".sd" 1;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandRing1" -p "BoneIK_LeftHand";
	rename -uid "FE190836-4F7B-7901-B59E-AFA9A4E5AFCC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.90151843934456455 -0.08145182839373355 0.18039860599451507 ;
	setAttr ".jo" -type "double3" -1.3562810048449914 -1.833850173742571 13.090413566704504 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 76.425843163767624 155.92588942163411 -6.0579853615696839 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandRing2" -p "BoneIK_LeftHandRing1";
	rename -uid "85AB98DA-4339-C7AC-5848-B898D124C102";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1822944937519972 1.7763568394002505e-15 2.7755575615628914e-16 ;
	setAttr ".bps" -type "matrix" 0.97436985689262323 -0.2249519548236335 2.7375476423133057e-07 0
		 -2.6673838166295699e-07 6.1581707411116584e-08 0.99999999999996281 0 -0.22495195482364186 -0.97436985689265987 3.9052740650083694e-14 0
		 81.812745037900868 154.68220655599728 -6.0579834542210511 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandRing3" -p "BoneIK_LeftHandRing2";
	rename -uid "E41B31A4-4DFF-52CB-ED21-E691294933A8";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.84820625469193267 1.6408641201337559e-07 4.7859081478418553e-07 ;
	setAttr ".jo" -type "double3" -91.372225684488811 -2.4252783785200256e-05 -0.00018703312757993107 ;
	setAttr ".bps" -type "matrix" 0.97437006478523525 -0.22495105434386525 1.9327053868663757e-16 0
		 8.5964561194605169e-15 3.8098478279405135e-14 1.0000000000000002 0 -0.2249510543438652 -0.97437006478523547 3.9052740828714455e-14 0
		 84.521859073754101 154.05674880129553 -6.0579829773839009 1;
	setAttr ".sd" 1;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandPinky1" -p "BoneIK_LeftHand";
	rename -uid "B6B164F4-41F9-A8E9-B193-D7B5F0156987";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.83696517139614279 0.010162487071401216 0.38282493352883351 ;
	setAttr ".jo" -type "double3" -1.3562587664972843 -1.8338299480047324 13.090161530296747 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 75.864342647658447 155.08551161847751 -8.1523266303473392 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandPinky2" -p "BoneIK_LeftHandPinky1";
	rename -uid "687E978D-4CC5-AF77-9155-3BA0C32AEECD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.8995246134240471 3.5527136788005009e-15 -1.6653345369377348e-16 ;
	setAttr ".jo" -type "double3" 1.4810611875039103e-24 -0.0008956393853689215 0.0013604009664869761 ;
	setAttr ".bps" -type "matrix" 0.97436987757392179 -0.22495186524246255 7.1962183089459454e-07 0
		 -7.0117777600450612e-07 1.6188052977306694e-07 0.99999999999974143 0 -0.2249518652425207 -0.97436987757417415 2.6339237440414764e-13 0
		 79.96286104734304 154.13929884343474 -8.1523228156500576 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftHandPinky3" -p "BoneIK_LeftHandPinky2";
	rename -uid "00636E97-47B7-6AED-0B48-579BF7F3CD4A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.64909058186297308 1.7337242752546445e-12 1.1411982470121984e-12 ;
	setAttr ".jo" -type "double3" -91.372239877643878 0.00084520420185767793 -0.0012960762480722263 ;
	setAttr ".bps" -type "matrix" 0.97437006478523536 -0.22495105434386539 2.1405281614918304e-16 0
		 5.9055182610590735e-14 2.5669229096200602e-13 1.0000000000000004 0 -0.22495105434386531 -0.97437006478523536 2.6339237458237977e-13 0
		 82.036011708884317 153.66066114194035 -8.1523294913702635 1;
	setAttr ".sd" 1;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightShoulder" -p "BoneFK_Spine2";
	rename -uid "D5D73DB4-423E-491E-FDDA-A7A61093EC12";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 1.4109838729274529 -0.00096040867863250723 -2.0000000000247038 ;
	setAttr ".r" -type "double3" -7.9513867036587948e-14 -3.816665617756222e-14 -1.4312496066585799e-14 ;
	setAttr ".jo" -type "double3" 90.000002783846867 68.717959649180557 -34.94626015234067 ;
	setAttr ".bps" -type "matrix" 0.93531812790679658 -0.29298768950820808 0.19833863316451264 0
		 0.20352845173297221 -0.012991220144160213 -0.9789828382225837 0 0.28940658068555464 0.9560279504260365 0.047480407117965404 0
		 -6.3903197999999835 151.48599374355453 -1.4974299526866881 1;
	setAttr ".sd" 2;
	setAttr ".typ" 9;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightArm" -p "BoneFK_RightShoulder";
	rename -uid "CB9CFB50-4FD4-8E43-686C-ACADAC0FF22D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.9999999999999964 -1.0658141036401503e-14 -0.3973897849152852 ;
	setAttr ".jo" -type "double3" 59.485468119278849 -13.317094434240454 -34.30305700521091 ;
	setAttr ".bps" -type "matrix" 0.99688042858593739 -1.1857041610663366e-05 0.078926617574352376 0
		 0.078926618337086779 0.00020668955122356281 -0.996880407168935 0 -4.4932546973130982e-06 0.99999997856941991 0.0002069806046058123 0
		 -17.230699456094506 155.03700385525036 -3.7822603913477 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightForeArm" -p "BoneFK_RightArm";
	rename -uid "B8A1C9D6-4481-BAE5-3F04-E583B7DE4A83";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.5 6.9388939039072284e-15 -8.8817841970012523e-15 ;
	setAttr ".r" -type "double3" 2.033981243742041e-14 -3.1866696394997776e-15 7.9485501752728263e-16 ;
	setAttr ".jo" -type "double3" 179.99999914622637 0 -6.9296079503860115 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -41.814711729839736 155.03689267236439 -5.7287052565477303 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHand" -p "BoneFK_RightForeArm";
	rename -uid "BFDDB00E-4D58-64AC-F377-3EA2A4CD0995";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.5 -1.2947976024690888e-14 -1.5454304502782179e-13 ;
	setAttr ".jo" -type "double3" -92.244930610170769 5.5032182840314363e-14 -5.7231795895845626e-14 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -67.29861011445918 155.03686650011409 -4.659580356446817 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandPinky1" -p "BoneFK_RightHand";
	rename -uid "5FDFDBAF-4D40-E75D-1F65-0DA2243E0EDD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.8369591789765547 0.010128599026057117 -0.38282629147684699 ;
	setAttr ".jo" -type "double3" 1.3564910932662191 1.8330925741228645 13.100777499004788 ;
	setAttr ".bps" -type "matrix" 0.97436964176632901 0.22495288663137786 -6.0498728305827529e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22495288663170435 0.97436964176629204 -5.399130809349263e-07 0
		 -75.86431395149684 155.08585174762635 -8.1522026999491715 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandPinky2" -p "BoneFK_RightHandPinky1";
	rename -uid "0CDA4F3A-4B66-7DC5-5237-B3A0C8090F8D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.89957796046110383 1.7763568394002505e-15 -1.8318679906315083e-15 ;
	setAttr ".jo" -type "double3" 7.4053059391072347e-25 0.0014865484074337752 -0.00031238544181226623 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22583539151806814 0.97416547667097619 -5.3936485378922968e-07 0
		 -79.962907656896093 154.13885647804688 -8.1521923939003997 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandPinky3" -p "BoneFK_RightHandPinky2";
	rename -uid "44E2A87C-457D-6C93-CFB3-9882016A92E9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.6490344279674618 -3.1619151741324458e-13 -1.4955814364725484e-12 ;
	setAttr ".jo" -type "double3" 88.627083772548687 179.99821966843643 0.01656325568455802 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -6.3046514971948549e-07 3.852933602261688e-08 -0.99999999999980071 0 -0.22583539151767307 0.97416547667120046 1.7991529293698981e-07 0
		 -82.035580166848888 153.65896802638753 -8.1522029770432454 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandRing1" -p "BoneFK_RightHand";
	rename -uid "AFB02C57-4C27-78B8-1E0A-02BBD97BC807";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.90151245601231356 -0.081449430093982755 -0.18039840623369119 ;
	setAttr ".jo" -type "double3" 1.3564482295019185 1.8335720845026977 13.094027424797678 ;
	setAttr ".bps" -type "matrix" 0.97436962108483272 0.22495297621275007 -1.5912026621453004e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22495297621280366 0.97436962108468395 -5.3991288717108039e-07 0
		 -76.425808045545125 155.92584854503897 -6.0578529007656012 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandRing2" -p "BoneFK_RightHandRing1";
	rename -uid "946D44E7-4AB6-CD3B-F3DE-BCB0BFF518FC";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.182309176422307 0 -1.0269562977782698e-15 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22539119582751765 0.97426834539727836 -5.3984126501516452e-07 0
		 -81.812708567365576 154.68185486936704 -6.0578536202589355 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandRing3" -p "BoneFK_RightHandRing2";
	rename -uid "44AE0A86-4B26-7F2D-FA18-E08701E21476";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.84819980543335838 -3.5790814081337885e-06 6.3383951556805762e-07 ;
	setAttr ".jo" -type "double3" 88.627230935263668 179.99973068510099 0.0097154151306962887 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -9.5425152606591665e-08 -2.9456954182239943e-07 -0.99999999999995226 0 -0.22539119582749995 0.97426834539739582 -2.6548179084031164e-07 0
		 -84.521625317834804 154.05563671038874 -6.0578537419483496 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandMiddle1" -p "BoneFK_RightHand";
	rename -uid "74C874D1-420C-DB01-0EE2-31B1A8749AD2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.92618140474756316 -0.095324227382619142 0.049044525548200935 ;
	setAttr ".jo" -type "double3" 1.3564535060183283 1.8333002948712123 13.097428628454576 ;
	setAttr ".bps" -type "matrix" 0.97436980048330502 0.22495219915798281 -3.3416445784117952e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22495219915813827 0.9743698004831769 -5.3991285311103368e-07 0
		 -76.5767103384607 155.97486077821819 -3.7398030153174018 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandMiddle2" -p "BoneFK_RightHandMiddle1";
	rename -uid "0BC9A978-4B6A-C951-D970-F5B1D240B299";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.201969111363427 3.5527136788005009e-15 -2.5396351688300456e-15 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22513939437467367 0.97432656388929162 -5.3984864229041822e-07 0
		 -82.053111301757056 154.70985564784684 -3.7397934866717502 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandMiddle3" -p "BoneFK_RightHandMiddle2";
	rename -uid "BE6FC410-48A9-F9AE-AE7F-0B97630D65DB";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.0197496864503588 -1.2830769016147769e-06 -5.5622389387721682e-06 ;
	setAttr ".jo" -type "double3" -91.372862623449876 -9.2914867493654735e-05 179.99875659970741 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -3.0523664680879646e-07 -1.6375636296968799e-07 -0.99999999999994016 0 -0.22513939437455929 0.97432656388946337 -9.0831380626858224e-08 0
		 -85.309964116181547 153.95721309633331 -3.7397936331033912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandIndex1" -p "BoneFK_RightHand";
	rename -uid "FFFC96AE-4522-F3BA-B055-73BBACECCBC6";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.91253091977132339 -0.024416306208122407 0.28754104721270479 ;
	setAttr ".jo" -type "double3" 1.3563865952603664 1.8334682035682142 13.093906662139391 ;
	setAttr ".bps" -type "matrix" 0.97437008908576894 0.22495094908585606 -6.0267919916913977e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22495094908618105 0.97437008908573097 -5.3991289831873109e-07 0
		 -76.34041222636084 155.16886245195798 -1.3804025202840906 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandIndex2" -p "BoneFK_RightHandIndex1";
	rename -uid "5E12A604-422C-36BB-4DB7-C9A66ABBAF9C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2032464151855962 1.7763568394002505e-15 -8.8817841970012523e-16 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22516966696526888 0.97431956825184363 -5.397775971761036e-07 0
		 -81.822710698736657 153.90285023805987 -1.3803929920816722 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandIndex3" -p "BoneFK_RightHandIndex2";
	rename -uid "900D29B9-4FB0-2FED-E65F-C4AF6F3026C4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.85323032522117703 -2.8983522071257539e-07 -4.9879916431128102e-06 ;
	setAttr ".jo" -type "double3" 88.627198490292983 179.99996914875908 0.0032747022646867447 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -6.2718169315325164e-07 3.6750130026321287e-08 -0.99999999999980282 0 -0.22516966696487717 0.97431956825206756 1.7702866381073903e-07 0
		 -84.547768121360747 153.27324088419635 -1.3803932338809421 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandThumb1" -p "BoneFK_RightHand";
	rename -uid "A3762576-4DDD-3E6A-59FF-559C963CD04A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.11101712848605327 0.13434641768683875 0.1401166519129019 ;
	setAttr ".jo" -type "double3" -18.789309690063597 -27.570916674551647 21.446541598079783 ;
	setAttr ".bps" -type "matrix" 0.80547319430682263 0.34202020876278227 -0.48397841899306471 0
		 -0.44548093564676355 -0.18916089983560244 -0.87507993346246371 0 -0.39084481476469357 0.92045658820568421 -5.5161878991457219e-07 0
		 -68.91311014364021 152.89386045747364 -2.5234799748863912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandThumb2" -p "BoneFK_RightHandThumb1";
	rename -uid "64C29382-49D7-533D-1D41-B797A2CC9EA9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.66580774850933788 5.3290705182007514e-15 -4.4408920985006262e-15 ;
	setAttr ".jo" -type "double3" 9.8048014677303463 12.906458028326599 5.4734766152556871 ;
	setAttr ".bps" -type "matrix" 0.88867683245996809 0.37912973339767564 -0.25790333984406844 0
		 -0.23721739962308361 -0.10120295459665032 -0.96617072368032941 0 -0.39240462887812605 0.91979269796770857 -5.5165015155613088e-07 0
		 -74.403205259015067 150.56286270926071 0.77530908521889508 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightHandThumb3" -p "BoneFK_RightHandThumb2";
	rename -uid "E5381E84-4106-FA0B-81E0-45B0D6926EE0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.46139678191875655 -1.7763568394002505e-15 2.6645352591003757e-15 ;
	setAttr ".jo" -type "double3" 76.533213344337213 195.00449941326823 2.8945259882940642 ;
	setAttr ".bps" -type "matrix" 0.9239482624308385 0.38247739984804541 0.0055359693381279744 0
		 0.0059917192429357041 -4.40859602094789e-07 -0.99998204948904956 0 -0.38247053174270568 0.92396484706144788 -0.0022921045281208297 0
		 -77.315908573797742 149.31986385788954 1.6206200506415134 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightArm" -p "BoneFK_RightShoulder";
	rename -uid "55157F92-4D86-7175-0377-AAA7618FCD86";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 1.9999999999999973 -3.3750779948604759e-14 -0.39738978491527011 ;
	setAttr ".jo" -type "double3" 59.485468119277833 -13.317094434240712 -34.303057005210654 ;
	setAttr ".bps" -type "matrix" 0.99688042858593739 -1.1857041610663366e-05 0.078926617574352376 0
		 0.078926618337086779 0.00020668955122356281 -0.996880407168935 0 -4.4932546973130982e-06 0.99999997856941991 0.0002069806046058123 0
		 -17.230699456094506 155.03700385525036 -3.7822603913477 1;
	setAttr ".sd" 2;
	setAttr ".typ" 10;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightForeArm" -p "BoneIK_RightArm";
	rename -uid "FDA73CC7-479F-47D5-8882-F399484E5A0A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 2.5000000000000009 6.6613381477509392e-16 2.3092638912203256e-14 ;
	setAttr ".r" -type "double3" 8.5430963710364653e-19 -9.2009994443321985e-20 9.6073335735101347e-14 ;
	setAttr ".jo" -type "double3" -180 -8.8278125961003172e-32 -6.9296079503860577 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -41.814711729839736 155.03689267236439 -5.7287052565477303 1;
	setAttr ".sd" 2;
	setAttr ".typ" 11;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHand" -p "BoneIK_RightForeArm";
	rename -uid "BF671A2B-48B3-53D2-2288-E18C2C5DBCD4";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 2.4999999999999987 -1.1678158440275865e-14 -1.1368683772161603e-13 ;
	setAttr ".jo" -type "double3" -92.244931463943374 1.3531680417676378e-13 5.1710902869074548e-15 ;
	setAttr ".bps" -type "matrix" 0.99912113577507033 9.8874408535774125e-06 -0.041916058375898062 0
		 -0.041916058368885019 -9.1553579167571618e-07 -0.99912113582386919 0 -9.9171267876402334e-06 0.99999999995070032 -5.0028861206416432e-07 0
		 -67.29861011445918 155.03686650011409 -4.659580356446817 1;
	setAttr ".sd" 2;
	setAttr ".typ" 12;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandThumb1" -p "BoneIK_RightHand";
	rename -uid "3B2A8EDD-4AAF-F534-0A67-009FA0836370";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.11101712848605505 0.13434641768684585 0.14011665191290268 ;
	setAttr ".jo" -type "double3" -18.789309690061891 -27.57091667455127 21.446541598077303 ;
	setAttr ".bps" -type "matrix" 0.80547319430682263 0.34202020876278227 -0.48397841899306471 0
		 -0.44548093564676355 -0.18916089983560244 -0.87507993346246371 0 -0.39084481476469357 0.92045658820568421 -5.5161878991457219e-07 0
		 -68.91311014364021 152.89386045747364 -2.5234799748863912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandThumb2" -p "BoneIK_RightHandThumb1";
	rename -uid "A7C98C2B-468D-E921-A6C1-2DAC91C8D9D0";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.6658077485093099 0 -1.7763568394002505e-15 ;
	setAttr ".jo" -type "double3" 9.8048014677281596 12.906458028326933 5.473476615251105 ;
	setAttr ".bps" -type "matrix" 0.88867683245996809 0.37912973339767564 -0.25790333984406844 0
		 -0.23721739962308361 -0.10120295459665032 -0.96617072368032941 0 -0.39240462887812605 0.91979269796770857 -5.5165015155613088e-07 0
		 -74.403205259015067 150.56286270926071 0.77530908521889508 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandThumb3" -p "BoneIK_RightHandThumb2";
	rename -uid "E6288600-4560-D459-E2B3-BD9CE747CD19";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.46139678191866529 0 -8.8817841970012523e-16 ;
	setAttr ".jo" -type "double3" 76.533213344337724 195.00449941326761 2.8945259882959982 ;
	setAttr ".bps" -type "matrix" 0.9239482624308385 0.38247739984804541 0.0055359693381279744 0
		 0.0059917192429357041 -4.40859602094789e-07 -0.99998204948904956 0 -0.38247053174270568 0.92396484706144788 -0.0022921045281208297 0
		 -77.315908573797742 149.31986385788954 1.6206200506415134 1;
	setAttr ".sd" 2;
	setAttr ".typ" 14;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandIndex1" -p "BoneIK_RightHand";
	rename -uid "48999786-4096-970D-675C-0284D1FF3906";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.91253091977132428 -0.024416306208117078 0.2875410472127059 ;
	setAttr ".jo" -type "double3" 1.3563865952605794 1.8334682035689667 13.093906662136966 ;
	setAttr ".bps" -type "matrix" 0.97437008908576894 0.22495094908585606 -6.0267919916913977e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22495094908618105 0.97437008908573097 -5.3991289831873109e-07 0
		 -76.34041222636084 155.16886245195798 -1.3804025202840906 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandIndex2" -p "BoneIK_RightHandIndex1";
	rename -uid "5822545A-4EF7-2743-4030-C3B72EA1DE5D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2032464151855855 0 -1.2212453270876722e-15 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -4.6577866608832273e-07 -6.6164823669886084e-07 -0.99999999999967282 0 -0.22516966696526888 0.97431956825184363 -5.397775971761036e-07 0
		 -81.822710698736657 153.90285023805987 -1.3803929920816722 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandIndex3" -p "BoneIK_RightHandIndex2";
	rename -uid "28258482-4903-27E5-036A-89A0522CFFA2";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.85323032522118414 -2.8983507860402824e-07 -4.9879916416695202e-06 ;
	setAttr ".jo" -type "double3" 88.627198490293551 179.99996914875905 0.0032747022652974112 ;
	setAttr ".bps" -type "matrix" 0.97431956825188148 0.22516966696494389 -6.0280038194155132e-07 0
		 -6.2718169315325164e-07 3.6750130026321287e-08 -0.99999999999980282 0 -0.22516966696487717 0.97431956825206756 1.7702866381073903e-07 0
		 -84.547768121360747 153.27324088419635 -1.3803932338809421 1;
	setAttr ".sd" 2;
	setAttr ".typ" 19;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandMiddle1" -p "BoneIK_RightHand";
	rename -uid "DC142F01-4274-293E-DDDA-B4BB0F9D3553";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.92618140474756139 -0.095324227382612037 0.049044525548200102 ;
	setAttr ".jo" -type "double3" 1.3564535060185314 1.833300294871937 13.097428628451908 ;
	setAttr ".bps" -type "matrix" 0.97436980048330502 0.22495219915798281 -3.3416445784117952e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22495219915813827 0.9743698004831769 -5.3991285311103368e-07 0
		 -76.5767103384607 155.97486077821819 -3.7398030153174018 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandMiddle2" -p "BoneIK_RightHandMiddle1";
	rename -uid "F3E85899-4610-F146-7C6E-6989FE3B515C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.2019691113634252 3.5527136788005009e-15 -1.6930901125533637e-15 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -2.0414517245410063e-07 -6.01245808653419e-07 -0.99999999999979861 0 -0.22513939437467367 0.97432656388929162 -5.3984864229041822e-07 0
		 -82.053111301757056 154.70985564784684 -3.7397934866717502 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandMiddle3" -p "BoneIK_RightHandMiddle2";
	rename -uid "10CFC3AB-4E4C-65C4-8E17-CFBA7B2F7F5A";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 1.0197496864503499 -1.2830768429950012e-06 -5.5622389354692547e-06 ;
	setAttr ".jo" -type "double3" -91.372862623449194 -9.2914867469097949e-05 179.99875659970797 ;
	setAttr ".bps" -type "matrix" 0.97432656388941974 0.22513939437451819 -3.3426818163860308e-07 0
		 -3.0523664680879646e-07 -1.6375636296968799e-07 -0.99999999999994016 0 -0.22513939437455929 0.97432656388946337 -9.0831380626858224e-08 0
		 -85.309964116181547 153.95721309633331 -3.7397936331033912 1;
	setAttr ".sd" 2;
	setAttr ".typ" 20;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandRing1" -p "BoneIK_RightHand";
	rename -uid "C92C86BA-49D0-9921-E082-24B9774B3916";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.90151245601231178 -0.081449430093979203 -0.18039840623369235 ;
	setAttr ".jo" -type "double3" 1.3564482295026352 1.8335720845043664 13.094027424796055 ;
	setAttr ".bps" -type "matrix" 0.97436962108483272 0.22495297621275007 -1.5912026621453004e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22495297621280366 0.97436962108468395 -5.3991288717108039e-07 0
		 -76.425808045545125 155.92584854503897 -6.0578529007656012 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandRing2" -p "BoneIK_RightHandRing1";
	rename -uid "9D4496E6-4EB5-0B0C-E05A-8799215C7502";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.1823091764223062 1.7763568394002505e-15 1.2212453270876722e-15 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -3.3586942635708685e-08 -5.6186929277084431e-07 -0.99999999999984179 0 -0.22539119582751765 0.97426834539727836 -5.3984126501516452e-07 0
		 -81.812708567365576 154.68185486936704 -6.0578536202589355 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandRing3" -p "BoneIK_RightHandRing2";
	rename -uid "8060EF79-4DF1-3385-0275-49A1DD97AF42";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.84819980543336015 -3.5790813299740876e-06 6.3383951079409862e-07 ;
	setAttr ".jo" -type "double3" 88.627230935264919 179.99973068510116 0.0097154151311797318 ;
	setAttr ".bps" -type "matrix" 0.97426834539742713 0.225391195827464 -1.5936308681881658e-07 0
		 -9.5425152606591665e-08 -2.9456954182239943e-07 -0.99999999999995226 0 -0.22539119582749995 0.97426834539739582 -2.6548179084031164e-07 0
		 -84.521625317834804 154.05563671038874 -6.0578537419483496 1;
	setAttr ".sd" 2;
	setAttr ".typ" 21;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandPinky1" -p "BoneIK_RightHand";
	rename -uid "C10BB86C-46D1-0C74-2C54-29A55E0BCECD";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0.83695917897655114 0.010128599026062446 -0.38282629147684683 ;
	setAttr ".jo" -type "double3" 1.3564910932665315 1.8330925741239306 13.100777499000918 ;
	setAttr ".bps" -type "matrix" 0.97436964176632901 0.22495288663137786 -6.0498728305827529e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22495288663170435 0.97436964176629204 -5.399130809349263e-07 0
		 -75.86431395149684 155.08585174762635 -8.1522026999491715 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandPinky2" -p "BoneIK_RightHandPinky1";
	rename -uid "CD55D710-42DD-04EC-099A-28A02B66F452";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.89957796046109006 -1.7763568394002505e-15 -2.3314683517128287e-15 ;
	setAttr ".jo" -type "double3" 0 0.0014865484093394788 -0.00031238543274359512 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -4.6802623617249545e-07 -6.6216855097316604e-07 -0.99999999999967149 0 -0.22583539151806814 0.97416547667097619 -5.3936485378922968e-07 0
		 -79.962907656896093 154.13885647804688 -8.1521923939003997 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightHandPinky3" -p "BoneIK_RightHandPinky2";
	rename -uid "BD7C9052-42E1-EE42-73CC-F6905B7AAE28";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.64903442796748756 -3.1086244689504383e-13 -1.4835355166553654e-12 ;
	setAttr ".jo" -type "double3" 88.627083772549412 179.99821966843467 0.016563255677382687 ;
	setAttr ".bps" -type "matrix" 0.97416547667101283 0.22583539151774162 -6.0547609541896946e-07 0
		 -6.3046514971948549e-07 3.852933602261688e-08 -0.99999999999980071 0 -0.22583539151767307 0.97416547667120046 1.7991529293698981e-07 0
		 -82.035580166848888 153.65896802638753 -8.1522029770432454 1;
	setAttr ".sd" 2;
	setAttr ".typ" 22;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftUpLeg" -p "BoneFK_Hips";
	rename -uid "6426425F-414F-A3D8-CCE7-CE900542BFB5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.65163331720565099 0.044036148315035106 -3.5000000000000004 ;
	setAttr ".jo" -type "double3" 0.00021528964720317112 1.2977656721534295e-05 173.10077097191609 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999986 112.148004 3.0540014517299598e-15 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftLeg" -p "BoneFK_LeftUpLeg";
	rename -uid "89126AE4-467F-F86E-7380-6FA8F77C9C5E";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1120734631628588 -8.3266726846886741e-16 0 ;
	setAttr ".r" -type "double3" 0 0 -3.975693351829396e-15 ;
	setAttr ".jo" -type "double3" -2.7007191278630121e-06 2.7675156929183165e-05 -11.147282346952165 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769846412109921 58.878686000000002 -6.5421176969460048e-06 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftFoot" -p "BoneFK_LeftLeg";
	rename -uid "1E47C32E-4380-C4DD-53F5-A5B6E4C51D0F";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.2213531788651819 -3.7816971776294395e-16 4.4408920985006262e-16 ;
	setAttr ".jo" -type "double3" 179.9998349774672 0.00021887268196660195 73.251173820284066 ;
	setAttr ".bps" -type "matrix" -4.4960118351738033e-16 -0.46947156278589086 0.88294759285892688 0
		 -1.0035736102370583e-16 0.88294759285892688 0.46947156278589086 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999862 9.4522680000000037 -2.1219247696945997e-05 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_LeftToeBase" -p "BoneFK_LeftFoot";
	rename -uid "F93505EB-49ED-C551-62A9-BDBF7C2FF6E9";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.93000788585663607 4.4408920985006262e-16 4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 0 0 9.5416640443905519e-15 ;
	setAttr ".jo" -type "double3" 179.99965691260292 -0.00027642179217596128 -28.047997529120025 ;
	setAttr ".bps" -type "matrix" -4.4398645825228063e-16 0.00083775794296192529 0.99999964908075289 0
		 1.2283667620245762e-16 0.99999964908075289 -0.00083775794296192529 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.876975104467979 2.0017551963721187 14.012357556783801 1;
	setAttr ".sd" 1;
	setAttr ".typ" 25;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightUpLeg" -p "BoneFK_Hips";
	rename -uid "83E60625-4DA8-8483-3D6F-4DACBA4BB3F5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.65163331720567008 0.044036148314924972 3.4999999999999996 ;
	setAttr ".r" -type "double3" -1.4033418597069752e-14 -8.0562989192032697e-31 -6.7586786981099735e-15 ;
	setAttr ".jo" -type "double3" 0.00031595049259433843 1.9045482872164621e-05 173.10077390188547 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 3.2162452993532727e-16 5.4385242937875642e-32 -1 0
		 -1 4.4408920985006262e-16 -3.2162452993532727e-16 0 -6.8769999000000022 112.148004 -3.0540014517299598e-15 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightLeg" -p "BoneFK_RightUpLeg";
	rename -uid "16DF7406-4E57-3D85-6218-28A16C8A5890";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1120734631628642 6.6613381477509392e-16 0 ;
	setAttr ".r" -type "double3" -1.8125908922074545e-14 -4.114906942223213e-15 1.272221900185462e-14 ;
	setAttr ".jo" -type "double3" -4.8520061896290454e-06 4.9720102818703169e-05 -11.147282346750789 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -2.3841857877993067e-07 1.0587911846116953e-22 -0.99999999999997158 0
		 -0.99999999999997158 4.4408920985004999e-16 2.3841857877993067e-07 0 -6.8770065757202259 58.878655999999999 -9.5101896030540031e-06 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightFoot" -p "BoneFK_RightLeg";
	rename -uid "E49C7438-4EA0-5CAE-5B36-269425A7069B";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.221353178865183 -3.1225022567582528e-16 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" 9.6537306600089637e-15 -3.7596011690817213e-15 -1.2722216868593939e-14 ;
	setAttr ".jo" -type "double3" 179.99972146381276 0.00036428443079160165 73.251179093099353 ;
	setAttr ".bps" -type "matrix" -4.4959791509231056e-16 0.46947156278589108 -0.88294759285892677 0
		 -5.5939941416277452e-07 -0.88294759285878865 -0.46947156278581759 0 -0.99999999999984357 4.9392036597064218e-07 2.6262211758548109e-07 0
		 -6.8770113440918035 9.4522679999999966 -2.6941264466186132e-05 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneFK_RightToeBase" -p "BoneFK_RightFoot";
	rename -uid "E7923247-4C61-F962-C35A-A6B71264DB82";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.93000504994608624 2.7755575615628914e-16 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" -5.5726209369165864e-14 -1.0218232889797866e-14 3.1805448304027097e-15 ;
	setAttr ".jo" -type "double3" 179.99999472732424 -0.00013155250417538948 151.95201067416599 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftUpLeg" -p "BoneFK_Hips";
	rename -uid "F790EB93-4797-7AE9-0BB0-DDA3F877980D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.6516333172056652 0.044036148315036217 -3.5000000000000004 ;
	setAttr ".jo" -type "double3" 0.00021529126081638444 1.2977753990115004e-05 173.10077097191595 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999986 112.148004 3.0540014517299598e-15 1;
	setAttr ".sd" 1;
	setAttr ".typ" 2;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftLeg" -p "BoneIK_LeftUpLeg";
	rename -uid "58DBB78F-4EE1-1243-5185-FDA9765B2ACF";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1120734631628579 3.3306690738754696e-16 0 ;
	setAttr ".r" -type "double3" -1.8675567730985725e-20 5.7754201408416604e-19 -9.6791842388380085e-14 ;
	setAttr ".jo" -type "double3" -2.7007488891650419e-06 2.7675461903023746e-05 -11.147282346955027 ;
	setAttr ".bps" -type "matrix" -1.224646799147353e-16 -1 1.4282998336737732e-31 0
		 -4.4408920985006262e-16 0 1 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769846412109921 58.878686000000002 -6.5421176969460048e-06 1;
	setAttr ".sd" 1;
	setAttr ".typ" 3;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftFoot" -p "BoneIK_LeftLeg";
	rename -uid "5DC6A04A-4090-8B0D-FED5-67A307922075";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.2213531788651832 7.8756445809347042e-16 -4.4408920985006262e-16 ;
	setAttr ".jo" -type "double3" 179.99983497607477 0.00021887380089847722 73.251173820285132 ;
	setAttr ".bps" -type "matrix" -4.4960118351738033e-16 -0.46947156278589086 0.88294759285892688 0
		 -1.0035736102370583e-16 0.88294759285892688 0.46947156278589086 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.8769998999999862 9.4522680000000037 -2.1219247696945997e-05 1;
	setAttr ".sd" 1;
	setAttr ".typ" 4;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_LeftToeBase" -p "BoneIK_LeftFoot";
	rename -uid "1E66ED53-4A52-3323-9AA9-8691359E3721";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.93000788585664329 1.6653345369377348e-16 -4.4408920985006262e-16 ;
	setAttr ".jo" -type "double3" 179.99965691275304 -0.0002764217122372194 -28.047997529120043 ;
	setAttr ".bps" -type "matrix" -4.4398645825228063e-16 0.00083775794296192529 0.99999964908075289 0
		 1.2283667620245762e-16 0.99999964908075289 -0.00083775794296192529 0 -1 1.224646799147353e-16 -4.4408920985006262e-16 0
		 6.876975104467979 2.0017551963721187 14.012357556783801 1;
	setAttr ".sd" 1;
	setAttr ".typ" 25;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightUpLeg" -p "BoneFK_Hips";
	rename -uid "BF06DC90-4C09-C464-4F3C-5BBF8FA20046";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.65163331720567008 0.04403614831492475 3.4999999999999996 ;
	setAttr ".jo" -type "double3" 0.00031595049259447726 1.9045482872164628e-05 173.10077390188849 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 3.2162452993532727e-16 5.4385242937875642e-32 -1 0
		 -1 4.4408920985006262e-16 -3.2162452993532727e-16 0 -6.8769999000000022 112.148004 -3.0540014517299598e-15 1;
	setAttr ".sd" 2;
	setAttr ".typ" 2;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightLeg" -p "BoneIK_RightUpLeg";
	rename -uid "4FC65E76-4D46-0167-0559-B2A6B5E5A92D";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 2.1120734631628455 -1.7208456881689926e-15 -4.4408920985006262e-16 ;
	setAttr ".r" -type "double3" -3.1087889958481187e-20 1.7288895706734923e-18 8.0561649382106498e-13 ;
	setAttr ".jo" -type "double3" -4.8520061908522279e-06 4.9720102831222302e-05 -11.147282346754174 ;
	setAttr ".bps" -type "matrix" 4.4408920985006262e-16 1 0 0 -2.3841857877993067e-07 1.0587911846116953e-22 -0.99999999999997158 0
		 -0.99999999999997158 4.4408920985004999e-16 2.3841857877993067e-07 0 -6.8770065757202259 58.878655999999999 -9.5101896030540031e-06 1;
	setAttr ".sd" 2;
	setAttr ".typ" 3;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightFoot" -p "BoneIK_RightLeg";
	rename -uid "515352DA-4A66-5D00-867B-E78123233CE5";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 1.2213531788651828 -1.3877787807814457e-16 8.8817841970012523e-16 ;
	setAttr ".jo" -type "double3" 179.99972146447627 0.00036428443080517667 73.251179093099566 ;
	setAttr ".bps" -type "matrix" -4.4959791509231056e-16 0.46947156278589108 -0.88294759285892677 0
		 -5.5939941416277452e-07 -0.88294759285878865 -0.46947156278581759 0 -0.99999999999984357 4.9392036597064218e-07 2.6262211758548109e-07 0
		 -6.8770113440918035 9.4522679999999966 -2.6941264466186132e-05 1;
	setAttr ".sd" 2;
	setAttr ".typ" 4;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode joint -n "BoneIK_RightToeBase" -p "BoneIK_RightFoot";
	rename -uid "2A153AA6-4E28-61A3-C064-0B9AC04AA97C";
	addAttr -is true -ci true -k true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -s false -ci true -sn "ch" -ln "Character" -at "message";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.93000504994609323 5.5511151231257827e-17 0 ;
	setAttr ".jo" -type "double3" 179.99999472732443 -0.00013155250410137761 151.95201067416596 ;
	setAttr ".bps" -type "matrix" -4.4398555419314237e-16 -0.0008377579429616704 -0.99999964908075289 0
		 -5.9760116123179341e-11 -0.99999964908075289 0.00083775794296173643 0 -1 5.9760095524185096e-11 -4.9620526562268563e-14 0
		 -6.8769798728390796 2.0017584163268367 14.012350149137177 1;
	setAttr ".sd" 2;
	setAttr ".typ" 25;
	setAttr ".radi" 0.25;
	setAttr ".fbxID" 5;
createNode transform -n "Grp_Geo";
	rename -uid "109D13E4-41B6-7142-F93D-9C885AE8DA7A";
createNode transform -n "Eye_r" -p "Grp_Geo";
	rename -uid "09E800C3-45D4-FF2C-668A-E8ABC82E5807";
	setAttr ".rp" -type "double3" -0.80056510161175043 12.840237433867486 1.8837883884115016 ;
	setAttr ".sp" -type "double3" -0.80056510161175043 12.840237433867486 1.8837883884115016 ;
createNode mesh -n "Eye_rShape" -p "Eye_r";
	rename -uid "B9FAC905-4050-D35D-BF7D-36A1849E421D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.78620877503084063 0.78084831340954897 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 402 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 1.15265131 1.15019023 1.1535567
		 1.14938283 1.15566671 1.15309167 1.15387845 1.15468645 1.15427506 1.1482172 1.15708578
		 1.15078914 1.15473628 1.14680743 1.15799713 1.14800417 1.15489531 1.14529145 1.15831089
		 1.14500952 1.15473628 1.14381754 1.15799713 1.14209819 1.15427506 1.1425302 1.15708578
		 1.13955522 1.1535567 1.14155543 1.15566671 1.13762951 1.15265131 1.14098847 1.15387845
		 1.13650942 1.15164804 1.14088488 1.15189624 1.13630486 1.15064454 1.1412549 1.14991403
		 1.13703561 1.14973927 1.14206219 1.14812577 1.13863063 1.14902079 1.14322782 1.14670658
		 1.14093304 1.14855957 1.14463758 1.14579546 1.143718 1.14840055 1.14615369 1.14548147
		 1.14671266 1.14855957 1.14762747 1.14579546 1.14962411 1.14902079 1.14891481 1.14670658
		 1.15216708 1.14973927 1.14988971 1.14812577 1.15409279 1.15064454 1.15045667 1.14991403
		 1.15521276 1.15164804 1.15056014 1.15189624 1.15541732 1.15784264 1.15671098 1.1552155
		 1.1590538 1.15992761 1.1533283 1.16126621 1.1492368 1.16172743 1.14483714 1.16126621
		 1.14055991 1.15992761 1.13682389 1.15784264 1.13399482 1.1552155 1.13234937 1.15230322
		 1.13204885 1.14939106 1.13312256 1.14676392 1.1354655 1.14467895 1.1388483 1.14334035
		 1.14293969 1.14287901 1.14733958 1.14334035 1.15161657 1.14467895 1.15535259 1.14676392
		 1.15818191 1.14939106 1.15982711 1.15230322 1.16012776 1.16003084 1.16015172 1.15662944
		 1.16318524 1.16273022 1.15577209 1.16446328 1.15047479 1.16506052 1.14477849 1.16446328
		 1.13924086 1.16273022 1.13440371 1.16003084 1.13074088 1.15662944 1.12861049 1.15285897
		 1.12822139 1.1490885 1.12961161 1.1456871 1.13264501 1.14298773 1.13702476 1.14125466
		 1.14232194 1.14065742 1.14801824 1.14125466 1.15355587 1.14298773 1.15839314 1.1456871
		 1.16205597 1.1490885 1.16418624 1.15285897 1.16457534 1.16217756 1.16332924 1.15808558
		 1.16697836 1.16542482 1.15806055 1.16750979 1.15168786 1.16822815 1.14483523 1.16750979
		 1.13817334 1.16542482 1.13235426 1.16217756 1.12794757 1.15808558 1.12538505 1.15354979
		 1.12491691 1.14901388 1.12658942 1.1449219 1.13023853 1.14167464 1.13550735 1.13958967
		 1.14187992 1.13887131 1.14873254 1.13958967 1.15539443 1.14167464 1.16121352 1.1449219
		 1.16561997 1.14901388 1.16818273 1.15354979 1.16865075 1.16422963 1.16616511 1.15954804
		 1.1703403 1.16794503 1.16013706 1.17033041 1.15284598 1.17115247 1.1450057 1.17033041
		 1.1373837 1.16794503 1.13072598 1.16422963 1.12568438 1.15954804 1.12275231 1.15435851
		 1.12221682 1.14916897 1.12413025 1.14448726 1.1283052 1.14077187 1.13433349 1.13838649
		 1.14162457 1.13756454 1.14946473 1.13838649 1.15708673 1.14077187 1.16374445 1.14448726
		 1.16878605 1.14916897 1.17171824 1.15435851 1.17225373 1.16613698 1.16858971 1.16098094
		 1.17318797 1.17022884 1.16195059 1.17285597 1.15392065 1.17376125 1.14528584 1.17285597
		 1.13689137 1.17022884 1.12955904 1.16613698 1.12400639 1.16098094 1.12077725 1.15526533
		 1.1201874 1.14954996 1.12229478 1.14439368 1.12689304 1.14030182 1.13353205 1.13767457
		 1.14156199 1.13676941 1.15019679 1.13767457 1.15859127 1.14030182 1.16592371 1.14439368
		 1.17147624 1.14954996 1.17470551 1.15526533 1.17529523 1.16785216 1.17054319 1.16234875
		 1.17545128 1.17221999 1.16345668 1.17502415 1.15488553 1.17599046 1.14566875 1.17502415
		 1.1367085 1.17221999 1.12888193 1.16785216 1.1229552 1.16234875 1.11950827 1.15624797
		 1.11887872 1.1501472 1.1211282 1.14464366 1.12603629 1.14027596 1.1331228 1.1374718
		 1.14169395 1.13650537 1.15091085 1.1374718 1.15987098 1.14027596 1.16769743 1.14464366
		 1.17362428 1.1501472 1.17707109 1.15624797 1.17770064 1.16933346 1.1719774 1.16361797
		 1.17707467 1.17386937 1.16461802 1.17678154 1.15571678 1.17778504 1.14614499 1.17678154
		 1.13683963 1.17386937 1.12871146 1.16933346 1.12255657 1.16361797 1.11897695 1.15728223
		 1.11832309 1.15094662 1.12065911 1.14523089 1.12575638 1.14069498 1.13311577 1.13778281
		 1.14201701 1.13677931 1.1515888 1.13778281 1.16089416 1.14069498 1.1690222 1.14523089
		 1.17517722 1.15094662 1.17875683 1.15728223 1.1794107 0.84992754 0.91382146 0.88790023
		 0.88762295 0.80571741 0.9270035 0.75959808 0.92587864 0.71608341 0.91055703 0.67943311
		 0.8825388 0.65323502 0.84456629 0.64005321 0.80035639 0.64117783 0.75423723 0.65649927
		 0.71072286 0.68451756 0.67407262 0.72248995 0.64787424 0.76669955 0.63469237 0.81281883
		 0.63581693 0.85633343 0.65113813 0.89298379 0.6791563 0.91918206 0.71712869 0.93236434
		 0.76133853 0.93123966 0.80745775 0.91591823 0.85097247 0.84286672 0.8992427 0.87667972
		 0.87593973 0.80350757 0.91095626 0.76245505 0.90993369 0.72372788 0.89627564 0.69111675
		 0.8713184 0.66781402 0.83750564 0.65610051 0.79814643 0.65712273 0.75709432 0.67078078
		 0.7183671 0.69573784 0.68575597 0.72955054 0.66245311 0.76890969 0.65073955 0.80996174
		 0.65176177 0.84868908 0.66541982 0.88130021 0.69037676 0.90460336 0.72418958 0.91631699
		 0.76354849 0.91529471 0.80460083 0.90163684 0.8433283 0.83607417 0.88524407 0.86589372
		 0.86472535 0.80137312 0.89554399 0.76518792 0.89461631 0.73106027 0.88255227 0.70233107
		 0.86053276 0.68181252 0.83071297 0.67151278 0.7960121 0.67244029 0.7598269 0.68450433
		 0.72569954 0.7065239 0.69697034 0.73634338 0.67645156 0.77104414 0.66615176 0.80722922
		 0.66707933 0.84135687 0.67914313 0.87008601 0.70116282 0.89060479 0.73098224 0.90090466
		 0.76568305 0.89997727 0.80186844 0.88791323 0.83599603 0.82947594 0.87164372 0.85541594
		 0.8538295 0.79930079 0.88056999 0.76784414 0.87973511 0.73818511 0.86922008 0.71322691
		 0.85005474 0.69541293 0.82411486 0.68648642 0.79393977 0.68732154 0.76248312 0.69783652
		 0.73282421;
	setAttr ".uvst[0].uvsp[250:401]" 0.71700168 0.70786607 0.7429415 0.69005203
		 0.77311659 0.68112558 0.80457306 0.68196082 0.83423209 0.69247544 0.85919023 0.71164066
		 0.87700444 0.73758054 0.88593102 0.76775551 0.88509601 0.79921228 0.8745811 0.82887125
		 0.8230257 0.85832119 0.84516442 0.84315228 0.79728329 0.86590636 0.77045655 0.86516559
		 0.74517196 0.85617101 0.72390437 0.83980334 0.70873547 0.81766462 0.70115018 0.79192233
		 0.70189106 0.76509559 0.71088547 0.73981118 0.7272532 0.71854347 0.74939179 0.70337451
		 0.77513421 0.69578928 0.80196071 0.6965301 0.82724535 0.70552456 0.84851295 0.72189212
		 0.86368185 0.74403071 0.87126732 0.76977319 0.87052631 0.79659969 0.86153191 0.82188463
		 0.81669348 0.84519446 0.83508569 0.83262491 0.79531735 0.85146534 0.77304941 0.85082388
		 0.75206971 0.84333247 0.7344318 0.82972467 0.72186214 0.8113324 0.71559131 0.78995627
		 0.7162329 0.76768845 0.72372407 0.74670881 0.73733181 0.72907096 0.75572401 0.7165013
		 0.77710015 0.71023035 0.79936802 0.71087205 0.82034755 0.71836329 0.83798552 0.73197097
		 0.8505553 0.75036311 0.85682642 0.77173924 0.85618466 0.79400706 0.84869337 0.81498671
		 0.8104589 0.83220512 0.82514232 0.82219791 0.79340166 0.83718526 0.77564049 0.83665061
		 0.75891364 0.83065367 0.74485874 0.81978124 0.73485148 0.80509794 0.72987139 0.78804076
		 0.73040599 0.77027941 0.73640287 0.75355279 0.74727523 0.73949778 0.76195866 0.72949052
		 0.77901578 0.72451049 0.79677713 0.72504497 0.81350368 0.73104209 0.8275587 0.74191427
		 0.83756602 0.7565977 0.84254616 0.77365482 0.84201151 0.79141605 0.83601457 0.80814302
		 0.80430698 0.81930953 0.81530643 0.81183445 0.79153585 0.82301974 0.77824336 0.8226018
		 0.76573044 0.81809682 0.75522226 0.80994558 0.74774706 0.79894602 0.74403691 0.78617489
		 0.7444548 0.7728824 0.7489599 0.7603696 0.75711107 0.74986124 0.76811051 0.74238616
		 0.7808817 0.73867595 0.79417419 0.7390939 0.80668694 0.74359894 0.81719524 0.75175035
		 0.82467031 0.76274973 0.82838053 0.77552086 0.82796264 0.78881329 0.8234576 0.80132616
		 0.79822481 0.80647224 0.80555499 0.80150497 0.78971833 0.80893123 0.78086829 0.80864125
		 0.77254111 0.80563056 0.76555175 0.80019414 0.76058441 0.79286385 0.75812548 0.78435731
		 0.7584154 0.77550739 0.76142603 0.76718014 0.76686257 0.76019067 0.77419281 0.75522351
		 0.78269917 0.75276446 0.79154921 0.7530545 0.79987645 0.75606513 0.80686581 0.76150167
		 0.81183308 0.76883191 0.81429207 0.77733845 0.8140021 0.7861883 0.81099147 0.79451573
		 0.79219896 0.79366261 0.79586577 0.79118425 0.78794581 0.79488659 0.78352261 0.79473615
		 0.77936244 0.7932263 0.77587235 0.79050481 0.77339411 0.78683811 0.77217013 0.78258497
		 0.77232051 0.77816176 0.77383035 0.77400154 0.77655172 0.77051133 0.78021854 0.76803315
		 0.78447169 0.76680928 0.78889483 0.76695961 0.79305506 0.76846939 0.79654515 0.77119082
		 0.79902345 0.77485758 0.80024737 0.77911073 0.80009705 0.78353393 0.79858732 0.7876941
		 1.15156436 1.1456759 0.78620875 0.78084797 1.1583426 1.18038309 1.16475725 1.17801797
		 1.15192795 1.17972112 1.14614093 1.17609692 1.14154851 1.16986513 1.13859987 1.16163576
		 1.13758421 1.15221453 1.13859987 1.14252341 1.14154851 1.13351107 1.14614093 1.12606001
		 1.15192795 1.12089932 1.1583426 1.11853409 1.16475725 1.11919606 1.17054391 1.12282026
		 1.17513645 1.12905216 1.17808497 1.13728142 1.17910099 1.14670277 1.17808497 1.15639389
		 1.17513645 1.16540599 1.17054391 1.17285728;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.60530186 14.861976 0.71488839 -0.63925296 
		14.810811 0.77349144 -0.63224965 14.736938 0.82676297 -0.58497077 14.647585 0.86948657 
		-0.50205338 14.551504 0.89748228 -0.39160872 14.458099 0.90800709 -0.26444986 14.37651 
		0.90003365 -0.13302147 14.314724 0.87434101 -0.010190022 14.278792 0.83344269 0.092019014 
		14.27223 0.78134441 0.16360395 14.295679 0.72314477 0.19755648 14.346844 0.66454118 
		0.19054924 14.420718 0.6112709 0.14327426 14.51007 0.56854606 0.060357172 14.606152 
		0.54054981 -0.050090834 14.699559 0.53002512 -0.17724861 14.781144 0.53800064 -0.30867675 
		14.842931 0.56369275 -0.43150792 14.878863 0.60459048 -0.53371668 14.885426 0.65668821 
		-1.0017917 15.073671 0.75406265 -1.0688566 14.972599 0.8698259 -1.0550185 14.826672 
		0.9750554 -0.96163094 14.65017 1.0594521 -0.79783511 14.460374 1.1147521 -0.5796653 
		14.27586 1.1355447 -0.32847512 14.114691 1.1197926 -0.068855979 13.992644 1.0690383 
		0.17378141 13.921662 0.98825115 0.3756853 13.908701 0.88533568 0.51709157 13.95502 
		0.77037096 0.58415639 14.056091 0.65460771 0.57031834 14.202019 0.54937822 0.47693133 
		14.378522 0.46498051 0.31313607 14.568319 0.40967929 0.09496624 14.752833 0.38888669 
		-0.15622449 14.914001 0.4046399 -0.41584307 15.036049 0.45539317 -0.65847933 15.10703 
		0.53618026 -0.8603819 15.119994 0.63909328 -1.3933227 15.230372 0.8210516 -1.4918532 
		15.081883 0.99112564 -1.471523 14.867495 1.1457232 -1.3343252 14.608188 1.2697151 
		-1.0936825 14.32935 1.3509581 -0.77316087 14.05827 1.3815078 -0.40412551 13.82149 
		1.3583643 -0.022707887 13.642188 1.2837979 0.33376139 13.537906 1.16511 0.63038635 
		13.518861 1.0139145 0.83813083 13.586911 0.84501463 0.93665969 13.735403 0.67493963 
		0.91633201 13.949794 0.52033931 0.77913326 14.209096 0.3963511 0.53849518 14.487938 
		0.31510368 0.21796837 14.759012 0.28455952 -0.15106279 14.995791 0.30770114 -0.5324834 
		15.1751 0.38226518 -0.88895124 15.279376 0.50095648 -1.1855757 15.298426 0.65214902 
		-1.7702597 15.328219 0.91421062 -1.8978297 15.13597 1.1344078 -1.8715074 14.858395 
		1.3345687 -1.6938719 14.522672 1.4950973 -1.3823142 14.161656 1.6002859 -0.96733016 
		13.810691 1.6398355 -0.48953825 13.50413 1.6098723 0.0042857835 13.271982 1.5133334 
		0.46580839 13.136969 1.3596666 0.84985417 13.112311 1.1639107 1.118821 13.200417 
		0.94523555 1.2463893 13.39267 0.7250374 1.2200706 13.670243 0.5248757 1.0424351 14.005965 
		0.36434725 0.73087621 14.366982 0.25915858 0.31589165 14.717946 0.21961005 -0.16189675 
		15.024508 0.24957071 -0.65572315 15.256659 0.34610987 -1.1172471 15.391667 0.49977952 
		-1.5012873 15.416325 0.69553304 -2.1233187 15.364806 1.0312425 -2.276783 15.133529 
		1.2961391 -2.2451177 14.799604 1.5369335 -2.031426 14.395728 1.7300527 -1.656621 
		13.961429 1.8565933 -1.157395 13.539216 1.9041715 -0.58261013 13.170422 1.8681262 
		0.011462683 12.891146 1.7519896 0.56667507 12.728725 1.5671278 1.0286769 12.699063 
		1.3316355 1.3522515 12.805057 1.0685642 1.5057153 13.036332 0.80366868 1.4740505 
		13.370254 0.56287557 1.2603546 13.774132 0.36975777 0.88555211 14.208434 0.24321444 
		0.38632303 14.630642 0.19564018 -0.18845658 14.999438 0.23168182 -0.78253031 15.278715 
		0.3478182 -1.337745 15.441133 0.53268218 -1.79975 15.470796 0.76817608 -2.4438102 
		15.339226 1.1692697 -2.6193936 15.074616 1.4723448 -2.5831616 14.692575 1.7478371 
		-2.3386729 14.230485 1.9687928 -1.9098512 13.733591 2.1135726 -1.3386729 13.250528 
		2.1680062 -0.68104666 12.828586 2.1267638 -0.0013579512 12.509056 1.9938924 0.63387662 
		12.32323 1.782385 1.1624659 12.289289 1.5129532 1.5326691 12.410563 1.2119685 1.7082508 
		12.675166 0.90889782 1.6720232 13.057214 0.63339961 1.4275339 13.519302 0.41244513 
		0.9987101 14.016195 0.26766708 0.42753324 14.499257 0.21323285 -0.23009068 14.921203 
		0.254473 -0.9097845 15.240726 0.38735008 -1.545014 15.426555 0.59885395 -2.0736027 
		15.460495 0.86828488 -2.7238345 15.252116 1.3248868 -2.9172149 14.96069 1.6586776 
		-2.8773155 14.539927 1.9620936 -2.6080441 14.03101 2.2054381 -2.1357644 13.483756 
		2.3648918 -1.5066996 12.951738 2.4248419 -0.78243119 12.48703 2.3794239 -0.033855077 
		12.135124 2.2330816 0.66575623 11.930464 2.00014 1.2479134 11.893085 1.7034031 1.6556376 
		12.026642 1.3719175 1.8490142 12.318069 1.038128 1.8091134 12.738834 0.7347104 1.5398451 
		13.24775 0.49136594 1.0675647 13.795002 0.33191338 0.43850061 14.327022 0.27196211 
		-0.28576916 14.791725 0.31738293 -1.0343453 15.143632 0.4637253 -1.7339545 15.348293 
		0.69666523 -2.3161132 15.385673 0.99340248 -2.9565067 15.105617 1.494269 -3.1629176 
		14.794547 1.8505559 -3.1203284 14.345427 2.1744208 -2.8329124 13.802211 2.4341667 
		-2.328799 13.218077 2.6043637 -1.657341 12.650203 2.6683562 -0.88425958 12.154178 
		2.6198757 -0.085232146 11.778551 2.4636722 0.66152942 11.5601 2.2150304 1.2829201 
		11.5202 1.8982964 1.718123 11.662758 1.5444696 1.9245324 11.973827 1.1881831 1.8819457 
		12.422948 0.86431742 1.5945301 12.966164 0.6045711 1.0904167 13.550298 0.43437412 
		0.41895926 14.118174 0.37038037 -0.35412246 14.614199 0.41886139 -1.1531501 14.98982 
		0.57506746 -1.8999118 15.208276 0.82370734 -2.5213041 15.248175 1.1404424 -3.1360929 
		14.903332 1.6732445 -3.35045 14.580284 2.0432513 -3.3062224 14.113865 2.3795912 -3.0077336 
		13.549726 2.6493409 -2.4842069 12.943092 2.8260953 -1.7868845 12.353348 2.8925505;
	setAttr ".pt[166:331]" -0.98402482 11.838215 2.8422027 -0.15422307 11.448122 
		2.6799829 0.62129962 11.221254 2.4217663 1.2666298 11.179818 2.0928297 1.7185941 
		11.327868 1.7253753 1.9329537 11.650918 1.3553658 1.8887234 12.117337 1.0190274 1.5902368 
		12.681479 0.74927503 1.0667088 13.288109 0.57252336 0.36938682 13.877859 0.50606531 
		-0.43347189 14.392987 0.55641514 -1.2632743 14.783082 0.71863419 -2.0387976 15.009951 
		0.97684997 -2.6841233 15.051383 1.3057866 -3.2581658 14.650252 1.8573992 -3.4751987 
		14.323177 2.2320204 -3.4304204 13.850941 2.5725553 -3.1282091 13.279772 2.8456647 
		-2.5981557 12.665575 3.0246229 -1.8921399 12.06848 3.0919051 -1.0792769 11.546926 
		3.0409334 -0.23912814 11.15197 2.8766892 0.54606086 10.922277 2.6152525 1.1994312 
		10.880323 2.2822187 1.6570321 11.030219 1.9101815 1.8740636 11.357294 1.5355612 1.8292831 
		11.829531 1.1950282 1.5270752 12.4007 0.92191672 0.99702305 13.014895 0.74295807 
		0.29100639 13.611993 0.67567521 -0.5218575 14.133543 0.72665071 -1.3620062 14.528502 
		0.89089292 -2.1471946 14.758195 1.1523285 -2.8005676 14.800146 1.485365 -3.3197291 
		14.352602 2.0422077 -3.5340877 14.029554 2.4122152 -3.4898596 13.563132 2.7485561 
		-3.1913698 12.998991 3.0183065 -2.6678414 12.392363 3.1950574 -1.9705192 11.802613 
		3.2615149 -1.1676652 11.287482 3.2111697 -0.33785895 10.897388 3.0489478 0.43766189 
		10.670524 2.7907305 1.0829929 10.629086 2.4617941 1.5349566 10.777141 2.094337 1.7493161 
		11.100188 1.7243295 1.7050889 11.566607 1.3879895 1.4065994 12.130743 1.1182426 0.88307261 
		12.737378 0.94148666 0.18574944 13.327122 0.87503284 -0.61710829 13.842258 0.92537689 
		-1.4469113 14.232348 1.0875992 -2.2224333 14.459214 1.3458164 -2.8677614 14.500652 
		1.6747509 -3.3192589 14.017709 2.2231152 -3.525667 13.706646 2.5793974 -3.4830799 
		13.257524 2.903264 -3.1956642 12.714308 3.1630104 -2.6915503 12.130176 3.3332062 
		-2.0200932 11.562302 3.3971987 -1.2470123 11.066272 3.348721 -0.44798261 10.69065 
		3.1925135 0.29877886 10.472196 2.9438736 0.92017066 10.432295 2.6271398 1.3553733 
		10.574856 2.2733116 1.5617812 10.885925 1.9170257 1.5191951 11.335048 1.5931588 1.2317789 
		11.878263 1.3334137 0.72766542 12.462397 1.1632167 0.056205202 13.030269 1.0992264 
		-0.71687424 13.526295 1.1477051 -1.5159013 13.901919 1.30391 -2.2626634 14.120373 
		1.5525506 -2.8840573 14.160272 1.8692867 -3.2567692 13.653829 2.3956635 -3.4501476 
		13.362402 2.7294543 -3.410249 12.941636 3.032872 -3.1409786 12.432723 3.2762144 -2.6686971 
		11.88547 3.435667 -2.0396335 11.353454 3.4956172 -1.315366 10.888742 3.4502008 -0.56678814 
		10.536839 3.3038568 0.13282193 10.332178 3.0709157 0.71497989 10.294797 2.7741795 
		1.1227028 10.428358 2.4426918 1.3160796 10.719782 2.1089044 1.2761772 11.140548 1.8054879 
		1.0069102 11.649463 1.5621428 0.53462988 12.196714 1.4026903 -0.094434246 12.728734 
		1.342739 -0.81870371 13.193439 1.3881593 -1.5672787 13.545348 1.5344994 -2.2668884 
		13.750009 1.7674398 -2.8490477 13.787386 2.0641787 -3.133805 13.269911 2.5556126 
		-3.3093865 13.005302 2.8586864 -3.2731571 12.623257 3.1341817 -3.028667 12.161172 
		3.3551345 -2.5998466 11.664274 3.4999166 -2.0286682 11.181212 3.5543501 -1.3710423 
		10.759268 3.5131085 -0.69135386 10.439743 3.3802352 -0.056117404 10.253917 3.1687264 
		0.47246835 10.219976 2.899297 0.84267664 10.341246 2.5983109 1.018259 10.605854 2.2952373 
		0.98202932 10.987902 2.0197408 0.73753905 11.449987 1.798788 0.30871481 11.946879 
		1.6540111 -0.26246151 12.429942 1.5995758 -0.92008322 12.851887 1.6408157 -1.5997764 
		13.171414 1.7736896 -2.2350073 13.357239 1.9851964 -2.7636003 13.391181 2.2546289 
		-2.9533837 12.875416 2.6990156 -3.1068497 12.644138 2.9639134 -3.0751841 12.310218 
		3.2047052 -2.8614905 11.90634 3.3978248 -2.4866858 11.472039 3.5243659 -1.9874594 
		11.049828 3.5719435 -1.4126736 10.681033 3.5358982 -0.81860179 10.401757 3.4197617 
		-0.26338941 10.239337 3.2348998 0.1986154 10.209676 2.9994061 0.52218539 10.315668 
		2.7363372 0.67565119 10.546942 2.471442 0.64398545 10.880864 2.2306488 0.43029019 
		11.284743 2.0375297 0.0554871 11.719044 1.9109876 -0.44374144 12.141253 1.8634121 
		-1.0185246 12.510052 1.8994546 -1.6125948 12.789327 2.0155902 -2.1678083 12.951744 
		2.2004542 -2.6298125 12.981409 2.4359465 -2.7199543 12.480053 2.8223464 -2.8475244 
		12.287802 3.0425441 -2.8212028 12.01023 3.2427042 -2.6435678 11.674505 3.4032335 
		-2.3320117 11.31349 3.5084233 -1.9170244 10.962524 3.5479708 -1.4392376 10.655962 
		3.5180113 -0.94540894 10.423815 3.4214699 -0.4838855 10.288803 3.2678013 -0.099843413 
		10.264145 3.0720482 0.16912596 10.352253 2.8533702 0.29669431 10.544502 2.6331739 
		0.27037272 10.822076 2.4330137 0.092737578 11.157802 2.2724826 -0.21882051 11.518813 
		2.1672966 -0.63380396 11.869781 2.1277459 -1.1115947 12.176341 2.1577086 -1.6054201 
		12.408488 2.2542486 -2.0669427 12.543502 2.4079154 -2.4509864 12.568162 2.6036689 
		-2.4392638 12.093556 2.9225688 -2.5377948 11.945073 3.0926397 -2.5174677 11.73068 
		3.2472413 -2.3802676 11.471375 3.3712308 -2.1396272 11.192535 3.452476 -1.8191053 
		10.921458 3.4830232 -1.4500697 10.684677 3.4598813 -1.0686496 10.505373 3.3853145 
		-0.71218145 10.401095 3.2666245 -0.41555792 10.382047 3.1154318 -0.20781182 10.450101 
		2.9465289 -0.10928208 10.598588 2.7764561;
	setAttr ".pt[332:381]" -0.12961099 10.81298 2.6218562 -0.26681086 11.072286 
		2.4978659 -0.50744957 11.351123 2.4166217 -0.82797611 11.622199 2.3860769 -1.1970069 
		11.858979 2.4092181 -1.5784259 12.038284 2.483783 -1.9348925 12.142567 2.6024699 
		-2.2315187 12.161609 2.7536678 -2.1182261 11.725451 2.997211 -2.1852927 11.624381 
		3.1129739 -2.1714511 11.478453 3.2182026 -2.0780649 11.301951 3.3025999 -1.9142681 
		11.112153 3.3579004 -1.6960998 10.92764 3.3786936 -1.4449077 10.766472 3.3629398 
		-1.1852896 10.644422 3.3121877 -0.94265378 10.573444 3.2313993 -0.74074996 10.560479 
		3.1284859 -0.59934264 10.6068 3.0135193 -0.53227782 10.707871 2.8977561 -0.54611385 
		10.8538 2.7925248 -0.63950348 11.030301 2.7081299 -0.80329925 11.220097 2.6528299 
		-1.0214685 11.404613 2.6320362 -1.2726573 11.565781 2.6477878 -1.5322784 11.687826 
		2.6985438 -1.7749141 11.758808 2.7793298 -1.9768203 11.771772 2.8822455 -1.7647361 
		11.384793 3.044435 -1.7986909 11.333627 3.1030407 -1.7916875 11.259753 3.1563122 
		-1.7444086 11.170401 3.1990359 -1.6614898 11.074319 3.227031 -1.5510454 10.980913 
		3.2375565 -1.4238861 10.899326 3.2295818 -1.2924577 10.837541 3.2038891 -1.1696259 
		10.801609 3.1629903 -1.067416 10.795045 3.1108928 -0.99583083 10.818495 3.0526924 
		-0.96187973 10.86966 2.9940894 -0.96888667 10.943535 2.9408185 -1.0161619 11.032887 
		2.8980944 -1.0990815 11.128965 2.8701007 -1.2095257 11.222372 2.8595748 -1.3366845 
		11.303961 2.8675482 -1.4681129 11.365746 2.8932409 -1.5909438 11.40168 2.9341381 
		-1.6931541 11.408241 2.9862373 -0.21362096 14.6005 0.70449638 -1.3875128 11.079973 
		3.0630844;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.29755592 -1.97537422 -0.096683502 0.25311661 -1.97537422 -0.18390083
		 0.18390083 -1.97537422 -0.25311852 0.096681595 -1.97537327 -0.29755592 0 -1.97537327 -0.31287003
		 -0.096681595 -1.97537518 -0.29755783 -0.18389893 -1.97537422 -0.25311852 -0.25311661 -1.97537422 -0.18390274
		 -0.29755592 -1.97537422 -0.096683502 -0.31286812 -1.97537422 -1.9073486e-06 -0.29755592 -1.97537518 0.096679688
		 -0.25311661 -1.97537422 0.18389893 -0.18389893 -1.97537327 0.2531147 -0.096681595 -1.97537518 0.29755402
		 0 -1.97537613 0.31286812 0.096683502 -1.97537518 0.29755402 0.18389893 -1.97537327 0.2531147
		 0.25311661 -1.97537422 0.18389893 0.29755592 -1.97537518 0.096679688 0.31286812 -1.97537613 -1.9073486e-06
		 0.58778572 -1.9021101 -0.19098663 0.5 -1.9021101 -0.36327362 0.36327171 -1.90211105 -0.50000191
		 0.19098282 -1.90211105 -0.58778763 0 -1.90211201 -0.61803627 -0.19098282 -1.90211105 -0.58778763
		 -0.36327171 -1.90211105 -0.50000191 -0.5 -1.90211201 -0.36327362 -0.58778572 -1.9021101 -0.19098473
		 -0.61803341 -1.90211105 0 -0.58778572 -1.9021101 0.19098282 -0.5 -1.9021101 0.36326981
		 -0.36327171 -1.90210915 0.49999809 -0.19098282 -1.90211105 0.58778381 0 -1.90211201 0.61803246
		 0.19098282 -1.90211296 0.58778381 0.36327171 -1.90211105 0.49999809 0.5 -1.90211201 0.36326981
		 0.58778572 -1.90211201 0.19098282 0.61803436 -1.90211296 0 0.86354256 -1.78201008 -0.28058243
		 0.73457336 -1.78201008 -0.53369904 0.53369904 -1.78201199 -0.73457336 0.28058243 -1.78201103 -0.86354446
		 0 -1.78201199 -0.90798187 -0.28058243 -1.78200912 -0.86354446 -0.53369904 -1.78201008 -0.73457336
		 -0.73457146 -1.78201199 -0.53369904 -0.8635416 -1.78201008 -0.28058243 -0.90798187 -1.78201199 -1.9073486e-06
		 -0.86354256 -1.78201103 0.28057861 -0.73457146 -1.78201199 0.53369522 -0.53369713 -1.78201294 0.73457146
		 -0.28058243 -1.78201008 0.86354065 0 -1.78201294 0.90798187 0.28058243 -1.78201008 0.86354065
		 0.53369713 -1.78201103 0.73457146 0.73457336 -1.78201199 0.53369713 0.86354065 -1.78200912 0.28058052
		 0.90798187 -1.78201199 0 1.11803436 -1.61803246 -0.36327362 0.95105743 -1.6180315 -0.69098663
		 0.69098282 -1.61802959 -0.95105934 0.36327171 -1.6180315 -1.11803436 0 -1.6180315 -1.17557144
		 -0.36327171 -1.6180315 -1.11803627 -0.69098377 -1.61803246 -0.95105743 -0.95105743 -1.61803341 -0.69098663
		 -1.11803436 -1.61803055 -0.36327362 -1.17557144 -1.61803246 0 -1.11803436 -1.61802959 0.36326981
		 -0.95105553 -1.6180315 0.69098282 -0.69098282 -1.61803341 0.95105743 -0.36327171 -1.6180315 1.11803246
		 0 -1.61803341 1.17556763 0.36327171 -1.6180315 1.11803246 0.69098282 -1.61803341 0.95105553
		 0.95105743 -1.61803341 0.69098282 1.11803436 -1.6180315 0.36326981 1.17556953 -1.61803055 0
		 1.34499741 -1.41421318 -0.43701744 1.14412308 -1.41421223 -0.83125496 0.83125305 -1.41420937 -1.14412308
		 0.43701553 -1.41421127 -1.34499931 0 -1.41421223 -1.41421509 -0.43701553 -1.41421127 -1.34499931
		 -0.83125401 -1.41421127 -1.14412308 -1.14412308 -1.41421032 -0.83125496 -1.34499741 -1.41420937 -0.43701744
		 -1.41421318 -1.41421223 -3.8146973e-06 -1.34499741 -1.41421223 0.43701553 -1.14412308 -1.41421127 0.83125305
		 -0.83125401 -1.41421223 1.14412117 -0.43701553 -1.41421127 1.34499359 0 -1.41421318 1.41421127
		 0.43701553 -1.41420937 1.34499359 0.83125305 -1.41421223 1.14412117 1.14412308 -1.41421318 0.83125305
		 1.34499741 -1.41421223 0.43701363 1.41421318 -1.41421032 -3.8146973e-06 1.53884315 -1.17556763 -0.50000191
		 1.30901718 -1.17556858 -0.95106125 0.95105743 -1.17557144 -1.30901718 0.5 -1.17556858 -1.53884506
		 0 -1.17556858 -1.61803818 -0.5 -1.17556858 -1.53884506 -0.95105743 -1.17557144 -1.30901718
		 -1.30901718 -1.17556667 -0.95105934 -1.53884315 -1.17556953 -0.50000191 -1.61803436 -1.17556763 0
		 -1.53884125 -1.17557049 0.49999809 -1.30901814 -1.17556667 0.95105362 -0.95105648 -1.17556763 1.30901527
		 -0.5 -1.17557049 1.53884125 0 -1.17556953 1.61803246 0.5 -1.17556858 1.53884125 0.95105743 -1.17556763 1.30901527
		 1.30901718 -1.17556667 0.95105362 1.53884125 -1.17556858 0.49999809 1.61803436 -1.17556763 0
		 1.69479561 -0.90798092 -0.55067253 1.44168091 -0.90797901 -1.04744339 1.04744339 -0.90797997 -1.44168091
		 0.55067253 -0.90798092 -1.69479752 0 -0.90797901 -1.78201675 -0.55067253 -0.90797901 -1.69479752
		 -1.047441483 -0.90797806 -1.44168091 -1.441679 -0.90797901 -1.04744339 -1.69479561 -0.90797901 -0.55067253
		 -1.78201294 -0.90797997 -1.9073486e-06 -1.69479656 -0.90797806 0.55067062 -1.44167995 -0.90797901 1.047439575
		 -1.047440529 -0.90797997 1.44167709 -0.55067253 -0.90797997 1.6947937 0 -0.90797997 1.78201294
		 0.55067253 -0.90798187 1.6947937 1.047441483 -0.90797806 1.44167709 1.441679 -0.9079771 1.047439575
		 1.69479561 -0.90797806 0.55067062 1.78201294 -0.90797806 -1.9073486e-06 1.80901909 -0.61803246 -0.58778572
		 1.53884315 -0.61803055 -1.11803627 1.11803436 -0.61803341 -1.53884506 0.58778572 -0.61803246 -1.809021
		 0 -0.61803246 -1.90211487 -0.58778572 -0.61803246 -1.809021 -1.11803436 -0.61803341 -1.53884506
		 -1.5388422 -0.61803055 -1.11803627 -1.80901718 -0.61803246 -0.58778572 -1.90211296 -0.61803246 -3.8146973e-06
		 -1.80901814 -0.61803055 0.58778191 -1.53884125 -0.6180315 1.11803246 -1.11803436 -0.61803055 1.53884125
		 -0.58778572 -0.61803246 1.80901718 0 -0.61803246 1.90211105 0.58778572 -0.61803436 1.80901718
		 1.11803436 -0.61803246 1.53884125 1.53884125 -0.6180315 1.11803246 1.80901718 -0.61803246 0.58778191
		 1.90211296 -0.61803246 -1.9073486e-06 1.87869644 -0.31286526 -0.61042786 1.59811401 -0.31286526 -1.16109848
		 1.16109848 -0.31286716 -1.59811592 0.61042404 -0.31286812 -1.87869835 0 -0.31286621 -1.97537994
		 -0.610425 -0.31286812 -1.87869835;
	setAttr ".vt[166:331]" -1.16109753 -0.31286716 -1.59811401 -1.59811401 -0.31286716 -1.16110039
		 -1.87869549 -0.31286716 -0.61042786 -1.97537708 -0.31286621 0 -1.87869644 -0.3128643 0.61042404
		 -1.59811401 -0.31286716 1.16109657 -1.16109753 -0.3128643 1.59811211 -0.61042404 -0.31286812 1.87869453
		 0 -0.31286526 1.97537613 0.61042595 -0.31286812 1.87869453 1.16109657 -0.31286621 1.5981102
		 1.59811401 -0.31286716 1.16109657 1.87869644 -0.31286812 0.61042404 1.97537613 -0.31286621 0
		 1.90211487 1.9073486e-06 -0.61803436 1.61803627 3.8146973e-06 -1.17557144 1.17557144 3.8146973e-06 -1.61803818
		 0.61803436 1.9073486e-06 -1.90211487 0 3.8146973e-06 -2.000001907349 -0.61803436 0 -1.90211487
		 -1.17557144 1.9073486e-06 -1.61803818 -1.61803436 3.8146973e-06 -1.17557144 -1.90211296 0 -0.61803627
		 -2 1.9073486e-06 -3.8146973e-06 -1.90211391 2.8610229e-06 0.61803246 -1.61803436 2.8610229e-06 1.17556953
		 -1.17557049 1.9073486e-06 1.61803246 -0.61803436 1.9073486e-06 1.90211105 0 9.5367432e-07 2
		 0.61803436 1.9073486e-06 1.90211105 1.17556953 3.8146973e-06 1.61803246 1.61803436 9.5367432e-07 1.17556763
		 1.90211296 2.8610229e-06 0.61803246 2 3.8146973e-06 -1.9073486e-06 1.87869644 0.31287098 -0.61042786
		 1.59811401 0.31287003 -1.16110039 1.16109848 0.31287193 -1.59811592 0.61042404 0.31287384 -1.87869644
		 0 0.31287003 -1.97537804 -0.61042595 0.31287193 -1.87869644 -1.16109753 0.31287193 -1.59811783
		 -1.59811401 0.31287384 -1.16109848 -1.87869453 0.31287098 -0.61042786 -1.97537804 0.31287003 -1.9073486e-06
		 -1.87869453 0.31287003 0.61042404 -1.59811401 0.31286812 1.16109467 -1.16109753 0.31287193 1.59811401
		 -0.61042595 0.31287289 1.87869263 0 0.31287098 1.97537613 0.61042404 0.31287289 1.87869263
		 1.16109848 0.31287003 1.59811211 1.59811401 0.31287193 1.16109657 1.87869453 0.31287289 0.61042404
		 1.97537613 0.31287003 -1.9073486e-06 1.80901718 0.61803818 -0.58778763 1.53884315 0.61803627 -1.11803436
		 1.11803436 0.61803436 -1.53884506 0.58778572 0.61803627 -1.809021 0 0.61803436 -1.90211487
		 -0.58778477 0.61803436 -1.809021 -1.11803436 0.61803818 -1.53884506 -1.53884125 0.61803627 -1.11803436
		 -1.80901814 0.61803532 -0.58778572 -1.90211391 0.61803722 -1.9073486e-06 -1.80901814 0.61803722 0.58778381
		 -1.53884125 0.61803532 1.11803246 -1.11803436 0.61803436 1.53884125 -0.58778572 0.61803436 1.80901718
		 0 0.61803436 1.90211105 0.58778572 0.61803627 1.80901527 1.11803436 0.61803627 1.53884125
		 1.53884125 0.61803532 1.11803246 1.80901718 0.61803532 0.58778191 1.90211296 0.61803532 -3.8146973e-06
		 1.69479561 0.90798283 -0.55067253 1.441679 0.90798378 -1.04744339 1.047441483 0.90798569 -1.44168091
		 0.55067253 0.90798187 -1.69479752 0 0.90798378 -1.78201485 -0.55067253 0.90798187 -1.69479752
		 -1.047441483 0.90798569 -1.44168091 -1.44167995 0.90798187 -1.04744339 -1.69479561 0.90798283 -0.55067253
		 -1.78201294 0.90798473 0 -1.69479561 0.90798187 0.55067062 -1.44167995 0.90798378 1.047439575
		 -1.047440529 0.90798283 1.44167519 -0.55067253 0.90798378 1.6947937 0 0.90798378 1.78201294
		 0.55067253 0.90798187 1.6947937 1.047441483 0.90798473 1.44167709 1.441679 0.90798187 1.047439575
		 1.69479561 0.90798187 0.55067062 1.78201294 0.90798473 -1.9073486e-06 1.53884315 1.1755743 -0.50000191
		 1.30901718 1.17557335 -0.95105934 0.95105743 1.17557335 -1.30901718 0.5 1.17557144 -1.53884506
		 0 1.17557526 -1.61803818 -0.5 1.17557526 -1.53884506 -0.95105743 1.17557335 -1.30901718
		 -1.30901718 1.17557335 -0.95106125 -1.5388422 1.1755724 -0.5 -1.61803436 1.1755724 -3.8146973e-06
		 -1.5388422 1.1755724 0.5 -1.30901718 1.17557335 0.95105743 -0.95105648 1.17557144 1.30901527
		 -0.5 1.17557144 1.53884125 0 1.1755743 1.61803246 0.5 1.17557335 1.53884125 0.95105553 1.17557335 1.30901527
		 1.30901718 1.17557144 0.95105553 1.53884125 1.1755743 0.5 1.61803436 1.1755724 -3.8146973e-06
		 1.34499741 1.41421509 -0.43701744 1.14412308 1.41421604 -0.83125687 0.83125496 1.414217 -1.14412308
		 0.43701553 1.41421509 -1.34499931 0 1.41421509 -1.41421509 -0.43701553 1.41421509 -1.34499931
		 -0.83125496 1.41421509 -1.14412308 -1.14412308 1.41421604 -0.83125496 -1.34499741 1.414217 -0.43701744
		 -1.41421413 1.41421318 -1.9073486e-06 -1.34499741 1.41421413 0.43701363 -1.14412403 1.414217 0.83125305
		 -0.83125401 1.41421604 1.14412117 -0.43701553 1.41421509 1.34499359 0 1.41421509 1.41421127
		 0.43701553 1.414217 1.34499359 0.83125496 1.41421413 1.14411926 1.14412308 1.41421318 0.83125305
		 1.34499741 1.41421604 0.43701553 1.41421318 1.41421509 -1.9073486e-06 1.11803436 1.61803627 -0.36327171
		 0.95105743 1.61803818 -0.69098473 0.69098282 1.61803627 -0.95105934 0.36327171 1.61803627 -1.11803436
		 0 1.61803627 -1.17557335 -0.36327171 1.61803627 -1.11803436 -0.69098282 1.61803818 -0.95105934
		 -0.95105743 1.61803627 -0.69098473 -1.11803436 1.61803627 -0.36327171 -1.17557144 1.61803532 -1.9073486e-06
		 -1.11803436 1.61803532 0.36326981 -0.95105648 1.61803627 0.69098282 -0.69098282 1.61803532 0.95105553
		 -0.36326981 1.61803532 1.11803246 0 1.61803722 1.17556763 0.36327171 1.61803532 1.11803246
		 0.69098282 1.61803532 0.95105362 0.95105743 1.61803818 0.69098282 1.11803436 1.61803532 0.36326981
		 1.17557144 1.61803532 -1.9073486e-06 0.86354065 1.78201771 -0.28058243 0.73457336 1.78201294 -0.53369904
		 0.53369904 1.7820158 -0.73457527 0.28058243 1.78201485 -0.86354446 0 1.7820158 -0.90798378
		 -0.28058052 1.78201675 -0.86354446 -0.53369904 1.7820158 -0.73457527 -0.73457241 1.78201485 -0.53369904
		 -0.86354065 1.78201389 -0.28058243 -0.90798092 1.78201675 -1.9073486e-06 -0.86354065 1.78201485 0.28058052
		 -0.73457241 1.78201485 0.53369522;
	setAttr ".vt[332:381]" -0.53369713 1.78201485 0.73457146 -0.28058052 1.78201485 0.86354065
		 0 1.78201485 0.90797997 0.28058243 1.78201675 0.86353874 0.53369713 1.78201485 0.73456955
		 0.73457146 1.78201485 0.53369522 0.86354065 1.78201294 0.28058052 0.90797997 1.78201675 -1.9073486e-06
		 0.58778572 1.90211487 -0.19098663 0.50000191 1.90211487 -0.36327362 0.36327171 1.90211391 -0.5
		 0.19098282 1.90211296 -0.58778763 0 1.90211487 -0.61803436 -0.19098282 1.90211487 -0.58778763
		 -0.36327171 1.90211391 -0.5 -0.5 1.90211678 -0.36327171 -0.58778477 1.90211487 -0.19098473
		 -0.61803436 1.90211487 -1.9073486e-06 -0.58778572 1.90211487 0.19098282 -0.5 1.90211487 0.36326981
		 -0.36327171 1.90211487 0.5 -0.19098282 1.90211582 0.58778381 0 1.90211678 0.61803246
		 0.19098282 1.90211391 0.58778381 0.36327171 1.90211487 0.5 0.5 1.90211678 0.36326981
		 0.58778572 1.90211487 0.19098282 0.61803436 1.90211487 -3.8146973e-06 0.29755592 1.97537804 -0.096681595
		 0.25311661 1.97537899 -0.18390274 0.18390083 1.97537899 -0.25312042 0.096681595 1.97537994 -0.29755783
		 0 1.9753809 -0.31287003 -0.096681595 1.97537994 -0.29755783 -0.18389893 1.97537899 -0.25311852
		 -0.25311661 1.97537899 -0.18390274 -0.29755592 1.97537804 -0.096683502 -0.31286812 1.9753809 0
		 -0.29755592 1.97537899 0.096681595 -0.25311661 1.97537899 0.18389893 -0.18389893 1.97537899 0.2531147
		 -0.096681595 1.97537804 0.29755402 0 1.97537994 0.31286621 0.096681595 1.97537994 0.29755402
		 0.18389893 1.97537899 0.2531147 0.25311661 1.97537899 0.18389893 0.29755592 1.97537708 0.096679688
		 0.31287003 1.9753809 0 0 -1.99999809 0 0 2.000000953674 -3.8146973e-06;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 2 3
		f 4 1 382 -22 -382
		mu 0 4 1 4 5 2
		f 4 2 383 -23 -383
		mu 0 4 4 6 7 5
		f 4 3 384 -24 -384
		mu 0 4 6 8 9 7
		f 4 4 385 -25 -385
		mu 0 4 8 10 11 9
		f 4 5 386 -26 -386
		mu 0 4 10 12 13 11
		f 4 6 387 -27 -387
		mu 0 4 12 14 15 13
		f 4 7 388 -28 -388
		mu 0 4 14 16 17 15
		f 4 8 389 -29 -389
		mu 0 4 16 18 19 17
		f 4 9 390 -30 -390
		mu 0 4 18 20 21 19
		f 4 10 391 -31 -391
		mu 0 4 20 22 23 21
		f 4 11 392 -32 -392
		mu 0 4 22 24 25 23
		f 4 12 393 -33 -393
		mu 0 4 24 26 27 25
		f 4 13 394 -34 -394
		mu 0 4 26 28 29 27
		f 4 14 395 -35 -395
		mu 0 4 28 30 31 29
		f 4 15 396 -36 -396
		mu 0 4 30 32 33 31
		f 4 16 397 -37 -397
		mu 0 4 32 34 35 33
		f 4 17 398 -38 -398
		mu 0 4 34 36 37 35
		f 4 18 399 -39 -399
		mu 0 4 36 38 39 37
		f 4 19 380 -40 -400
		mu 0 4 38 0 3 39
		f 4 20 401 -41 -401
		mu 0 4 3 2 40 41
		f 4 21 402 -42 -402
		mu 0 4 2 5 42 40
		f 4 22 403 -43 -403
		mu 0 4 5 7 43 42
		f 4 23 404 -44 -404
		mu 0 4 7 9 44 43
		f 4 24 405 -45 -405
		mu 0 4 9 11 45 44
		f 4 25 406 -46 -406
		mu 0 4 11 13 46 45
		f 4 26 407 -47 -407
		mu 0 4 13 15 47 46
		f 4 27 408 -48 -408
		mu 0 4 15 17 48 47
		f 4 28 409 -49 -409
		mu 0 4 17 19 49 48
		f 4 29 410 -50 -410
		mu 0 4 19 21 50 49
		f 4 30 411 -51 -411
		mu 0 4 21 23 51 50
		f 4 31 412 -52 -412
		mu 0 4 23 25 52 51
		f 4 32 413 -53 -413
		mu 0 4 25 27 53 52
		f 4 33 414 -54 -414
		mu 0 4 27 29 54 53
		f 4 34 415 -55 -415
		mu 0 4 29 31 55 54
		f 4 35 416 -56 -416
		mu 0 4 31 33 56 55
		f 4 36 417 -57 -417
		mu 0 4 33 35 57 56
		f 4 37 418 -58 -418
		mu 0 4 35 37 58 57
		f 4 38 419 -59 -419
		mu 0 4 37 39 59 58
		f 4 39 400 -60 -420
		mu 0 4 39 3 41 59
		f 4 40 421 -61 -421
		mu 0 4 41 40 60 61
		f 4 41 422 -62 -422
		mu 0 4 40 42 62 60
		f 4 42 423 -63 -423
		mu 0 4 42 43 63 62
		f 4 43 424 -64 -424
		mu 0 4 43 44 64 63
		f 4 44 425 -65 -425
		mu 0 4 44 45 65 64
		f 4 45 426 -66 -426
		mu 0 4 45 46 66 65
		f 4 46 427 -67 -427
		mu 0 4 46 47 67 66
		f 4 47 428 -68 -428
		mu 0 4 47 48 68 67
		f 4 48 429 -69 -429
		mu 0 4 48 49 69 68
		f 4 49 430 -70 -430
		mu 0 4 49 50 70 69
		f 4 50 431 -71 -431
		mu 0 4 50 51 71 70
		f 4 51 432 -72 -432
		mu 0 4 51 52 72 71
		f 4 52 433 -73 -433
		mu 0 4 52 53 73 72
		f 4 53 434 -74 -434
		mu 0 4 53 54 74 73
		f 4 54 435 -75 -435
		mu 0 4 54 55 75 74
		f 4 55 436 -76 -436
		mu 0 4 55 56 76 75
		f 4 56 437 -77 -437
		mu 0 4 56 57 77 76
		f 4 57 438 -78 -438
		mu 0 4 57 58 78 77
		f 4 58 439 -79 -439
		mu 0 4 58 59 79 78
		f 4 59 420 -80 -440
		mu 0 4 59 41 61 79
		f 4 60 441 -81 -441
		mu 0 4 61 60 80 81
		f 4 61 442 -82 -442
		mu 0 4 60 62 82 80
		f 4 62 443 -83 -443
		mu 0 4 62 63 83 82
		f 4 63 444 -84 -444
		mu 0 4 63 64 84 83
		f 4 64 445 -85 -445
		mu 0 4 64 65 85 84
		f 4 65 446 -86 -446
		mu 0 4 65 66 86 85
		f 4 66 447 -87 -447
		mu 0 4 66 67 87 86
		f 4 67 448 -88 -448
		mu 0 4 67 68 88 87
		f 4 68 449 -89 -449
		mu 0 4 68 69 89 88
		f 4 69 450 -90 -450
		mu 0 4 69 70 90 89
		f 4 70 451 -91 -451
		mu 0 4 70 71 91 90
		f 4 71 452 -92 -452
		mu 0 4 71 72 92 91
		f 4 72 453 -93 -453
		mu 0 4 72 73 93 92
		f 4 73 454 -94 -454
		mu 0 4 73 74 94 93
		f 4 74 455 -95 -455
		mu 0 4 74 75 95 94
		f 4 75 456 -96 -456
		mu 0 4 75 76 96 95
		f 4 76 457 -97 -457
		mu 0 4 76 77 97 96
		f 4 77 458 -98 -458
		mu 0 4 77 78 98 97
		f 4 78 459 -99 -459
		mu 0 4 78 79 99 98
		f 4 79 440 -100 -460
		mu 0 4 79 61 81 99
		f 4 80 461 -101 -461
		mu 0 4 81 80 100 101
		f 4 81 462 -102 -462
		mu 0 4 80 82 102 100
		f 4 82 463 -103 -463
		mu 0 4 82 83 103 102
		f 4 83 464 -104 -464
		mu 0 4 83 84 104 103
		f 4 84 465 -105 -465
		mu 0 4 84 85 105 104
		f 4 85 466 -106 -466
		mu 0 4 85 86 106 105
		f 4 86 467 -107 -467
		mu 0 4 86 87 107 106
		f 4 87 468 -108 -468
		mu 0 4 87 88 108 107
		f 4 88 469 -109 -469
		mu 0 4 88 89 109 108
		f 4 89 470 -110 -470
		mu 0 4 89 90 110 109
		f 4 90 471 -111 -471
		mu 0 4 90 91 111 110
		f 4 91 472 -112 -472
		mu 0 4 91 92 112 111
		f 4 92 473 -113 -473
		mu 0 4 92 93 113 112
		f 4 93 474 -114 -474
		mu 0 4 93 94 114 113
		f 4 94 475 -115 -475
		mu 0 4 94 95 115 114
		f 4 95 476 -116 -476
		mu 0 4 95 96 116 115
		f 4 96 477 -117 -477
		mu 0 4 96 97 117 116
		f 4 97 478 -118 -478
		mu 0 4 97 98 118 117
		f 4 98 479 -119 -479
		mu 0 4 98 99 119 118
		f 4 99 460 -120 -480
		mu 0 4 99 81 101 119
		f 4 100 481 -121 -481
		mu 0 4 101 100 120 121
		f 4 101 482 -122 -482
		mu 0 4 100 102 122 120
		f 4 102 483 -123 -483
		mu 0 4 102 103 123 122
		f 4 103 484 -124 -484
		mu 0 4 103 104 124 123
		f 4 104 485 -125 -485
		mu 0 4 104 105 125 124
		f 4 105 486 -126 -486
		mu 0 4 105 106 126 125
		f 4 106 487 -127 -487
		mu 0 4 106 107 127 126
		f 4 107 488 -128 -488
		mu 0 4 107 108 128 127
		f 4 108 489 -129 -489
		mu 0 4 108 109 129 128
		f 4 109 490 -130 -490
		mu 0 4 109 110 130 129
		f 4 110 491 -131 -491
		mu 0 4 110 111 131 130
		f 4 111 492 -132 -492
		mu 0 4 111 112 132 131
		f 4 112 493 -133 -493
		mu 0 4 112 113 133 132
		f 4 113 494 -134 -494
		mu 0 4 113 114 134 133
		f 4 114 495 -135 -495
		mu 0 4 114 115 135 134
		f 4 115 496 -136 -496
		mu 0 4 115 116 136 135
		f 4 116 497 -137 -497
		mu 0 4 116 117 137 136
		f 4 117 498 -138 -498
		mu 0 4 117 118 138 137
		f 4 118 499 -139 -499
		mu 0 4 118 119 139 138
		f 4 119 480 -140 -500
		mu 0 4 119 101 121 139
		f 4 120 501 -141 -501
		mu 0 4 121 120 140 141
		f 4 121 502 -142 -502
		mu 0 4 120 122 142 140
		f 4 122 503 -143 -503
		mu 0 4 122 123 143 142
		f 4 123 504 -144 -504
		mu 0 4 123 124 144 143
		f 4 124 505 -145 -505
		mu 0 4 124 125 145 144
		f 4 125 506 -146 -506
		mu 0 4 125 126 146 145
		f 4 126 507 -147 -507
		mu 0 4 126 127 147 146
		f 4 127 508 -148 -508
		mu 0 4 127 128 148 147
		f 4 128 509 -149 -509
		mu 0 4 128 129 149 148
		f 4 129 510 -150 -510
		mu 0 4 129 130 150 149
		f 4 130 511 -151 -511
		mu 0 4 130 131 151 150
		f 4 131 512 -152 -512
		mu 0 4 131 132 152 151
		f 4 132 513 -153 -513
		mu 0 4 132 133 153 152
		f 4 133 514 -154 -514
		mu 0 4 133 134 154 153
		f 4 134 515 -155 -515
		mu 0 4 134 135 155 154
		f 4 135 516 -156 -516
		mu 0 4 135 136 156 155
		f 4 136 517 -157 -517
		mu 0 4 136 137 157 156
		f 4 137 518 -158 -518
		mu 0 4 137 138 158 157
		f 4 138 519 -159 -519
		mu 0 4 138 139 159 158
		f 4 139 500 -160 -520
		mu 0 4 139 121 141 159
		f 4 140 521 -161 -521
		mu 0 4 141 140 160 161
		f 4 141 522 -162 -522
		mu 0 4 140 142 162 160
		f 4 142 523 -163 -523
		mu 0 4 142 143 163 162
		f 4 143 524 -164 -524
		mu 0 4 143 144 164 163
		f 4 144 525 -165 -525
		mu 0 4 144 145 165 164
		f 4 145 526 -166 -526
		mu 0 4 145 146 166 165
		f 4 146 527 -167 -527
		mu 0 4 146 147 167 166
		f 4 147 528 -168 -528
		mu 0 4 147 148 168 167
		f 4 148 529 -169 -529
		mu 0 4 148 149 169 168
		f 4 149 530 -170 -530
		mu 0 4 149 150 170 169
		f 4 150 531 -171 -531
		mu 0 4 150 151 171 170
		f 4 151 532 -172 -532
		mu 0 4 151 152 172 171
		f 4 152 533 -173 -533
		mu 0 4 152 153 173 172
		f 4 153 534 -174 -534
		mu 0 4 153 154 174 173
		f 4 154 535 -175 -535
		mu 0 4 154 155 175 174
		f 4 155 536 -176 -536
		mu 0 4 155 156 176 175
		f 4 156 537 -177 -537
		mu 0 4 156 157 177 176
		f 4 157 538 -178 -538
		mu 0 4 157 158 178 177
		f 4 158 539 -179 -539
		mu 0 4 158 159 179 178
		f 4 159 520 -180 -540
		mu 0 4 159 141 161 179
		f 4 160 541 -181 -541
		mu 0 4 161 160 401 383
		f 4 161 542 -182 -542
		mu 0 4 160 162 400 401
		f 4 162 543 -183 -543
		mu 0 4 162 163 399 400
		f 4 163 544 -184 -544
		mu 0 4 163 164 398 399
		f 4 164 545 -185 -545
		mu 0 4 164 165 397 398
		f 4 165 546 -186 -546
		mu 0 4 165 166 396 397
		f 4 166 547 -187 -547
		mu 0 4 166 167 395 396
		f 4 167 548 -188 -548
		mu 0 4 167 168 394 395
		f 4 168 549 -189 -549
		mu 0 4 168 169 393 394
		f 4 169 550 -190 -550
		mu 0 4 169 170 392 393
		f 4 170 551 -191 -551
		mu 0 4 170 171 391 392
		f 4 171 552 -192 -552
		mu 0 4 171 172 390 391
		f 4 172 553 -193 -553
		mu 0 4 172 173 389 390
		f 4 173 554 -194 -554
		mu 0 4 173 174 388 389
		f 4 174 555 -195 -555
		mu 0 4 174 175 387 388
		f 4 175 556 -196 -556
		mu 0 4 175 176 386 387
		f 4 176 557 -197 -557
		mu 0 4 176 177 385 386
		f 4 177 558 -198 -558
		mu 0 4 177 178 384 385
		f 4 178 559 -199 -559
		mu 0 4 178 179 382 384
		f 4 179 540 -200 -560
		mu 0 4 179 161 383 382
		f 4 180 561 -201 -561
		mu 0 4 181 180 200 201
		f 4 181 562 -202 -562
		mu 0 4 180 182 202 200
		f 4 182 563 -203 -563
		mu 0 4 182 183 203 202
		f 4 183 564 -204 -564
		mu 0 4 183 184 204 203
		f 4 184 565 -205 -565
		mu 0 4 184 185 205 204
		f 4 185 566 -206 -566
		mu 0 4 185 186 206 205
		f 4 186 567 -207 -567
		mu 0 4 186 187 207 206
		f 4 187 568 -208 -568
		mu 0 4 187 188 208 207
		f 4 188 569 -209 -569
		mu 0 4 188 189 209 208
		f 4 189 570 -210 -570
		mu 0 4 189 190 210 209
		f 4 190 571 -211 -571
		mu 0 4 190 191 211 210
		f 4 191 572 -212 -572
		mu 0 4 191 192 212 211
		f 4 192 573 -213 -573
		mu 0 4 192 193 213 212
		f 4 193 574 -214 -574
		mu 0 4 193 194 214 213
		f 4 194 575 -215 -575
		mu 0 4 194 195 215 214
		f 4 195 576 -216 -576
		mu 0 4 195 196 216 215
		f 4 196 577 -217 -577
		mu 0 4 196 197 217 216
		f 4 197 578 -218 -578
		mu 0 4 197 198 218 217
		f 4 198 579 -219 -579
		mu 0 4 198 199 219 218
		f 4 199 560 -220 -580
		mu 0 4 199 181 201 219
		f 4 200 581 -221 -581
		mu 0 4 201 200 220 221
		f 4 201 582 -222 -582
		mu 0 4 200 202 222 220
		f 4 202 583 -223 -583
		mu 0 4 202 203 223 222
		f 4 203 584 -224 -584
		mu 0 4 203 204 224 223
		f 4 204 585 -225 -585
		mu 0 4 204 205 225 224
		f 4 205 586 -226 -586
		mu 0 4 205 206 226 225
		f 4 206 587 -227 -587
		mu 0 4 206 207 227 226
		f 4 207 588 -228 -588
		mu 0 4 207 208 228 227
		f 4 208 589 -229 -589
		mu 0 4 208 209 229 228
		f 4 209 590 -230 -590
		mu 0 4 209 210 230 229
		f 4 210 591 -231 -591
		mu 0 4 210 211 231 230
		f 4 211 592 -232 -592
		mu 0 4 211 212 232 231
		f 4 212 593 -233 -593
		mu 0 4 212 213 233 232
		f 4 213 594 -234 -594
		mu 0 4 213 214 234 233
		f 4 214 595 -235 -595
		mu 0 4 214 215 235 234
		f 4 215 596 -236 -596
		mu 0 4 215 216 236 235
		f 4 216 597 -237 -597
		mu 0 4 216 217 237 236
		f 4 217 598 -238 -598
		mu 0 4 217 218 238 237
		f 4 218 599 -239 -599
		mu 0 4 218 219 239 238
		f 4 219 580 -240 -600
		mu 0 4 219 201 221 239
		f 4 220 601 -241 -601
		mu 0 4 221 220 240 241
		f 4 221 602 -242 -602
		mu 0 4 220 222 242 240
		f 4 222 603 -243 -603
		mu 0 4 222 223 243 242
		f 4 223 604 -244 -604
		mu 0 4 223 224 244 243
		f 4 224 605 -245 -605
		mu 0 4 224 225 245 244
		f 4 225 606 -246 -606
		mu 0 4 225 226 246 245
		f 4 226 607 -247 -607
		mu 0 4 226 227 247 246
		f 4 227 608 -248 -608
		mu 0 4 227 228 248 247
		f 4 228 609 -249 -609
		mu 0 4 228 229 249 248
		f 4 229 610 -250 -610
		mu 0 4 229 230 250 249
		f 4 230 611 -251 -611
		mu 0 4 230 231 251 250
		f 4 231 612 -252 -612
		mu 0 4 231 232 252 251
		f 4 232 613 -253 -613
		mu 0 4 232 233 253 252
		f 4 233 614 -254 -614
		mu 0 4 233 234 254 253
		f 4 234 615 -255 -615
		mu 0 4 234 235 255 254
		f 4 235 616 -256 -616
		mu 0 4 235 236 256 255
		f 4 236 617 -257 -617
		mu 0 4 236 237 257 256
		f 4 237 618 -258 -618
		mu 0 4 237 238 258 257
		f 4 238 619 -259 -619
		mu 0 4 238 239 259 258
		f 4 239 600 -260 -620
		mu 0 4 239 221 241 259
		f 4 240 621 -261 -621
		mu 0 4 241 240 260 261
		f 4 241 622 -262 -622
		mu 0 4 240 242 262 260
		f 4 242 623 -263 -623
		mu 0 4 242 243 263 262
		f 4 243 624 -264 -624
		mu 0 4 243 244 264 263
		f 4 244 625 -265 -625
		mu 0 4 244 245 265 264
		f 4 245 626 -266 -626
		mu 0 4 245 246 266 265
		f 4 246 627 -267 -627
		mu 0 4 246 247 267 266
		f 4 247 628 -268 -628
		mu 0 4 247 248 268 267
		f 4 248 629 -269 -629
		mu 0 4 248 249 269 268
		f 4 249 630 -270 -630
		mu 0 4 249 250 270 269
		f 4 250 631 -271 -631
		mu 0 4 250 251 271 270
		f 4 251 632 -272 -632
		mu 0 4 251 252 272 271
		f 4 252 633 -273 -633
		mu 0 4 252 253 273 272
		f 4 253 634 -274 -634
		mu 0 4 253 254 274 273
		f 4 254 635 -275 -635
		mu 0 4 254 255 275 274
		f 4 255 636 -276 -636
		mu 0 4 255 256 276 275
		f 4 256 637 -277 -637
		mu 0 4 256 257 277 276
		f 4 257 638 -278 -638
		mu 0 4 257 258 278 277
		f 4 258 639 -279 -639
		mu 0 4 258 259 279 278
		f 4 259 620 -280 -640
		mu 0 4 259 241 261 279
		f 4 260 641 -281 -641
		mu 0 4 261 260 280 281
		f 4 261 642 -282 -642
		mu 0 4 260 262 282 280
		f 4 262 643 -283 -643
		mu 0 4 262 263 283 282
		f 4 263 644 -284 -644
		mu 0 4 263 264 284 283
		f 4 264 645 -285 -645
		mu 0 4 264 265 285 284
		f 4 265 646 -286 -646
		mu 0 4 265 266 286 285
		f 4 266 647 -287 -647
		mu 0 4 266 267 287 286
		f 4 267 648 -288 -648
		mu 0 4 267 268 288 287
		f 4 268 649 -289 -649
		mu 0 4 268 269 289 288
		f 4 269 650 -290 -650
		mu 0 4 269 270 290 289
		f 4 270 651 -291 -651
		mu 0 4 270 271 291 290
		f 4 271 652 -292 -652
		mu 0 4 271 272 292 291
		f 4 272 653 -293 -653
		mu 0 4 272 273 293 292
		f 4 273 654 -294 -654
		mu 0 4 273 274 294 293
		f 4 274 655 -295 -655
		mu 0 4 274 275 295 294
		f 4 275 656 -296 -656
		mu 0 4 275 276 296 295
		f 4 276 657 -297 -657
		mu 0 4 276 277 297 296
		f 4 277 658 -298 -658
		mu 0 4 277 278 298 297
		f 4 278 659 -299 -659
		mu 0 4 278 279 299 298
		f 4 279 640 -300 -660
		mu 0 4 279 261 281 299
		f 4 280 661 -301 -661
		mu 0 4 281 280 300 301
		f 4 281 662 -302 -662
		mu 0 4 280 282 302 300
		f 4 282 663 -303 -663
		mu 0 4 282 283 303 302
		f 4 283 664 -304 -664
		mu 0 4 283 284 304 303
		f 4 284 665 -305 -665
		mu 0 4 284 285 305 304
		f 4 285 666 -306 -666
		mu 0 4 285 286 306 305
		f 4 286 667 -307 -667
		mu 0 4 286 287 307 306
		f 4 287 668 -308 -668
		mu 0 4 287 288 308 307
		f 4 288 669 -309 -669
		mu 0 4 288 289 309 308
		f 4 289 670 -310 -670
		mu 0 4 289 290 310 309
		f 4 290 671 -311 -671
		mu 0 4 290 291 311 310
		f 4 291 672 -312 -672
		mu 0 4 291 292 312 311
		f 4 292 673 -313 -673
		mu 0 4 292 293 313 312
		f 4 293 674 -314 -674
		mu 0 4 293 294 314 313
		f 4 294 675 -315 -675
		mu 0 4 294 295 315 314
		f 4 295 676 -316 -676
		mu 0 4 295 296 316 315
		f 4 296 677 -317 -677
		mu 0 4 296 297 317 316
		f 4 297 678 -318 -678
		mu 0 4 297 298 318 317
		f 4 298 679 -319 -679
		mu 0 4 298 299 319 318
		f 4 299 660 -320 -680
		mu 0 4 299 281 301 319
		f 4 300 681 -321 -681
		mu 0 4 301 300 320 321
		f 4 301 682 -322 -682
		mu 0 4 300 302 322 320
		f 4 302 683 -323 -683
		mu 0 4 302 303 323 322
		f 4 303 684 -324 -684
		mu 0 4 303 304 324 323
		f 4 304 685 -325 -685
		mu 0 4 304 305 325 324
		f 4 305 686 -326 -686
		mu 0 4 305 306 326 325
		f 4 306 687 -327 -687
		mu 0 4 306 307 327 326
		f 4 307 688 -328 -688
		mu 0 4 307 308 328 327
		f 4 308 689 -329 -689
		mu 0 4 308 309 329 328
		f 4 309 690 -330 -690
		mu 0 4 309 310 330 329
		f 4 310 691 -331 -691
		mu 0 4 310 311 331 330
		f 4 311 692 -332 -692
		mu 0 4 311 312 332 331
		f 4 312 693 -333 -693
		mu 0 4 312 313 333 332
		f 4 313 694 -334 -694
		mu 0 4 313 314 334 333
		f 4 314 695 -335 -695
		mu 0 4 314 315 335 334
		f 4 315 696 -336 -696
		mu 0 4 315 316 336 335
		f 4 316 697 -337 -697
		mu 0 4 316 317 337 336
		f 4 317 698 -338 -698
		mu 0 4 317 318 338 337
		f 4 318 699 -339 -699
		mu 0 4 318 319 339 338
		f 4 319 680 -340 -700
		mu 0 4 319 301 321 339
		f 4 320 701 -341 -701
		mu 0 4 321 320 340 341
		f 4 321 702 -342 -702
		mu 0 4 320 322 342 340
		f 4 322 703 -343 -703
		mu 0 4 322 323 343 342
		f 4 323 704 -344 -704
		mu 0 4 323 324 344 343
		f 4 324 705 -345 -705
		mu 0 4 324 325 345 344
		f 4 325 706 -346 -706
		mu 0 4 325 326 346 345
		f 4 326 707 -347 -707
		mu 0 4 326 327 347 346
		f 4 327 708 -348 -708
		mu 0 4 327 328 348 347
		f 4 328 709 -349 -709
		mu 0 4 328 329 349 348
		f 4 329 710 -350 -710
		mu 0 4 329 330 350 349
		f 4 330 711 -351 -711
		mu 0 4 330 331 351 350
		f 4 331 712 -352 -712
		mu 0 4 331 332 352 351
		f 4 332 713 -353 -713
		mu 0 4 332 333 353 352
		f 4 333 714 -354 -714
		mu 0 4 333 334 354 353
		f 4 334 715 -355 -715
		mu 0 4 334 335 355 354
		f 4 335 716 -356 -716
		mu 0 4 335 336 356 355
		f 4 336 717 -357 -717
		mu 0 4 336 337 357 356
		f 4 337 718 -358 -718
		mu 0 4 337 338 358 357
		f 4 338 719 -359 -719
		mu 0 4 338 339 359 358
		f 4 339 700 -360 -720
		mu 0 4 339 321 341 359
		f 4 340 721 -361 -721
		mu 0 4 341 340 360 361
		f 4 341 722 -362 -722
		mu 0 4 340 342 362 360
		f 4 342 723 -363 -723
		mu 0 4 342 343 363 362
		f 4 343 724 -364 -724
		mu 0 4 343 344 364 363
		f 4 344 725 -365 -725
		mu 0 4 344 345 365 364
		f 4 345 726 -366 -726
		mu 0 4 345 346 366 365
		f 4 346 727 -367 -727
		mu 0 4 346 347 367 366
		f 4 347 728 -368 -728
		mu 0 4 347 348 368 367
		f 4 348 729 -369 -729
		mu 0 4 348 349 369 368
		f 4 349 730 -370 -730
		mu 0 4 349 350 370 369
		f 4 350 731 -371 -731
		mu 0 4 350 351 371 370
		f 4 351 732 -372 -732
		mu 0 4 351 352 372 371
		f 4 352 733 -373 -733
		mu 0 4 352 353 373 372
		f 4 353 734 -374 -734
		mu 0 4 353 354 374 373
		f 4 354 735 -375 -735
		mu 0 4 354 355 375 374
		f 4 355 736 -376 -736
		mu 0 4 355 356 376 375
		f 4 356 737 -377 -737
		mu 0 4 356 357 377 376
		f 4 357 738 -378 -738
		mu 0 4 357 358 378 377
		f 4 358 739 -379 -739
		mu 0 4 358 359 379 378
		f 4 359 720 -380 -740
		mu 0 4 359 341 361 379
		f 3 -1 -741 741
		mu 0 3 1 0 380
		f 3 -2 -742 742
		mu 0 3 4 1 380
		f 3 -3 -743 743
		mu 0 3 6 4 380
		f 3 -4 -744 744
		mu 0 3 8 6 380
		f 3 -5 -745 745
		mu 0 3 10 8 380
		f 3 -6 -746 746
		mu 0 3 12 10 380
		f 3 -7 -747 747
		mu 0 3 14 12 380
		f 3 -8 -748 748
		mu 0 3 16 14 380
		f 3 -9 -749 749
		mu 0 3 18 16 380
		f 3 -10 -750 750
		mu 0 3 20 18 380
		f 3 -11 -751 751
		mu 0 3 22 20 380
		f 3 -12 -752 752
		mu 0 3 24 22 380
		f 3 -13 -753 753
		mu 0 3 26 24 380
		f 3 -14 -754 754
		mu 0 3 28 26 380
		f 3 -15 -755 755
		mu 0 3 30 28 380
		f 3 -16 -756 756
		mu 0 3 32 30 380
		f 3 -17 -757 757
		mu 0 3 34 32 380
		f 3 -18 -758 758
		mu 0 3 36 34 380
		f 3 -19 -759 759
		mu 0 3 38 36 380
		f 3 -20 -760 740
		mu 0 3 0 38 380
		f 3 360 761 -761
		mu 0 3 361 360 381
		f 3 361 762 -762
		mu 0 3 360 362 381
		f 3 362 763 -763
		mu 0 3 362 363 381
		f 3 363 764 -764
		mu 0 3 363 364 381
		f 3 364 765 -765
		mu 0 3 364 365 381
		f 3 365 766 -766
		mu 0 3 365 366 381
		f 3 366 767 -767
		mu 0 3 366 367 381
		f 3 367 768 -768
		mu 0 3 367 368 381
		f 3 368 769 -769
		mu 0 3 368 369 381
		f 3 369 770 -770
		mu 0 3 369 370 381
		f 3 370 771 -771
		mu 0 3 370 371 381
		f 3 371 772 -772
		mu 0 3 371 372 381
		f 3 372 773 -773
		mu 0 3 372 373 381
		f 3 373 774 -774
		mu 0 3 373 374 381
		f 3 374 775 -775
		mu 0 3 374 375 381
		f 3 375 776 -776
		mu 0 3 375 376 381
		f 3 376 777 -777
		mu 0 3 376 377 381
		f 3 377 778 -778
		mu 0 3 377 378 381
		f 3 378 779 -779
		mu 0 3 378 379 381
		f 3 379 760 -780
		mu 0 3 379 361 381;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Eye_L" -p "Grp_Geo";
	rename -uid "E372B4F1-4389-DED7-771E-06BDCE2E19DB";
	setAttr ".rp" -type "double3" 0 1.7763568394002505e-15 1.3322676295501878e-15 ;
	setAttr ".sp" -type "double3" 0 1.7763568394002505e-15 1.3322676295501878e-15 ;
createNode mesh -n "Eye_LShape" -p "Eye_L";
	rename -uid "021E6D1F-4D9D-BEDA-CDFC-879091121930";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.1255397796630859 -0.30128788948059082 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 402 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 1.14744341 1.15045667 1.14834869
		 1.14988971 1.14996207 1.15409279 1.14817393 1.15521276 1.14906716 1.14891481 1.15138125
		 1.15216708 1.14952826 1.14762747 1.15229225 1.14962411 1.14968729 1.14615369 1.15260625
		 1.14671278 1.14952826 1.14463782 1.15229249 1.143718 1.14906716 1.14322782 1.15138125
		 1.14093316 1.14834869 1.14206219 1.14996207 1.13863051 1.14744329 1.1412549 1.14817405
		 1.13703585 1.14643991 1.14088488 1.14619172 1.13630497 1.14543641 1.14098847 1.14420938
		 1.13650966 1.14453113 1.14155543 1.14242125 1.13762939 1.14381278 1.14253032 1.14100206
		 1.13955498 1.14335155 1.14381766 1.14009082 1.14209819 1.14319265 1.14529157 1.13977695
		 1.14500952 1.14335155 1.14680767 1.14009082 1.14800417 1.14381278 1.14821732 1.14100206
		 1.15078914 1.14453113 1.14938307 1.14242125 1.15309167 1.14543641 1.15019023 1.14420938
		 1.15468645 1.14643991 1.15056026 1.14619172 1.15541732 1.15132403 1.15818167 1.1486969
		 1.15982723 1.15340889 1.15535283 1.15474749 1.15161657 1.15520883 1.14733946 1.15474749
		 1.14293969 1.15340889 1.1388483 1.15132403 1.1354655 1.1486969 1.13312256 1.14578462
		 1.13204885 1.14287257 1.13234937 1.14024532 1.1339947 1.13816035 1.13682389 1.13682175
		 1.14055991 1.13636041 1.14483714 1.13682175 1.1492368 1.13816035 1.1533283 1.1402452
		 1.1567111 1.14287257 1.1590538 1.14578462 1.16012776 1.15240073 1.16205609 1.14899933
		 1.16418636 1.15510011 1.15839314 1.15683317 1.15355611 1.15743041 1.14801824 1.15683317
		 1.14232194 1.15510011 1.13702476 1.15240073 1.13264513 1.14899933 1.12961161 1.14522886
		 1.12822127 1.14145851 1.12861049 1.13805699 1.13074088 1.13535786 1.13440371 1.13362455
		 1.13924098 1.13302732 1.14477861 1.13362479 1.15047479 1.13535786 1.15577209 1.13805699
		 1.16015184 1.14145851 1.16318524 1.14522886 1.16457546 1.15316606 1.16562009 1.14907408
		 1.16818285 1.1564132 1.16121352 1.15849805 1.15539455 1.15921664 1.14873242 1.15849805
		 1.14187992 1.1564132 1.13550735 1.15316606 1.13023865 1.14907408 1.12658954 1.14453816
		 1.12491703 1.14000225 1.12538505 1.13591027 1.12794781 1.13266325 1.13235438 1.13057816
		 1.13817334 1.12985969 1.14483523 1.13057816 1.15168786 1.13266325 1.15806055 1.13591027
		 1.16332924 1.14000225 1.16697848 1.14453816 1.16865087 1.15360057 1.16878617 1.14891899
		 1.17171824 1.15731597 1.16374457 1.15970135 1.15708685 1.16052318 1.14946485 1.15970135
		 1.14162469 1.15731597 1.13433349 1.15360057 1.12830544 1.14891899 1.12413025 1.14372945
		 1.12221682 1.13853979 1.12275231 1.1338582 1.12568438 1.13014269 1.13072586 1.12775743
		 1.1373837 1.12693548 1.1450057 1.12775743 1.15284598 1.13014269 1.16013706 1.1338582
		 1.16616511 1.13853979 1.1703403 1.14372945 1.17225373 1.15369415 1.17147624 1.14853811
		 1.17470562 1.15778601 1.1659236 1.16041303 1.15859151 1.16131854 1.15019703 1.16041303
		 1.14156199 1.15778601 1.13353205 1.15369415 1.12689304 1.14853811 1.12229478 1.1428225
		 1.1201874 1.13710701 1.12077725 1.13195086 1.12400651 1.12785912 1.12955904 1.12523186
		 1.13689137 1.12432659 1.14528584 1.12523186 1.15392077 1.127859 1.16195071 1.13195086
		 1.16858971 1.13710701 1.17318797 1.1428225 1.17529535 1.15344417 1.1736244 1.14794064
		 1.17707121 1.15781188 1.16769755 1.16061616 1.15987098 1.16158235 1.15091074 1.16061616
		 1.14169395 1.15781188 1.1331228 1.15344417 1.12603641 1.14794064 1.1211282 1.14183986
		 1.11887884 1.13573921 1.11950839 1.13023555 1.1229552 1.12586784 1.12888205 1.12306368
		 1.1367085 1.12209749 1.14566898 1.12306368 1.15488553 1.12586784 1.16345668 1.13023555
		 1.17054319 1.13573921 1.17545128 1.14183998 1.17770076 1.15285683 1.17517734 1.14714146
		 1.17875695 1.15739286 1.1690222 1.16030526 1.16089427 1.16130865 1.15158892 1.16030526
		 1.14201713 1.15739286 1.13311577 1.15285707 1.12575638 1.14714146 1.12065923 1.14080572
		 1.11832309 1.13446999 1.11897695 1.12875438 1.12255657 1.12421846 1.1287117 1.1213063
		 1.13683963 1.1203028 1.14614511 1.1213063 1.15571678 1.12421858 1.16461813 1.12875438
		 1.17197752 1.13446999 1.17707467 1.14080572 1.1794107 0.87430656 0.89908892 0.90653306
		 0.86607778 0.8334558 0.92052579 0.78798068 0.92829019 0.74233198 0.92162198 0.70097822
		 0.90117383 0.66796774 0.86894745 0.64653152 0.82809687 0.63876742 0.78262168 0.64543629
		 0.73697317 0.66588444 0.69561857 0.69811112 0.66260779 0.73896092 0.64117062 0.78443605
		 0.6334064 0.83008456 0.64007539 0.87143838 0.66052353 0.90444916 0.6927501 0.92588568
		 0.73360056 0.93365014 0.77907521 0.92698139 0.82472408 0.86457407 0.88613951 0.89327526
		 0.8567698 0.82820171 0.90520263 0.78771847 0.91209316 0.74708784 0.90613681 0.71028656
		 0.88791615 0.68091726 0.85921478 0.66185391 0.82284272 0.65496391 0.78235984 0.6609211
		 0.74172878 0.67914188 0.70492673 0.7078433 0.67555696 0.74421555 0.65649372 0.78469819
		 0.64960337 0.82532901 0.65556002 0.86213017 0.67378116 0.89149994 0.70248258 0.91056305
		 0.73885453 0.91745341 0.77933753 0.9114964 0.81996834 0.85521662 0.87370837 0.88053477
		 0.84783876 0.82314354 0.89048833 0.78745514 0.89653587 0.75164473 0.89125925 0.71921778
		 0.87517518 0.69334817 0.84985751 0.67656851 0.81778443 0.67052132 0.78209603 0.67579836
		 0.7462858 0.69188255 0.71385813 0.71720076 0.68798816 0.74927366 0.67120832 0.78496182
		 0.66516078 0.82077211 0.67043757 0.85319924 0.68652189 0.87906891 0.71183968 0.89584857
		 0.74391288 0.90189618 0.77960128 0.8966192 0.81541163 0.84612662 0.86163032 0.86815733
		 0.83916092 0.81823075 0.87619233 0.78720051 0.88142145 0.75607306 0.87680596 0.72789562
		 0.86279768 0.70542616 0.84076732 0.69086456 0.81287158 0.68563557 0.78184128 0.69025165
		 0.75071394;
	setAttr ".uvst[0].uvsp[250:401]" 0.70426011 0.72253591 0.72629064 0.70006621
		 0.75418639 0.68550414 0.78521663 0.6802749 0.8163439 0.68489087 0.8445214 0.69889951
		 0.86699069 0.72093022 0.88155282 0.74882579 0.88678157 0.77985609 0.88216585 0.8109833
		 0.83723485 0.84979665 0.85604393 0.83065403 0.81343138 0.86219013 0.78696287 0.86662149
		 0.76042068 0.86265653 0.73640263 0.85068405 0.71726024 0.83187544 0.70486689 0.80807215
		 0.70043552 0.78160357 0.70440054 0.75506091 0.71637356 0.7310428 0.73518234 0.71189982
		 0.75898582 0.69950622 0.78545439 0.6950748 0.81199652 0.69903982 0.83601451 0.71101266
		 0.85515714 0.72982168 0.86755061 0.75362515 0.87198162 0.78009367 0.8680169 0.80663592
		 0.82849699 0.83813232 0.84412915 0.82226098 0.80872542 0.84839642 0.78674972 0.8520487
		 0.7647211 0.84873122 0.74479586 0.83876896 0.72892433 0.82313704 0.71866035 0.80336559
		 0.71500832 0.78138995 0.71832573 0.75936121 0.72828823 0.73943567 0.74392039 0.72356415
		 0.7636919 0.71329981 0.7856676 0.70964748 0.80769616 0.71296525 0.82762152 0.72292745
		 0.8434931 0.7385596 0.85375708 0.75833118 0.85740924 0.78030694 0.85409158 0.80233574
		 0.81988108 0.82658428 0.83236647 0.81394041 0.8040998 0.83475137 0.78656721 0.83764178
		 0.76899946 0.8349731 0.75311637 0.82700622 0.74047256 0.81452107 0.73230559 0.79873991
		 0.72941494 0.78120714 0.73208404 0.76363927 0.74005085 0.74775612 0.75253618 0.73511207
		 0.76831758 0.72694504 0.78585005 0.72405457 0.8034178 0.72672331 0.81930101 0.73469031
		 0.831945 0.74717528 0.84011179 0.7629568 0.84300226 0.78048956 0.84033346 0.79805708
		 0.81136447 0.81511199 0.82072151 0.80566162 0.79954517 0.82120878 0.78642023 0.8233546
		 0.77327466 0.82133973 0.7613951 0.81536126 0.75194454 0.80600435 0.74584806 0.7941848
		 0.74370223 0.7810601 0.74571747 0.76791441 0.75169605 0.75603473 0.76105285 0.74658406
		 0.77287227 0.7404874 0.78599721 0.73834169 0.79914278 0.74035656 0.81102234 0.74633503
		 0.82047278 0.75569212 0.82656926 0.76751161 0.82871503 0.78063643 0.82669997 0.79378194
		 0.80292743 0.80368376 0.80916584 0.79739982 0.79505253 0.80773276 0.78631186 0.80914986
		 0.77756125 0.80779654 0.76965696 0.80380547 0.7633729 0.79756725 0.75932419 0.78969222
		 0.75790709 0.78095162 0.75926036 0.77220082 0.7632516 0.76429653 0.76948994 0.75801247
		 0.77736473 0.75396371 0.78610551 0.75254637 0.79485613 0.75389975 0.80276042 0.75789094
		 0.80904448 0.76412928 0.81309319 0.77200419 0.81451029 0.78074473 0.81315696 0.78949541
		 0.79455113 0.79227179 0.79767305 0.7891348 0.79061264 0.79429072 0.78624308 0.79499376
		 0.78187025 0.79431206 0.77792203 0.79231238 0.77478492 0.78919065 0.77276611 0.78525233
		 0.77206308 0.78088272 0.77274477 0.77650982 0.77474439 0.77256155 0.77786624 0.76942432
		 0.78180474 0.76740539 0.78617424 0.76670253 0.79054719 0.76738405 0.79449552 0.76938379
		 0.79763252 0.77250558 0.79965138 0.77644396 0.8003543 0.78081369 0.79967266 0.78518659
		 1.14652336 1.14567602 0.78620875 0.78084797 1.13974535 1.18038321 1.14616013 1.17972124
		 1.1333307 1.17801797 1.12754393 1.17285728 1.12295151 1.16540599 1.12000287 1.15639389
		 1.11898696 1.14670289 1.12000287 1.13728166 1.12295151 1.12905216 1.12754393 1.12282038
		 1.1333307 1.11919606 1.13974535 1.11853421 1.14616013 1.12089932 1.15194702 1.12606013
		 1.15653932 1.13351119 1.15948796 1.14252341 1.16050386 1.15221453 1.15948796 1.16163588
		 1.15653932 1.16986525 1.15194702 1.17609704;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 382 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.15431036 14.878864 0.79795581 -0.18826094 
		14.842926 0.93150049 -0.1812557 14.78114 1.0442421 -0.13398062 14.699557 1.12514 
		-0.0510622 14.606149 1.1662948 0.059384216 14.510071 1.1636573 0.18654104 14.420718 
		1.1175101 0.31797114 14.346843 1.0323467 0.44080216 14.295682 0.91650563 0.54301363 
		14.272225 0.78134912 0.61459738 14.278788 0.64008558 0.64855021 14.314719 0.50654536 
		0.64154297 14.376509 0.39380288 0.59426576 14.458097 0.31290099 0.51134926 14.551503 
		0.27174655 0.40090197 14.647581 0.27438542 0.27374324 14.736937 0.32053223 0.14231615 
		14.810806 0.4056983 0.019485556 14.861971 0.52153128 -0.082724601 14.885423 0.65669316 
		-0.50779963 15.107028 0.91815615 -0.57486194 15.036049 1.1819385 -0.56102312 14.913998 
		1.4046434 -0.46763548 14.752829 1.5644629 -0.30383912 14.568316 1.6457508 -0.085672423 
		14.378519 1.6405596 0.16551948 14.202018 1.5493821 0.42513832 14.056089 1.3811555 
		0.66777456 13.955017 1.1523448 0.86967546 13.9087 0.88534379 1.0110838 13.92166 0.60629129 
		1.0781502 13.992644 0.34249803 1.0643144 14.114688 0.11979619 0.97092676 14.275857 
		-0.040023182 0.8071301 14.460374 -0.12131476 0.58896112 14.650167 -0.11611586 0.33777285 
		14.826667 -0.024940636 0.07814952 14.972597 0.1432896 -0.16448501 15.073668 0.37209758 
		-0.3663924 15.119993 0.63910091 -0.8288334 15.279372 1.0621235 -0.92736691 15.175098 
		1.449665 -0.90703815 14.995794 1.7768495 -0.76983798 14.759008 2.0116501 -0.5292002 
		14.487934 2.1310761 -0.20867339 14.209095 2.1234381 0.16035548 13.949791 1.9894937 
		0.54177678 13.735404 1.742336 0.898247 13.58691 1.4061822 1.194873 13.518858 1.0139174 
		1.4026186 13.537904 0.60394961 1.5011444 13.642189 0.21640575 1.4808171 13.821486 
		-0.11077034 1.3436188 14.05827 -0.34557325 1.1029761 14.32935 -0.46499968 0.78245276 
		14.608191 -0.45736709 0.4134188 14.867493 -0.32341397 0.032000937 15.08188 -0.076261759 
		-0.32446349 15.230367 0.25989372 -0.62109447 15.298427 0.65215492 -1.1095254 15.391664 
		1.2263271 -1.2370968 15.256653 1.7280873 -1.2107731 15.024503 2.1516922 -1.0331392 
		14.717946 2.4556794 -0.72158235 14.36698 2.6103034 -0.30659857 14.005967 2.6004174 
		0.17118852 13.670245 2.426995 0.66501707 13.392665 2.1070123 1.1265433 13.200415 
		1.671782 1.5105832 13.112309 1.1639184 1.7795553 13.136966 0.63312817 1.9071236 13.271983 
		0.13136479 1.880802 13.504127 -0.29223561 1.7031689 13.810687 -0.59622771 1.3916074 
		14.161656 -0.75084853 0.97662258 14.522672 -0.74096441 0.49883646 14.858393 -0.56754172 
		0.0050089103 15.135969 -0.2475584 -0.4565165 15.328222 0.18767011 -0.84055501 15.416322 
		0.69553906 -1.3429574 15.441133 1.4067192 -1.4964225 15.278717 2.0103297 -1.4647534 
		14.999434 2.519932 -1.2510633 14.630643 2.8856373 -0.87625712 14.208436 3.0716395 
		-0.37703034 13.774129 3.0597565 0.1977527 13.370251 2.8511257 0.79182756 13.036329 
		2.4661808 1.3470385 12.805053 1.9426045 1.8090439 12.69906 1.3316386 2.132617 12.728721 
		0.69310009 2.2860782 12.891144 0.089487843 2.2544158 13.170418 -0.42011383 2.0407202 
		13.539213 -0.78581709 1.6659144 13.961425 -0.97182488 1.166689 14.395725 -0.95993578 
		0.59190691 14.799603 -0.75130635 -0.0021691085 15.133528 -0.36636373 -0.55737978 
		15.364801 0.15721612 -1.0193834 15.470794 0.76817942 -1.5233771 15.426556 1.5988582 
		-1.6989599 15.240729 2.2894657 -1.6627295 14.921203 2.8725088 -1.418238 14.499253 
		3.2909245 -0.98941743 14.016194 3.5037425 -0.41823798 13.519298 3.4901381 0.23938529 
		13.057215 3.2514338 0.91907853 12.675163 2.8110175 1.5543098 12.41056 2.2119701 2.0828967 
		12.289289 1.5129597 2.4531059 12.323229 0.78238606 2.6286888 12.509053 0.091780715 
		2.5924573 12.828582 -0.49126309 2.3479681 13.250525 -0.90967453 1.9191445 13.73359 
		-1.1224954 1.3479681 14.230481 -1.1088879 0.69034272 14.69257 -0.87018681 0.01065324 
		15.074616 -0.42977065 -0.62457943 15.339225 0.16927138 -1.1531721 15.460495 0.86829138 
		-1.6463418 15.348292 1.7980121 -1.8397171 15.143629 2.5586114 -1.7998189 14.791722 
		3.2007458 -1.5305495 14.327015 3.6615605 -1.0582714 13.795004 3.8959446 -0.42920676 
		13.247752 3.8809588 0.29506266 12.738836 3.6180673 1.0436398 12.318068 3.1330142 
		1.7432532 12.026637 2.4732649 2.3254066 11.893088 1.7034018 2.7331302 11.93046 0.89880419 
		2.9265084 12.13512 0.13820405 2.8866081 12.487031 -0.50393146 2.6173398 12.951735 
		-0.96474379 2.1450596 13.483752 -1.1991324 1.5159931 14.031005 -1.1841438 0.79172534 
		14.539921 -0.92125666 0.043150067 14.960688 -0.43620318 -0.6564582 15.252109 0.22355115 
		-1.2386178 15.38567 0.99340743 -1.7088312 15.20828 1.9992762 -1.9152393 14.989822 
		2.8111377 -1.8726507 14.614194 3.4965537 -1.5852346 14.118168 3.9884257 -1.0811229 
		13.550294 4.2386088 -0.4096643 12.966163 4.2226133 0.36341798 12.422945 3.9420087 
		1.1624459 11.973826 3.4242523 1.9092054 11.662759 2.7200427 2.5305972 11.520204 1.8982953 
		2.9658 11.560102 1.0394616 3.1722105 11.778548 0.22760814 3.1296237 12.154179 -0.45781118 
		2.8422079 12.650198 -0.94967592 2.3380961 13.218072 -1.199859 1.6666324 13.802216 
		-1.1838704 0.893556 14.345425 -0.90326381 0.094528928 14.794542 -0.38550887 -0.65223414 
		15.105613 0.31870419 -1.2736303 15.248177 1.1404467 -1.7093009 15.00995 2.1977057 
		-1.923661 14.783078 3.0408406 -1.8794327 14.392989 3.7526472 -1.5809441 13.877854 
		4.2634659 -1.0574161 13.28811 4.523283 -0.36009431 12.681479 4.5066719;
	setAttr ".pt[166:331]" 0.44276536 12.117335 4.2152619 1.2725695 11.650914 
		3.6775682 2.0480931 11.327867 2.9462311 2.6934199 11.179818 2.0928333 3.1453865 11.221251 
		1.2009183 3.3597443 11.448123 0.35778895 3.3155177 11.83821 -0.3540186 3.017029 12.353345 
		-0.86483711 2.4935017 12.943092 -1.1246594 1.7961794 13.549722 -1.1080432 0.99331796 
		14.113865 -0.8166309 0.16351832 14.580281 -0.27894011 -0.61200643 14.903334 0.45239475 
		-1.2573333 15.051383 1.3057903 -1.6477381 14.758196 2.3883986 -1.8647708 14.528504 
		3.2420337 -1.8199914 14.133545 3.9627244 -1.5177827 13.611995 4.4799042 -0.98772746 
		13.014894 4.7429647 -0.28171396 12.400702 4.7261457 0.53114849 11.829534 4.4311008 
		1.3713012 11.35729 3.8867083 2.1564915 11.030219 3.1462507 2.8098617 10.880319 2.2822249 
		3.2674606 10.922277 1.3791837 3.4844935 11.151966 0.52555221 3.4397097 11.546927 
		-0.19513223 3.1375051 12.06848 -0.71232229 2.6074524 12.665572 -0.97537494 1.9014357 
		13.279771 -0.95855874 1.0885696 13.850941 -0.66351193 0.24842142 14.323173 -0.11911063 
		-0.53676617 14.650252 0.62133217 -1.1901386 14.800147 1.4853677 -1.5256641 14.459212 
		2.5666761 -1.7400223 14.232347 3.4097998 -1.6957929 13.842256 4.1216087 -1.3973051 
		13.327122 4.6324277 -0.87377703 12.737376 4.8922458 -0.17645596 12.130742 4.875639 
		0.62640256 11.566602 4.5842261 1.4562043 11.100191 4.0465255 2.2317245 10.777141 
		3.3151944 2.877059 10.629084 2.4617977 3.3290207 10.670526 1.5698792 3.5433834 10.897388 
		0.72675329 3.4991519 11.287481 0.014944283 3.2006655 11.802611 -0.49587026 2.6771352 
		12.392363 -0.75569206 1.9798175 12.998988 -0.73907906 1.1769544 13.563131 -0.44766405 
		0.34715509 14.029554 0.090018161 -0.42836833 14.352601 0.82135838 -1.0736952 14.500649 
		1.6747545 -1.3460786 14.120377 2.7281184 -1.5524884 13.901918 3.5399828 -1.5099018 
		13.526294 4.2253981 -1.2224848 13.030268 4.7172685 -0.71837217 12.462394 4.9674501 
		-0.046913359 11.87826 4.951458 0.72616667 11.335048 4.6708493 1.5251966 10.885926 
		4.1530938 2.2719598 10.574854 3.448884 2.8933496 10.432292 2.6271479 3.3285501 10.472197 
		1.7683111 3.5349596 10.690649 0.95645237 3.4923759 11.066269 0.27103978 3.2049589 
		11.562295 -0.22083083 2.7008471 12.130169 -0.4710139 2.0293889 12.714308 -0.45502728 
		1.2563066 13.257524 -0.17442234 0.45727703 13.706642 0.3433367 -0.28948435 14.017713 
		1.047547 -0.91087562 14.16027 1.86929 -1.1134092 13.750011 2.8687844 -1.3067826 13.545345 
		3.6293845 -1.266885 13.193439 4.2715206 -0.99761498 12.728731 4.7323337 -0.52533656 
		12.196716 4.9667215 0.10372724 11.649465 4.9517369 0.82799673 11.140549 4.6888471 
		1.5765765 10.719779 4.2037897 2.276186 10.428354 3.5440392 2.8583412 10.294793 2.7741888 
		3.266062 10.332179 1.9695779 3.4594421 10.536835 1.2089818 3.4195449 10.888739 0.56684786 
		3.1502736 11.353451 0.1060308 2.6779935 11.885466 -0.12835422 2.0489295 12.43272 
		-0.11337328 1.3246593 12.941633 0.14952159 0.57608235 13.362401 0.63457781 -0.12352612 
		13.653823 1.294329 -0.70568407 13.787385 2.064182 -0.83338368 13.357239 2.9852049 
		-1.0089653 13.171409 3.675817 -0.97273445 12.851887 4.258852 -0.72824407 12.429941 
		4.6772656 -0.29942125 11.946876 4.8900881 0.27175593 11.449985 4.8764791 0.92938071 
		10.987894 4.6377826 1.6090691 10.605849 4.1973648 2.2443035 10.341243 3.5983195 2.7728951 
		10.219974 2.8992977 3.1430986 10.253911 2.1687357 3.318681 10.439742 1.4781231 3.2824516 
		10.759267 0.8950817 3.037962 11.181212 0.47666663 2.6091416 11.664271 0.26384893 
		2.037962 12.161168 0.27745321 1.3803366 12.623256 0.51615489 0.70064658 13.005301 
		0.95657551 0.065415025 13.269906 1.5556198 -0.46317366 13.391179 2.2546294 -0.51289207 
		12.951745 3.0744898 -0.66635412 12.789322 3.6781034 -0.63468999 12.510048 4.1877022 
		-0.42099693 12.141253 4.5534096 -0.046191268 11.719041 4.7394176 0.45303413 11.28474 
		4.7275286 1.0278189 10.880861 4.5188966 1.621893 10.54694 4.1339531 2.1771047 10.315664 
		3.6103737 2.6391075 10.209674 2.9994113 2.9626791 10.239339 2.3608675 3.1161418 10.401755 
		1.7572613 3.0844777 10.681031 1.2476608 2.8707826 11.049829 0.88195407 2.4959798 
		11.472036 0.6959458 1.9967515 11.906341 0.70783532 1.4219675 12.31022 0.91646439 
		0.8278982 12.644136 1.3014078 0.2726844 12.875416 1.8249846 -0.18932176 12.981409 
		2.4359519 -0.15983403 12.543502 3.1344643 -0.28739971 12.408485 3.6362228 -0.26108164 
		12.176341 4.0598292 -0.0834442 11.869781 4.3638139 0.22811353 11.518816 4.5184369 
		0.64309734 11.157803 4.5085506 1.1208876 10.822073 4.3351331 1.6147121 10.544501 
		4.0151472 2.0762362 10.352254 3.5799158 2.4602828 10.264142 3.0720499 2.7292476 10.288806 
		2.5412633 2.8568175 10.423813 2.0395095 2.8304992 10.655959 1.6158999 2.6528621 10.962523 
		1.3119098 2.3413036 11.313489 1.1572884 1.9263188 11.674504 1.1671726 1.4485321 12.010232 
		1.340588 0.95470333 12.287803 1.6605812 0.49317992 12.480051 2.0958107 0.10913982 
		12.568159 2.6036706 0.21710347 12.142565 3.1636407 0.11857751 12.038281 3.5511816 
		0.13890494 11.858983 3.8783607 0.27610448 11.622196 4.1131659 0.51674461 11.351125 
		4.2325845 0.8372665 11.072283 4.2249579 1.2062986 10.812982 4.0910044 1.5877212 10.598588 
		3.8438528 1.9441855 10.450104 3.5076952 2.2408147 10.382044 3.1154351 2.448559 10.401094 
		2.7054634 2.5470896 10.505375 2.317919;
	setAttr ".pt[332:381]" 2.5267627 10.684676 1.9907364 2.3895612 10.921455 1.7559431 
		2.1489232 11.192534 1.6365129 1.8283978 11.471377 1.6441447 1.4593647 11.73068 1.7780963 
		1.0779479 11.945065 2.0252502 0.721479 12.093554 2.3614094 0.42485473 12.161605 2.7536714 
		0.6086365 11.758809 3.1613019 0.54157281 11.687825 3.425091 0.55540687 11.565782 
		3.6477957 0.64879531 11.404612 3.8076136 0.81259429 11.220098 3.8888974 1.0307637 
		11.030299 3.8837059 1.2819483 10.853803 3.7925324 1.5415717 10.707872 3.6243021 1.784209 
		10.606797 3.3954937 1.9861138 10.560475 3.1284924 2.1275191 10.573441 2.8494372 2.1945841 
		10.644421 2.5856519 2.1807444 10.766471 2.3629484 2.0873611 10.92764 2.2031221 1.9235631 
		11.11215 2.1218405 1.7053947 11.301947 2.1270344 1.4542017 11.478452 2.2182097 1.1945829 
		11.62438 2.3864362 0.95194948 11.725449 2.6152465 0.75004661 11.771769 2.8822467 
		1.0051247 11.40168 3.1275053 0.97117579 11.365743 3.2610469 0.97818077 11.303961 
		3.3737848 1.0254563 11.222372 3.4546895 1.1083757 11.128963 3.4958434 1.2188207 11.032882 
		3.4932122 1.3459798 10.943531 3.4470572 1.4774061 10.86966 3.3618958 1.6002368 10.818495 
		3.2460628 1.7024459 10.795046 3.1108987 1.7740316 10.801605 2.969636 1.8079861 10.837537 
		2.8360929 1.8009781 10.899325 2.723352 1.7537025 10.980914 2.6424472 1.6707863 11.074317 
		2.6012964 1.5603374 11.170403 2.6039264 1.4331783 11.259753 2.6500812 1.3017527 11.333626 
		2.7352409 1.1789186 11.384791 2.8510795 1.0767068 11.408242 2.9862444 0.22291426 
		14.600502 0.70450181 1.3968073 11.079974 3.0630815;
	setAttr -s 382 ".vt";
	setAttr ".vt[0:165]"  0.29755592 -1.97537613 -0.096684456 0.25311661 -1.9753685 -0.18390369
		 0.18389893 -1.9753685 -0.25312138 0.096683502 -1.97537231 -0.29755783 0 -1.97537231 -0.31287289
		 -0.096681595 -1.97537613 -0.29755688 -0.18389893 -1.97537231 -0.25312138 -0.25311661 -1.97537231 -0.18390369
		 -0.29755402 -1.97537613 -0.096681595 -0.31286812 -1.9753685 -1.9073486e-06 -0.29755592 -1.9753685 0.096678734
		 -0.25311661 -1.9753685 0.18389797 -0.18389893 -1.97537231 0.2531147 -0.096681595 -1.97537231 0.29755211
		 0 -1.97537231 0.31286716 0.096681595 -1.9753685 0.2975502 0.18390083 -1.97537231 0.2531147
		 0.25311661 -1.9753685 0.18389702 0.29755592 -1.9753685 0.096678734 0.31286812 -1.97537231 -2.8610229e-06
		 0.58778763 -1.90210724 -0.19098854 0.5 -1.90211105 -0.36327362 0.36327171 -1.90210724 -0.50000191
		 0.19098282 -1.90210724 -0.58778763 0 -1.90210724 -0.61803532 -0.19098282 -1.90210724 -0.58779049
		 -0.36327171 -1.90210724 -0.50000286 -0.5 -1.90210724 -0.36327457 -0.58778572 -1.90210724 -0.19098759
		 -0.61803436 -1.90211105 -5.7220459e-06 -0.58778572 -1.90210724 0.190979 -0.5 -1.90211105 0.36326885
		 -0.36327171 -1.90210724 0.49999809 -0.19098282 -1.90210724 0.58778381 0 -1.90211105 0.61803246
		 0.19098282 -1.90210724 0.58778381 0.36326981 -1.90210724 0.49999809 0.5 -1.90210724 0.36326694
		 0.58778572 -1.90210724 0.19098186 0.61803436 -1.90211105 -4.7683716e-06 0.86354065 -1.78200531 -0.28058338
		 0.73457336 -1.78200912 -0.53369999 0.53369713 -1.78201294 -0.73457623 0.28058243 -1.78200531 -0.86354542
		 0 -1.78200912 -0.90798664 -0.28058243 -1.78200912 -0.86354446 -0.53369713 -1.78200912 -0.73457813
		 -0.73457146 -1.78201294 -0.53369999 -0.86354256 -1.78200912 -0.28058529 -0.90798187 -1.78200912 -1.9073486e-06
		 -0.86354256 -1.78200912 0.28057957 -0.73457146 -1.78201294 0.53369427 -0.53369904 -1.78200531 0.73456669
		 -0.28058243 -1.78200912 0.86353874 0 -1.78201294 0.9079771 0.28058243 -1.78201294 0.86353874
		 0.53369904 -1.78200912 0.73456764 0.73457336 -1.78200531 0.53369331 0.86354065 -1.78200531 0.28057957
		 0.90798187 -1.78201294 -4.7683716e-06 1.11803436 -1.61802673 -0.36327362 0.95105743 -1.61802673 -0.69098854
		 0.69098282 -1.61802673 -0.9510603 0.36327171 -1.61803055 -1.11803532 0 -1.61803055 -1.17557335
		 -0.36326981 -1.61803055 -1.11803627 -0.69098186 -1.61803436 -0.95106125 -0.95105553 -1.61802673 -0.69098759
		 -1.11803436 -1.61802673 -0.36327362 -1.17557144 -1.61803055 -4.7683716e-06 -1.11803436 -1.61802673 0.36326885
		 -0.95105743 -1.61803436 0.69098282 -0.69098282 -1.61802673 0.95105457 -0.36327171 -1.61802673 1.1180315
		 0 -1.61803055 1.17556572 0.36327171 -1.61803055 1.11802959 0.69098282 -1.61802673 0.95105457
		 0.95105743 -1.61803055 0.69098186 1.11803436 -1.61803436 0.3632679 1.17556953 -1.61802673 -2.8610229e-06
		 1.34499741 -1.41421127 -0.4370203 1.14412308 -1.41421509 -0.83125782 0.83125305 -1.41420746 -1.14412498
		 0.43701744 -1.41420746 -1.34500027 0 -1.41421509 -1.41421413 -0.43701553 -1.41420746 -1.34500027
		 -0.83125305 -1.41420746 -1.14412498 -1.14412308 -1.41420746 -0.83125591 -1.34499741 -1.41420746 -0.4370203
		 -1.41421318 -1.41420746 -1.9073486e-06 -1.34499741 -1.41420364 0.43701458 -1.14412308 -1.41420746 0.83125019
		 -0.83125496 -1.41420746 1.14412022 -0.43701553 -1.41420746 1.34499359 0 -1.41420746 1.41420841
		 0.43701553 -1.41420746 1.34499359 0.83125305 -1.41420746 1.14411926 1.14412308 -1.41421127 0.83125019
		 1.34499741 -1.41420746 0.43701363 1.41421318 -1.41420746 -2.8610229e-06 1.53884315 -1.17556763 -0.50000381
		 1.30901909 -1.17556763 -0.9510603 0.95105743 -1.17556763 -1.30901909 0.5 -1.17556381 -1.53884602
		 0 -1.17556763 -1.61803913 -0.5 -1.17556381 -1.53884602 -0.95105648 -1.17556763 -1.30901814
		 -1.30901909 -1.17556381 -0.95106125 -1.53884125 -1.17556763 -0.50000095 -1.61803436 -1.17556763 -4.7683716e-06
		 -1.53884315 -1.17556763 0.49999905 -1.30901814 -1.17556381 0.95105553 -0.95105743 -1.17556763 1.30901337
		 -0.5 -1.17556381 1.53884029 0 -1.17556763 1.61803246 0.5 -1.17556381 1.53884029 0.95105553 -1.17556763 1.30901146
		 1.30901718 -1.17556763 0.95105648 1.53884125 -1.17556763 0.49999809 1.61803436 -1.17556763 -4.7683716e-06
		 1.69479752 -0.90797424 -0.55067348 1.441679 -0.90797424 -1.04744339 1.047441483 -0.90797424 -1.44168186
		 0.55067253 -0.90797424 -1.69479847 0 -0.90798187 -1.78201771 -0.55067253 -0.90798187 -1.69479847
		 -1.047440529 -0.90798187 -1.44167995 -1.44167995 -0.90797806 -1.047444344 -1.69479752 -0.90797424 -0.55067348
		 -1.78201199 -0.90798187 -9.5367432e-07 -1.69479561 -0.90797424 0.55066776 -1.441679 -0.90797424 1.047438622
		 -1.047441483 -0.90797806 1.44167614 -0.55067253 -0.90797424 1.69479275 0 -0.90797424 1.78201199
		 0.55067253 -0.90797424 1.69479084 1.047441483 -0.90797424 1.44167519 1.441679 -0.90797806 1.047439575
		 1.6947937 -0.90797424 0.55066872 1.78201294 -0.90797424 -2.8610229e-06 1.80901909 -0.61803436 -0.58778667
		 1.53884315 -0.61803055 -1.11803627 1.11803436 -0.61802673 -1.53884602 0.58778572 -0.61802673 -1.80902195
		 0 -0.61802673 -1.90211773 -0.58778572 -0.61803055 -1.80902195 -1.11803436 -0.61802673 -1.53884602
		 -1.53884125 -0.61803055 -1.11803532 -1.80901814 -0.61803055 -0.58778858 -1.90211201 -0.61803436 -1.9073486e-06
		 -1.80901718 -0.61803436 0.58778286 -1.53884125 -0.61802673 1.1180315 -1.11803436 -0.61803436 1.5388422
		 -0.58778572 -0.61802673 1.80901623 0 -0.61802673 1.90211201 0.58778763 -0.61803436 1.80901623
		 1.11803436 -0.61803055 1.5388422 1.53884125 -0.61802673 1.11803246 1.80901718 -0.61803055 0.58778191
		 1.90211296 -0.61803436 -4.7683716e-06 1.87869644 -0.31286621 -0.61042881 1.59811401 -0.3128624 -1.1611042
		 1.16109848 -0.31286621 -1.59811878 0.61042595 -0.3128624 -1.87870026 0 -0.31286621 -1.97538185
		 -0.61042404 -0.31286621 -1.8786993;
	setAttr ".vt[166:331]" -1.16109848 -0.3128624 -1.59811878 -1.59811401 -0.3128624 -1.16110134
		 -1.87869644 -0.3128624 -0.61042881 -1.97537708 -0.31286621 -2.8610229e-06 -1.87869453 -0.3128624 0.61042404
		 -1.59811306 -0.31286621 1.16109562 -1.16109848 -0.3128624 1.59811115 -0.61042595 -0.31286621 1.87869263
		 0 -0.31286621 1.97537613 0.61042404 -0.3128624 1.87869167 1.16109848 -0.31286621 1.59810925
		 1.59811401 -0.3128624 1.16109562 1.87869644 -0.31286621 0.61042309 1.97537613 -0.31286621 -2.8610229e-06
		 1.90211487 3.8146973e-06 -0.61803627 1.61803627 0 -1.1755724 1.17557144 3.8146973e-06 -1.61803913
		 0.61803436 0 -1.90211678 0 3.8146973e-06 -2.000003814697 -0.61803436 0 -1.90211678
		 -1.17556953 0 -1.61803913 -1.61803436 7.6293945e-06 -1.17557335 -1.90211391 3.8146973e-06 -0.61803532
		 -2 7.6293945e-06 -3.8146973e-06 -1.90211296 0 0.61803341 -1.61803436 7.6293945e-06 1.17556858
		 -1.17557144 0 1.61802959 -0.61803436 0 1.90211296 0 7.6293945e-06 1.99999905 0.61803436 3.8146973e-06 1.90211105
		 1.17557144 3.8146973e-06 1.6180315 1.61803436 7.6293945e-06 1.17556477 1.90211296 0 0.61803246
		 2 3.8146973e-06 -2.8610229e-06 1.87869644 0.31287766 -0.61043072 1.59811401 0.31287384 -1.16110134
		 1.16109848 0.31287384 -1.59811592 0.61042404 0.31287384 -1.8786993 0 0.31287384 -1.97537994
		 -0.61042595 0.31287384 -1.87870026 -1.16109753 0.31287766 -1.59811783 -1.59811401 0.31286621 -1.16110039
		 -1.87869453 0.31287003 -0.61043072 -1.97537804 0.31287384 -1.9073486e-06 -1.87869358 0.31287003 0.61042404
		 -1.59811401 0.31287384 1.16109657 -1.16109657 0.31287384 1.59811115 -0.61042595 0.31287384 1.87869167
		 0 0.31287003 1.97537327 0.61042404 0.31287766 1.87869263 1.16109848 0.31287384 1.59810829
		 1.59811401 0.31287003 1.16109753 1.87869453 0.31287003 0.61042309 1.97537613 0.31287384 -1.9073486e-06
		 1.80901909 0.61803436 -0.58778572 1.53884315 0.61803818 -1.11803722 1.11803436 0.61803818 -1.53884792
		 0.58778572 0.61803818 -1.8090229 0 0.61803818 -1.90211773 -0.58778572 0.61803818 -1.8090229
		 -1.11803436 0.61803436 -1.53884697 -1.53884125 0.61803436 -1.11803532 -1.80901909 0.61803818 -0.58778667
		 -1.90211296 0.61804199 -4.7683716e-06 -1.80901909 0.61803436 0.58777905 -1.53884125 0.61803818 1.11802959
		 -1.11803436 0.61804199 1.53884029 -0.58778572 0.61804199 1.80901527 0 0.61804199 1.90211105
		 0.58778381 0.61803436 1.80901718 1.11803436 0.61803436 1.5388422 1.53884125 0.61803818 1.11802959
		 1.80901718 0.61803436 0.58778095 1.90211296 0.61803818 -2.8610229e-06 1.69479752 0.90798187 -0.55067348
		 1.441679 0.90798569 -1.047442436 1.047441483 0.90798569 -1.44168186 0.55067253 0.90798569 -1.69479752
		 0 0.90798187 -1.78201771 -0.55067253 0.90798187 -1.69479942 -1.047441483 0.90798187 -1.44168186
		 -1.44168091 0.90798569 -1.04744339 -1.69479656 0.90798569 -0.55067348 -1.78201294 0.9079895 -4.7683716e-06
		 -1.69479561 0.90798187 0.55066681 -1.44168091 0.90798569 1.047436714 -1.047442436 0.9079895 1.44167614
		 -0.55067253 0.90798569 1.69479275 0 0.9079895 1.78201103 0.55067253 0.90798569 1.6947937
		 1.047441483 0.9079895 1.44167423 1.441679 0.90798569 1.047436714 1.69479561 0.9079895 0.55066776
		 1.78201294 0.90798569 -2.8610229e-06 1.53884506 1.17557907 -0.50000477 1.30901718 1.17557907 -0.95106411
		 0.95105743 1.17557526 -1.30901909 0.5 1.17557526 -1.53884602 0 1.17557907 -1.61803913
		 -0.5 1.17557526 -1.53884602 -0.95105743 1.17557907 -1.30902004 -1.30901718 1.17557907 -0.95106411
		 -1.53884315 1.17557526 -0.50000477 -1.61803436 1.17557526 -9.5367432e-07 -1.5388422 1.17557907 0.49999619
		 -1.30901718 1.17557526 0.95105457 -0.95105743 1.17557526 1.30901241 -0.5 1.17557526 1.53884029
		 0 1.17557907 1.61803341 0.5 1.17557526 1.53884029 0.95105743 1.17557526 1.30901241
		 1.30901718 1.17557526 0.95105457 1.53884125 1.17557907 0.49999619 1.61803436 1.17557526 -9.5367432e-07
		 1.34499741 1.41421509 -0.43701935 1.14412308 1.4142189 -0.83125591 0.83125496 1.4142189 -1.14412403
		 0.43701553 1.4142189 -1.34500027 0 1.4142189 -1.41421509 -0.43701553 1.4142189 -1.34500027
		 -0.83125401 1.4142189 -1.14412403 -1.14412403 1.4142189 -0.83125591 -1.34499741 1.4142189 -0.43701839
		 -1.41421509 1.41421509 -3.8146973e-06 -1.34499741 1.41421509 0.43701458 -1.14412308 1.4142189 0.83124924
		 -0.83125401 1.4142189 1.14411831 -0.43701553 1.41421509 1.34499264 0 1.4142189 1.41420937
		 0.43701553 1.41421509 1.34499264 0.83125496 1.41421509 1.14411831 1.14412308 1.4142189 0.8312521
		 1.34499741 1.41421509 0.43701458 1.41421318 1.41421509 -4.7683716e-06 1.11803627 1.61803818 -0.36327553
		 0.95105743 1.61804199 -0.69098759 0.69098473 1.61803818 -0.9510622 0.36327171 1.61803436 -1.11803532
		 0 1.61803436 -1.1755724 -0.36326981 1.61803436 -1.11803532 -0.69098282 1.61803818 -0.9510603
		 -0.95105553 1.61803818 -0.69098759 -1.11803436 1.61803436 -0.36327457 -1.17557144 1.61803818 -9.5367432e-07
		 -1.11803436 1.61803436 0.36326694 -0.95105743 1.61803818 0.690979 -0.69098282 1.61804199 0.95105553
		 -0.36327171 1.61803818 1.11802959 0 1.61803818 1.17556572 0.36327171 1.61803818 1.11802959
		 0.69098282 1.61803436 0.95105648 0.95105743 1.61803818 0.69097996 1.11803436 1.61803818 0.36326694
		 1.17557144 1.61803818 -9.5367432e-07 0.86354256 1.78201675 -0.28058624 0.73457336 1.78202057 -0.53369904
		 0.53369904 1.78201294 -0.73457336 0.28058243 1.78202057 -0.86354542 0 1.78201294 -0.90798283
		 -0.28058243 1.78201675 -0.86354733 -0.53369713 1.78201294 -0.73457623 -0.73457146 1.78201675 -0.53369904
		 -0.8635397 1.78201294 -0.28058529 -0.90797997 1.78202057 -1.9073486e-06 -0.8635397 1.78201675 0.28058052
		 -0.73457241 1.78201294 0.53369617;
	setAttr ".vt[332:381]" -0.53369904 1.78201675 0.73457146 -0.28058052 1.78202057 0.8635397
		 0 1.78201675 0.90798092 0.28058243 1.78201294 0.8635416 0.53369904 1.78201675 0.73457146
		 0.73457146 1.78202057 0.53369617 0.86354065 1.78202057 0.28057957 0.90797997 1.78202057 -1.9073486e-06
		 0.58778572 1.90211487 -0.19098759 0.5 1.90211868 -0.36327457 0.36327171 1.90211487 -0.50000572
		 0.19098282 1.90211487 -0.58779049 0 1.90211487 -0.61803532 -0.19098282 1.90211868 -0.58778858
		 -0.36326981 1.90211487 -0.50000572 -0.5 1.90211487 -0.36327457 -0.58778572 1.90211868 -0.19098759
		 -0.61803532 1.90211868 -3.8146973e-06 -0.58778477 1.90211868 0.19098091 -0.5 1.90211868 0.36326694
		 -0.36327171 1.90211487 0.49999428 -0.19098282 1.90211487 0.58778477 0 1.90211868 0.61802959
		 0.19098282 1.90211868 0.58778286 0.36327171 1.90211487 0.49999523 0.5 1.90211487 0.36326694
		 0.58778572 1.90211868 0.19098186 0.61803436 1.90211868 -9.5367432e-07 0.29755783 1.97537994 -0.096684456
		 0.25311661 1.97538376 -0.18390274 0.18389893 1.97537994 -0.25311947 0.096681595 1.97537994 -0.29755878
		 0 1.97538376 -0.31287193 -0.096681595 1.97538376 -0.29755878 -0.18389893 1.97538376 -0.25311947
		 -0.25311661 1.97537994 -0.18390465 -0.29755592 1.97537994 -0.096686363 -0.31286812 1.97537994 -4.7683716e-06
		 -0.29755592 1.97538376 0.096676826 -0.25311661 1.97538376 0.18389797 -0.18389893 1.97537994 0.25311375
		 -0.096681595 1.97537994 0.29755306 0 1.97538376 0.31286716 0.096683502 1.97537994 0.29755306
		 0.18390083 1.97537994 0.25311375 0.25311661 1.97537994 0.18389893 0.29755592 1.97537994 0.096676826
		 0.31287003 1.97537994 -5.7220459e-06 0 -2 -4.7683716e-06 0 2 0;
	setAttr -s 780 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 0 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 1 241 242 1 242 243 1 243 244 1
		 244 245 1 245 246 1 246 247 1 247 248 1 248 249 1 249 250 1 250 251 1 251 252 1 252 253 1
		 253 254 1 254 255 1 255 256 1 256 257 1 257 258 1 258 259 1 259 240 1 260 261 1 261 262 1
		 262 263 1 263 264 1 264 265 1 265 266 1 266 267 1 267 268 1 268 269 1 269 270 1 270 271 1
		 271 272 1 272 273 1 273 274 1 274 275 1 275 276 1 276 277 1 277 278 1 278 279 1 279 260 1
		 280 281 1 281 282 1 282 283 1 283 284 1 284 285 1 285 286 1 286 287 1 287 288 1 288 289 1
		 289 290 1 290 291 1 291 292 1 292 293 1 293 294 1 294 295 1 295 296 1 296 297 1 297 298 1
		 298 299 1 299 280 1 300 301 1 301 302 1 302 303 1 303 304 1 304 305 1 305 306 1 306 307 1
		 307 308 1 308 309 1 309 310 1 310 311 1 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1
		 316 317 1 317 318 1 318 319 1 319 300 1 320 321 1 321 322 1 322 323 1 323 324 1 324 325 1
		 325 326 1 326 327 1 327 328 1 328 329 1 329 330 1 330 331 1 331 332 1;
	setAttr ".ed[332:497]" 332 333 1 333 334 1 334 335 1 335 336 1 336 337 1 337 338 1
		 338 339 1 339 320 1 340 341 1 341 342 1 342 343 1 343 344 1 344 345 1 345 346 1 346 347 1
		 347 348 1 348 349 1 349 350 1 350 351 1 351 352 1 352 353 1 353 354 1 354 355 1 355 356 1
		 356 357 1 357 358 1 358 359 1 359 340 1 360 361 1 361 362 1 362 363 1 363 364 1 364 365 1
		 365 366 1 366 367 1 367 368 1 368 369 1 369 370 1 370 371 1 371 372 1 372 373 1 373 374 1
		 374 375 1 375 376 1 376 377 1 377 378 1 378 379 1 379 360 1 0 20 1 1 21 1 2 22 1
		 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1 79 99 1
		 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1;
	setAttr ".ed[498:663]" 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1
		 124 144 1 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1
		 133 153 1 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1
		 142 162 1 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1
		 151 171 1 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1
		 160 180 1 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1
		 169 189 1 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1
		 178 198 1 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1
		 187 207 1 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1
		 196 216 1 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1
		 205 225 1 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1
		 214 234 1 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1
		 223 243 1 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1
		 232 252 1 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1 238 258 1 239 259 1 240 260 1
		 241 261 1 242 262 1 243 263 1 244 264 1 245 265 1 246 266 1 247 267 1 248 268 1 249 269 1
		 250 270 1 251 271 1 252 272 1 253 273 1 254 274 1 255 275 1 256 276 1 257 277 1 258 278 1
		 259 279 1 260 280 1 261 281 1 262 282 1 263 283 1 264 284 1 265 285 1 266 286 1 267 287 1
		 268 288 1 269 289 1 270 290 1 271 291 1 272 292 1 273 293 1 274 294 1 275 295 1 276 296 1
		 277 297 1 278 298 1 279 299 1 280 300 1 281 301 1 282 302 1 283 303 1;
	setAttr ".ed[664:779]" 284 304 1 285 305 1 286 306 1 287 307 1 288 308 1 289 309 1
		 290 310 1 291 311 1 292 312 1 293 313 1 294 314 1 295 315 1 296 316 1 297 317 1 298 318 1
		 299 319 1 300 320 1 301 321 1 302 322 1 303 323 1 304 324 1 305 325 1 306 326 1 307 327 1
		 308 328 1 309 329 1 310 330 1 311 331 1 312 332 1 313 333 1 314 334 1 315 335 1 316 336 1
		 317 337 1 318 338 1 319 339 1 320 340 1 321 341 1 322 342 1 323 343 1 324 344 1 325 345 1
		 326 346 1 327 347 1 328 348 1 329 349 1 330 350 1 331 351 1 332 352 1 333 353 1 334 354 1
		 335 355 1 336 356 1 337 357 1 338 358 1 339 359 1 340 360 1 341 361 1 342 362 1 343 363 1
		 344 364 1 345 365 1 346 366 1 347 367 1 348 368 1 349 369 1 350 370 1 351 371 1 352 372 1
		 353 373 1 354 374 1 355 375 1 356 376 1 357 377 1 358 378 1 359 379 1 380 0 1 380 1 1
		 380 2 1 380 3 1 380 4 1 380 5 1 380 6 1 380 7 1 380 8 1 380 9 1 380 10 1 380 11 1
		 380 12 1 380 13 1 380 14 1 380 15 1 380 16 1 380 17 1 380 18 1 380 19 1 360 381 1
		 361 381 1 362 381 1 363 381 1 364 381 1 365 381 1 366 381 1 367 381 1 368 381 1 369 381 1
		 370 381 1 371 381 1 372 381 1 373 381 1 374 381 1 375 381 1 376 381 1 377 381 1 378 381 1
		 379 381 1;
	setAttr -s 400 -ch 1560 ".fc[0:399]" -type "polyFaces" 
		f 4 0 381 -21 -381
		mu 0 4 0 1 2 3
		f 4 1 382 -22 -382
		mu 0 4 1 4 5 2
		f 4 2 383 -23 -383
		mu 0 4 4 6 7 5
		f 4 3 384 -24 -384
		mu 0 4 6 8 9 7
		f 4 4 385 -25 -385
		mu 0 4 8 10 11 9
		f 4 5 386 -26 -386
		mu 0 4 10 12 13 11
		f 4 6 387 -27 -387
		mu 0 4 12 14 15 13
		f 4 7 388 -28 -388
		mu 0 4 14 16 17 15
		f 4 8 389 -29 -389
		mu 0 4 16 18 19 17
		f 4 9 390 -30 -390
		mu 0 4 18 20 21 19
		f 4 10 391 -31 -391
		mu 0 4 20 22 23 21
		f 4 11 392 -32 -392
		mu 0 4 22 24 25 23
		f 4 12 393 -33 -393
		mu 0 4 24 26 27 25
		f 4 13 394 -34 -394
		mu 0 4 26 28 29 27
		f 4 14 395 -35 -395
		mu 0 4 28 30 31 29
		f 4 15 396 -36 -396
		mu 0 4 30 32 33 31
		f 4 16 397 -37 -397
		mu 0 4 32 34 35 33
		f 4 17 398 -38 -398
		mu 0 4 34 36 37 35
		f 4 18 399 -39 -399
		mu 0 4 36 38 39 37
		f 4 19 380 -40 -400
		mu 0 4 38 0 3 39
		f 4 20 401 -41 -401
		mu 0 4 3 2 40 41
		f 4 21 402 -42 -402
		mu 0 4 2 5 42 40
		f 4 22 403 -43 -403
		mu 0 4 5 7 43 42
		f 4 23 404 -44 -404
		mu 0 4 7 9 44 43
		f 4 24 405 -45 -405
		mu 0 4 9 11 45 44
		f 4 25 406 -46 -406
		mu 0 4 11 13 46 45
		f 4 26 407 -47 -407
		mu 0 4 13 15 47 46
		f 4 27 408 -48 -408
		mu 0 4 15 17 48 47
		f 4 28 409 -49 -409
		mu 0 4 17 19 49 48
		f 4 29 410 -50 -410
		mu 0 4 19 21 50 49
		f 4 30 411 -51 -411
		mu 0 4 21 23 51 50
		f 4 31 412 -52 -412
		mu 0 4 23 25 52 51
		f 4 32 413 -53 -413
		mu 0 4 25 27 53 52
		f 4 33 414 -54 -414
		mu 0 4 27 29 54 53
		f 4 34 415 -55 -415
		mu 0 4 29 31 55 54
		f 4 35 416 -56 -416
		mu 0 4 31 33 56 55
		f 4 36 417 -57 -417
		mu 0 4 33 35 57 56
		f 4 37 418 -58 -418
		mu 0 4 35 37 58 57
		f 4 38 419 -59 -419
		mu 0 4 37 39 59 58
		f 4 39 400 -60 -420
		mu 0 4 39 3 41 59
		f 4 40 421 -61 -421
		mu 0 4 41 40 60 61
		f 4 41 422 -62 -422
		mu 0 4 40 42 62 60
		f 4 42 423 -63 -423
		mu 0 4 42 43 63 62
		f 4 43 424 -64 -424
		mu 0 4 43 44 64 63
		f 4 44 425 -65 -425
		mu 0 4 44 45 65 64
		f 4 45 426 -66 -426
		mu 0 4 45 46 66 65
		f 4 46 427 -67 -427
		mu 0 4 46 47 67 66
		f 4 47 428 -68 -428
		mu 0 4 47 48 68 67
		f 4 48 429 -69 -429
		mu 0 4 48 49 69 68
		f 4 49 430 -70 -430
		mu 0 4 49 50 70 69
		f 4 50 431 -71 -431
		mu 0 4 50 51 71 70
		f 4 51 432 -72 -432
		mu 0 4 51 52 72 71
		f 4 52 433 -73 -433
		mu 0 4 52 53 73 72
		f 4 53 434 -74 -434
		mu 0 4 53 54 74 73
		f 4 54 435 -75 -435
		mu 0 4 54 55 75 74
		f 4 55 436 -76 -436
		mu 0 4 55 56 76 75
		f 4 56 437 -77 -437
		mu 0 4 56 57 77 76
		f 4 57 438 -78 -438
		mu 0 4 57 58 78 77
		f 4 58 439 -79 -439
		mu 0 4 58 59 79 78
		f 4 59 420 -80 -440
		mu 0 4 59 41 61 79
		f 4 60 441 -81 -441
		mu 0 4 61 60 80 81
		f 4 61 442 -82 -442
		mu 0 4 60 62 82 80
		f 4 62 443 -83 -443
		mu 0 4 62 63 83 82
		f 4 63 444 -84 -444
		mu 0 4 63 64 84 83
		f 4 64 445 -85 -445
		mu 0 4 64 65 85 84
		f 4 65 446 -86 -446
		mu 0 4 65 66 86 85
		f 4 66 447 -87 -447
		mu 0 4 66 67 87 86
		f 4 67 448 -88 -448
		mu 0 4 67 68 88 87
		f 4 68 449 -89 -449
		mu 0 4 68 69 89 88
		f 4 69 450 -90 -450
		mu 0 4 69 70 90 89
		f 4 70 451 -91 -451
		mu 0 4 70 71 91 90
		f 4 71 452 -92 -452
		mu 0 4 71 72 92 91
		f 4 72 453 -93 -453
		mu 0 4 72 73 93 92
		f 4 73 454 -94 -454
		mu 0 4 73 74 94 93
		f 4 74 455 -95 -455
		mu 0 4 74 75 95 94
		f 4 75 456 -96 -456
		mu 0 4 75 76 96 95
		f 4 76 457 -97 -457
		mu 0 4 76 77 97 96
		f 4 77 458 -98 -458
		mu 0 4 77 78 98 97
		f 4 78 459 -99 -459
		mu 0 4 78 79 99 98
		f 4 79 440 -100 -460
		mu 0 4 79 61 81 99
		f 4 80 461 -101 -461
		mu 0 4 81 80 100 101
		f 4 81 462 -102 -462
		mu 0 4 80 82 102 100
		f 4 82 463 -103 -463
		mu 0 4 82 83 103 102
		f 4 83 464 -104 -464
		mu 0 4 83 84 104 103
		f 4 84 465 -105 -465
		mu 0 4 84 85 105 104
		f 4 85 466 -106 -466
		mu 0 4 85 86 106 105
		f 4 86 467 -107 -467
		mu 0 4 86 87 107 106
		f 4 87 468 -108 -468
		mu 0 4 87 88 108 107
		f 4 88 469 -109 -469
		mu 0 4 88 89 109 108
		f 4 89 470 -110 -470
		mu 0 4 89 90 110 109
		f 4 90 471 -111 -471
		mu 0 4 90 91 111 110
		f 4 91 472 -112 -472
		mu 0 4 91 92 112 111
		f 4 92 473 -113 -473
		mu 0 4 92 93 113 112
		f 4 93 474 -114 -474
		mu 0 4 93 94 114 113
		f 4 94 475 -115 -475
		mu 0 4 94 95 115 114
		f 4 95 476 -116 -476
		mu 0 4 95 96 116 115
		f 4 96 477 -117 -477
		mu 0 4 96 97 117 116
		f 4 97 478 -118 -478
		mu 0 4 97 98 118 117
		f 4 98 479 -119 -479
		mu 0 4 98 99 119 118
		f 4 99 460 -120 -480
		mu 0 4 99 81 101 119
		f 4 100 481 -121 -481
		mu 0 4 101 100 120 121
		f 4 101 482 -122 -482
		mu 0 4 100 102 122 120
		f 4 102 483 -123 -483
		mu 0 4 102 103 123 122
		f 4 103 484 -124 -484
		mu 0 4 103 104 124 123
		f 4 104 485 -125 -485
		mu 0 4 104 105 125 124
		f 4 105 486 -126 -486
		mu 0 4 105 106 126 125
		f 4 106 487 -127 -487
		mu 0 4 106 107 127 126
		f 4 107 488 -128 -488
		mu 0 4 107 108 128 127
		f 4 108 489 -129 -489
		mu 0 4 108 109 129 128
		f 4 109 490 -130 -490
		mu 0 4 109 110 130 129
		f 4 110 491 -131 -491
		mu 0 4 110 111 131 130
		f 4 111 492 -132 -492
		mu 0 4 111 112 132 131
		f 4 112 493 -133 -493
		mu 0 4 112 113 133 132
		f 4 113 494 -134 -494
		mu 0 4 113 114 134 133
		f 4 114 495 -135 -495
		mu 0 4 114 115 135 134
		f 4 115 496 -136 -496
		mu 0 4 115 116 136 135
		f 4 116 497 -137 -497
		mu 0 4 116 117 137 136
		f 4 117 498 -138 -498
		mu 0 4 117 118 138 137
		f 4 118 499 -139 -499
		mu 0 4 118 119 139 138
		f 4 119 480 -140 -500
		mu 0 4 119 101 121 139
		f 4 120 501 -141 -501
		mu 0 4 121 120 140 141
		f 4 121 502 -142 -502
		mu 0 4 120 122 142 140
		f 4 122 503 -143 -503
		mu 0 4 122 123 143 142
		f 4 123 504 -144 -504
		mu 0 4 123 124 144 143
		f 4 124 505 -145 -505
		mu 0 4 124 125 145 144
		f 4 125 506 -146 -506
		mu 0 4 125 126 146 145
		f 4 126 507 -147 -507
		mu 0 4 126 127 147 146
		f 4 127 508 -148 -508
		mu 0 4 127 128 148 147
		f 4 128 509 -149 -509
		mu 0 4 128 129 149 148
		f 4 129 510 -150 -510
		mu 0 4 129 130 150 149
		f 4 130 511 -151 -511
		mu 0 4 130 131 151 150
		f 4 131 512 -152 -512
		mu 0 4 131 132 152 151
		f 4 132 513 -153 -513
		mu 0 4 132 133 153 152
		f 4 133 514 -154 -514
		mu 0 4 133 134 154 153
		f 4 134 515 -155 -515
		mu 0 4 134 135 155 154
		f 4 135 516 -156 -516
		mu 0 4 135 136 156 155
		f 4 136 517 -157 -517
		mu 0 4 136 137 157 156
		f 4 137 518 -158 -518
		mu 0 4 137 138 158 157
		f 4 138 519 -159 -519
		mu 0 4 138 139 159 158
		f 4 139 500 -160 -520
		mu 0 4 139 121 141 159
		f 4 140 521 -161 -521
		mu 0 4 141 140 160 161
		f 4 141 522 -162 -522
		mu 0 4 140 142 162 160
		f 4 142 523 -163 -523
		mu 0 4 142 143 163 162
		f 4 143 524 -164 -524
		mu 0 4 143 144 164 163
		f 4 144 525 -165 -525
		mu 0 4 144 145 165 164
		f 4 145 526 -166 -526
		mu 0 4 145 146 166 165
		f 4 146 527 -167 -527
		mu 0 4 146 147 167 166
		f 4 147 528 -168 -528
		mu 0 4 147 148 168 167
		f 4 148 529 -169 -529
		mu 0 4 148 149 169 168
		f 4 149 530 -170 -530
		mu 0 4 149 150 170 169
		f 4 150 531 -171 -531
		mu 0 4 150 151 171 170
		f 4 151 532 -172 -532
		mu 0 4 151 152 172 171
		f 4 152 533 -173 -533
		mu 0 4 152 153 173 172
		f 4 153 534 -174 -534
		mu 0 4 153 154 174 173
		f 4 154 535 -175 -535
		mu 0 4 154 155 175 174
		f 4 155 536 -176 -536
		mu 0 4 155 156 176 175
		f 4 156 537 -177 -537
		mu 0 4 156 157 177 176
		f 4 157 538 -178 -538
		mu 0 4 157 158 178 177
		f 4 158 539 -179 -539
		mu 0 4 158 159 179 178
		f 4 159 520 -180 -540
		mu 0 4 159 141 161 179
		f 4 160 541 -181 -541
		mu 0 4 161 160 401 383
		f 4 161 542 -182 -542
		mu 0 4 160 162 400 401
		f 4 162 543 -183 -543
		mu 0 4 162 163 399 400
		f 4 163 544 -184 -544
		mu 0 4 163 164 398 399
		f 4 164 545 -185 -545
		mu 0 4 164 165 397 398
		f 4 165 546 -186 -546
		mu 0 4 165 166 396 397
		f 4 166 547 -187 -547
		mu 0 4 166 167 395 396
		f 4 167 548 -188 -548
		mu 0 4 167 168 394 395
		f 4 168 549 -189 -549
		mu 0 4 168 169 393 394
		f 4 169 550 -190 -550
		mu 0 4 169 170 392 393
		f 4 170 551 -191 -551
		mu 0 4 170 171 391 392
		f 4 171 552 -192 -552
		mu 0 4 171 172 390 391
		f 4 172 553 -193 -553
		mu 0 4 172 173 389 390
		f 4 173 554 -194 -554
		mu 0 4 173 174 388 389
		f 4 174 555 -195 -555
		mu 0 4 174 175 387 388
		f 4 175 556 -196 -556
		mu 0 4 175 176 386 387
		f 4 176 557 -197 -557
		mu 0 4 176 177 385 386
		f 4 177 558 -198 -558
		mu 0 4 177 178 384 385
		f 4 178 559 -199 -559
		mu 0 4 178 179 382 384
		f 4 179 540 -200 -560
		mu 0 4 179 161 383 382
		f 4 180 561 -201 -561
		mu 0 4 181 180 200 201
		f 4 181 562 -202 -562
		mu 0 4 180 182 202 200
		f 4 182 563 -203 -563
		mu 0 4 182 183 203 202
		f 4 183 564 -204 -564
		mu 0 4 183 184 204 203
		f 4 184 565 -205 -565
		mu 0 4 184 185 205 204
		f 4 185 566 -206 -566
		mu 0 4 185 186 206 205
		f 4 186 567 -207 -567
		mu 0 4 186 187 207 206
		f 4 187 568 -208 -568
		mu 0 4 187 188 208 207
		f 4 188 569 -209 -569
		mu 0 4 188 189 209 208
		f 4 189 570 -210 -570
		mu 0 4 189 190 210 209
		f 4 190 571 -211 -571
		mu 0 4 190 191 211 210
		f 4 191 572 -212 -572
		mu 0 4 191 192 212 211
		f 4 192 573 -213 -573
		mu 0 4 192 193 213 212
		f 4 193 574 -214 -574
		mu 0 4 193 194 214 213
		f 4 194 575 -215 -575
		mu 0 4 194 195 215 214
		f 4 195 576 -216 -576
		mu 0 4 195 196 216 215
		f 4 196 577 -217 -577
		mu 0 4 196 197 217 216
		f 4 197 578 -218 -578
		mu 0 4 197 198 218 217
		f 4 198 579 -219 -579
		mu 0 4 198 199 219 218
		f 4 199 560 -220 -580
		mu 0 4 199 181 201 219
		f 4 200 581 -221 -581
		mu 0 4 201 200 220 221
		f 4 201 582 -222 -582
		mu 0 4 200 202 222 220
		f 4 202 583 -223 -583
		mu 0 4 202 203 223 222
		f 4 203 584 -224 -584
		mu 0 4 203 204 224 223
		f 4 204 585 -225 -585
		mu 0 4 204 205 225 224
		f 4 205 586 -226 -586
		mu 0 4 205 206 226 225
		f 4 206 587 -227 -587
		mu 0 4 206 207 227 226
		f 4 207 588 -228 -588
		mu 0 4 207 208 228 227
		f 4 208 589 -229 -589
		mu 0 4 208 209 229 228
		f 4 209 590 -230 -590
		mu 0 4 209 210 230 229
		f 4 210 591 -231 -591
		mu 0 4 210 211 231 230
		f 4 211 592 -232 -592
		mu 0 4 211 212 232 231
		f 4 212 593 -233 -593
		mu 0 4 212 213 233 232
		f 4 213 594 -234 -594
		mu 0 4 213 214 234 233
		f 4 214 595 -235 -595
		mu 0 4 214 215 235 234
		f 4 215 596 -236 -596
		mu 0 4 215 216 236 235
		f 4 216 597 -237 -597
		mu 0 4 216 217 237 236
		f 4 217 598 -238 -598
		mu 0 4 217 218 238 237
		f 4 218 599 -239 -599
		mu 0 4 218 219 239 238
		f 4 219 580 -240 -600
		mu 0 4 219 201 221 239
		f 4 220 601 -241 -601
		mu 0 4 221 220 240 241
		f 4 221 602 -242 -602
		mu 0 4 220 222 242 240
		f 4 222 603 -243 -603
		mu 0 4 222 223 243 242
		f 4 223 604 -244 -604
		mu 0 4 223 224 244 243
		f 4 224 605 -245 -605
		mu 0 4 224 225 245 244
		f 4 225 606 -246 -606
		mu 0 4 225 226 246 245
		f 4 226 607 -247 -607
		mu 0 4 226 227 247 246
		f 4 227 608 -248 -608
		mu 0 4 227 228 248 247
		f 4 228 609 -249 -609
		mu 0 4 228 229 249 248
		f 4 229 610 -250 -610
		mu 0 4 229 230 250 249
		f 4 230 611 -251 -611
		mu 0 4 230 231 251 250
		f 4 231 612 -252 -612
		mu 0 4 231 232 252 251
		f 4 232 613 -253 -613
		mu 0 4 232 233 253 252
		f 4 233 614 -254 -614
		mu 0 4 233 234 254 253
		f 4 234 615 -255 -615
		mu 0 4 234 235 255 254
		f 4 235 616 -256 -616
		mu 0 4 235 236 256 255
		f 4 236 617 -257 -617
		mu 0 4 236 237 257 256
		f 4 237 618 -258 -618
		mu 0 4 237 238 258 257
		f 4 238 619 -259 -619
		mu 0 4 238 239 259 258
		f 4 239 600 -260 -620
		mu 0 4 239 221 241 259
		f 4 240 621 -261 -621
		mu 0 4 241 240 260 261
		f 4 241 622 -262 -622
		mu 0 4 240 242 262 260
		f 4 242 623 -263 -623
		mu 0 4 242 243 263 262
		f 4 243 624 -264 -624
		mu 0 4 243 244 264 263
		f 4 244 625 -265 -625
		mu 0 4 244 245 265 264
		f 4 245 626 -266 -626
		mu 0 4 245 246 266 265
		f 4 246 627 -267 -627
		mu 0 4 246 247 267 266
		f 4 247 628 -268 -628
		mu 0 4 247 248 268 267
		f 4 248 629 -269 -629
		mu 0 4 248 249 269 268
		f 4 249 630 -270 -630
		mu 0 4 249 250 270 269
		f 4 250 631 -271 -631
		mu 0 4 250 251 271 270
		f 4 251 632 -272 -632
		mu 0 4 251 252 272 271
		f 4 252 633 -273 -633
		mu 0 4 252 253 273 272
		f 4 253 634 -274 -634
		mu 0 4 253 254 274 273
		f 4 254 635 -275 -635
		mu 0 4 254 255 275 274
		f 4 255 636 -276 -636
		mu 0 4 255 256 276 275
		f 4 256 637 -277 -637
		mu 0 4 256 257 277 276
		f 4 257 638 -278 -638
		mu 0 4 257 258 278 277
		f 4 258 639 -279 -639
		mu 0 4 258 259 279 278
		f 4 259 620 -280 -640
		mu 0 4 259 241 261 279
		f 4 260 641 -281 -641
		mu 0 4 261 260 280 281
		f 4 261 642 -282 -642
		mu 0 4 260 262 282 280
		f 4 262 643 -283 -643
		mu 0 4 262 263 283 282
		f 4 263 644 -284 -644
		mu 0 4 263 264 284 283
		f 4 264 645 -285 -645
		mu 0 4 264 265 285 284
		f 4 265 646 -286 -646
		mu 0 4 265 266 286 285
		f 4 266 647 -287 -647
		mu 0 4 266 267 287 286
		f 4 267 648 -288 -648
		mu 0 4 267 268 288 287
		f 4 268 649 -289 -649
		mu 0 4 268 269 289 288
		f 4 269 650 -290 -650
		mu 0 4 269 270 290 289
		f 4 270 651 -291 -651
		mu 0 4 270 271 291 290
		f 4 271 652 -292 -652
		mu 0 4 271 272 292 291
		f 4 272 653 -293 -653
		mu 0 4 272 273 293 292
		f 4 273 654 -294 -654
		mu 0 4 273 274 294 293
		f 4 274 655 -295 -655
		mu 0 4 274 275 295 294
		f 4 275 656 -296 -656
		mu 0 4 275 276 296 295
		f 4 276 657 -297 -657
		mu 0 4 276 277 297 296
		f 4 277 658 -298 -658
		mu 0 4 277 278 298 297
		f 4 278 659 -299 -659
		mu 0 4 278 279 299 298
		f 4 279 640 -300 -660
		mu 0 4 279 261 281 299
		f 4 280 661 -301 -661
		mu 0 4 281 280 300 301
		f 4 281 662 -302 -662
		mu 0 4 280 282 302 300
		f 4 282 663 -303 -663
		mu 0 4 282 283 303 302
		f 4 283 664 -304 -664
		mu 0 4 283 284 304 303
		f 4 284 665 -305 -665
		mu 0 4 284 285 305 304
		f 4 285 666 -306 -666
		mu 0 4 285 286 306 305
		f 4 286 667 -307 -667
		mu 0 4 286 287 307 306
		f 4 287 668 -308 -668
		mu 0 4 287 288 308 307
		f 4 288 669 -309 -669
		mu 0 4 288 289 309 308
		f 4 289 670 -310 -670
		mu 0 4 289 290 310 309
		f 4 290 671 -311 -671
		mu 0 4 290 291 311 310
		f 4 291 672 -312 -672
		mu 0 4 291 292 312 311
		f 4 292 673 -313 -673
		mu 0 4 292 293 313 312
		f 4 293 674 -314 -674
		mu 0 4 293 294 314 313
		f 4 294 675 -315 -675
		mu 0 4 294 295 315 314
		f 4 295 676 -316 -676
		mu 0 4 295 296 316 315
		f 4 296 677 -317 -677
		mu 0 4 296 297 317 316
		f 4 297 678 -318 -678
		mu 0 4 297 298 318 317
		f 4 298 679 -319 -679
		mu 0 4 298 299 319 318
		f 4 299 660 -320 -680
		mu 0 4 299 281 301 319
		f 4 300 681 -321 -681
		mu 0 4 301 300 320 321
		f 4 301 682 -322 -682
		mu 0 4 300 302 322 320
		f 4 302 683 -323 -683
		mu 0 4 302 303 323 322
		f 4 303 684 -324 -684
		mu 0 4 303 304 324 323
		f 4 304 685 -325 -685
		mu 0 4 304 305 325 324
		f 4 305 686 -326 -686
		mu 0 4 305 306 326 325
		f 4 306 687 -327 -687
		mu 0 4 306 307 327 326
		f 4 307 688 -328 -688
		mu 0 4 307 308 328 327
		f 4 308 689 -329 -689
		mu 0 4 308 309 329 328
		f 4 309 690 -330 -690
		mu 0 4 309 310 330 329
		f 4 310 691 -331 -691
		mu 0 4 310 311 331 330
		f 4 311 692 -332 -692
		mu 0 4 311 312 332 331
		f 4 312 693 -333 -693
		mu 0 4 312 313 333 332
		f 4 313 694 -334 -694
		mu 0 4 313 314 334 333
		f 4 314 695 -335 -695
		mu 0 4 314 315 335 334
		f 4 315 696 -336 -696
		mu 0 4 315 316 336 335
		f 4 316 697 -337 -697
		mu 0 4 316 317 337 336
		f 4 317 698 -338 -698
		mu 0 4 317 318 338 337
		f 4 318 699 -339 -699
		mu 0 4 318 319 339 338
		f 4 319 680 -340 -700
		mu 0 4 319 301 321 339
		f 4 320 701 -341 -701
		mu 0 4 321 320 340 341
		f 4 321 702 -342 -702
		mu 0 4 320 322 342 340
		f 4 322 703 -343 -703
		mu 0 4 322 323 343 342
		f 4 323 704 -344 -704
		mu 0 4 323 324 344 343
		f 4 324 705 -345 -705
		mu 0 4 324 325 345 344
		f 4 325 706 -346 -706
		mu 0 4 325 326 346 345
		f 4 326 707 -347 -707
		mu 0 4 326 327 347 346
		f 4 327 708 -348 -708
		mu 0 4 327 328 348 347
		f 4 328 709 -349 -709
		mu 0 4 328 329 349 348
		f 4 329 710 -350 -710
		mu 0 4 329 330 350 349
		f 4 330 711 -351 -711
		mu 0 4 330 331 351 350
		f 4 331 712 -352 -712
		mu 0 4 331 332 352 351
		f 4 332 713 -353 -713
		mu 0 4 332 333 353 352
		f 4 333 714 -354 -714
		mu 0 4 333 334 354 353
		f 4 334 715 -355 -715
		mu 0 4 334 335 355 354
		f 4 335 716 -356 -716
		mu 0 4 335 336 356 355
		f 4 336 717 -357 -717
		mu 0 4 336 337 357 356
		f 4 337 718 -358 -718
		mu 0 4 337 338 358 357
		f 4 338 719 -359 -719
		mu 0 4 338 339 359 358
		f 4 339 700 -360 -720
		mu 0 4 339 321 341 359
		f 4 340 721 -361 -721
		mu 0 4 341 340 360 361
		f 4 341 722 -362 -722
		mu 0 4 340 342 362 360
		f 4 342 723 -363 -723
		mu 0 4 342 343 363 362
		f 4 343 724 -364 -724
		mu 0 4 343 344 364 363
		f 4 344 725 -365 -725
		mu 0 4 344 345 365 364
		f 4 345 726 -366 -726
		mu 0 4 345 346 366 365
		f 4 346 727 -367 -727
		mu 0 4 346 347 367 366
		f 4 347 728 -368 -728
		mu 0 4 347 348 368 367
		f 4 348 729 -369 -729
		mu 0 4 348 349 369 368
		f 4 349 730 -370 -730
		mu 0 4 349 350 370 369
		f 4 350 731 -371 -731
		mu 0 4 350 351 371 370
		f 4 351 732 -372 -732
		mu 0 4 351 352 372 371
		f 4 352 733 -373 -733
		mu 0 4 352 353 373 372
		f 4 353 734 -374 -734
		mu 0 4 353 354 374 373
		f 4 354 735 -375 -735
		mu 0 4 354 355 375 374
		f 4 355 736 -376 -736
		mu 0 4 355 356 376 375
		f 4 356 737 -377 -737
		mu 0 4 356 357 377 376
		f 4 357 738 -378 -738
		mu 0 4 357 358 378 377
		f 4 358 739 -379 -739
		mu 0 4 358 359 379 378
		f 4 359 720 -380 -740
		mu 0 4 359 341 361 379
		f 3 -1 -741 741
		mu 0 3 1 0 380
		f 3 -2 -742 742
		mu 0 3 4 1 380
		f 3 -3 -743 743
		mu 0 3 6 4 380
		f 3 -4 -744 744
		mu 0 3 8 6 380
		f 3 -5 -745 745
		mu 0 3 10 8 380
		f 3 -6 -746 746
		mu 0 3 12 10 380
		f 3 -7 -747 747
		mu 0 3 14 12 380
		f 3 -8 -748 748
		mu 0 3 16 14 380
		f 3 -9 -749 749
		mu 0 3 18 16 380
		f 3 -10 -750 750
		mu 0 3 20 18 380
		f 3 -11 -751 751
		mu 0 3 22 20 380
		f 3 -12 -752 752
		mu 0 3 24 22 380
		f 3 -13 -753 753
		mu 0 3 26 24 380
		f 3 -14 -754 754
		mu 0 3 28 26 380
		f 3 -15 -755 755
		mu 0 3 30 28 380
		f 3 -16 -756 756
		mu 0 3 32 30 380
		f 3 -17 -757 757
		mu 0 3 34 32 380
		f 3 -18 -758 758
		mu 0 3 36 34 380
		f 3 -19 -759 759
		mu 0 3 38 36 380
		f 3 -20 -760 740
		mu 0 3 0 38 380
		f 3 360 761 -761
		mu 0 3 361 360 381
		f 3 361 762 -762
		mu 0 3 360 362 381
		f 3 362 763 -763
		mu 0 3 362 363 381
		f 3 363 764 -764
		mu 0 3 363 364 381
		f 3 364 765 -765
		mu 0 3 364 365 381
		f 3 365 766 -766
		mu 0 3 365 366 381
		f 3 366 767 -767
		mu 0 3 366 367 381
		f 3 367 768 -768
		mu 0 3 367 368 381
		f 3 368 769 -769
		mu 0 3 368 369 381
		f 3 369 770 -770
		mu 0 3 369 370 381
		f 3 370 771 -771
		mu 0 3 370 371 381
		f 3 371 772 -772
		mu 0 3 371 372 381
		f 3 372 773 -773
		mu 0 3 372 373 381
		f 3 373 774 -774
		mu 0 3 373 374 381
		f 3 374 775 -775
		mu 0 3 374 375 381
		f 3 375 776 -776
		mu 0 3 375 376 381
		f 3 376 777 -777
		mu 0 3 376 377 381
		f 3 377 778 -778
		mu 0 3 377 378 381
		f 3 378 779 -779
		mu 0 3 378 379 381
		f 3 379 760 -780
		mu 0 3 379 361 381;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Cloak" -p "Grp_Geo";
	rename -uid "C3D5B126-44A6-87E8-9187-A9BBD3B877AE";
	setAttr ".rp" -type "double3" -4.4408920985006262e-16 0 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -4.4408920985006262e-16 0 -4.4408920985006262e-16 ;
createNode mesh -n "CloakShape" -p "Cloak";
	rename -uid "6A8CD372-4519-3A85-1CE7-FF9E235C50CB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 2.0867431657247115 0.48505216836929321 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 398 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 1.18645775 0.9610852 -0.29422233
		 0.91824716 -0.28414062 0.93301845 1.17885411 0.9740212 3.1418643 0.7876237 1.16293252
		 0.72338921 0.054784685 0.83718175 0.13917345 0.82320535 0.14685678 0.87732095 0.068273127
		 0.88411987 0.020881176 0.74364305 1.60157585 0.56487876 1.71721494 0.53058314 0.094111443
		 0.6649847 0.035142422 0.78840053 0.1226666 0.75883073 -0.18987116 0.90421093 -0.092947096
		 0.87276584 -0.078935772 0.91414696 -0.16900286 0.93932074 -0.21047714 0.8711167 1.28256071
		 0.66429043 1.39939439 0.62759084 -0.12099269 0.82558787 -0.20249638 0.88919616 -0.11046121
		 0.848993 0.22221261 0.81017905 0.31155407 0.79886198 0.31323159 0.86329508 0.22774047
		 0.86870527 0.18289226 0.60672379 1.83338201 0.50688499 1.98060262 0.45142207 0.28541046
		 0.56204164 0.21588778 0.7319628 0.3059845 0.70721376 1.14166093 1.025007606 -0.2433438
		 1.0051238537 -0.241864 1.024847269 -0.33229759 1.0503757 -0.076650918 0.99019265
		 -0.15175721 1.001172781 -0.15115324 0.9778707 -0.074729949 0.95639503 0.14165729
		 1.0017430782 0.071381509 0.98771477 0.080268532 0.9392041 0.15236714 0.94272351 0.30601633
		 1.034824967 0.22085819 1.018455505 0.23308808 0.94619763 0.31701741 0.9490937 -0.0051858723
		 0.98381633 -0.0017918348 0.94484663 1.49832582 0.5964545 -0.049886495 0.79378515
		 -0.039806753 0.81888926 -0.019106388 0.8508566 -0.0070471466 0.8966825 -0.2751151
		 0.94598049 -0.25710544 0.9783982 1.15908194 1.000623703 0.98649025 0.61481822 1.20840049
		 2.1046598 1.11182177 0.5528332 1.0016714334 0.60945064 1.2153753 0.51405877 1.10424376
		 2.028084755 1.34620321 0.45560861 0.99374139 1.8976382 1.45295823 0.41055772 0.95251638
		 1.76286304 1.66338253 0.34406543 1.54406941 0.3826462 0.96252656 1.65215886 1.015160561
		 1.51218891 1.81676435 0.29103476 1.14056575 1.34974742 1.98530567 0.22818321 1.32959473
		 1.25432539 0.41948134 1.042581916 0.40307423 0.95055246 2.097785473 0.13408875 2.074664116
		 0.14268258 1.406937 1.15955019 1.43353748 1.15223789 2.099351883 0.44479606 0.39976531
		 0.53352034 0.40065938 0.64647347 0.40099835 0.6892879 0.40124273 0.72011268 0.40184343
		 0.79579818 0.4020471 0.82145339 0.40241 0.86711192 1.41012549 1.98345387 1.31054461
		 1.95979357 1.28431499 1.99563575 1.025141001 0.72193784 1.047286153 0.72831517 1.15676224
		 0.67846185 1.26654994 0.62545782 1.22700989 1.9060235 1.19595397 1.93626022 1.38609207
		 0.585379 1.18635345 1.83461225 1.13851643 1.85116148 1.488729 0.54965395 1.1690346
		 1.76668847 1.11496603 1.76586795 1.58738697 0.51782393 1.70524609 0.48471346 1.17572594
		 1.69262862 1.2075156 1.61541748 1.15955305 1.58919263 1.12249589 1.68251383 1.83393073
		 0.45040712 1.26341116 1.5563513 1.23295331 1.50453484 1.98775315 0.39650577 1.3495295
		 1.48383462 1.34382045 1.42655504 2.099150896 0.38956299 1.43462121 1.47685862 1.43354726
		 1.41772842 2.098940372 0.33408633 1.99135423 0.3405973 1.99103963 0.28429306 2.09870863
		 0.27932221 1.33876503 1.36916876 1.43333149 1.35992575 1.43339562 1.30204546 1.33409321
		 1.31174302 1.20228732 1.4527837 1.17147195 1.40118134 1.11147487 1.56336248 1.063327551
		 1.53772652 1.069234252 1.67241585 1.01590836 1.66230094 1.060881019 1.76490366 1.0067267418
		 1.76387012 1.090371609 1.86701 1.042069674 1.88242197 1.16521966 1.96686089 1.13465905
		 1.99750578 1.25856459 2.031713724 1.23330557 2.068093061 1.018520713 0.68473947 1.0062502623
		 0.64887613 1.038931847 0.68726993 1.023825645 0.64787018 1.14450252 0.63509238 1.12876379
		 0.59325665 1.25036204 0.58789372 1.23314178 0.55074275 1.37297165 0.54161936 1.35953283
		 0.49836913 1.47771168 0.50303328 1.4658699 0.45671496 1.57391393 0.47250995 1.5594548
		 0.42741138 1.69229317 0.43753022 1.67834103 0.39067346 1.83112025 0.39569348 1.8252939
		 0.34259599 1.43355048 1.24404049 2.098435402 0.22668517 2.042152405 0.17274737 2.098166466
		 0.18520635 1.99328232 0.17818502 1.31659067 1.2004478 1.98972416 0.14591148 1.99846756
		 0.16952679 1.4335537 1.20224094 1.37650883 1.19517493 1.17234027 0.98317575 1.089919806
		 0.92210901 1.099765658 0.90717936 3.027254105 0.73588037 0.74951482 0.83166522 0.73677415
		 0.87881118 0.65809274 0.87326097 0.66491532 0.81903046 0.78193116 0.7376017 0.70746356
		 0.66011691 2.48149514 0.52770799 2.59612966 0.56133103 0.76838088 0.782579 0.68039846
		 0.75440228 0.99520409 0.89480227 0.97489643 0.93023837 0.88444084 0.90649724 0.89779282
		 0.86489952 1.015282393 0.86138576 0.92508662 0.81728363 2.79271698 0.63224876 2.90883732
		 0.67348784 1.0075893402 0.8795892 0.91492784 0.84085232 0.58167994 0.80732441 0.57708275
		 0.86593068 0.49151632 0.86187905 0.49216983 0.79742754 0.61777061 0.60327256 0.51455712
		 0.56022322 2.21805835 0.4503074 2.36546111 0.50474614 0.58676285 0.72901791 0.49628472
		 0.70570284 1.049107671 1.014596939 1.050273657 0.99485254 0.8833667 0.98256934 0.8809076
		 0.94880652 0.95766222 0.9690665 0.95863664 0.99235606 0.66527319 0.99758387 0.65362382
		 0.93874234 0.72565675 0.93407869 0.73531616 0.98244154 0.50146294 1.033272862 0.48909658
		 0.94772673 0.57296872 0.94349796 0.58634901 1.015552044 0.81181061 0.97732818 0.80779564
		 0.93841743 0.85348493 0.78661352 2.69636679 0.59461182 0.84380448 0.81187391 0.82361376
		 0.84416533 0.81228411 0.89017648 1.081101179 0.93521261 1.063608885 0.96791184 1.33618951
		 2.15206242 3.19124985 0.62580174 3.082530499 0.56669796 1.20865095 2.10366035 2.98020649
		 0.52560115 1.10440183 2.027211189 2.85167432 0.4655095 0.99374181 1.89689863 2.75196838
		 0.40562439 0.95235413 1.7621733 2.53456616 0.34127331 1.014695644 1.51142359 0.96223021
		 1.65145707 2.65469646 0.37916714 2.38088226 0.28890383 1.13990414 1.3488307 2.21168613
		 0.22691292 2.23159313 0.19400367 1.40604532 1.15831232;
	setAttr ".uvst[0].uvsp[250:397]" 2.12104654 0.14238924 3.16509891 0.73760426
		 1.28443372 1.99454439 1.31061995 1.95867074 3.03450489 0.69112521 3.14282465 0.74350703
		 2.92599297 0.63520288 1.19600105 1.93527591 1.22702038 1.90500176 2.80758286 0.59091306
		 1.13846064 1.85024655 1.18627751 1.83363998 2.70776844 0.54759848 1.11480737 1.76498199
		 1.16887665 1.76573718 2.49352074 0.48180878 2.61103773 0.5143441 1.17547882 1.69166923
		 1.12223649 1.68161869 1.15918088 1.58825314 1.2071749 1.6144197 2.36467481 0.44832128
		 1.23247886 1.50350666 1.26299918 1.55528617 2.21055603 0.39544711 1.34325159 1.42539299
		 1.34903002 1.4826653 2.20643878 0.28316379 2.20656013 0.3395355 1.33812702 1.36801267
		 1.33338571 1.31059241 1.20175028 1.45179248 1.17087257 1.40022731 1.11107159 1.56248069
		 1.062893152 1.53690314 1.068962455 1.67158508 1.015624523 1.66153479 1.060721159
		 1.76408279 1.0065655708 1.76311481 1.090335011 1.86615348 1.042051911 1.88162398
		 1.16530371 1.96591365 1.13477993 1.99659562 1.25872672 2.030653477 1.23351181 2.067063332
		 1.37268007 2.067633629 3.18573165 0.66512036 3.15211678 0.70268762 3.1681838 0.66367805
		 3.047845125 0.64809483 3.06461978 0.60668468 2.94328094 0.59824336 2.96152425 0.56170946
		 2.82202721 0.54828733 2.83678913 0.50650096 2.72073555 0.50024241 2.73518372 0.45285013
		 2.62542558 0.46895796 2.64039969 0.42384517 2.50643134 0.43471646 2.52006388 0.38794458
		 2.36718011 0.39364085 2.37266588 0.34052634 2.1540432 0.17210412 2.20296717 0.17695612
		 2.19764709 0.16834974 2.20600224 0.14457974 1.31574881 1.19931865 2.16466761 0.14172533
		 1.3756603 1.19397354 2.13123155 0.11695474 1.32610643 1.18826866 1.32881773 1.2531805
		 2.21914577 0.15696314 1.39126277 2.025604248 3.17257833 0.70063508 1.3543644 2.10975623
		 3.20192099 0.61379033 3.1674552 0.77926409 1.41002023 1.98469675 2.75372076 0.38803554
		 2.66011763 0.36101174 2.088434219 0.1085982 2.38342953 0.26145625 2.54144454 0.31735194
		 2.86236858 0.44617099 2.99052191 0.50741154 3.092973471 0.55194759 2.064021111 0.1174272
		 2.030254602 0.14158759 1.97676182 0.15847757 1.32696187 1.18941021 1.96862805 0.20316285
		 1.39110661 2.026824236 1.37247324 2.068831444 1.35410655 2.11093187 1.33588064 2.15321612
		 1.44757116 0.39396381 1.53809595 0.36456996 1.81405187 0.26360643 1.65631509 0.32020009
		 1.3369441 0.43512422 1.20544052 0.49565819 1.10173857 0.53783339 1.43439186 1.20351219
		 1.4344362 1.15350938 1.43433821 1.24531174 1.43412519 1.41899991 1.43397927 1.36119699
		 1.43411326 1.30331659 1.43411326 1.47558665 2.1653676 0.14078829 2.22803926 0.20165589
		 2.7671032 0.39368582 2.10670495 0.10851091 2.031016111 0.14263135 1.9648124 0.19568601
		 0.88053608 0.74139118 0.81527531 0.69216239 0.52539253 0.51195347 0.37088031 0.48966914
		 1.11208117 0.8877281 1.030869484 0.82685196 0.9504869 0.77755523 0.74581724 0.61845016
		 0.66150713 0.55141145 1.19603086 0.9394595 -0.077649236 0.74899608 -0.013177276 0.69873673
		 0.27381307 0.51394916 0.13834107 0.55556178 0.055103898 0.6239301 -0.14701816 0.78626627
		 -0.2266098 0.83683395 -0.3068451 0.89899361 1.021896362 0.76357412 1.047299147 0.77245665
		 3.20630741 0.63150883 0.99126244 0.5972116 -0.37223908 0.98633707 -0.36558053 0.99538708
		 -0.35204706 1.012622476 -0.38004705 0.9735235 -0.38996264 0.95205271 -0.33424035
		 1.036726594 1.13993526 1.038685918 0.42795336 0.48921606 0.38813627 1.042827725;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 319 ".pt";
	setAttr ".pt[0:165]" -type "float3"  6.2460542 11.187611 8.6274128 -4.4764247 
		11.187611 -2.0950661 -4.7374492 11.187611 -2.3560905 5.4252648 11.187611 7.8066235 
		-1.6432873 11.187611 0.73807144 5.4473157 11.187611 7.8286743 -2.8757627 11.187611 
		-0.49440399 6.1386189 11.187611 -2.9702225 4.5964303 11.187611 -0.8031292 4.8635755 
		11.187611 -1.1867599 6.0436273 11.187611 -2.9776173 9.2350121 11.187611 3.8498077 
		7.1460595 11.187611 3.4569645 7.5081773 11.187611 3.5068073 9.0855312 11.187611 3.8026295 
		0.93234086 11.187611 -4.9534245 1.3894792 11.187611 -1.2910784 1.3936429 11.187611 
		-1.897087 0.97286057 11.187611 -4.5553532 0.64412332 11.187611 -4.3770523 5.8799272 
		11.187611 -2.6177921 9.1025066 11.187611 3.9066257 5.4275174 11.187611 7.808876 7.1695752 
		11.187611 3.4719315 4.7800603 11.187611 -1.0914459 1.3696027 11.187611 -1.6968688 
		-2.0419195 11.187611 0.33943924 3.1062338 11.187611 -1.2855396 3.2202628 11.187611 
		-1.6941967 3.2619803 11.187611 -1.8246441 3.7685583 11.187611 -4.0831113 3.4576397 
		11.187611 -3.8790534 3.731632 11.187611 -4.3475347 6.8314252 11.187611 1.7524872 
		6.885386 11.187611 1.6515141 6.9669328 11.187611 1.5692921 8.7511463 11.187611 0.81665993 
		8.4924984 11.187611 1.0171871 8.8120384 11.187611 0.81484985 6.5778031 11.187611 
		5.6603756 6.6321034 11.187611 5.7104034 7.0779004 11.187611 5.917881 7.9845166 11.187611 
		6.3921127 8.1447182 11.187611 6.4742279 8.0757828 11.187611 6.4322243 3.4454517 11.187611 
		-2.9463637 5.4415135 11.187611 -1.9699669 7.8563504 11.187611 1.2412605 8.279108 
		11.187611 3.670042 7.3117833 11.187611 6.0528526 5.9844174 11.187611 8.3657761 5.8087583 
		11.187611 8.1901169 7.4301476 11.187611 6.1078243 8.0668335 11.187611 3.6127815 7.5102773 
		11.187611 1.34972 5.2095475 11.187611 -1.7118092 3.4105015 11.187611 -2.4867918 1.2702795 
		11.187611 -2.6764526 -3.5540731 11.187611 -1.1727144 1.1415257 11.187611 -3.2775345 
		-0.24467632 11.187611 -0.50203514 -0.45393154 11.187611 -0.90424538 -1.2153012 11.187611 
		-1.7777443 -1.6161419 11.187611 -2.5065804 -1.9653335 11.187611 -3.8360462 -1.9835984 
		11.187611 -3.6007977 -2.116102 11.187611 -4.1655979 -1.3035656 11.187611 -2.6197052 
		7.7273049 11.187611 -1.2600536 6.909575 11.187611 -0.50985146 5.9833112 11.187611 
		0.34774014 6.0978551 11.187611 0.15396878 6.1854959 11.187611 0.062082272 6.6420445 
		11.187611 -0.31421664 7.7151837 11.187611 -1.2011681 7.4723535 11.187611 -0.92860603 
		7.5462899 11.187611 8.2236385 9.6935883 11.187611 5.7422867 10.003839 11.187611 5.9934521 
		7.7437348 11.187611 8.421072 11.308411 11.187611 3.3715286 10.983526 11.187611 3.1298389 
		11.656866 11.187611 -0.32072631 11.428511 11.187611 -0.51461208 10.160439 11.187611 
		-3.4682438 10.099225 11.187611 -3.5332882 7.9792295 11.187611 -5.5335197 5.2677817 
		11.187611 -6.7633333 8.1100988 11.187611 -5.3942366 5.5125146 11.187611 -6.4033604 
		1.3918231 11.187611 -6.8742104 1.5091212 11.187611 -6.2515488 -3.0158689 11.187611 
		-4.5772095 -2.735254 11.187611 -3.9685993 -5.2239852 11.187611 -2.8426266 -4.7746463 
		11.187611 -2.3932877 -2.3160036 11.187611 -3.5418949 -4.3890281 11.187611 -2.0076694 
		-3.8252065 11.187611 -1.4438478 -1.9752766 11.187611 -2.8731728 1.4513819 11.187611 
		-4.0743179 4.3872476 11.187611 -4.1140041 6.4868379 11.187611 -3.2904987 8.1423607 
		11.187611 -1.7356032 9.1977215 11.187611 0.52733803 9.2458515 11.187611 3.3183231 
		8.3857441 11.187611 5.8300838 6.4978337 11.187611 8.0251274 6.7772775 11.187611 8.3045635 
		8.7169933 11.187611 6.0506382 9.6876221 11.187611 3.4921532 9.5835705 11.187611 0.51449776 
		8.4012432 11.187611 -1.8912295 6.5943875 11.187611 -3.6226654 4.3391423 11.187611 
		-4.625061 1.3310492 11.187611 -4.7753315 -4.2999263 11.187611 -1.9185675 -2.3552644 
		11.187611 -3.4208851 1.4802516 11.187611 -5.1629333 4.949882 11.187611 -5.2586813 
		7.2984681 11.187611 -4.3423672 9.1207924 11.187611 -2.6344452 10.313115 11.187611 
		0.0063618231 10.114691 11.187611 3.224081 9.0396671 11.187611 5.7861843 7.0220609 
		11.187611 8.124382 7.2605062 11.187611 8.3628159 9.3604164 11.187611 6.0220451 10.498016 
		11.187611 3.4318428 10.62022 11.187611 0.096885547 9.2808418 11.187611 -2.6797371 
		7.2868075 11.187611 -4.5780935 4.8034616 11.187611 -5.6941967 1.3614352 11.187611 
		-5.8247719 -2.6659372 11.187611 -4.0595531 -4.8065066 11.187611 -2.425148 -3.3504846 
		11.187611 -0.96912587 -1.5952889 11.187611 -2.3254604 1.4225127 11.187611 -2.9857025 
		3.8246136 11.187611 -2.9693244 5.6752076 11.187611 -2.2386303 7.1639276 11.187611 
		-0.83675957 8.0823269 11.187611 1.048315 8.3770123 11.187611 3.4125652 7.7318234 
		11.187611 5.8739815 5.9736028 11.187611 7.925869 6.2940469 11.187611 8.2463093 8.0735703 
		11.187611 6.0792313 8.8772297 11.187611 3.5524693 8.5469227 11.187611 0.93210793 
		7.5216432 11.187611 -1.1027241 5.9019685 11.187611 -2.6672382 3.8748207 11.187611 
		-3.5559275 1.3006654 11.187611 -3.725893 -1.9660717 11.187611 -3.0242386 -3.9715497 
		11.187611 -1.590191 -4.4487739 11.187611 -4.2389774 -5.5507483 11.187611 -3.1693897 
		-4.0996547 11.187611 -3.7197151 -5.1014094 11.187611 -2.7200508 -2.8901327 11.187611 
		-4.562851 -3.1707475 11.187611 -5.1714611 -3.1607931 11.187611 -4.4707222 -3.4414079 
		11.187611 -5.0793324 -5.2949653 11.187611 -3.9090481 -5.9024367 11.187611 -3.5210781;
	setAttr ".pt[166:318]" -4.8680987 11.187611 -3.4262657 -5.4530978 11.187611 
		-3.0717392 6.279099 11.187611 8.6604576 -4.2694507 11.187611 -1.8880919 -4.2359881 
		11.187611 -1.8546294 -4.3455806 11.187611 -1.9642218 -4.1842246 11.187611 -1.8028659 
		6.3438859 11.187611 8.7252445 -3.3215597 11.187611 -0.94020092 -5.3515811 11.187611 
		8.5199776 -3.1844881 11.187611 6.9777889 -3.5681188 11.187611 7.2449331 -5.3589759 
		11.187611 8.4249859 1.4684489 11.187611 11.616371 1.0756056 11.187611 9.5274181 1.1254485 
		11.187611 9.8895359 1.4212706 11.187611 11.46689 -7.3347831 11.187611 3.3137 -3.6724374 
		11.187611 3.7708378 -4.2784457 11.187611 3.7750018 -6.9367118 11.187611 3.3542197 
		-6.7584109 11.187611 3.0254824 -4.9991508 11.187611 8.2612858 1.5252669 11.187611 
		11.483866 1.0905726 11.187611 9.5509338 -3.4728053 11.187611 7.1614184 -4.0782275 
		11.187611 3.7509615 -3.6668985 11.187611 5.4875927 -4.0755553 11.187611 5.6016216 
		-4.2060027 11.187611 5.6433392 -6.4644694 11.187611 6.1499176 -6.2604117 11.187611 
		5.8389988 -6.7288928 11.187611 6.1129913 -0.62887168 11.187611 9.2127838 -0.72984481 
		11.187611 9.2667446 -0.81206679 11.187611 9.3482914 -1.5646989 11.187611 11.132505 
		-1.3641717 11.187611 10.873857 -1.566509 11.187611 11.193398 3.2790167 11.187611 
		8.9591618 3.3290446 11.187611 9.0134621 3.5365222 11.187611 9.459259 4.0107541 11.187611 
		10.365875 4.0928693 11.187611 10.526077 4.0508657 11.187611 10.457142 -5.3277221 
		11.187611 5.8268108 -4.3513255 11.187611 7.8228722 -1.1400983 11.187611 10.237709 
		1.2886832 11.187611 10.660467 3.6714938 11.187611 9.6931419 3.7264655 11.187611 9.8115063 
		1.2314227 11.187611 10.448193 -1.0316389 11.187611 9.8916359 -4.0931678 11.187611 
		7.5909061 -4.8681502 11.187611 5.7918606 -5.0578113 11.187611 3.6516383 -5.6588931 
		11.187611 3.5228846 -2.883394 11.187611 2.1366825 -3.2856042 11.187611 1.9274272 
		-4.1591029 11.187611 1.1660577 -4.887939 11.187611 0.76521695 -6.2174048 11.187611 
		0.41602525 -5.9821563 11.187611 0.39776048 -6.5469565 11.187611 0.26525697 -5.0010638 
		11.187611 1.0777932 -3.6414125 11.187611 10.108664 -2.8912103 11.187611 9.2909336 
		-2.0336187 11.187611 8.3646698 -2.2273901 11.187611 8.4792137 -2.3192766 11.187611 
		8.5668545 -2.6955755 11.187611 9.0234032 -3.5825269 11.187611 10.096542 -3.3099649 
		11.187611 9.8537121 5.8422799 11.187611 9.9276485 3.3609278 11.187611 12.074947 3.6120932 
		11.187611 12.385199 6.0397134 11.187611 10.125093 0.99016976 11.187611 13.68977 0.74848008 
		11.187611 13.364885 -2.702085 11.187611 14.038225 -2.8959708 11.187611 13.80987 -5.8496032 
		11.187611 12.541799 -5.9146476 11.187611 12.480584 -7.9148784 11.187611 10.360588 
		-9.1446934 11.187611 7.6491408 -7.7755961 11.187611 10.491459 -8.7847195 11.187611 
		7.8938727 -9.2555695 11.187611 3.7731817 -8.6329079 11.187611 3.8904798 -6.9585681 
		11.187611 -0.63450992 -6.3499579 11.187611 -0.3538951 -5.9232535 11.187611 0.065355405 
		-5.2545314 11.187611 0.40608224 -6.4556766 11.187611 3.832741 -6.4953628 11.187611 
		6.7686062 -5.6718574 11.187611 8.8681965 -4.116962 11.187611 10.52372 -1.8540208 
		11.187611 11.579081 0.93696427 11.187611 11.627211 3.448725 11.187611 10.767103 5.6437688 
		11.187611 8.8791924 5.9232049 11.187611 9.1586361 3.6692793 11.187611 11.098352 1.1107943 
		11.187611 12.068981 -1.8668611 11.187611 11.96493 -4.2725883 11.187611 10.782602 
		-6.004024 11.187611 8.9757462 -7.0064197 11.187611 6.7205009 -7.1566901 11.187611 
		3.7124083 -5.8022437 11.187611 0.026094539 -7.544292 11.187611 3.8616107 -7.6400409 
		11.187611 7.3312416 -6.7237258 11.187611 9.6798267 -5.0158038 11.187611 11.502151 
		-2.3749979 11.187611 12.694475 0.84272218 11.187611 12.49605 3.4048254 11.187611 
		11.421026 5.7430234 11.187611 9.4034195 5.9814572 11.187611 9.6418648 3.6406863 11.187611 
		11.741776 1.0504839 11.187611 12.879375 -2.2844729 11.187611 13.001579 -5.0610957 
		11.187611 11.662201 -6.9594531 11.187611 9.6681671 -8.0755558 11.187611 7.1848197 
		-8.206131 11.187611 3.7427938 -6.4409118 11.187611 -0.28457823 -4.7068191 11.187611 
		0.78606999 -5.3670611 11.187611 3.8038714 -5.3506827 11.187611 6.2059727 -4.6199889 
		11.187611 8.0565662 -3.2181184 11.187611 9.5452862 -1.3330438 11.187611 10.463686 
		1.0312064 11.187611 10.758371 3.4926226 11.187611 10.113182 5.5445104 11.187611 8.3549614 
		5.8649507 11.187611 8.6754055 3.6978724 11.187611 10.454929 1.1711104 11.187611 11.258589 
		-1.4492509 11.187611 10.928282 -3.4840829 11.187611 9.9030018 -5.0485969 11.187611 
		8.2833271 -5.9372859 11.187611 6.2561798 -6.1072516 11.187611 3.6820242 -5.4055972 
		11.187611 0.41528711 -6.6203361 11.187611 -2.067415 -6.1010737 11.187611 -1.7182959 
		-6.9442096 11.187611 -0.50877368 -7.5528197 11.187611 -0.78938854 -6.8520808 11.187611 
		-0.77943408 -7.460691 11.187611 -1.0600489 -6.2904067 11.187611 -2.9136064 -5.8076243 
		11.187611 -2.4867399;
	setAttr -s 319 ".vt";
	setAttr ".vt[0:165]"  -6.2460537 -1.33446217 -3.84289551 4.47642517 -2.95285416 -3.84289551
		 4.73744965 1.97892761 -3.84289551 -5.42526436 -0.62667942 -3.84289551 1.64328766 1.72270966 -3.84289551
		 -5.44731522 -1.6689539 -3.84289551 2.87576294 -2.73902893 -3.84289551 -0.39351845 1.11751938 1.90220451
		 -0.70597076 1.1785202 0.047563553 -0.64772797 -0.73495483 0.37295151 -0.34232521 -0.5793066 1.85840607
		 -5.35173035 -0.36246109 0.0403862 -4.11083221 -0.03474617 -0.80766869 -4.31681252 -1.36774826 -0.65153122
		 -5.2534008 -1.11487198 -0.010765076 3.20122147 1.76790524 0.29066658 1.14147949 1.56510735 -1.31193733
		 1.44240189 -2.042374611 -1.0068511963 2.98192596 -2.37257004 0.11189079 3.057144165 0.24172497 -0.14162827
		 -0.44038773 0.20872402 1.59664345 -5.31388664 -0.73584461 -0.054275513 -5.42751694 -0.89025116 -3.84289551
		 -4.13007355 -0.47393131 -0.80339432 -0.6536274 0.27724171 0.28353691 1.3543129 0.18032074 -1.11898041
		 2.041919708 -0.015770912 -3.84289551 0.28033257 1.34717941 -0.45632935 0.42764664 0.24763203 -0.19498634
		 0.47201157 -1.5278616 -0.10890388 1.3479557 -1.64569378 1.2736187 1.40138626 0.2483778 1.016130447
		 1.49863052 1.42288399 1.38736725 -3.1012764 0.48140717 -0.11274719 -3.077770233 -0.16140938 -0.035280228
		 -3.077432632 -1.12582397 0.046604156 -3.59322357 -0.72164631 1.31502724 -3.56416321 -0.29136276 1.085439682
		 -3.62276459 0.21434593 1.34637833 -4.92840958 -0.29891872 -2.19350243 -4.98057365 -0.67184925 -2.1913662
		 -5.30721092 -1.53980255 -2.072206497 -5.99763489 -1.26145458 -1.85601425 -6.11879349 -0.9464016 -1.81697083
		 -6.063323975 -0.65109444 -1.83043671 0.94113541 1.69218826 0.54369164 -0.54509354 1.43512917 1.053524017
		 -3.35812569 0.59937382 0.65532875 -4.78389549 0.062797546 -0.34768295 -5.49163818 -0.29655075 -2.022750854
		 -5.98441696 -0.6023407 -3.84289551 -5.80875778 -1.43428993 -3.84289551 -5.5783062 -1.36028481 -1.99105453
		 -4.64912796 -1.17401981 -0.42518997 -3.23931885 -0.80643654 0.42806244 -0.55818939 -0.59141064 0.80846214
		 0.72882462 -1.46449852 0.29643059 1.8937664 -2.041272163 -0.67885017 3.55407333 -2.81099987 -3.84289551
		 2.25868416 1.99229908 -0.44268608 1.56403542 1.69426155 -2.52353668 1.86976814 0.052473068 -2.42705917
		 2.68720245 -2.71331215 -2.37099457 3.25204086 -2.74874592 -2.20699692 4.091369629 -2.80251884 -1.71685982
		 3.98287773 0.11297703 -1.84361649 4.33152962 1.92376995 -1.62746811 3.15231514 2.13999367 -1.99414635
		 -2.042945862 0.66302872 1.84146309 -2.0091819763 1.014770508 1.057497025 -1.97484589 0.83292007 0.16556931
		 -1.93523216 0.11255932 0.31972694 -1.93310928 -0.87852764 0.40949059 -1.97323418 -0.44924068 0.82591438
		 -2.066328049 -0.39527988 1.8059597 -2.081193924 0.023190498 1.54826355 -6.69428444 -4.49189425 -2.9908905
		 -6.52725792 -3.98898602 -0.67656517 -6.80796623 -3.85349178 -0.64702225 -6.89172363 -4.29591608 -2.99088478
		 -6.14929008 -2.83062172 1.31622505 -5.86600304 -3.050233841 1.27462769 -4.47739029 -1.25049782 3.33658028
		 -4.26626968 -1.58428669 3.31934547 -2.1554184 -0.52139568 4.16212559 -2.092288971 -0.82979679 4.16404057
		 -0.032175064 -0.65506649 4.1041584 1.93845558 -2.36623573 3.36334133 -0.16725159 -0.97309494 4.099951744
		 1.63610268 -2.66740227 3.30572128 3.93187332 -4.60312748 1.48080063 3.56189346 -4.84024239 1.2281189
		 4.98721886 -6.0066919327 -1.87154579 4.54260635 -6.2305727 -2.035543442 5.22398567 -6.092362404 -3.84289551
		 4.77464676 -6.28747416 -3.84289551 4.11962891 -4.37771893 -2.039270401 4.38902855 -4.45168114 -3.84289551
		 3.82520676 -4.5132513 -3.84289551 3.6149044 -4.47194242 -2.20326805 2.50214767 -3.4413085 0.11063385
		 1.054058075 -2.097631454 1.59840965 -0.40748978 -0.85402489 2.2364521 -2.012699127 -0.85416222 2.28676605
		 -3.6718502 -1.35505486 1.68297577 -5.091407776 -2.20899105 0.31154823 -5.91723442 -2.76439476 -1.37438583
		 -6.070800781 -3.080424309 -3.41586304 -6.35024071 -2.86510277 -3.41585922 -6.19313622 -2.60688782 -1.31903839
		 -5.39920807 -2.0023202896 0.44551849 -3.85835457 -1.028467178 1.8823204 -2.06432724 -0.48531818 2.49402046
		 -0.29518127 -0.62323856 2.45631027 1.33363914 -1.91536713 1.82988548 2.91282082 -3.32219982 0.40097427
		 4.29992676 -5.40036297 -3.84289551 4.078754425 -5.35125732 -2.11940575 3.032020569 -4.14077568 0.66937637
		 1.34507942 -2.38251686 2.45206547 -0.28737068 -0.91355991 3.16820145 -2.052494049 -0.84197998 3.22540283
		 -3.96905899 -1.46967125 2.50116062 -5.47870636 -2.62961197 0.79308891 -6.22224617 -3.37668991 -1.025474548
		 -6.38254166 -3.78615952 -3.20337677 -6.62098122 -3.58050966 -3.20337105 -6.50055122 -3.23019028 -0.98303032
		 -5.77425003 -2.41647053 0.88087082 -4.16787338 -1.1394825 2.60945129 -2.10987282 -0.50335693 3.3280735
		 -0.16367722 -0.63915253 3.28023434 1.63604736 -2.14080238 2.59661293 3.42234802 -3.96266365 0.94088745
		 4.55342484 -5.19220543 -1.9554081 4.80650711 -5.27202177 -3.84289551 3.35048485 -3.62614012 -3.84289551
		 3.15105438 -3.59262705 -2.28713036 1.97227478 -2.74184132 -0.44810867 0.76303482 -1.812747 0.74475288
		 -0.52760887 -0.79448986 1.30470276 -1.97290421 -0.86634541 1.34812737 -3.37464142 -1.24043941 0.86478996
		 -4.70410919 -1.78837013 -0.16999245 -5.61222267 -2.15209866 -1.72329521 -5.75905609 -2.3746891 -3.6283493
		 -6.079498291 -2.14969635 -3.6283474 -5.88572121 -1.98358631 -1.65504646 -5.024169922 -1.58817005 0.010164261
		 -3.54883575 -0.91745186 1.15519142 -2.018779755 -0.46727943 1.65996742 -0.42668533 -0.6073246 1.63238716
		 1.031232834 -1.68993282 1.063158035 2.40329361 -2.68173599 -0.138937 3.68583488 -3.56323242 -2.12313271
		 3.97154999 -3.6313405 -3.84289551 5.53455544 -6.87242937 -2.75711441 5.55074883 -6.73914003 -3.84289551
		 5.10036469 -7.096205711 -2.84218597 5.10140991 -6.93425179 -3.84289551 4.91717148 -7.086663723 -1.81585693
		 5.36178398 -6.86278296 -1.65185928 5.0064373016 -7.25399256 -1.99725151 5.4510498 -7.03011179 -1.83325386
		 5.79268646 -7.44595194 -3.34517479 5.90243721 -7.5311017 -3.84289551;
	setAttr ".vt[166:318]" 5.33786201 -7.66250277 -3.37313271 5.4530983 -7.72621346 -3.84289551
		 -6.27909851 -0.87687969 -3.84289551 4.26945114 -0.87242031 -3.84289551 4.23598862 2.052613258 -3.84289551
		 4.34558105 0.5660162 -3.84289551 4.18422508 -0.015770912 -3.84289551 -6.34388542 -1.073514938 -3.84289551
		 3.32155991 2.18698025 -3.84289551 -0.39351845 1.11751938 -9.58799553 -0.70597076 1.1785202 -7.73335457
		 -0.64772797 -0.73495483 -8.058742523 -0.34232521 -0.5793066 -9.54419708 -5.35173035 -0.36246109 -7.72617722
		 -4.11083221 -0.03474617 -6.87812233 -4.31681252 -1.36774826 -7.034259796 -5.2534008 -1.11487198 -7.67502594
		 3.20122147 1.76790524 -7.9764576 1.14147949 1.56510735 -6.37385368 1.44240189 -2.042374611 -6.67893982
		 2.98192596 -2.37257004 -7.79768181 3.057144165 0.24172497 -7.54416275 -0.44038773 0.20872402 -9.28243446
		 -5.31388664 -0.73584461 -7.6315155 -4.13007355 -0.47393131 -6.8823967 -0.6536274 0.27724171 -7.96932793
		 1.3543129 0.18032074 -6.56681061 0.28033257 1.34717941 -7.22946167 0.42764664 0.24763203 -7.49080467
		 0.47201157 -1.5278616 -7.57688713 1.3479557 -1.64569378 -8.95940971 1.40138626 0.2483778 -8.70192146
		 1.49863052 1.42288399 -9.073158264 -3.1012764 0.48140717 -7.57304382 -3.077770233 -0.16140938 -7.65051079
		 -3.077432632 -1.12582397 -7.73239517 -3.59322357 -0.72164631 -9.00081825256 -3.56416321 -0.29136276 -8.7712307
		 -3.62276459 0.21434593 -9.032169342 -4.92840958 -0.29891872 -5.49228859 -4.98057365 -0.67184925 -5.49442482
		 -5.30721092 -1.53980255 -5.61358452 -5.99763489 -1.26145458 -5.82977676 -6.11879349 -0.9464016 -5.86882019
		 -6.063323975 -0.65109444 -5.85535431 0.94113541 1.69218826 -8.22948265 -0.54509354 1.43512917 -8.73931503
		 -3.35812569 0.59937382 -8.34111977 -4.78389549 0.062797546 -7.33810806 -5.49163818 -0.29655075 -5.66304016
		 -5.5783062 -1.36028481 -5.69473648 -4.64912796 -1.17401981 -7.26060104 -3.23931885 -0.80643654 -8.11385345
		 -0.55818939 -0.59141064 -8.49425316 0.72882462 -1.46449852 -7.9822216 1.8937664 -2.041272163 -7.0069408417
		 2.25868416 1.99229908 -7.24310493 1.56403542 1.69426155 -5.16225433 1.86976814 0.052473068 -5.25873184
		 2.68720245 -2.71331215 -5.31479645 3.25204086 -2.74874592 -5.4787941 4.091369629 -2.80251884 -5.9689312
		 3.98287773 0.11297703 -5.84217453 4.33152962 1.92376995 -6.058322906 3.15231514 2.13999367 -5.69164467
		 -2.042945862 0.66302872 -9.5272541 -2.0091819763 1.014770508 -8.74328804 -1.97484589 0.83292007 -7.85136032
		 -1.93523216 0.11255932 -8.0055179596 -1.93310928 -0.87852764 -8.095281601 -1.97323418 -0.44924068 -8.5117054
		 -2.066328049 -0.39527988 -9.49175072 -2.081193924 0.023190498 -9.23405457 -6.69428444 -4.49189425 -4.69490051
		 -6.52725792 -3.98898602 -7.0092258453 -6.80796623 -3.85349178 -7.038768768 -6.89172363 -4.29591608 -4.69490623
		 -6.14929008 -2.83062172 -9.0020160675 -5.86600304 -3.050233841 -8.9604187 -4.47739029 -1.25049782 -11.022371292
		 -4.26626968 -1.58428669 -11.0051364899 -2.1554184 -0.52139568 -11.84791756 -2.092288971 -0.82979679 -11.84983253
		 -0.032175064 -0.65506649 -11.78994942 1.93845558 -2.36623573 -11.049133301 -0.16725159 -0.97309494 -11.78574371
		 1.63610268 -2.66740227 -10.9915123 3.93187332 -4.60312748 -9.16659164 3.56189346 -4.84024239 -8.91390991
		 4.98721886 -6.0066919327 -5.81424522 4.54260635 -6.2305727 -5.65024757 4.11962891 -4.37771893 -5.64652061
		 3.6149044 -4.47194242 -5.48252296 2.50214767 -3.4413085 -7.79642487 1.054058075 -2.097631454 -9.28420067
		 -0.40748978 -0.85402489 -9.92224312 -2.012699127 -0.85416222 -9.97255707 -3.6718502 -1.35505486 -9.36876678
		 -5.091407776 -2.20899105 -7.99733925 -5.91723442 -2.76439476 -6.31140518 -6.070800781 -3.080424309 -4.26992798
		 -6.35024071 -2.86510277 -4.26993179 -6.19313622 -2.60688782 -6.36675262 -5.39920807 -2.0023202896 -8.13130951
		 -3.85835457 -1.028467178 -9.56811142 -2.06432724 -0.48531818 -10.17981148 -0.29518127 -0.62323856 -10.14210129
		 1.33363914 -1.91536713 -9.5156765 2.91282082 -3.32219982 -8.086765289 4.078754425 -5.35125732 -5.56638527
		 3.032020569 -4.14077568 -8.35516739 1.34507942 -2.38251686 -10.13785744 -0.28737068 -0.91355991 -10.85399246
		 -2.052494049 -0.84197998 -10.91119385 -3.96905899 -1.46967125 -10.18695259 -5.47870636 -2.62961197 -8.47887993
		 -6.22224617 -3.37668991 -6.66031647 -6.38254166 -3.78615952 -4.48241425 -6.62098122 -3.58050966 -4.48241997
		 -6.50055122 -3.23019028 -6.7027607 -5.77425003 -2.41647053 -8.56666183 -4.16787338 -1.1394825 -10.29524231
		 -2.10987282 -0.50335693 -11.013864517 -0.16367722 -0.63915253 -10.96602631 1.63604736 -2.14080238 -10.28240395
		 3.42234802 -3.96266365 -8.62667847 4.55342484 -5.19220543 -5.73038292 3.15105438 -3.59262705 -5.39866066
		 1.97227478 -2.74184132 -7.23768234 0.76303482 -1.812747 -8.4305439 -0.52760887 -0.79448986 -8.99049377
		 -1.97290421 -0.86634541 -9.033918381 -3.37464142 -1.24043941 -8.55058098 -4.70410919 -1.78837013 -7.51579857
		 -5.61222267 -2.15209866 -5.9624958 -5.75905609 -2.3746891 -4.057441711 -6.079498291 -2.14969635 -4.057443619
		 -5.88572121 -1.98358631 -6.030744553 -5.024169922 -1.58817005 -7.69595528 -3.54883575 -0.91745186 -8.84098244
		 -2.018779755 -0.46727943 -9.34575844 -0.42668533 -0.6073246 -9.31817818 1.031232834 -1.68993282 -8.74894905
		 2.40329361 -2.68173599 -7.54685402 3.68583488 -3.56323242 -5.56265831 5.53455544 -6.87242937 -4.92867661
		 5.10036469 -7.096205711 -4.84360504 4.91717148 -7.086663723 -5.86993408 5.36178398 -6.86278296 -6.033931732
		 5.0064373016 -7.25399256 -5.68853951 5.4510498 -7.03011179 -5.85253716 5.79268646 -7.44595194 -4.34061623
		 5.33786201 -7.66250277 -4.31265831;
	setAttr -s 617 ".ed";
	setAttr ".ed[0:165]"  0 42 0 3 39 0 5 41 0 1 169 1 2 170 1 3 22 0 4 26 1
		 5 51 0 7 32 0 8 27 0 7 46 1 9 29 0 8 24 1 10 30 0 10 20 1 11 38 0 12 33 0 11 48 1
		 13 35 0 12 23 1 14 36 0 14 21 1 15 66 0 16 60 0 15 59 1 17 62 0 16 25 1 18 64 0 18 19 1
		 19 15 1 20 7 1 19 31 1 21 11 1 20 75 1 21 43 1 22 40 0 23 34 0 24 28 0 25 61 0 27 16 0
		 28 25 0 27 28 1 29 17 0 30 18 0 31 20 1 30 31 1 32 15 0 31 32 1 32 45 1 33 70 0 34 71 0
		 33 34 1 35 72 0 36 74 0 37 21 1 36 37 1 38 68 0 37 38 1 38 47 1 39 12 0 40 23 0 39 40 1
		 41 13 0 42 14 0 43 173 1 42 43 1 44 11 0 43 44 1 44 49 1 45 27 1 46 8 1 45 46 1 47 33 1
		 46 69 1 48 12 1 47 48 1 49 39 1 48 49 1 50 3 1 49 50 1 51 0 1 52 42 1 51 52 0 53 14 1
		 52 53 0 54 36 1 53 54 0 55 10 1 54 73 0 56 30 1 55 56 0 57 18 1 56 57 0 58 1 1 57 63 0
		 59 16 1 59 45 1 60 4 0 61 26 0 60 61 1 62 6 0 63 58 0 64 1 0 63 64 1 65 19 1 64 65 1
		 66 2 0 65 66 1 67 59 1 66 67 1 67 60 1 68 7 0 69 47 1 68 69 1 70 8 0 69 70 1 71 24 0
		 70 71 1 72 9 0 73 55 0 74 10 0 73 74 1 75 37 1 74 75 1 75 68 1 5 145 0 41 144 1 76 77 0
		 52 147 1 77 78 1 51 146 0 79 78 0 76 79 0 53 148 1 78 80 0 13 143 1 77 81 0 81 80 1
		 54 149 1 80 82 0 35 142 1 81 83 0 83 82 1 73 150 1 82 84 0 72 141 1 83 85 0 85 84 1
		 55 151 0 56 152 1 86 87 0 9 140 0 88 86 1 29 139 1 88 89 0 89 87 1 57 153 1 87 90 0
		 17 138 1 89 91 0 91 90 1 63 154 1 90 92 0 62 137 1 91 93 0 93 92 0;
	setAttr ".ed[166:331]" 58 155 1 92 94 1 6 136 1 93 95 1 84 86 0 85 88 0 96 134 1
		 97 135 1 96 97 1 98 116 1 99 117 1 98 99 1 100 118 1 99 100 1 101 119 1 100 101 1
		 102 120 0 101 102 1 103 121 1 102 103 1 104 122 1 103 104 1 105 123 1 104 105 1 106 124 1
		 105 106 1 107 125 0 106 107 1 108 126 0 107 108 1 109 127 1 108 109 1 110 128 1 109 110 1
		 111 129 1 110 111 1 112 130 1 111 112 1 113 131 0 112 113 1 114 132 1 113 114 1 115 133 1
		 114 115 1 115 96 1 116 95 1 117 93 1 116 117 1 118 91 1 117 118 1 119 89 1 118 119 1
		 120 88 0 119 120 1 121 85 1 120 121 1 122 83 1 121 122 1 123 81 1 122 123 1 124 77 1
		 123 124 1 125 76 0 124 125 1 126 79 0 125 126 1 127 78 1 126 127 1 128 80 1 127 128 1
		 129 82 1 128 129 1 130 84 1 129 130 1 131 86 0 130 131 1 132 87 1 131 132 1 133 90 1
		 132 133 1 134 92 1 133 134 1 135 94 1 134 135 1 136 98 1 137 99 1 136 137 1 138 100 1
		 137 138 1 139 101 1 138 139 1 140 102 0 139 140 1 141 103 1 140 141 1 142 104 1 141 142 1
		 143 105 1 142 143 1 144 106 1 143 144 1 145 107 0 144 145 1 146 108 0 145 146 1 147 109 1
		 146 147 1 148 110 1 147 148 1 149 111 1 148 149 1 150 112 1 149 150 1 151 113 0 150 151 1
		 152 114 1 151 152 1 153 115 1 152 153 1 154 96 1 153 154 1 155 97 1 154 155 1 92 156 1
		 94 157 1 156 157 1 93 158 1 158 156 0 95 159 1 158 159 1 93 160 0 92 161 0 160 161 0
		 158 162 0 160 162 0 156 163 0 162 163 0 161 163 0 156 164 0 157 165 1 164 165 0 158 166 0
		 166 164 0 159 167 1 166 167 0 167 165 1 168 44 0 171 2 1 172 65 1 174 67 1 173 0 1
		 168 50 1 173 168 1 169 172 1 172 171 1 170 174 1 174 4 1 0 208 0 208 209 1 209 173 1
		 51 216 0 216 208 1 175 198 0 198 211 1 211 212 1 175 212 1;
	setAttr ".ed[332:497]" 219 178 1 219 220 0 220 196 1 178 196 0 178 188 1 196 197 1
		 197 188 1 179 204 0 204 213 1 213 214 1 179 214 1 217 182 1 217 218 0 218 202 1 182 202 0
		 182 189 1 202 203 1 203 189 1 183 229 0 229 230 1 230 222 1 183 222 1 221 186 1 221 226 0
		 226 227 1 186 227 0 186 187 1 227 228 1 228 187 1 187 183 1 228 229 1 188 175 1 197 198 1
		 189 179 1 203 204 1 3 205 0 205 206 1 22 206 0 190 200 0 180 190 1 180 199 0 199 200 1
		 191 194 0 176 191 1 176 193 0 193 194 1 192 224 0 184 192 1 184 223 0 223 224 1 194 192 0
		 193 184 0 220 221 0 196 186 0 187 197 1 198 183 0 222 211 1 200 234 0 199 233 0 233 234 1
		 218 236 0 236 237 1 202 237 0 237 238 1 238 203 1 238 231 1 204 231 0 231 232 1 232 213 1
		 205 180 0 206 190 0 216 217 0 208 182 0 189 209 1 209 210 1 210 179 0 210 215 1 214 215 1
		 211 193 1 212 176 1 213 199 1 232 233 1 214 180 1 215 205 1 215 50 1 239 240 0 240 241 1
		 242 241 0 239 242 0 241 243 0 240 244 0 244 243 1 243 245 0 244 246 0 246 245 1 245 247 0
		 246 248 0 248 247 1 249 250 0 251 249 1 251 252 0 252 250 1 250 253 0 252 254 0 254 253 1
		 253 255 0 254 256 0 256 255 0 230 223 1 222 184 1 224 26 0 223 4 0 317 165 0 318 317 0
		 318 167 0 226 58 0 227 1 0 172 228 1 229 2 0 174 230 1 231 175 0 212 232 1 233 176 0
		 234 191 0 247 249 0 248 251 0 236 219 0 237 178 0 188 238 1 5 207 0 207 300 1 300 301 1
		 5 301 0 51 302 0 302 303 1 216 303 1 301 302 1 303 304 1 217 304 1 207 181 0 181 299 1
		 299 300 1 304 305 1 218 305 1 181 201 0 201 298 1 298 299 1 305 306 1 236 306 1 201 235 0
		 235 297 1 297 298 1 219 307 0 307 308 1 220 308 1 177 195 0 195 295 1 295 296 1 177 296 0
		 308 309 1 221 309 1 195 185 0 185 294 1 294 295 1 309 310 1 226 310 1;
	setAttr ".ed[498:616]" 185 225 0 225 293 1 293 294 1 310 155 1 225 6 0 136 293 1
		 306 307 1 235 177 0 296 297 1 257 97 1 257 292 1 292 135 1 98 258 1 116 275 1 258 275 1
		 258 259 1 275 276 1 259 276 1 259 260 1 276 277 1 260 277 1 260 261 1 277 278 1 261 278 0
		 261 262 1 278 279 1 262 279 1 262 263 1 279 280 1 263 280 1 263 264 1 280 281 1 264 281 1
		 264 265 1 281 282 1 265 282 1 265 266 1 282 283 1 266 283 0 266 267 1 283 284 1 267 284 0
		 267 268 1 284 285 1 268 285 1 268 269 1 285 286 1 269 286 1 269 270 1 286 287 1 270 287 1
		 270 271 1 287 288 1 271 288 1 271 272 1 288 289 1 272 289 0 272 273 1 289 290 1 273 290 1
		 273 274 1 290 291 1 274 291 1 274 257 1 291 292 1 256 95 1 275 256 1 276 254 1 277 252 1
		 278 251 0 279 248 1 280 246 1 281 244 1 282 240 1 283 239 0 284 242 0 285 241 1 286 243 1
		 287 245 1 288 247 1 289 249 0 290 250 1 291 253 1 292 255 1 255 94 1 293 258 1 294 259 1
		 295 260 1 296 261 0 297 262 1 298 263 1 299 264 1 300 265 1 301 266 0 302 267 0 303 268 1
		 304 269 1 305 270 1 306 271 1 307 272 0 308 273 1 309 274 1 310 257 1 255 311 1 311 157 1
		 313 314 0 313 315 0 315 316 0 314 316 0 312 159 1 256 312 1 256 313 0 255 314 0 312 315 0
		 312 311 0 311 316 0 311 317 0 312 318 0 168 210 0;
	setAttr -s 298 -ch 1198 ".fc[0:297]" -type "polyFaces" 
		f 4 0 65 64 316
		mu 0 4 392 1 2 389
		f 4 82 81 -1 -81
		mu 0 4 393 384 1 392
		f 4 8 48 71 -11
		mu 0 4 6 7 8 9
		f 4 -88 90 89 -14
		mu 0 4 10 378 381 13
		f 4 -15 13 45 44
		mu 0 4 14 10 13 15
		f 4 15 58 75 -18
		mu 0 4 16 17 18 19
		f 4 -84 86 85 -21
		mu 0 4 20 383 382 23
		f 4 -22 20 55 54
		mu 0 4 24 20 23 25
		f 4 22 109 108 -25
		mu 0 4 26 27 28 29
		f 4 -92 94 103 -28
		mu 0 4 30 380 379 33
		f 4 -29 27 105 104
		mu 0 4 34 30 33 35
		f 4 -30 -105 107 -23
		mu 0 4 26 34 35 27
		f 4 -31 -45 47 -9
		mu 0 4 6 14 15 7
		f 4 -33 -55 57 -16
		mu 0 4 16 24 25 17
		f 4 1 61 -36 -6
		mu 0 4 394 37 38 39
		f 4 -37 -20 16 51
		mu 0 4 40 41 42 43
		f 4 -38 -13 9 41
		mu 0 4 44 45 46 47
		f 4 -39 -27 23 99
		mu 0 4 48 49 50 51
		f 4 -41 -42 39 26
		mu 0 4 49 44 47 50
		f 4 -90 92 91 -44
		mu 0 4 13 381 380 30
		f 4 -46 43 28 31
		mu 0 4 15 13 30 34
		f 4 -48 -32 29 -47
		mu 0 4 7 15 34 26
		f 4 96 -49 46 24
		mu 0 4 29 8 7 26
		f 4 -51 -52 49 117
		mu 0 4 52 40 43 53
		f 4 -86 88 121 -54
		mu 0 4 23 382 377 55
		f 4 -56 53 123 122
		mu 0 4 25 23 55 56
		f 4 -58 -123 124 -57
		mu 0 4 17 25 56 57
		f 4 -59 56 113 112
		mu 0 4 18 17 57 58
		f 4 59 19 -61 -62
		mu 0 4 37 42 41 38
		f 4 -82 84 83 -64
		mu 0 4 1 384 383 20
		f 4 -66 63 21 34
		mu 0 4 2 1 20 24
		f 4 -68 -35 32 -67
		mu 0 4 59 2 24 16
		f 4 -69 66 17 77
		mu 0 4 60 59 16 19
		f 4 -72 69 -10 -71
		mu 0 4 9 8 47 46
		f 4 -73 -113 115 -50
		mu 0 4 43 18 58 53
		f 4 -76 72 -17 -75
		mu 0 4 19 18 43 42
		f 4 -77 -78 74 -60
		mu 0 4 37 60 19 42
		f 4 -80 76 -2 -79
		mu 0 4 391 60 37 394
		f 4 127 129 -132 -133
		mu 0 4 388 353 64 65
		f 4 -135 -130 136 137
		mu 0 4 66 64 353 352
		f 4 -140 -138 141 142
		mu 0 4 68 66 352 351
		f 4 -145 -143 146 147
		mu 0 4 70 68 351 347
		f 4 -151 -153 154 155
		mu 0 4 72 73 348 350
		f 4 -158 -156 159 160
		mu 0 4 76 72 350 349
		f 4 -163 -161 164 165
		mu 0 4 78 76 349 342
		f 4 -109 110 -24 -96
		mu 0 4 29 28 51 50
		f 4 -70 -97 95 -40
		mu 0 4 47 8 29 50
		f 4 -99 -100 97 6
		mu 0 4 397 48 51 81
		f 4 -307 -309 310 311
		mu 0 4 82 83 338 332
		f 4 -104 101 93 -103
		mu 0 4 33 379 370 87
		f 5 -106 102 3 319 314
		mu 0 5 35 33 87 88 89
		f 5 -108 -315 320 313 -107
		mu 0 5 27 35 89 90 91
		f 5 -110 106 4 321 315
		mu 0 5 28 27 91 92 93
		f 4 -111 -316 322 -98
		mu 0 4 51 28 93 81
		f 4 -114 111 10 73
		mu 0 4 58 57 6 9
		f 4 -116 -74 70 -115
		mu 0 4 53 58 9 46
		f 4 -117 -118 114 12
		mu 0 4 45 52 53 46
		f 4 -171 -148 171 152
		mu 0 4 73 70 347 348
		f 4 -122 119 87 -121
		mu 0 4 55 377 378 10
		f 4 -124 120 14 33
		mu 0 4 56 55 10 14
		f 4 -125 -34 30 -112
		mu 0 4 57 56 14 6
		f 4 2 126 268 -126
		mu 0 4 329 95 96 343
		f 4 -83 130 272 -129
		mu 0 4 5 386 98 99
		f 4 -8 125 270 -131
		mu 0 4 386 385 97 98
		f 4 -85 128 274 -134
		mu 0 4 21 5 99 100
		f 4 62 135 266 -127
		mu 0 4 95 101 102 96
		f 4 -87 133 276 -139
		mu 0 4 22 21 100 103
		f 4 18 140 264 -136
		mu 0 4 101 104 105 102
		f 4 -89 138 278 -144
		mu 0 4 54 22 103 106
		f 4 52 145 262 -141
		mu 0 4 104 107 108 105
		f 4 -91 148 282 -150
		mu 0 4 12 11 109 110
		f 4 11 153 258 -152
		mu 0 4 111 112 113 114
		f 4 -93 149 284 -157
		mu 0 4 31 12 110 115
		f 4 42 158 256 -154
		mu 0 4 112 116 117 113
		f 4 -95 156 286 -162
		mu 0 4 32 31 115 118
		f 4 25 163 254 -159
		mu 0 4 116 119 120 117
		f 4 -102 161 288 -167
		mu 0 4 86 32 118 121
		f 4 100 168 252 -164
		mu 0 4 119 122 357 120
		f 4 -120 143 280 -149
		mu 0 4 11 54 106 109
		f 4 118 151 260 -146
		mu 0 4 107 111 114 108
		f 4 -175 172 249 -174
		mu 0 4 124 125 126 127
		f 4 -178 175 213 -177
		mu 0 4 128 358 359 131
		f 4 -180 176 215 -179
		mu 0 4 132 128 131 133
		f 4 -182 178 217 -181
		mu 0 4 134 132 133 135
		f 4 -184 180 219 -183
		mu 0 4 136 134 135 137
		f 4 -186 182 221 -185
		mu 0 4 138 136 137 139
		f 4 -188 184 223 -187
		mu 0 4 140 138 139 141
		f 4 -190 186 225 -189
		mu 0 4 142 140 141 143
		f 4 -192 188 227 -191
		mu 0 4 144 142 143 145
		f 4 -194 190 229 -193
		mu 0 4 344 144 145 345
		f 4 -196 192 231 -195
		mu 0 4 148 146 147 149
		f 4 -198 194 233 -197
		mu 0 4 150 148 149 151
		f 4 -200 196 235 -199
		mu 0 4 152 150 151 153
		f 4 -202 198 237 -201
		mu 0 4 154 152 153 155
		f 4 -204 200 239 -203
		mu 0 4 156 154 155 157
		f 4 -206 202 241 -205
		mu 0 4 158 156 157 159
		f 4 -208 204 243 -207
		mu 0 4 160 158 159 161
		f 4 -210 206 245 -209
		mu 0 4 162 160 161 163
		f 4 -211 208 247 -173
		mu 0 4 125 162 163 126
		f 4 -214 211 -170 -213
		mu 0 4 131 359 356 79
		f 4 -216 212 -165 -215
		mu 0 4 133 131 79 77
		f 4 -218 214 -160 -217
		mu 0 4 135 133 77 75
		f 4 -220 216 -155 -219
		mu 0 4 137 135 75 74
		f 4 -222 218 -172 -221
		mu 0 4 139 137 74 71
		f 4 -224 220 -147 -223
		mu 0 4 141 139 71 69
		f 4 -226 222 -142 -225
		mu 0 4 143 141 69 67
		f 4 -228 224 -137 -227
		mu 0 4 145 143 67 63
		f 4 -230 226 -128 -229
		mu 0 4 345 145 63 346
		f 4 -232 228 132 -231
		mu 0 4 149 147 62 65
		f 4 -234 230 131 -233
		mu 0 4 151 149 65 64
		f 4 -236 232 134 -235
		mu 0 4 153 151 64 66
		f 4 -238 234 139 -237
		mu 0 4 155 153 66 68
		f 4 -240 236 144 -239
		mu 0 4 157 155 68 70
		f 4 -242 238 170 -241
		mu 0 4 159 157 70 73
		f 4 -244 240 150 -243
		mu 0 4 161 159 73 72
		f 4 -246 242 157 -245
		mu 0 4 163 161 72 76
		f 4 -248 244 162 -247
		mu 0 4 126 163 76 78
		f 4 -250 246 167 -249
		mu 0 4 127 126 78 165
		f 4 -253 250 177 -252
		mu 0 4 120 357 358 128
		f 4 -255 251 179 -254
		mu 0 4 117 120 128 132
		f 4 -257 253 181 -256
		mu 0 4 113 117 132 134
		f 4 -259 255 183 -258
		mu 0 4 114 113 134 136
		f 4 -261 257 185 -260
		mu 0 4 108 114 136 138
		f 4 -263 259 187 -262
		mu 0 4 105 108 138 140
		f 4 -265 261 189 -264
		mu 0 4 102 105 140 142
		f 4 -267 263 191 -266
		mu 0 4 96 102 142 144
		f 4 -269 265 193 -268
		mu 0 4 343 96 144 344
		f 4 -271 267 195 -270
		mu 0 4 98 97 146 148
		f 4 -273 269 197 -272
		mu 0 4 99 98 148 150
		f 4 -275 271 199 -274
		mu 0 4 100 99 150 152
		f 4 -277 273 201 -276
		mu 0 4 103 100 152 154
		f 4 -279 275 203 -278
		mu 0 4 106 103 154 156
		f 4 -281 277 205 -280
		mu 0 4 109 106 156 158
		f 4 -283 279 207 -282
		mu 0 4 110 109 158 160
		f 4 -285 281 209 -284
		mu 0 4 115 110 160 162
		f 4 -287 283 210 -286
		mu 0 4 118 115 162 125
		f 4 -289 285 174 -288
		mu 0 4 121 118 125 124
		f 4 -168 289 291 -291
		mu 0 4 165 78 166 167
		f 4 -299 300 302 -304
		mu 0 4 168 340 170 171
		f 4 169 294 -296 -293
		mu 0 4 79 356 354 173
		f 4 -166 296 298 -298
		mu 0 4 78 366 340 168
		f 4 292 299 -301 -297
		mu 0 4 79 173 341 169
		f 4 293 301 -303 -300
		mu 0 4 339 166 171 170
		f 4 -290 297 303 -302
		mu 0 4 166 78 168 171
		f 4 -292 304 306 -306
		mu 0 4 167 166 83 82
		f 4 -294 307 308 -305
		mu 0 4 166 365 338 83
		f 4 295 309 -311 -308
		mu 0 4 173 354 355 84
		f 4 -318 312 68 79
		mu 0 4 391 390 59 60
		f 4 -319 -65 67 -313
		mu 0 4 390 389 2 59
		f 4 -317 -326 -325 -324
		mu 0 4 0 3 175 176
		f 4 80 323 -328 -327
		mu 0 4 376 0 176 371
		f 4 331 -331 -330 -329
		mu 0 4 178 179 180 181
		f 4 335 -335 -334 332
		mu 0 4 182 183 374 368
		f 4 -339 -338 -336 336
		mu 0 4 186 187 183 182
		f 4 342 -342 -341 -340
		mu 0 4 188 189 190 191
		f 4 346 -346 -345 343
		mu 0 4 192 193 373 372
		f 4 -350 -349 -347 347
		mu 0 4 196 197 193 192
		f 4 353 -353 -352 -351
		mu 0 4 198 199 200 201
		f 4 357 -357 -356 354
		mu 0 4 202 203 369 375
		f 4 -361 -360 -358 358
		mu 0 4 206 207 203 202
		f 4 350 -363 360 361
		mu 0 4 198 201 207 206
		f 4 328 -365 338 363
		mu 0 4 178 181 187 186
		f 4 339 -367 349 365
		mu 0 4 188 191 197 196
		f 4 5 369 -369 -368
		mu 0 4 36 395 208 209
		f 4 -374 -373 371 370
		mu 0 4 210 211 212 213
		f 4 -378 -377 375 374
		mu 0 4 214 215 216 217
		f 4 -382 -381 379 378
		mu 0 4 218 219 220 221
		f 4 -380 -384 377 382
		mu 0 4 221 220 215 214
		f 4 385 -355 -385 334
		mu 0 4 183 202 375 374
		f 4 -387 -359 -386 337
		mu 0 4 187 206 202 183
		f 4 387 -362 386 364
		mu 0 4 181 198 206 187
		f 4 -354 -388 329 -389
		mu 0 4 199 198 181 180
		f 4 -392 -391 373 389
		mu 0 4 222 223 211 210
		f 4 394 -394 -393 345
		mu 0 4 193 224 367 373
		f 4 -397 -396 -395 348
		mu 0 4 197 226 224 193
		f 4 398 -398 396 366
		mu 0 4 191 227 226 197
		f 4 -401 -400 -399 340
		mu 0 4 190 228 227 191
		f 4 368 402 -372 -402
		mu 0 4 209 208 213 212
		f 4 404 -344 -404 327
		mu 0 4 176 192 372 371
		f 4 -406 -348 -405 324
		mu 0 4 175 196 192 176
		f 4 407 -366 405 406
		mu 0 4 229 188 196 175
		f 4 -410 -343 -408 408
		mu 0 4 230 189 188 229
		f 4 411 376 -411 330
		mu 0 4 179 216 215 180
		f 4 390 -414 400 412
		mu 0 4 211 223 228 190
		f 4 414 372 -413 341
		mu 0 4 189 212 211 190
		f 4 401 -415 409 415
		mu 0 4 209 212 189 230
		f 4 78 367 -416 416
		mu 0 4 61 36 209 230
		f 4 420 419 -419 -418
		mu 0 4 327 232 233 337
		f 4 -424 -423 418 421
		mu 0 4 235 336 337 233
		f 4 -427 -426 423 424
		mu 0 4 237 335 336 235
		f 4 -430 -429 426 427
		mu 0 4 239 363 335 237
		f 4 -434 -433 431 430
		mu 0 4 241 334 331 244
		f 4 -437 -436 433 434
		mu 0 4 245 333 334 241
		f 4 -440 -439 436 437
		mu 0 4 247 362 333 245
		f 4 441 380 -441 352
		mu 0 4 199 220 219 200
		f 4 383 -442 388 410
		mu 0 4 215 220 199 180
		f 4 -7 -444 381 442
		mu 0 4 80 81 219 218
		f 4 -312 -447 445 444
		mu 0 4 82 364 320 250
		f 4 448 -94 -448 356
		mu 0 4 203 87 396 369
		f 5 -450 -320 -4 -449 359
		mu 0 5 207 89 88 87 203
		f 5 450 -314 -321 449 362
		mu 0 5 201 91 90 89 207
		f 5 -452 -322 -5 -451 351
		mu 0 5 200 93 92 91 201
		f 4 443 -323 451 440
		mu 0 4 219 81 93 200
		f 4 -454 -332 -453 399
		mu 0 4 228 179 178 227
		f 4 454 -412 453 413
		mu 0 4 223 216 179 228
		f 4 -376 -455 391 455
		mu 0 4 217 216 223 222
		f 4 -432 -458 429 456
		mu 0 4 244 331 330 239
		f 4 459 -333 -459 393
		mu 0 4 224 182 368 367
		f 4 -461 -337 -460 395
		mu 0 4 226 186 182 224
		f 4 452 -364 460 397
		mu 0 4 227 178 186 226
		f 4 464 -464 -463 -462
		mu 0 4 94 324 252 253
		f 4 467 -467 -466 326
		mu 0 4 177 254 255 4
		f 4 465 -469 -465 7
		mu 0 4 4 255 251 328
		f 4 470 -470 -468 403
		mu 0 4 195 256 254 177
		f 4 462 -474 -473 -472
		mu 0 4 253 252 257 258
		f 4 475 -475 -471 344
		mu 0 4 194 259 256 195
		f 4 472 -479 -478 -477
		mu 0 4 258 257 260 261
		f 4 480 -480 -476 392
		mu 0 4 225 262 259 194
		f 4 477 -484 -483 -482
		mu 0 4 261 260 263 264
		f 4 486 -486 -485 333
		mu 0 4 184 265 266 185
		f 4 490 -490 -489 -488
		mu 0 4 267 268 269 270
		f 4 492 -492 -487 384
		mu 0 4 205 271 265 184
		f 4 488 -496 -495 -494
		mu 0 4 270 269 272 273
		f 4 497 -497 -493 355
		mu 0 4 204 274 271 205
		f 4 494 -501 -500 -499
		mu 0 4 273 272 275 276
		f 4 166 -502 -498 447
		mu 0 4 86 121 274 204
		f 4 499 -504 -169 -503
		mu 0 4 276 275 123 360
		f 4 484 -505 -481 458
		mu 0 4 185 266 262 225
		f 4 482 -507 -491 -506
		mu 0 4 264 263 268 267
		f 4 173 -510 -509 507
		mu 0 4 124 127 277 278
		f 4 512 -512 -176 510
		mu 0 4 279 280 130 129
		f 4 515 -515 -513 513
		mu 0 4 281 282 280 279
		f 4 518 -518 -516 516
		mu 0 4 283 284 282 281
		f 4 521 -521 -519 519
		mu 0 4 285 286 284 283
		f 4 524 -524 -522 522
		mu 0 4 287 288 286 285
		f 4 527 -527 -525 525
		mu 0 4 289 290 288 287
		f 4 530 -530 -528 528
		mu 0 4 291 292 290 289
		f 4 533 -533 -531 531
		mu 0 4 293 294 292 291
		f 4 536 -536 -534 534
		mu 0 4 295 326 294 293
		f 4 539 -539 -537 537
		mu 0 4 297 298 296 325
		f 4 542 -542 -540 540
		mu 0 4 299 300 298 297
		f 4 545 -545 -543 543
		mu 0 4 301 302 300 299
		f 4 548 -548 -546 546
		mu 0 4 303 304 302 301
		f 4 551 -551 -549 549
		mu 0 4 305 306 304 303
		f 4 554 -554 -552 552
		mu 0 4 307 308 306 305
		f 4 557 -557 -555 555
		mu 0 4 309 310 308 307
		f 4 560 -560 -558 558
		mu 0 4 311 312 310 309
		f 4 508 -563 -561 561
		mu 0 4 278 277 312 311
		f 4 564 563 -212 511
		mu 0 4 280 322 164 130
		f 4 565 438 -565 514
		mu 0 4 282 246 322 280
		f 4 566 435 -566 517
		mu 0 4 284 242 246 282
		f 4 567 432 -567 520
		mu 0 4 286 243 242 284
		f 4 568 457 -568 523
		mu 0 4 288 240 243 286
		f 4 569 428 -569 526
		mu 0 4 290 238 240 288
		f 4 570 425 -570 529
		mu 0 4 292 236 238 290
		f 4 571 422 -571 532
		mu 0 4 294 234 236 292
		f 4 572 417 -572 535
		mu 0 4 326 231 234 294
		f 4 573 -421 -573 538
		mu 0 4 298 232 387 296
		f 4 574 -420 -574 541
		mu 0 4 300 233 232 298
		f 4 575 -422 -575 544
		mu 0 4 302 235 233 300
		f 4 576 -425 -576 547
		mu 0 4 304 237 235 302
		f 4 577 -428 -577 550
		mu 0 4 306 239 237 304
		f 4 578 -457 -578 553
		mu 0 4 308 244 239 306
		f 4 579 -431 -579 556
		mu 0 4 310 241 244 308
		f 4 580 -435 -580 559
		mu 0 4 312 245 241 310
		f 4 581 -438 -581 562
		mu 0 4 277 247 245 312
		f 4 248 -583 -582 509
		mu 0 4 127 165 247 277
		f 4 583 -511 -251 503
		mu 0 4 275 279 129 123
		f 4 584 -514 -584 500
		mu 0 4 272 281 279 275
		f 4 585 -517 -585 495
		mu 0 4 269 283 281 272
		f 4 586 -520 -586 489
		mu 0 4 268 285 283 269
		f 4 587 -523 -587 506
		mu 0 4 263 287 285 268
		f 4 588 -526 -588 483
		mu 0 4 260 289 287 263
		f 4 589 -529 -589 478
		mu 0 4 257 291 289 260
		f 4 590 -532 -590 473
		mu 0 4 252 293 291 257
		f 4 591 -535 -591 463
		mu 0 4 324 295 293 252
		f 4 592 -538 -592 468
		mu 0 4 255 297 325 251
		f 4 593 -541 -593 466
		mu 0 4 254 299 297 255
		f 4 594 -544 -594 469
		mu 0 4 256 301 299 254
		f 4 595 -547 -595 474
		mu 0 4 259 303 301 256
		f 4 596 -550 -596 479
		mu 0 4 262 305 303 259
		f 4 597 -553 -597 504
		mu 0 4 266 307 305 262
		f 4 598 -556 -598 485
		mu 0 4 265 309 307 266
		f 4 599 -559 -599 491
		mu 0 4 271 311 309 265
		f 4 600 -562 -600 496
		mu 0 4 274 278 311 271
		f 4 287 -508 -601 501
		mu 0 4 121 124 278 274
		f 4 290 -603 -602 582
		mu 0 4 165 167 313 247
		f 4 606 -606 -605 603
		mu 0 4 314 315 316 323
		f 4 608 607 -295 -564
		mu 0 4 322 319 172 164
		f 4 610 -604 -610 439
		mu 0 4 247 314 323 248
		f 4 609 604 -612 -609
		mu 0 4 322 317 321 319
		f 4 611 605 -614 -613
		mu 0 4 361 316 315 313
		f 4 613 -607 -611 601
		mu 0 4 313 315 314 247
		f 4 305 -445 -615 602
		mu 0 4 167 82 250 313
		f 4 614 -446 -616 612
		mu 0 4 313 250 320 318
		f 4 615 446 -310 -608
		mu 0 4 319 249 85 172
		f 4 -417 -409 -617 317
		mu 0 4 61 230 229 174
		f 4 616 -407 325 318
		mu 0 4 174 229 175 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Leg" -p "Grp_Geo";
	rename -uid "2A52B86F-4C92-B244-8ED8-A28E32EBE42D";
	setAttr ".rp" -type "double3" -2.6645352591003757e-15 0 1.3322676295501878e-15 ;
	setAttr ".sp" -type "double3" -2.6645352591003757e-15 0 1.3322676295501878e-15 ;
createNode mesh -n "LegShape" -p "Leg";
	rename -uid "42473932-47B6-18C9-2AF0-F2888DF2811F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 456 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.375 0.25
		 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875
		 0.25 0.125 0 0.125 0.25 0.375 0.125 0.125 0.125 0.375 0.625 0.625 0.625 0.875 0.125
		 0.625 0.125 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.125 0.1875 0.375 0.5625 0.375
		 0.1875 0.625 0.1875 0.625 0.5625 0.875 0.1875 0.375 0.0625 0.125 0.0625 0.375 0.6875
		 0.625 0.6875 0.875 0.0625 0.625 0.0625 0.625 0.375 0.375 0.375 0.25 0.25 0.375 0.375
		 0.25 0.1875 0.25 0.125 0.25 0.0625 0.25 0 0.375 0.875 0.625 0.875 0.75 0 0.75 0.0625
		 0.75 0.125 0.75 0.1875 0.625 0.375 0.75 0.25 0.5 0.1875 0.5 0.25 0.5 0.25 0.5 0.5
		 0.5 0.5 0.5 0.5625 0.5 0.625 0.5 0.6875 0.5 0.75 0.5 0.875 0.5 0 0.5 1 0.5 0.0625
		 0.5 0.125 0.5 0.15625 0.375 0.15625 0.25 0.15625 0.125 0.15625 0.375 0.59375 0.5
		 0.59375 0.625 0.59375 0.875 0.15625 0.75 0.15625 0.625 0.15625 0.125 0.21875 0.375
		 0.53125 0.25 0.21875 0.375 0.21875 0.5 0.21875 0.625 0.21875 0.75 0.21875 0.625 0.53125
		 0.875 0.21875 0.5 0.53125 0.5 0.609375 0.125 0.140625 0.375 0.609375 0.25 0.140625
		 0.375 0.140625 0.5 0.140625 0.625 0.140625 0.75 0.140625 0.625 0.609375 0.875 0.140625
		 0.5 0.09375 0.375 0.09375 0.25 0.09375 0.125 0.09375 0.375 0.65625 0.5 0.65625 0.625
		 0.65625 0.875 0.09375 0.75 0.09375 0.625 0.09375 0.5 0.6015625 0.125 0.1484375 0.375
		 0.6015625 0.25 0.1484375 0.375 0.1484375 0.5 0.1484375 0.625 0.1484375 0.75 0.1484375
		 0.625 0.6015625 0.875 0.1484375 0.625 0.078125 0.5 0.078125 0.375 0.078125 0.25 0.078125
		 0.125 0.078125 0.375 0.671875 0.5 0.671875 0.625 0.671875 0.875 0.078125 0.75 0.078125
		 0.5 0.03125 0.375 0.03125 0.25 0.03125 0.125 0.03125 0.375 0.71875 0.5 0.71875 0.625
		 0.71875 0.875 0.03125 0.75 0.03125 0.625 0.03125 0.6875 0.1875 0.6875 0.21875 0.625
		 0.3125 0.6875 0.25 0.625 0.3125 0.375 0.3125 0.3125 0.25 0.375 0.3125 0.3125 0.21875
		 0.3125 0.1875 0.3125 0.15625 0.3125 0.1484375 0.3125 0.140625 0.3125 0.125 0.3125
		 0.09375 0.3125 0.078125 0.3125 0.0625 0.3125 0.03125 0.3125 0 0.375 0.9375 0.5 0.9375
		 0.625 0.9375 0.6875 0 0.6875 0.03125 0.6875 0.0625 0.6875 0.078125 0.6875 0.09375
		 0.6875 0.125 0.6875 0.140625 0.6875 0.1484375 0.6875 0.15625 0.1875 0.1875 0.1875
		 0.21875 0.1875 0.25 0.375 0.4375 0.375 0.4375 0.625 0.4375 0.625 0.4375 0.8125 0.25
		 0.8125 0.21875 0.8125 0.1875 0.8125 0.15625 0.8125 0.1484375 0.8125 0.140625 0.8125
		 0.125 0.8125 0.09375 0.8125 0.078125 0.8125 0.0625 0.8125 0.03125 0.625 0.8125 0.8125
		 0 0.5 0.8125 0.1875 0 0.375 0.8125 0.1875 0.03125 0.1875 0.0625 0.1875 0.078125 0.1875
		 0.09375 0.1875 0.125 0.1875 0.140625 0.1875 0.1484375 0.1875 0.15625 0.4375 0.1875
		 0.4375 0.21875 0.4375 0.25 0.4375 0.25 0.4375 0.5 0.4375 0.5 0.4375 0.53125 0.4375
		 0.5625 0.4375 0.59375 0.4375 0.6015625 0.4375 0.609375 0.4375 0.625 0.4375 0.65625
		 0.4375 0.671875 0.4375 0.6875 0.4375 0.71875 0.4375 0.75 0.4375 0.8125 0.4375 0.875
		 0.4375 0.9375 0.4375 0 0.4375 1 0.4375 0.03125 0.4375 0.0625 0.4375 0.078125 0.4375
		 0.09375 0.4375 0.125 0.4375 0.140625 0.4375 0.1484375 0.4375 0.15625 0.375 0 0.4375
		 0 0.4375 0.03125 0.375 0.03125 0.375 0.71875 0.4375 0.71875 0.4375 0.75 0.375 0.75
		 0.375 0.9375 0.4375 0.9375 0.4375 1 0.375 1 0.625 0 0.6875 0 0.6875 0.03125 0.625
		 0.03125 0.3125 0 0.3125 0.03125 0.3125 0.21875 0.375 0.21875 0.375 0.25 0.3125 0.25;
	setAttr ".uvst[0].uvsp[250:455]" 0.375 0.5 0.4375 0.5 0.4375 0.53125 0.375
		 0.53125 0.625 0.21875 0.6875 0.21875 0.6875 0.25 0.625 0.25 0.4375 0.21875 0.4375
		 0.25 0.4375 0.25 0.375 0.25 0.625 0.3125 0.625 0.3125 0.625 0.25 0.375 0.5 0.4375
		 0.5 0.375 0.3125 0.375 0.3125 0.3125 0.1484375 0.375 0.1484375 0.375 0.15625 0.3125
		 0.15625 0.4375 0.1484375 0.4375 0.15625 0.625 0.1484375 0.6875 0.1484375 0.6875 0.15625
		 0.625 0.15625 0.375 0.59375 0.4375 0.59375 0.4375 0.6015625 0.375 0.6015625 0.3125
		 0.0625 0.375 0.0625 0.375 0.078125 0.3125 0.078125 0.375 0.671875 0.4375 0.671875
		 0.4375 0.6875 0.375 0.6875 0.625 0.0625 0.6875 0.0625 0.6875 0.078125 0.625 0.078125
		 0.4375 0.0625 0.4375 0.078125 0.375 0.4375 0.375 0.4375 0.125 0.21875 0.1875 0.21875
		 0.1875 0.25 0.125 0.25 0.125 0.1484375 0.1875 0.1484375 0.1875 0.15625 0.125 0.15625
		 0.125 0.0625 0.1875 0.0625 0.1875 0.078125 0.125 0.078125 0.125 0 0.1875 0 0.1875
		 0.03125 0.125 0.03125 0.4375 0.8125 0.375 0.8125 0.8125 0.03125 0.8125 0 0.875 0
		 0.875 0.03125 0.8125 0.078125 0.8125 0.0625 0.875 0.0625 0.875 0.078125 0.8125 0.15625
		 0.8125 0.1484375 0.875 0.1484375 0.875 0.15625 0.8125 0.25 0.8125 0.21875 0.875 0.21875
		 0.875 0.25 0.625 0.4375 0.625 0.4375 0.625 0.5 0.625 0.5 0.5 0.21875 0.5 0.25 0.5
		 0.25 0.5 0.5 0.5 0.5 0.5 0.53125 0.625 0.53125 0.625 0.6015625 0.5 0.6015625 0.5
		 0.59375 0.625 0.59375 0.5 0.6875 0.5 0.671875 0.625 0.671875 0.625 0.6875 0.5 0.75
		 0.5 0.71875 0.625 0.71875 0.625 0.75 0.5 0.8125 0.625 0.8125 0.5 1 0.5 0.9375 0.625
		 0.9375 0.625 1 0.5 0.03125 0.5 0 0.5 0.078125 0.5 0.0625 0.5 0.15625 0.5 0.1484375
		 0.4375 0.1875 0.375 0.1875 0.3125 0.1875 0.1875 0.1875 0.125 0.1875 0.375 0.5625
		 0.4375 0.5625 0.5 0.5625 0.625 0.5625 0.8125 0.1875 0.875 0.1875 0.6875 0.1875 0.625
		 0.1875 0.5 0.1875 0.375 0.609375 0.4375 0.609375 0.4375 0.625 0.375 0.625 0.125 0.125
		 0.1875 0.125 0.1875 0.140625 0.125 0.140625 0.3125 0.125 0.375 0.125 0.375 0.140625
		 0.3125 0.140625 0.4375 0.125 0.4375 0.140625 0.625 0.140625 0.5 0.140625 0.5 0.125
		 0.625 0.125 0.6875 0.125 0.6875 0.140625 0.875 0.140625 0.8125 0.140625 0.8125 0.125
		 0.875 0.125 0.5 0.625 0.5 0.609375 0.625 0.609375 0.625 0.625 0.375 0.09375 0.4375
		 0.09375 0.3125 0.09375 0.125 0.09375 0.1875 0.09375 0.4375 0.65625 0.375 0.65625
		 0.625 0.65625 0.5 0.65625 0.8125 0.09375 0.875 0.09375 0.625 0.09375 0.6875 0.09375
		 0.5 0.09375 0.75 0.1875 0.75 0.21875 0.75 0.25 0.625 0.375 0.625 0.375 0.375 0.375
		 0.375 0.375 0.25 0.21875 0.25 0.25 0.25 0.1875 0.25 0.15625 0.25 0.1484375 0.25 0.140625
		 0.25 0.125 0.25 0.09375 0.25 0.078125 0.25 0.0625 0.25 0.03125 0.25 0 0.375 0.875
		 0.4375 0.875 0.5 0.875 0.625 0.875 0.75 0 0.75 0.03125 0.75 0.0625 0.75 0.078125
		 0.75 0.09375 0.75 0.125 0.75 0.140625 0.75 0.1484375 0.75 0.15625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 376 ".pt";
	setAttr ".pt[0:165]" -type "float3"  5.0446081 1.6031556 0.82333338 3.8397844 
		1.6031556 -0.72462714 5.5427794 1.6031556 0.93262279 3.4590974 1.6031556 -1.8878771 
		3.4094403 1.6031556 3.0680599 0.9462713 1.6031556 0.47159967 4.4422126 1.6031556 
		1.5215766 2.9859219 1.6031556 -0.16337705 4.748549 1.6031556 0.17990519 3.4831464 
		1.6031556 1.3749156 2.338135 1.6031556 0.21116713 3.8739469 1.6031556 -1.0136 5.6722789 
		1.6031556 1.1334938 3.3131447 1.6031556 -2.0260556 0.78046173 1.6031556 0.42333257 
		3.5131474 1.6031556 3.3382778 3.4598567 1.6031556 2.3400016 5.2250633 1.6031556 0.60262984 
		3.6149399 1.6031556 -1.5862168 1.5267622 1.6031556 0.30844033 5.0001397 1.6031556 
		0.63609868 4.1336689 1.6031556 1.5980105 2.636024 1.6031556 -0.068332806 3.8331251 
		1.6031556 -0.8997553 1.7753626 1.6031556 -1.3258811 4.9421339 1.6031556 2.6149898 
		4.8348179 1.6031556 2.3476717 4.6684155 1.6031556 1.7938427 4.415976 1.6031556 1.0503252 
		4.8819299 1.6031556 1.4528188 5.0126548 1.6031556 1.4881902 3.2104979 1.6031556 -0.75449383 
		3.0464325 1.6031556 -0.83135599 2.9340403 1.6031556 -0.79386121 2.3431671 1.6031556 
		-1.0997996 1.9654156 1.6031556 -1.2231402 4.6226287 1.6031556 -0.55579668 4.803793 
		1.6031556 -0.46256715 4.8345876 1.6031556 -0.3615748 1.911268 1.6031556 2.0010431 
		1.9270566 1.6031556 1.8626176 2.2594051 1.6031556 1.3567438 2.735333 1.6031556 0.80904222 
		3.3047543 1.6031556 0.8476674 3.6324866 1.6031556 0.70935106 4.1271067 1.6031556 
		0.38617453 4.5411696 1.6031556 -0.034362443 4.5758038 1.6031556 -0.18723316 4.4164639 
		1.6031556 -0.55538809 4.5252538 1.6031556 -0.59200639 5.0170732 1.6031556 0.39505276 
		4.5647197 1.6031556 1.4370039 3.4885719 1.6031556 1.8767608 2.484401 1.6031556 1.061486 
		1.9089526 1.6031556 0.22529507 2.608314 1.6031556 -0.99763417 3.7290008 1.6031556 
		-1.3626428 3.4414809 1.6031556 2.7548814 4.7647109 1.6031556 2.116576 5.4154453 1.6031556 
		0.79025507 4.721725 1.6031556 -0.51236653 3.5308039 1.6031556 -1.7684026 2.1221268 
		1.6031556 -1.1719731 1.2007512 1.6031556 0.3929337 2.0718615 1.6031556 1.6305097 
		2.6575437 1.6031556 0.88730001 3.4829638 1.6031556 1.5319847 4.4620867 1.6031556 
		1.170194 4.83179 1.6031556 0.24660043 4.4501882 1.6031556 -0.56673932 3.8295951 1.6031556 
		-1.1210812 2.8336468 1.6031556 -0.85630882 2.2055001 1.6031556 0.21606123 4.4732814 
		1.6031556 -0.43875748 4.8072815 1.6031556 0.29866371 4.5652599 1.6031556 1.1880504 
		3.6780016 1.6031556 1.4611497 2.902734 1.6031556 0.83681089 2.4150615 1.6031556 0.13192405 
		2.9780602 1.6031556 -0.78713155 3.8729377 1.6031556 -0.97068602 2.5709724 1.6031556 
		0.97439301 3.4857678 1.6031556 1.7043728 4.5134029 1.6031556 1.303599 4.9244304 1.6031556 
		0.32082754 4.487721 1.6031556 -0.57937282 3.7708261 1.6031556 -1.2524047 2.7125084 
		1.6031556 -0.93751425 2.0512071 1.6031556 0.21318744 3.8602228 1.6031556 -0.94267046 
		4.5249963 1.6031556 -0.32881984 4.8949366 1.6031556 0.4471218 4.6942487 1.6031556 
		1.3008749 3.8666875 1.6031556 1.5408748 3.0642078 1.6031556 0.85854954 2.4900696 
		1.6031556 0.05160217 3.0100389 1.6031556 -0.7950303 4.5886998 1.6031556 -0.069387607 
		5.0789952 1.6031556 0.80240119 5.0372114 1.6031556 1.5449541 4.3989339 1.6031556 
		1.5989858 3.5580568 1.6031556 0.77232909 2.8437786 1.6031556 -0.19105607 3.1284158 
		1.6031556 -0.83043617 3.8042223 1.6031556 -0.83795166 2.8890276 1.6031556 -1.4550405 
		2.7259033 1.6031556 -1.5953318 2.6042247 1.6031556 -1.6899484 2.4254465 1.6031556 
		-1.8238173 5.5314646 1.6031556 2.0642464 5.3727784 1.6031556 1.7781599 5.2524467 
		1.6031556 1.5716077 5.0769496 1.6031556 1.2905034 4.8858848 1.6031556 0.97965252 
		4.7986917 1.6031556 0.86546791 4.7114987 1.6031556 0.75128299 4.6331511 1.6031556 
		0.64868438 4.7394047 1.6031556 0.77897042 4.8508873 1.6031556 0.91577649 4.9882073 
		1.6031556 1.0841748 5.0911684 1.6031556 1.2106376 5.0618834 1.6031556 1.1943604 4.3372731 
		1.6031556 0.17338693 3.4536936 1.6031556 -0.82847303 3.3948715 1.6031556 -0.92310649 
		3.3683312 1.6031556 -0.95446819 3.3636832 1.6031556 -0.9577629 3.3540514 1.6031556 
		-0.96782136 3.346899 1.6031556 -0.97478163 3.2684896 1.6031556 -1.0672585 3.171005 
		1.6031556 -1.1828948 3.0919275 1.6031556 -1.2756244 4.0853491 1.6031556 2.2566338 
		4.1098356 1.6031556 2.6336536 4.1173434 1.6031556 2.9125981 4.2172513 1.6031556 3.1828496 
		1.1135319 1.6031556 -0.65583646 1.3095183 1.6031556 -0.55786365 1.5276307 1.6031556 
		-0.55603659 1.8188114 1.6031556 -0.54022598 2.1647596 1.6031556 -0.50299019 2.2981508 
		1.6031556 -0.46633196 2.4484859 1.6031556 -0.40858814 2.5536671 1.6031556 -0.393915 
		2.6262877 1.6031556 -0.41505498 2.6865745 1.6031556 -0.45071113 2.7818391 1.6031556 
		-0.52375078 2.92223 1.6031556 -0.59022528 3.0228953 1.6031556 -0.55266017 3.8797965 
		1.6031556 0.54776281 4.8152504 1.6031556 1.6554234 4.8021522 1.6031556 1.725513 4.5791521 
		1.6031556 1.6891847 4.3453608 1.6031556 1.5898358 4.1819873 1.6031556 1.4972063 4.0022869 
		1.6031556 1.3850913 4.0215068 1.6031556 1.5252285 4.0428987 1.6031556 1.6811889 4.06429 
		1.6031556 1.8371495 4.9714131 1.6031556 0.0015672114 5.1375608 1.6031556 0.12964275 
		5.2561507 1.6031556 0.23593663 5.3472562 1.6031556 0.40237293 2.6052043 1.6031556 
		2.7556453 2.5653744 1.6031556 2.5480056 2.6641243 1.6031556 2.2670636;
	setAttr ".pt[166:331]" 2.7798889 1.6031556 1.9124511 2.9213402 1.6031556 1.5214732 
		2.9681644 1.6031556 1.3877625 3.0149887 1.6031556 1.2540518 3.0570638 1.6031556 1.1339059 
		3.2427628 1.6031556 1.1872344 3.422379 1.6031556 1.2343209 3.7306197 1.6031556 1.3028792 
		4.0078082 1.6031556 1.2939098 4.0769625 1.6031556 1.2276098 4.3475237 1.6031556 1.1015931 
		4.5698805 1.6031556 0.93718231 4.6995783 1.6031556 0.68387365 4.8619623 1.6031556 
		0.43532223 4.9072685 1.6031556 0.40206048 4.8348145 1.6031556 0.2405481 4.7294393 
		1.6031556 0.04383466 4.6494522 1.6031556 -0.10041455 4.5761776 1.6031556 -0.23664807 
		4.6441159 1.6031556 -0.20490608 4.7197251 1.6031556 -0.16957936 4.7953343 1.6031556 
		-0.13425274 -3.2853644 1.6031556 7.5170612 -4.537672 1.6031556 6.0072575 -3.2858775 
		1.6031556 8.0270786 -5.5917001 1.6031556 5.3850851 -0.74126548 1.6031556 6.4034486 
		-2.7466094 1.6031556 3.4390931 -2.4738147 1.6031556 7.0790987 -3.8057711 1.6031556 
		5.2942333 -3.8499751 1.6031556 7.0894337 -2.4105809 1.6031556 6.1109467 -3.30056 
		1.6031556 4.7422614 -4.8272243 1.6031556 5.9784126 -3.1175933 1.6031556 8.196784 
		-5.69522 1.6031556 5.2128086 -2.7580514 1.6031556 3.2667806 -0.49970767 1.6031556 
		6.5628934 -1.4631073 1.6031556 6.2959547 -3.5397398 1.6031556 7.6457753 -5.3306599 
		1.6031556 5.6022115 -3.0309048 1.6031556 3.9708514 -3.4586368 1.6031556 7.4333296 
		-2.3327532 1.6031556 6.7942429 -3.6376333 1.6031556 4.9729991 -4.7072611 1.6031556 
		5.9630551 -4.6804252 1.6031556 3.8618054 -1.5136539 1.6031556 7.8026762 -1.7516032 
		1.6031556 7.6403317 -2.2566261 1.6031556 7.3586082 -2.9283695 1.6031556 6.9520311 
		-2.6356175 1.6031556 7.4937053 -2.6292164 1.6031556 7.6289797 -4.4313731 1.6031556 
		5.3862958 -4.4711151 1.6031556 5.2095304 -4.410305 1.6031556 5.1078448 -4.5818744 
		1.6031556 4.4649658 -4.6210055 1.6031556 4.0695195 -4.5413213 1.6031556 6.8080916 
		-4.4892769 1.6031556 7.0050778 -4.3972812 1.6031556 7.0568914 -1.4607569 1.6031556 
		4.7107062 -1.5993359 1.6031556 4.6963258 -2.1648936 1.6031556 4.911984 -2.8022065 
		1.6031556 5.2588506 -2.8870652 1.6031556 5.8232365 -3.092689 1.6031556 6.1135101 
		-3.5147648 1.6031556 6.5269642 -4.0145774 1.6031556 6.8407912 -4.171319 1.6031556 
		6.8417048 -4.496542 1.6031556 6.6068487 -4.5557203 1.6031556 6.705205 -3.6976762 
		1.6031556 7.3979764 -2.5827768 1.6031556 7.1805277 -1.9216694 1.6031556 6.2242761 
		-2.5016634 1.6031556 5.0681453 -3.1943743 1.6031556 4.3261828 -4.5391822 1.6031556 
		4.7458897 -5.1368809 1.6031556 5.7617264 -1.0539987 1.6031556 6.3673201 -1.962189 
		1.6031556 7.5221205 -3.3974967 1.6031556 7.8720837 -4.5202422 1.6031556 6.9142141 
		-5.4904623 1.6031556 5.4808292 -4.604773 1.6031556 4.2335715 -2.8782127 1.6031556 
		3.6706724 -1.8571738 1.6031556 4.7877703 -2.709038 1.6031556 5.1997318 -2.2571547 
		1.6031556 6.1445799 -2.8212373 1.6031556 7.0228653 -3.8027627 1.6031556 7.1850801 
		-4.5148869 1.6031556 6.6373386 -4.9226379 1.6031556 5.9119635 -4.449677 1.6031556 
		4.9963622 -3.2672286 1.6031556 4.6137896 -4.3948765 1.6031556 6.6874409 -3.746644 
		1.6031556 7.1723537 -2.8260098 1.6031556 7.1274638 -2.3683143 1.6031556 6.3197966 
		-2.811125 1.6031556 5.4283047 -3.3945055 1.6031556 4.8003259 -4.4132094 1.6031556 
		5.1522818 -4.785099 1.6031556 5.9866652 -2.6053507 1.6031556 5.1339383 -2.089412 
		1.6031556 6.1844282 -2.7020068 1.6031556 7.101696 -3.7502182 1.6031556 7.2915273 
		-4.5353041 1.6031556 6.6712723 -5.0382314 1.6031556 5.8263025 -4.5029011 1.6031556 
		4.8605828 -3.2368207 1.6031556 4.4624953 -4.755003 1.6031556 5.980279 -4.2986493 
		1.6031556 6.7616096 -3.6205363 1.6031556 7.2899127 -2.7435973 1.6031556 7.2777152 
		-2.3310766 1.6031556 6.5212212 -2.8246562 1.6031556 5.5906725 -3.4890907 1.6031556 
		4.8562846 -4.4278069 1.6031556 5.1818104 -4.0590124 1.6031556 6.8796668 -3.3132081 
		1.6031556 7.5461359 -2.5790701 1.6031556 7.6651802 -2.3889036 1.6031556 7.0534983 
		-3.0151653 1.6031556 6.0543823 -3.8022022 1.6031556 5.1494641 -4.4878659 1.6031556 
		5.2897902 -4.6406841 1.6031556 5.9481339 -5.0462933 1.6031556 4.9215565 -5.14818 
		1.6031556 4.7320566 -5.2143846 1.6031556 4.5928626 -5.3066297 1.6031556 4.3894582 
		-2.1783495 1.6031556 8.2596331 -2.4235685 1.6031556 8.0430813 -2.5993738 1.6031556 
		7.8811064 -2.8361092 1.6031556 7.6492114 -3.0985417 1.6031556 7.3957095 -3.1912794 
		1.6031556 7.2859807 -3.2840173 1.6031556 7.1762514 -3.3673449 1.6031556 7.0776544 
		-3.2629864 1.6031556 7.2094631 -3.1533864 1.6031556 7.3477821 -3.0184968 1.6031556 
		7.5181336 -2.9171636 1.6031556 7.6459041 -2.926755 1.6031556 7.613802 -3.7678056 
		1.6031556 6.6863966 -4.5559702 1.6031556 5.6078639 -4.6357226 1.6031556 5.5300493 
		-4.6606359 1.6031556 5.4973803 -4.6628528 1.6031556 5.4921322 -4.6706018 1.6031556 
		5.4805608 -4.6758595 1.6031556 5.4720778 -4.749289 1.6031556 5.3755994 -4.8412285 
		1.6031556 5.255507 -4.9147611 1.6031556 5.1583219 -1.6791697 1.6031556 6.8888364 
		-1.3162601 1.6031556 6.9939094 -1.0454715 1.6031556 7.0612888 -0.80306298 1.6031556 
		7.217031 -3.8836186 1.6031556 3.359731 -3.8301325 1.6031556 3.5722129 -3.8753006 
		1.6031556 3.7856045 -3.9225433 1.6031556 4.0733624 -3.9606516 1.6031556 4.4192152 
		-3.9535682 1.6031556 4.5573711 -3.9295404 1.6031556 4.7166114 -3.9378536 1.6031556 
		4.8224854;
	setAttr ".pt[332:375]" -3.9741309 1.6031556 4.8888526 -4.0219288 1.6031556 
		4.9400506 -4.1137633 1.6031556 5.0173588 -4.2089009 1.6031556 5.1401477 -4.1938863 
		1.6031556 5.2465396 -3.3037267 1.6031556 6.3202367 -2.4234095 1.6031556 7.4722037 
		-2.3521433 1.6031556 7.4745007 -2.3396149 1.6031556 7.248908 -2.3863068 1.6031556 
		6.9992113 -2.4415953 1.6031556 6.8197279 -2.5123978 1.6031556 6.6201057 -2.3796835 
		1.6031556 6.6690421 -2.2319846 1.6031556 6.723506 -2.084286 1.6031556 6.7779694 -4.0721078 
		1.6031556 7.268682 -3.9828012 1.6031556 7.4585052 -3.9045279 1.6031556 7.5971966 
		-3.761606 1.6031556 7.7219944 -0.87322879 1.6031556 5.5508146 -1.0674264 1.6031556 
		5.4672203 -1.3630397 1.6031556 5.5031776 -1.7342585 1.6031556 5.5398912 -2.1465197 
		1.6031556 5.5938606 -2.2871754 1.6031556 5.6108036 -2.4278307 1.6031556 5.6277461 
		-2.5542181 1.6031556 5.6429715 -2.5421145 1.6031556 5.8357964 -2.5347979 1.6031556 
		6.021338 -2.5342011 1.6031556 6.33711 -2.6026304 1.6031556 6.6058693 -2.6822627 1.6031556 
		6.6591296 -2.8635678 1.6031556 6.8962202 -3.0719907 1.6031556 7.0779719 -3.34728 
		1.6031556 7.1500988 -3.6249604 1.6031556 7.2551708 -3.6671956 1.6031556 7.2922549 
		-3.809324 1.6031556 7.1867309 -3.9787414 1.6031556 7.0414796 -4.1023903 1.6031556 
		6.9323158 -4.219656 1.6031556 6.8314323 -4.2032833 1.6031556 6.9046111 -4.185061 
		1.6031556 6.9860525 -4.1668391 1.6031556 7.0674939;
	setAttr -s 376 ".vt";
	setAttr ".vt[0:165]"  -0.8796218 -1.90620661 0.47262412 0.34894398 -1.90620661 0.49170277
		 -1.12845075 1.089663029 0.67298853 1.066301346 1.089663029 0.76224142 -1.33408737 1.089663029 -1.20654535
		 0.90016907 1.089663029 -1.39049304 -0.98419893 -1.90620661 -0.095478743 0.40992469 -1.90620661 -0.14543441
		 -0.44928691 -1.054589391 0.58052444 -0.5362829 -1.054589391 -0.50622433 0.48121268 -1.054589391 -0.60869253
		 0.47663873 -1.054589391 0.62176657 -1.2773428 2.0032091141 0.65740544 1.19103765 2.0032091141 0.74519253
		 0.9887948 2.0032091141 -1.45251572 -1.50671971 2.0032091141 -1.2619319 -0.99837446 0.017536819 -0.89626294
		 -0.8426618 0.017536819 0.64733297 0.85786009 0.017536819 0.71997464 0.75207126 0.017536819 -1.043034196
		 -0.77075148 -1.57014 0.52437574 -0.90045792 -1.57014 -0.2761237 0.50080472 -1.57014 -0.3535738
		 0.43706805 -1.57014 0.55716544 1.45253134 2.0032091141 -0.28039637 -1.71423984 2.0032091141 -0.28039637
		 -1.5416075 1.089663029 -0.2279098 -1.20589459 0.017536819 -0.091856852 -0.74380302 -1.054589391 0.076613411
		 -1.12315607 -1.57014 0.14620361 -1.19171906 -1.90620661 0.19615501 0.61043775 -1.90620661 0.19615501
		 0.71234149 -1.57014 0.14620361 0.73813248 -1.054589391 0.076613411 1.11935377 0.017536819 -0.091856852
		 1.32779503 1.089663029 -0.2279098 -0.040653422 0.017536819 0.80770463 -0.1572579 1.089663029 0.8595829
		 -0.2186531 2.0032091141 0.83499348 -0.22525544 2.0032091141 -1.51940823 -0.16386025 1.089663029 -1.45738554
		 -0.04725571 0.017536819 -1.096619606 0.033436865 -1.054589391 -0.6493355 -0.20884445 -1.57014 -0.38645506
		 -0.26989862 -1.90620661 -0.17216019 -0.30617076 -1.90620661 0.19615501 -0.26329634 -1.90620661 0.56333715
		 -0.20224217 -1.57014 0.64022934 0.040039137 -1.054589391 0.70687866 0.015233569 -0.51852632 0.77436608
		 -0.65969837 -0.51852632 0.62722224 -0.99097151 -0.51852632 -0.0024778582 -0.78345138 -0.51852632 -0.70048213
		 0.008631289 -0.51852632 -0.87091017 0.6427108 -0.51852632 -0.82379591 0.96543407 -0.51852632 -0.0024778582
		 0.70394039 -0.51852632 0.68794507 -1.19374084 0.55359995 -1.068020105 -1.40126097 0.55359995 -0.17146753
		 -1.0089743137 0.55359995 0.66667444 -0.1007414 0.55359995 0.83905065 0.97982943 0.55359995 0.75037634
		 1.24132311 0.55359995 -0.17146753 0.83873069 0.55359995 -1.2353704 -0.10734372 0.55359995 -1.29560935
		 0.025747135 -0.88840985 -0.71802384 -0.61290443 -0.88840985 -0.56794208 -0.82042456 -0.88840985 0.052095778
		 -0.51451361 -0.88840985 0.59500021 0.032349411 -0.88840985 0.7277993 0.54652148 -0.88840985 0.64228261
		 0.80801523 -0.88840985 0.052095778 0.53086442 -0.88840985 -0.67537546 -0.039202187 -1.19723535 0.68885946
		 -0.53031862 -1.19723535 0.56260538 -0.86962521 -1.19723535 0.095466889 -0.65484357 -1.19723535 -0.44491625
		 -0.045804467 -1.19723535 -0.5784927 0.48972195 -1.19723535 -0.54003876 0.7175746 -1.19723535 0.095466889
		 0.45608082 -1.19723535 0.6044358 0.017189212 -0.70346808 -0.79446697 -0.69817793 -0.70346808 -0.63421208
		 -0.90569806 -0.70346808 0.02480896 -0.58710599 -0.70346808 0.61111027 0.02379149 -0.70346808 0.75108266
		 0.63370275 -0.70346808 0.66511381 0.8951965 -0.70346808 0.02480896 0.59280694 -0.70346808 -0.74958569
		 0.44739032 -1.33881664 0.58723509 -0.11317345 -1.33881664 0.67097497 -0.6372003 -1.33881664 0.54715562
		 -0.97532552 -1.33881664 0.11418051 -0.7678054 -1.33881664 -0.38406661 -0.11977574 -1.33881664 -0.50817823
		 0.49951068 -1.33881664 -0.47189841 0.70888406 -1.33881664 0.11418051 -0.2648434 -1.83765149 0.60028756
		 -0.88289344 -1.83765149 0.49762768 -1.22907078 -1.83765149 0.18587331 -1.0050150156 -1.83765149 -0.14698339
		 -0.27144569 -1.83765137 -0.23321295 0.47921193 -1.83765149 -0.20397949 0.67972493 -1.83765149 0.18587331
		 0.41823116 -1.83765149 0.51880324 1.078632832 0.017536819 0.3140589 1.21113837 0.55359995 0.2894544
		 1.30508006 1.089663029 0.26716581 1.44059157 2.0032091141 0.23239808 -1.67655754 2.0032091141 0.22345339
		 -1.47460496 1.089663029 0.25822115 -1.32653606 0.55359995 0.28050971 -1.1204201 0.017536819 0.30511421
		 -0.89367139 -0.51852632 0.3337889 -0.80370605 -0.70346808 0.33601668 -0.71374053 -0.88840985 0.3382445
		 -0.63290304 -1.054589391 0.34024531 -0.73820895 -1.19723535 0.34100667 -0.84875029 -1.33881664 0.34176311
		 -0.98485512 -1.57014 0.34273982 -1.087002397 -1.83765149 0.34339359 -1.067564249 -1.90620661 0.33548111
		 -0.28473353 -1.90620661 0.38226518 0.55113846 -1.90620661 0.34392887 0.62042564 -1.83765149 0.35233828
		 0.64615238 -1.57014 0.35168451 0.64958477 -1.33881664 0.3507078 0.65827531 -1.19723535 0.34995136
		 0.66448021 -1.054589391 0.34919 0.74039972 -0.88840985 0.34718919 0.83511198 -0.70346808 0.34496137
		 0.91141701 -0.51852632 0.34273359 -1.20308971 0.017536819 -0.55813837 -1.39678776 0.55359995 -0.69411188
		 -1.53593588 1.089663029 -0.79989433 -1.70709407 2.0032091141 -0.85714895 1.38504338 2.0032091141 -0.86645603
		 1.26030707 1.089663029 -0.80920142 1.17383516 0.55359995 -0.70341897 1.051865816 0.017536819 -0.56744552
		 0.89794618 -0.51852632 -0.4131369 0.8277086 -0.70346808 -0.36238837 0.74052727 -0.88840985 -0.31163985
		 0.69209325 -1.054589391 -0.26603955 0.67392159 -1.19723535 -0.22228594 0.66767716 -1.33881664 -0.17885895
		 0.66596216 -1.57014 -0.1036851 0.64333558 -1.83765149 -0.0090530887 0.58549571 -1.90620661 0.025360305
		 -0.28803468 -1.90620661 0.011997414 -1.19592059 -1.90620661 0.034150366 -1.22500443 -1.83765149 0.00025404245
		 -1.1197685 -1.57014 -0.09437795 -0.979527 -1.33881664 -0.1695518 -0.87019593 -1.19723535 -0.2129788
		 -0.74494433 -1.054589391 -0.2567324 -0.82091153 -0.88840985 -0.3023327 -0.90545684 -0.70346808 -0.35308123
		 -0.99000216 -0.51852632 -0.40382975 -0.4496527 0.017536819 0.75931764 -0.57737988 0.55359995 0.79019147
		 -0.67581141 1.089663029 0.80639017 -0.79282516 2.0032091141 0.78557098 -0.8659876 2.0032091141 -1.47665489
		 -0.74897379 1.089663029 -1.4146322 -0.65054226 0.55359995 -1.25618279;
	setAttr ".vt[166:331]" -0.52281511 0.017536819 -1.060519695 -0.38741004 -0.51852632 -0.8380459
		 -0.34049436 -0.70346808 -0.76271915 -0.29357865 -0.88840985 -0.68739247 -0.251423 -1.054589391 -0.61970687
		 -0.350324 -1.19723535 -0.54995859 -0.44379056 -1.33881664 -0.48073119 -0.59820908 -1.57014 -0.35712415
		 -0.70258892 -1.83765149 -0.21825989 -0.69734979 -1.90620661 -0.15847965 -0.74197763 -1.90620661 0.023073889
		 -0.74894488 -1.90620661 0.19615501 -0.67614889 -1.90620661 0.35887313 -0.61850071 -1.90620661 0.53568459
		 -0.62003648 -1.83765149 0.57085752 -0.5127452 -1.57014 0.59885186 -0.37534872 -1.33881664 0.62458301
		 -0.2735309 -1.19723535 0.64212561 -0.17826065 -1.054589391 0.65980059 -0.22041628 -0.88840985 0.68051893
		 -0.26733199 -0.70346808 0.70357621 -0.31424767 -0.51852632 0.72663355 -0.8796218 -1.90620661 -6.22110367
		 0.34894398 -1.90620661 -6.24018192 -1.12845075 1.089663029 -6.42146778 1.066301346 1.089663029 -6.51072073
		 -1.33408737 1.089663029 -4.54193401 0.90016907 1.089663029 -4.35798645 -0.98419893 -1.90620661 -5.65300083
		 0.40992469 -1.90620661 -5.60304499 -0.44928691 -1.054589391 -6.32900381 -0.5362829 -1.054589391 -5.24225521
		 0.48121268 -1.054589391 -5.13978672 0.47663873 -1.054589391 -6.37024593 -1.2773428 2.0032091141 -6.40588474
		 1.19103765 2.0032091141 -6.49367189 0.9887948 2.0032091141 -4.29596376 -1.50671971 2.0032091141 -4.48654747
		 -0.99837446 0.017536819 -4.85221624 -0.8426618 0.017536819 -6.39581251 0.85786009 0.017536819 -6.46845388
		 0.75207126 0.017536819 -4.70544529 -0.77075148 -1.57014 -6.27285528 -0.90045792 -1.57014 -5.47235584
		 0.50080472 -1.57014 -5.39490557 0.43706805 -1.57014 -6.30564499 1.45253134 2.0032091141 -5.4680829
		 -1.71423984 2.0032091141 -5.4680829 -1.5416075 1.089663029 -5.5205698 -1.20589459 0.017536819 -5.65662241
		 -0.74380302 -1.054589391 -5.82509279 -1.12315607 -1.57014 -5.89468288 -1.19171906 -1.90620661 -5.94463444
		 0.61043775 -1.90620661 -5.94463444 0.71234149 -1.57014 -5.89468288 0.73813248 -1.054589391 -5.82509279
		 1.11935377 0.017536819 -5.65662241 1.32779503 1.089663029 -5.5205698 -0.040653422 0.017536819 -6.55618382
		 -0.1572579 1.089663029 -6.60806227 -0.2186531 2.0032091141 -6.58347273 -0.22525544 2.0032091141 -4.22907114
		 -0.16386025 1.089663029 -4.29109383 -0.04725571 0.017536819 -4.65185976 0.033436865 -1.054589391 -5.099143982
		 -0.20884445 -1.57014 -5.36202431 -0.26989862 -1.90620661 -5.57631922 -0.30617076 -1.90620661 -5.94463444
		 -0.26329634 -1.90620661 -6.31181669 -0.20224217 -1.57014 -6.38870859 0.040039137 -1.054589391 -6.45535803
		 0.015233569 -0.51852632 -6.52284527 -0.65969837 -0.51852632 -6.37570143 -0.99097151 -0.51852632 -5.74600172
		 -0.78345138 -0.51852632 -5.047997475 0.008631289 -0.51852632 -4.8775692 0.6427108 -0.51852632 -4.92468357
		 0.96543407 -0.51852632 -5.74600172 0.70394039 -0.51852632 -6.43642426 -1.19374084 0.55359995 -4.68045902
		 -1.40126097 0.55359995 -5.57701206 -1.0089743137 0.55359995 -6.41515398 -0.1007414 0.55359995 -6.58753014
		 0.97982943 0.55359995 -6.49885559 1.24132311 0.55359995 -5.57701206 0.83873069 0.55359995 -4.51310921
		 -0.10734372 0.55359995 -4.45286989 0.025747135 -0.88840985 -5.030455589 -0.61290443 -0.88840985 -5.18053722
		 -0.82042456 -0.88840985 -5.80057526 -0.51451361 -0.88840985 -6.34347963 0.032349411 -0.88840985 -6.47627878
		 0.54652148 -0.88840985 -6.39076185 0.80801523 -0.88840985 -5.80057526 0.53086442 -0.88840985 -5.073103905
		 -0.039202187 -1.19723535 -6.43733883 -0.53031862 -1.19723535 -6.31108475 -0.86962521 -1.19723535 -5.84394646
		 -0.65484357 -1.19723535 -5.30356312 -0.045804467 -1.19723535 -5.16998672 0.48972195 -1.19723535 -5.20844078
		 0.7175746 -1.19723535 -5.84394646 0.45608082 -1.19723535 -6.35291529 0.017189212 -0.70346808 -4.95401239
		 -0.69817793 -0.70346808 -5.11426735 -0.90569806 -0.70346808 -5.77328825 -0.58710599 -0.70346808 -6.35958958
		 0.02379149 -0.70346808 -6.49956226 0.63370275 -0.70346808 -6.41359329 0.8951965 -0.70346808 -5.77328825
		 0.59280694 -0.70346808 -4.99889374 0.44739032 -1.33881664 -6.33571434 -0.11317345 -1.33881664 -6.41945457
		 -0.6372003 -1.33881664 -6.29563522 -0.97532552 -1.33881664 -5.86265993 -0.7678054 -1.33881664 -5.36441278
		 -0.11977574 -1.33881664 -5.24030113 0.49951068 -1.33881664 -5.27658081 0.70888406 -1.33881664 -5.86265993
		 -0.2648434 -1.83765149 -6.3487668 -0.88289344 -1.83765149 -6.2461071 -1.22907078 -1.83765149 -5.93435287
		 -1.0050150156 -1.83765149 -5.60149574 -0.27144569 -1.83765137 -5.51526642 0.47921193 -1.83765149 -5.54449987
		 0.67972493 -1.83765149 -5.93435287 0.41823116 -1.83765149 -6.26728249 1.078632832 0.017536819 -6.062538147
		 1.21113837 0.55359995 -6.037933826 1.30508006 1.089663029 -6.015645027 1.44059157 2.0032091141 -5.9808774
		 -1.67655754 2.0032091141 -5.97193289 -1.47460496 1.089663029 -6.0067005157 -1.32653606 0.55359995 -6.028988838
		 -1.1204201 0.017536819 -6.053593636 -0.89367139 -0.51852632 -6.082268238 -0.80370605 -0.70346808 -6.084496021
		 -0.71374053 -0.88840985 -6.086723804 -0.63290304 -1.054589391 -6.088724613 -0.73820895 -1.19723535 -6.089486122
		 -0.84875029 -1.33881664 -6.090242386 -0.98485512 -1.57014 -6.091218948 -1.087002397 -1.83765149 -6.091873169
		 -1.067564249 -1.90620661 -6.083960533 -0.28473353 -1.90620661 -6.13074446 0.55113846 -1.90620661 -6.09240818
		 0.62042564 -1.83765149 -6.10081768 0.64615238 -1.57014 -6.10016394 0.64958477 -1.33881664 -6.099187374
		 0.65827531 -1.19723535 -6.098430634 0.66448021 -1.054589391 -6.097669601 0.74039972 -0.88840985 -6.095668793
		 0.83511198 -0.70346808 -6.093440533 0.91141701 -0.51852632 -6.091212749 -1.20308971 0.017536819 -5.190341
		 -1.39678776 0.55359995 -5.054367542 -1.53593588 1.089663029 -4.94858503 -1.70709407 2.0032091141 -4.89133024
		 1.38504338 2.0032091141 -4.88202333 1.26030707 1.089663029 -4.93927813 1.17383516 0.55359995 -5.045060158
		 1.051865816 0.017536819 -5.18103409 0.89794618 -0.51852632 -5.33534241 0.8277086 -0.70346808 -5.38609123
		 0.74052727 -0.88840985 -5.43683958 0.69209325 -1.054589391 -5.48243999;
	setAttr ".vt[332:375]" 0.67392159 -1.19723535 -5.52619362 0.66767716 -1.33881664 -5.56962061
		 0.66596216 -1.57014 -5.64479446 0.64333558 -1.83765149 -5.73942614 0.58549571 -1.90620661 -5.77383947
		 -0.28803468 -1.90620661 -5.76047659 -1.19592059 -1.90620661 -5.78262997 -1.22500443 -1.83765149 -5.74873352
		 -1.1197685 -1.57014 -5.65410137 -0.979527 -1.33881664 -5.57892752 -0.87019593 -1.19723535 -5.53550053
		 -0.74494433 -1.054589391 -5.4917469 -0.82091153 -0.88840985 -5.44614649 -0.90545684 -0.70346808 -5.39539814
		 -0.99000216 -0.51852632 -5.34464979 -0.4496527 0.017536819 -6.50779724 -0.57737988 0.55359995 -6.53867102
		 -0.67581141 1.089663029 -6.55486965 -0.79282516 2.0032091141 -6.53405046 -0.8659876 2.0032091141 -4.27182436
		 -0.74897379 1.089663029 -4.33384705 -0.65054226 0.55359995 -4.4922967 -0.52281511 0.017536819 -4.68795967
		 -0.38741004 -0.51852632 -4.91043329 -0.34049436 -0.70346808 -4.98576021 -0.29357865 -0.88840985 -5.061086655
		 -0.251423 -1.054589391 -5.12877274 -0.350324 -1.19723535 -5.19852066 -0.44379056 -1.33881664 -5.26774836
		 -0.59820908 -1.57014 -5.39135504 -0.70258892 -1.83765149 -5.53021955 -0.69734979 -1.90620661 -5.58999968
		 -0.74197763 -1.90620661 -5.77155304 -0.74894488 -1.90620661 -5.94463444 -0.67614889 -1.90620661 -6.10735226
		 -0.61850071 -1.90620661 -6.28416395 -0.62003648 -1.83765149 -6.31933689 -0.5127452 -1.57014 -6.34733105
		 -0.37534872 -1.33881664 -6.37306213 -0.2735309 -1.19723535 -6.39060497 -0.17826065 -1.054589391 -6.4082799
		 -0.22041628 -0.88840985 -6.42899847 -0.26733199 -0.70346808 -6.45205545 -0.31424767 -0.51852632 -6.47511292;
	setAttr -s 734 ".ed";
	setAttr ".ed[0:165]"  0 179 0 2 161 1 4 164 1 6 175 0 0 98 0 1 104 0 2 110 1
		 3 107 1 4 57 0 5 63 0 6 150 0 7 148 0 8 68 0 9 76 0 8 116 1 10 78 0 9 170 1 11 70 0
		 10 143 1 11 48 1 2 12 0 3 13 0 12 162 0 5 14 0 13 108 0 4 15 0 15 163 0 12 109 0
		 16 52 0 17 59 0 16 132 1 18 61 0 17 159 1 19 54 0 18 105 1 19 41 1 20 91 0 21 100 0
		 20 119 1 22 102 0 21 173 1 23 89 0 22 146 1 23 47 1 24 136 0 25 135 0 26 134 1 25 26 1
		 27 112 1 26 58 1 28 155 1 27 51 1 29 152 1 28 75 1 30 121 0 29 99 1 31 123 0 30 177 1
		 32 125 1 31 103 1 33 128 1 32 96 1 34 139 1 33 71 1 35 137 1 34 62 1 35 24 1 36 18 1
		 37 3 1 36 60 1 38 13 0 37 38 1 39 14 0 40 5 1 39 40 1 41 166 1 40 64 1 42 10 1 41 53 1
		 43 22 1 42 77 1 44 7 0 43 101 1 45 31 1 44 149 1 46 1 0 45 122 1 47 181 1 46 97 1
		 48 184 1 47 90 1 48 69 1 49 36 1 50 17 0 49 187 1 51 83 1 50 113 1 52 82 0 51 158 1
		 53 81 1 52 167 1 54 88 0 53 54 1 55 34 1 54 140 1 56 18 0 55 131 1 56 49 1 57 16 0
		 58 27 1 57 133 1 59 2 0 58 111 1 60 37 1 59 160 1 61 3 0 60 61 1 62 35 1 61 106 1
		 63 19 0 62 138 1 64 41 1 63 64 1 64 165 1 65 42 1 66 9 0 65 169 1 67 28 1 66 156 1
		 68 84 0 67 115 1 69 85 1 68 185 1 70 86 0 69 70 1 71 87 1 70 129 1 72 10 0 71 142 1
		 72 65 1 73 48 1 74 8 0 73 183 1 75 92 1 74 117 1 76 93 0 75 154 1 77 94 1 76 171 1
		 78 95 0 77 78 1 79 33 1 78 144 1 80 11 0 79 127 1 80 73 1 81 65 1 82 66 0 81 168 1
		 83 67 1 82 157 1 84 50 0 83 114 1 85 49 1 84 186 1 86 56 0;
	setAttr ".ed[166:331]" 85 86 1 87 55 1 86 130 1 88 72 0 87 141 1 88 81 1 89 80 0
		 90 73 1 89 90 1 91 74 0 90 182 1 92 29 1 91 118 1 93 21 0 92 153 1 94 43 1 93 172 1
		 95 22 0 94 95 1 96 79 1 95 145 1 96 126 1 97 47 1 98 20 0 97 180 1 99 30 1 98 120 1
		 100 6 0 99 151 1 101 44 1 100 174 1 102 7 0 101 102 1 103 32 1 102 147 1 104 23 0
		 103 124 1 104 97 1 105 34 1 106 62 1 105 106 1 107 35 1 106 107 1 108 24 0 107 108 1
		 109 25 0 110 26 1 109 110 1 111 59 1 110 111 1 112 17 1 111 112 1 113 51 1 112 113 1
		 114 84 1 113 114 1 115 68 1 114 115 1 116 28 1 115 116 1 117 75 1 116 117 1 118 92 1
		 117 118 1 119 29 1 118 119 1 120 99 1 119 120 1 121 0 0 120 121 1 122 46 1 121 178 1
		 123 1 0 122 123 1 124 104 1 123 124 1 125 23 1 124 125 1 126 89 1 125 126 1 127 80 1
		 126 127 1 128 11 1 127 128 1 129 71 1 128 129 1 130 87 1 129 130 1 131 56 1 130 131 1
		 131 105 1 132 27 1 133 58 1 132 133 1 134 4 1 133 134 1 135 15 0 134 135 1 136 14 0
		 137 5 1 136 137 1 138 63 1 137 138 1 139 19 1 138 139 1 140 55 1 139 140 1 141 88 1
		 140 141 1 142 72 1 141 142 1 143 33 1 142 143 1 144 79 1 143 144 1 145 96 1 144 145 1
		 146 32 1 145 146 1 147 103 1 146 147 1 148 31 0 147 148 1 149 45 1 148 149 1 150 30 0
		 149 176 1 151 100 1 150 151 1 152 21 1 151 152 1 153 93 1 152 153 1 154 76 1 153 154 1
		 155 9 1 154 155 1 156 67 1 155 156 1 157 83 1 156 157 1 158 52 1 157 158 1 158 132 1
		 159 36 1 160 60 1 159 160 1 161 37 1 160 161 1 162 38 0 161 162 1 163 39 0 164 40 1
		 163 164 1 165 57 1 164 165 1 166 16 1 165 166 1 167 53 1 166 167 1 168 82 1 167 168 1
		 169 66 1 168 169 1 170 42 1 169 170 1;
	setAttr ".ed[332:497]" 171 77 1 170 171 1 172 94 1 171 172 1 173 43 1 172 173 1
		 174 101 1 173 174 1 175 44 0 174 175 1 176 150 1 175 176 1 177 45 1 176 177 1 178 122 1
		 177 178 1 179 46 0 178 179 1 180 98 1 179 180 1 181 20 1 180 181 1 182 91 1 181 182 1
		 183 74 1 182 183 1 184 8 1 183 184 1 185 69 1 184 185 1 186 85 1 185 186 1 187 50 1
		 186 187 1 187 159 1 188 367 0 367 368 1 368 286 1 188 286 0 288 362 1 362 363 1 194 363 0
		 288 194 0 309 366 1 366 367 1 309 188 0 311 189 0 311 312 1 312 292 1 189 292 0 286 308 1
		 308 309 1 299 247 1 247 190 0 190 298 1 298 299 1 192 352 1 352 353 1 353 245 1 192 245 0
		 249 294 1 294 295 1 191 295 1 249 191 0 247 348 1 348 349 1 190 349 1 349 350 1 200 350 0
		 190 200 0 295 296 1 201 296 0 191 201 0 192 203 0 203 351 0 351 352 1 200 297 0 297 298 1
		 302 272 1 272 238 0 238 301 1 301 302 1 272 374 1 374 375 1 375 238 1 274 318 1 318 319 1
		 319 244 1 274 244 0 240 355 1 355 356 1 356 270 1 240 270 0 208 307 1 208 279 0 279 306 1
		 306 307 1 281 360 1 360 361 1 209 361 1 281 209 0 313 211 1 313 314 1 314 277 1 211 277 0
		 369 208 1 369 370 1 370 279 1 322 192 1 322 323 1 323 203 0 245 321 1 321 322 1 270 345 1
		 345 346 1 346 240 1 340 209 1 340 341 1 341 281 1 194 338 0 338 339 1 339 288 1 363 364 1
		 364 338 1 335 336 1 195 336 0 290 195 0 290 335 1 333 334 1 210 334 1 283 210 0 283 333 1
		 328 329 1 329 276 1 242 276 0 242 328 1 325 326 1 326 251 1 193 251 0 325 193 1 324 325 1
		 193 202 0 324 202 0 248 249 1 225 191 1 248 225 1 225 226 1 226 201 0 228 193 1 227 228 1
		 227 202 0 228 252 1 251 252 1 276 269 1 241 269 1 241 242 1 282 231 1 282 283 1 231 210 1
		 289 232 1 289 290 1 232 195 0 232 337 1 336 337 1 310 234 1 310 311 1;
	setAttr ".ed[498:663]" 234 189 0 292 285 1 234 285 1 277 278 1 235 278 1 211 235 1
		 244 237 1 273 237 1 273 274 1 375 347 1 205 347 1 238 205 0 300 205 1 300 301 1 346 320 1
		 204 320 1 204 240 0 354 204 1 354 355 1 229 241 1 207 229 1 207 242 0 327 328 1 327 207 1
		 319 293 1 206 293 1 244 206 0 237 224 1 224 206 1 320 321 1 245 204 0 205 247 0 299 300 1
		 347 348 1 206 249 0 224 248 1 293 294 1 326 327 1 251 207 0 252 229 1 353 354 1 357 254 1
		 357 358 1 197 358 1 254 197 0 343 197 1 343 344 1 254 344 1 196 304 1 196 256 0 303 256 1
		 303 304 1 372 196 1 372 373 1 256 373 1 257 258 1 236 257 1 199 236 1 199 258 0 316 199 1
		 316 317 1 258 317 1 330 260 1 330 331 1 198 331 1 260 198 0 253 230 1 260 253 1 230 198 1
		 371 262 1 371 372 1 262 196 0 262 305 1 304 305 1 342 264 1 342 343 1 197 264 0 358 359 1
		 264 359 1 265 266 1 230 265 1 198 266 0 331 332 1 266 332 1 315 268 1 315 316 1 268 199 0
		 261 236 1 268 261 1 356 357 1 270 254 0 344 345 1 256 272 0 302 303 1 373 374 1 257 273 1
		 258 274 0 317 318 1 329 330 1 276 260 0 269 253 1 278 261 1 277 268 0 370 371 1 279 262 0
		 305 306 1 341 342 1 264 281 0 359 360 1 265 282 1 266 283 0 332 333 1 314 315 1 368 369 1
		 286 208 0 307 308 1 339 340 1 209 288 0 361 362 1 231 289 1 210 290 0 334 335 1 312 313 1
		 292 211 0 285 235 1 293 222 1 222 250 1 294 250 1 250 223 1 295 223 1 223 212 1 296 212 0
		 298 214 1 297 213 0 213 214 1 246 299 1 214 246 1 215 300 1 246 215 1 301 239 1 215 239 1
		 271 302 1 239 271 1 255 303 1 271 255 1 304 216 1 255 216 1 305 263 1 216 263 1 306 280 1
		 263 280 1 307 217 1 280 217 1 308 287 1 217 287 1 218 309 0 287 218 1 218 365 1 365 366 1
		 233 310 1 233 219 1 219 311 0 219 291 1 291 312 1 291 220 1 220 313 1;
	setAttr ".ed[664:733]" 220 284 1 284 314 1 284 267 1 267 315 1 267 221 1 221 316 1
		 221 259 1 317 259 1 259 275 1 318 275 1 275 243 1 243 319 1 243 222 1 320 215 1 321 246 1
		 214 322 1 213 323 0 223 325 1 212 324 0 250 326 1 222 327 1 328 243 1 275 329 1 259 330 1
		 331 221 1 332 267 1 333 284 1 334 220 1 335 291 1 336 219 0 337 233 1 364 365 1 338 218 0
		 287 339 1 217 340 1 280 341 1 263 342 1 216 343 1 344 255 1 345 271 1 239 346 1 347 224 1
		 348 248 1 349 225 1 350 226 0 352 228 1 351 227 0 252 353 1 229 354 1 355 241 1 269 356 1
		 253 357 1 358 230 1 359 265 1 360 282 1 361 231 1 362 289 1 363 232 0 337 364 1 365 233 1
		 366 310 1 367 234 0 285 368 1 235 369 1 278 370 1 261 371 1 236 372 1 373 257 1 374 273 1
		 237 375 1;
	setAttr -s 508 ".n";
	setAttr ".n[0:165]" -type "float3"  0.72552824 -0.2123626 0.30035803 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 0.72552824 -0.2123626 0.30035803 -0.62316185 -0.52934784
		 0.27650982 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.62316185 -0.52934784 0.27650982
		 0.57335591 -0.2734873 0.51835573 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.72552824 -0.2123626
		 0.30035803 0.52409637 -0.71317333 -0.20645286 0.23888576 -0.89823514 -0.26013643
		 0.46102574 -0.21438274 -0.63522017 0.71730882 -0.2106346 -0.32022819 0.57335591 -0.2734873
		 0.51835573 0.72552824 -0.2123626 0.30035803 0.72552824 -0.2123626 0.30035803 0.57335591
		 -0.2734873 0.51835573 0.27836767 -0.2768881 0.72023088 0.66921371 -0.18325025 0.41975707
		 0.67453426 -0.10734769 0.42812312 0.267818 -0.1996748 0.74044269 -0.62646699 -0.22468938
		 0.46975139 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.59655082 -0.39075163 0.43733308
		 0.66285938 -0.1266519 -0.44270375 0.21691278 -0.18571094 -0.75921386 0.20522293 -0.13849595
		 -0.76891142 0.6645869 -0.070399202 -0.44816396 0.66921371 -0.18325025 0.41975707
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.67453426 -0.10734769 0.42812312 1e+20 1e+20
		 1e+20 0.61238027 0.43189168 0.38764632 0.14610071 0.65958321 -0.58605301 0.58992994
		 0.46458751 -0.39791325 -0.58696562 0.40337074 0.44286957 1e+20 1e+20 1e+20 0.61238027
		 0.43189168 0.38764632 0.19608539 0.63979977 0.58562207 0.36079857 -0.38838261 0.64664465
		 0.66525465 -0.28950876 0.38605887 0.67062914 -0.24183309 0.39776784 0.33865535 -0.34984148
		 0.67231667 0.66525465 -0.28950876 0.38605887 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 0.67062914 -0.24183309 0.39776784 0.65231407 -0.28884199 -0.40784878 0.27955574 -0.38446018
		 -0.68711782 0.26669696 -0.28625417 -0.72227961 0.66295451 -0.20149045 -0.42426744
		 -0.58563387 -0.48094669 0.39165938 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.59217906
		 -0.48915458 0.3748953 0.52699363 0.32217577 0.54861647 0.72508204 0.095926978 0.33769959
		 0.70185083 0.19929731 0.35704967 0.45768312 0.44556513 0.55502981 -0.69865543 -0.068987295
		 0.39310858 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.69748145 -0.19768915 0.36607507
		 0.71544093 -0.12973833 -0.35071698 0.44088963 -0.064068459 -0.66984534 0.40170285
		 -0.044571109 -0.69503891 0.70064574 -0.1244579 -0.3805528 0.72508204 0.095926978
		 0.33769959 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.70185083 0.19929731 0.35704967 -0.62646699
		 -0.22468938 0.46975139 -0.14424592 -0.22795591 0.76900297 -0.11219013 0.63516545
		 0.61043543 -0.58696562 0.40337074 0.44286957 -0.59655082 -0.39075163 0.43733308 -0.14896508
		 -0.3347697 0.74240786 -0.59217906 -0.48915458 0.3748953 -0.18749963 -0.4696919 0.68419063
		 -0.16389289 -0.43219605 0.70586723 -0.58563387 -0.48094669 0.39165938 -0.69748145
		 -0.19768915 0.36607507 -0.33430809 0.2502349 0.70251787 -0.28037748 0.41287357 0.67604876
		 -0.69865543 -0.068987295 0.39310858 -0.62316185 -0.52934784 0.27650982 -0.30667269
		 -0.43921092 0.65353972 -0.30667269 -0.43921092 0.65353972 -0.62316185 -0.52934784
		 0.27650982 -0.62316185 -0.52934784 0.27650982 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 -0.30667269 -0.43921092 0.65353972 -0.23303472 -0.33548459 -0.72023976 -0.099634767
		 -0.93030906 -0.27737951 -0.33905375 -0.86951262 -0.20631582 -0.54709172 -0.48391649
		 -0.44181949 -0.18957229 -0.10389441 -0.77641439 -0.21907528 -0.14262998 -0.76458937
		 -0.5586639 -0.390829 -0.48475623 -0.5551368 -0.36460373 -0.50170696 -0.11717438 -0.32919034
		 -0.74968135 -0.12511827 -0.42160773 -0.71783882 -0.52508098 -0.4913789 -0.46271384
		 -0.52922362 -0.44433358 -0.48801833 -0.092739157 -0.1558574 -0.78831518 -0.09910056
		 -0.21470498 -0.77854943 -0.54952264 -0.33416584 -0.52119625 -0.57753193 -0.19055769
		 -0.53734171 -0.069727011 0.65520638 -0.60304022 -0.5225625 0.46217349 -0.4844847
		 0.80227458 -0.056087367 0.007153946 0.66285938 -0.1266519 -0.44270375 0.6645869 -0.070399202
		 -0.44816396 0.80354309 -0.0037942594 0.0060224463 0.56381559 0.71249175 0.0062632016
		 0.58992994 0.46458751 -0.39791325 -0.57753193 -0.19055769 -0.53734171 -0.7945137
		 -0.14956456 0.0055095279 -0.58850694 0.68087828 0.0055268011 -0.5225625 0.46217349
		 -0.4844847 -0.76169157 -0.31852785 0.0061276266 -0.54952264 -0.33416584 -0.52119625
		 -0.52508098 -0.4913789 -0.46271384 -0.73972178 -0.39046577 0.0094315549 -0.73926115
		 -0.39191762 0.0060571106 -0.52922362 -0.44433358 -0.48801833 -0.70884168 -0.47085509
		 0.010485901 -0.72107363 -0.44120643 0.0089847269 -0.5551368 -0.36460373 -0.50170696
		 -0.5586639 -0.390829 -0.48475623 -0.58211946 -0.68926537 0.0093552377 -0.58211946
		 -0.68926537 0.0093552377 -0.54709172 -0.48391649 -0.44181949 -0.33905375 -0.86951262
		 -0.20631582 -1.4549447e-07 -1 -3.2306262e-23 -0.58211946 -0.68926537 0.0093552377
		 -0.33905375 -0.86951262 -0.20631582 -0.099634767 -0.93030906 -0.27737951 0.7217856
		 -0.43892848 0.018653003 -7.273259e-08 -1 -1.6149879e-23 0.23888576 -0.89823514 -0.26013643
		 0.52409637 -0.71317333 -0.20645286 0.71730882 -0.2106346 -0.32022819 0.7217856 -0.43892848
		 0.018653003 0.7217856 -0.43892848 0.018653003 0.52409637 -0.71317333 -0.20645286
		 0.70064574 -0.1244579 -0.3805528 0.79980707 -0.095971681 0.0093934527 0.79794526
		 -0.11646052 0.015884807 0.71544093 -0.12973833 -0.35071698 0.66295451 -0.20149045
		 -0.42426744 0.79964864 -0.098455578 0.0054520578 0.79333323 -0.15842742 0.011926991
		 0.65231407 -0.28884199 -0.40784878 1e+20 1e+20 1e+20 0.67019796 -0.22168273 0.40599099
		 0.67019796 -0.22168273 0.40599099 0.30444294 -0.32961544 0.69489968 -0.16097981 -0.40376461
		 0.71731609 -0.587093 -0.45500034 0.40910521;
	setAttr ".n[166:331]" -type "float3"  -0.587093 -0.45500034 0.40910521 1e+20
		 1e+20 1e+20 -0.74650466 -0.37002563 0.0067454786 -0.53655785 -0.40223399 -0.50334787
		 -0.10887712 -0.27958798 -0.76380408 -0.53655785 -0.40223399 -0.50334787 0.23906861
		 -0.24113023 -0.74231279 0.66379607 -0.16754605 -0.43240613 0.80109477 -0.077795453
		 0.008139438 0.66379607 -0.16754605 -0.43240613 -0.59669048 -0.48705566 0.36946723
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.63542145 -0.34307522 0.40738696 -0.63542145
		 -0.34307522 0.40738696 -0.25596601 0.012671604 0.76164615 -0.19728903 -0.47179589
		 0.680493 -0.59669048 -0.48705566 0.36946723 0.45945534 0.057409983 0.65764695 0.69088268
		 -0.061302759 0.40740824 0.6666835 -0.28615743 0.38520655 0.38494751 -0.38152522 0.6352554
		 0.69088268 -0.061302759 0.40740824 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.6666835
		 -0.28615743 0.38520655 0.65075207 -0.29536206 -0.40732834 0.79251367 -0.16446631
		 0.013520092 0.79517913 -0.1435868 -0.010205094 0.6616469 -0.2250651 -0.41861856 0.6616469
		 -0.2250651 -0.41861856 0.34010515 -0.26164353 -0.69702995 0.29879618 -0.40064266
		 -0.67290366 0.65075207 -0.29536206 -0.40732834 -0.52401483 -0.50551802 -0.45400539
		 -0.13119875 -0.44037759 -0.70942688 -0.14706603 -0.33251172 -0.74344099 -0.52763504
		 -0.47185451 -0.47282046 -0.73262554 -0.4108198 0.0023884738 -0.73924237 -0.39182752
		 0.010495104 -0.52401483 -0.50551802 -0.45400539 -0.52763504 -0.47185451 -0.47282046
		 0.68238056 0.25943893 0.36962268 1e+20 1e+20 1e+20 0.39837244 0.53310674 0.55091649
		 0.68238056 0.25943893 0.36962268 -0.69335145 0.021040324 0.40583852 -0.21911463 0.54328382
		 0.63806331 1e+20 1e+20 1e+20 -0.69335145 0.021040324 0.40583852 -0.5404312 -0.39819691
		 -0.5012725 -0.72812146 -0.42279461 0.011793175 -0.16605425 -0.16394606 -0.7751109
		 -0.5404312 -0.39819691 -0.5012725 0.68157005 -0.14516979 -0.40936658 0.36535564 -0.081957377
		 -0.71267444 0.80086815 -0.079396479 0.016332099 0.68157005 -0.14516979 -0.40936658
		 -0.024001943 -0.26215029 -0.7750966 -0.03037693 -0.20162438 -0.78648198 -0.035067543
		 -0.1512624 -0.79355079 -0.029415412 0.65547621 -0.60615653 0.039355006 -0.21248288
		 0.78423482 0.025177818 0.63636553 0.61935353 0.05501052 -0.29324004 0.76627344 0.071136825
		 -0.35026604 0.74929619 0.093117438 -0.37397978 0.73942149 0.10654474 -0.40980309
		 0.72521222 0.12063313 -0.40747532 0.72385126 0.16263738 0.14288042 0.77852017 0.13994506
		 0.62432343 0.61192405 0.17270696 0.55464226 0.64595324 0.21305047 0.44468644 0.68749303
		 0.27677596 -0.28793874 0.71804297 0.27677596 -0.28793874 0.71804297 0.27677596 -0.28793874
		 0.71804297 1e+20 1e+20 1e+20 8.430424e-08 -1 1.8719302e-23 -0.00093243312 -0.92786163
		 -0.29967001 -0.00093243312 -0.92786163 -0.29967001 0.00015877665 -0.26905638 -0.77393919
		 -0.015709491 -0.081265308 -0.80075955 -0.017198708 -0.045926444 -0.80253923 -0.0067342604
		 -0.10969761 -0.79869348 0.0033151594 -0.29931167 -0.76672482 -0.00036501887 -0.42643833
		 -0.72684366 -0.0075986716 -0.40568984 -0.73443371 -0.01161122 -0.30974534 -0.76396316
		 -0.72552824 -0.2123626 0.30035803 -0.72552824 -0.2123626 0.30035803 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 0.62316185 -0.52934784 0.27650982 0.62316185 -0.52934784 0.27650982
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.57335591 -0.2734873 0.51835573 -0.72552824
		 -0.2123626 0.30035803 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.52409637 -0.71317333
		 -0.20645286 -0.71730894 -0.21063463 -0.32022822 -0.46102574 -0.21438274 -0.63522017
		 -0.23888579 -0.89823526 -0.26013646 -0.57335591 -0.2734873 0.51835573 -0.57335591
		 -0.2734873 0.51835573 -0.72552824 -0.2123626 0.30035803 -0.72552824 -0.2123626 0.30035803
		 -0.27836767 -0.2768881 0.72023088 -0.267818 -0.1996748 0.74044269 -0.67453438 -0.1073477
		 0.42812318 -0.66921383 -0.18325026 0.41975713 0.62646699 -0.22468938 0.46975139 0.59655082
		 -0.39075163 0.43733308 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.66285938 -0.1266519
		 -0.44270375 -0.66458702 -0.07039921 -0.44816402 -0.20522293 -0.13849595 -0.76891142
		 -0.21691278 -0.18571094 -0.75921386 -0.66921383 -0.18325026 0.41975713 -0.67453438
		 -0.1073477 0.42812318 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.61238027 0.43189168
		 0.38764632 1e+20 1e+20 1e+20 -0.58992994 0.46458751 -0.39791325 -0.14610071 0.65958321
		 -0.58605301 1e+20 1e+20 1e+20 0.58696562 0.40337074 0.44286957 -0.19608539 0.63979977
		 0.58562207 -0.61238027 0.43189168 0.38764632 -0.36079857 -0.38838261 0.64664465 -0.33865535
		 -0.34984148 0.67231667 -0.67062926 -0.24183312 0.3977679 -0.66525465 -0.28950876
		 0.38605887 -0.66525465 -0.28950876 0.38605887 -0.67062926 -0.24183312 0.3977679 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 -0.65231407 -0.28884199 -0.40784878 -0.66295451 -0.20149045
		 -0.42426744 -0.26669699 -0.2862542 -0.72227973 -0.27955574 -0.38446018 -0.68711782
		 0.58563387 -0.48094669 0.39165938 0.59217906 -0.48915458 0.3748953 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 -0.52699363 0.32217577 0.54861647 -0.45768312 0.44556513 0.55502981
		 -0.70185095 0.19929734 0.3570497 -0.72508216 0.095926993 0.33769962 0.69865549 -0.068987302
		 0.39310864 0.69748145 -0.19768915 0.36607507 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 -0.71544093 -0.12973833 -0.35071698 -0.70064574 -0.1244579 -0.3805528 -0.40170285
		 -0.044571109 -0.69503891 -0.44088963 -0.064068459 -0.66984534 -0.72508216 0.095926993
		 0.33769962 -0.70185095 0.19929734 0.3570497 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.62646699
		 -0.22468938 0.46975139 0.58696562 0.40337074 0.44286957;
	setAttr ".n[332:497]" -type "float3"  0.11219013 0.63516545 0.61043543 0.14424592
		 -0.22795591 0.76900297 0.59655082 -0.39075163 0.43733308 0.14896508 -0.3347697 0.74240786
		 0.59217906 -0.48915458 0.3748953 0.58563387 -0.48094669 0.39165938 0.16389289 -0.43219605
		 0.70586723 0.18749963 -0.4696919 0.68419063 0.69748145 -0.19768915 0.36607507 0.69865549
		 -0.068987302 0.39310864 0.28037748 0.41287357 0.67604876 0.33430809 0.2502349 0.70251787
		 0.62316185 -0.52934784 0.27650982 0.62316185 -0.52934784 0.27650982 0.30667269 -0.43921092
		 0.65353972 0.30667269 -0.43921092 0.65353972 0.62316185 -0.52934784 0.27650982 0.30667269
		 -0.43921092 0.65353972 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 0.23303472 -0.33548459
		 -0.72023976 0.54709172 -0.48391649 -0.44181949 0.33905378 -0.86951274 -0.20631585
		 0.099634767 -0.93030906 -0.27737951 0.18957229 -0.10389441 -0.77641439 0.5551368
		 -0.36460373 -0.50170696 0.5586639 -0.390829 -0.48475623 0.21907528 -0.14262998 -0.76458937
		 0.11717438 -0.32919034 -0.74968135 0.52922368 -0.44433364 -0.48801839 0.52508098
		 -0.4913789 -0.46271384 0.12511827 -0.42160773 -0.71783882 0.092739157 -0.1558574
		 -0.78831518 0.57753193 -0.19055769 -0.53734171 0.5495227 -0.33416587 -0.52119631
		 0.09910056 -0.21470498 -0.77854943 0.069727011 0.65520638 -0.60304022 0.52256244
		 0.46217343 -0.48448467 -0.80227458 -0.056087367 0.007153946 -0.80354309 -0.0037942594
		 0.0060224463 -0.66458702 -0.07039921 -0.44816402 -0.66285938 -0.1266519 -0.44270375
		 -0.56381559 0.71249175 0.0062632016 -0.58992994 0.46458751 -0.39791325 0.57753193
		 -0.19055769 -0.53734171 0.52256244 0.46217343 -0.48448467 0.588507 0.68087834 0.005526802
		 0.7945137 -0.14956456 0.0055095279 0.76169157 -0.31852785 0.0061276266 0.5495227
		 -0.33416587 -0.52119631 0.52508098 -0.4913789 -0.46271384 0.52922368 -0.44433364
		 -0.48801839 0.73926115 -0.39191762 0.0060571106 0.73972178 -0.39046577 0.0094315549
		 0.70884168 -0.47085509 0.010485901 0.5586639 -0.390829 -0.48475623 0.5551368 -0.36460373
		 -0.50170696 0.72107363 -0.44120643 0.0089847269 0.58211952 -0.68926543 0.0093552386
		 0.33905378 -0.86951274 -0.20631585 0.54709172 -0.48391649 -0.44181949 0.58211952
		 -0.68926543 0.0093552386 1.4549447e-07 -1 3.2306262e-23 0.099634767 -0.93030906 -0.27737951
		 0.33905378 -0.86951274 -0.20631585 0.58211952 -0.68926543 0.0093552386 -0.7217856
		 -0.43892848 0.018653003 -0.52409637 -0.71317333 -0.20645286 -0.23888579 -0.89823526
		 -0.26013646 7.273259e-08 -1 1.6149879e-23 -0.71730894 -0.21063463 -0.32022822 -0.52409637
		 -0.71317333 -0.20645286 -0.7217856 -0.43892848 0.018653003 -0.7217856 -0.43892848
		 0.018653003 -0.70064574 -0.1244579 -0.3805528 -0.71544093 -0.12973833 -0.35071698
		 -0.79794526 -0.11646052 0.015884807 -0.79980707 -0.095971681 0.0093934527 -0.66295451
		 -0.20149045 -0.42426744 -0.65231407 -0.28884199 -0.40784878 -0.79333323 -0.15842742
		 0.011926991 -0.79964864 -0.098455578 0.0054520578 -0.67019796 -0.22168273 0.40599099
		 1e+20 1e+20 1e+20 -0.304443 -0.32961547 0.6948998 -0.67019796 -0.22168273 0.40599099
		 0.587093 -0.45500034 0.40910521 0.16097981 -0.40376461 0.71731609 0.587093 -0.45500034
		 0.40910521 1e+20 1e+20 1e+20 0.53655791 -0.40223405 -0.50334793 0.74650466 -0.37002563
		 0.0067454786 0.10887712 -0.27958798 -0.76380408 0.53655791 -0.40223405 -0.50334793
		 -0.66379619 -0.16754606 -0.43240619 -0.23906861 -0.24113023 -0.74231279 -0.80109477
		 -0.077795453 0.008139438 -0.66379619 -0.16754606 -0.43240619 0.59669054 -0.48705572
		 0.36946726 0.63542145 -0.34307522 0.40738696 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 0.63542145 -0.34307522 0.40738696 0.59669054 -0.48705572 0.36946726 0.19728905 -0.47179595
		 0.68049312 0.25596601 0.012671604 0.76164615 -0.4594554 0.057409991 0.65764701 -0.38494751
		 -0.38152522 0.6352554 -0.6666835 -0.28615743 0.38520655 -0.69088268 -0.061302759
		 0.40740824 -0.69088268 -0.061302759 0.40740824 -0.6666835 -0.28615743 0.38520655
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 -0.65075207 -0.29536206 -0.40732834 -0.6616469
		 -0.2250651 -0.41861856 -0.79517913 -0.1435868 -0.010205094 -0.79251367 -0.16446631
		 0.013520092 -0.6616469 -0.2250651 -0.41861856 -0.65075207 -0.29536206 -0.40732834
		 -0.29879618 -0.40064266 -0.67290366 -0.34010515 -0.26164353 -0.69702995 0.52401483
		 -0.50551802 -0.45400539 0.5276351 -0.47185457 -0.47282052 0.14706603 -0.33251172
		 -0.74344099 0.13119875 -0.44037759 -0.70942688 0.73262554 -0.4108198 0.0023884738
		 0.5276351 -0.47185457 -0.47282052 0.52401483 -0.50551802 -0.45400539 0.73924237 -0.39182752
		 0.010495104 -0.68238056 0.25943893 0.36962268 1e+20 1e+20 1e+20 -0.39837244 0.53310674
		 0.55091649 -0.68238056 0.25943893 0.36962268 0.69335145 0.021040324 0.40583852 0.21911463
		 0.54328382 0.63806331 0.69335145 0.021040324 0.40583852 1e+20 1e+20 1e+20 0.54043126
		 -0.39819697 -0.50127256 0.72812146 -0.42279461 0.011793175 0.54043126 -0.39819697
		 -0.50127256 0.16605428 -0.16394608 -0.77511102 -0.68157005 -0.14516979 -0.40936658
		 -0.36535564 -0.081957377 -0.71267444 -0.68157005 -0.14516979 -0.40936658 -0.80086815
		 -0.079396479 0.016332099 0.03037693 -0.20162438 -0.78648198 0.024001943 -0.26215029
		 -0.7750966 0.035067543 -0.1512624 -0.79355079 0.029415414 0.65547627 -0.60615659
		 -0.039355006 -0.21248288 0.78423482 -0.025177818 0.63636553 0.61935353 -0.05501052
		 -0.29324004 0.76627344 -0.071136825 -0.35026604 0.74929619 -0.093117453 -0.37397981
		 0.73942161 -0.10654474 -0.40980309 0.72521222 -0.12063313 -0.40747532 0.72385126
		 -0.16263738 0.14288042 0.77852017 -0.13994506 0.62432343 0.61192405 -0.17270696 0.55464226
		 0.64595324 -0.21305047 0.44468644 0.68749303 -0.27677596 -0.28793874 0.71804297 -0.27677596
		 -0.28793874 0.71804297 -0.27677596 -0.28793874 0.71804297 1e+20 1e+20 1e+20 0.00093243318
		 -0.92786175 -0.29967004;
	setAttr ".n[498:507]" -type "float3"  -8.430424e-08 -1 -1.8719302e-23 -0.00015877665
		 -0.26905638 -0.77393919 0.00093243318 -0.92786175 -0.29967004 0.015709491 -0.081265308
		 -0.80075955 0.017198708 -0.045926444 -0.80253923 0.0067342604 -0.10969761 -0.79869348
		 -0.0033151594 -0.29931167 -0.76672482 0.00036501887 -0.42643833 -0.72684366 0.0075986716
		 -0.40568984 -0.73443371 0.01161122 -0.30974534 -0.76396316;
	setAttr -s 360 -ch 1440 ".fc[0:359]" -type "polyFaces" 
		f 4 0 351 350 -5
		mu 0 4 0 218 220 127
		f 4 196 341 -4 -194
		mu 0 4 130 213 214 6
		f 4 237 349 -1 -235
		mu 0 4 155 217 219 8
		f 4 -239 241 240 -6
		mu 0 4 1 158 159 135
		f 4 234 4 192 235
		mu 0 4 154 0 127 153
		f 4 214 111 6 215
		mu 0 4 144 79 2 142
		f 4 2 321 320 -9
		mu 0 4 4 203 204 77
		f 4 118 208 -8 -116
		mu 0 4 81 137 139 3
		f 4 114 314 -2 -112
		mu 0 4 79 199 200 2
		f 4 1 316 -23 -21
		mu 0 4 2 200 201 20
		f 4 7 210 -25 -22
		mu 0 4 3 138 140 21
		f 4 -3 25 26 319
		mu 0 4 203 4 23 202
		f 4 -7 20 27 213
		mu 0 4 143 2 20 141
		f 4 220 161 96 221
		mu 0 4 147 110 67 146
		f 4 164 365 364 -162
		mu 0 4 110 226 227 67
		f 4 168 255 254 -166
		mu 0 4 112 165 166 75
		f 4 100 327 326 -98
		mu 0 4 70 206 207 108
		f 4 -39 36 178 231
		mu 0 4 152 30 118 151
		f 4 182 337 -41 -180
		mu 0 4 121 211 212 32
		f 4 -243 245 244 -42
		mu 0 4 35 160 161 116
		f 4 -353 355 354 -37
		mu 0 4 30 221 222 118
		f 4 -261 263 262 -26
		mu 0 4 4 170 171 23
		f 4 110 261 260 8
		mu 0 4 76 168 169 13
		f 4 160 308 307 97
		mu 0 4 107 196 197 69
		f 4 -296 298 297 179
		mu 0 4 31 191 192 120
		f 4 10 294 293 193
		mu 0 4 12 188 190 129
		f 4 3 343 342 -11
		mu 0 4 6 214 215 189
		f 4 288 -12 -198 200
		mu 0 4 184 186 10 133
		f 4 284 -43 -184 186
		mu 0 4 182 183 34 124
		f 4 274 273 -102 104
		mu 0 4 177 178 115 73
		f 4 268 267 -10 -266
		mu 0 4 174 175 84 11
		f 4 266 265 23 -265
		mu 0 4 172 173 5 22
		f 4 116 115 -69 -114
		mu 0 4 80 81 3 53
		f 4 -72 68 21 -71
		mu 0 4 54 53 3 21
		f 4 -74 -75 72 -24
		mu 0 4 5 56 55 22
		f 4 -77 73 9 122
		mu 0 4 85 56 5 83
		f 4 171 -100 102 101
		mu 0 4 114 106 71 72
		f 4 -182 184 183 -80
		mu 0 4 59 122 123 33
		f 4 -196 198 197 -82
		mu 0 4 60 131 132 7
		f 4 -85 81 11 290
		mu 0 4 187 60 7 185
		f 4 -237 239 238 -86
		mu 0 4 63 156 157 9
		f 4 203 -89 85 5
		mu 0 4 135 126 62 1
		f 4 174 -91 -44 41
		mu 0 4 116 117 64 35
		f 4 107 -164 166 165
		mu 0 4 75 66 111 112
		f 4 -365 366 -33 -94
		mu 0 4 67 227 198 26
		f 4 -97 93 -217 219
		mu 0 4 146 67 26 145
		f 4 -308 309 -31 28
		mu 0 4 69 197 167 24
		f 4 -323 325 -101 -29
		mu 0 4 25 205 206 70
		f 4 -103 -79 -36 33
		mu 0 4 72 71 57 28
		f 4 272 -105 -34 -270
		mu 0 4 176 177 73 29
		f 4 -255 256 -35 -106
		mu 0 4 75 166 136 27
		f 4 -93 -108 105 -68
		mu 0 4 52 66 75 27
		f 4 30 259 -111 108
		mu 0 4 24 167 168 76
		f 4 216 29 -215 217
		mu 0 4 145 26 79 144
		f 4 32 312 -115 -30
		mu 0 4 26 198 199 79
		f 4 67 31 -117 -70
		mu 0 4 52 27 81 80
		f 4 34 206 -119 -32
		mu 0 4 27 136 137 81
		f 4 -268 270 269 -120
		mu 0 4 84 175 176 29
		f 4 -122 -123 119 35
		mu 0 4 57 85 83 28
		f 4 -321 323 322 -109
		mu 0 4 77 204 205 25
		f 4 -329 331 -17 -126
		mu 0 4 88 208 209 16
		f 4 -302 304 -129 125
		mu 0 4 15 194 195 87
		f 4 -15 12 -223 225
		mu 0 4 149 14 90 148
		f 4 -359 361 -133 -13
		mu 0 4 14 224 225 90
		f 4 -135 -92 -20 17
		mu 0 4 92 91 65 19
		f 4 -249 251 -137 -18
		mu 0 4 19 163 164 92
		f 4 -276 278 -19 -138
		mu 0 4 95 179 180 18
		f 4 -125 -140 137 -78
		mu 0 4 58 86 94 17
		f 4 -357 359 358 -142
		mu 0 4 97 223 224 14
		f 4 -145 141 14 227
		mu 0 4 150 97 14 149
		f 4 -300 302 301 13
		mu 0 4 99 193 194 15
		f 4 16 333 -149 -14
		mu 0 4 16 209 210 100
		f 4 -151 -81 77 15
		mu 0 4 102 101 58 17
		f 4 280 -153 -16 18
		mu 0 4 180 181 103 18
		f 4 -247 249 248 -154
		mu 0 4 105 162 163 19
		f 4 -141 -156 153 19
		mu 0 4 65 96 105 19
		f 4 -327 329 328 -158
		mu 0 4 108 207 208 88
		f 4 128 306 -161 157
		mu 0 4 87 195 196 107
		f 4 222 129 -221 223
		mu 0 4 148 90 110 147
		f 4 132 363 -165 -130
		mu 0 4 90 225 226 110
		f 4 -167 -132 134 133
		mu 0 4 112 111 91 92
		f 4 136 253 -169 -134
		mu 0 4 92 164 165 112
		f 4 -274 276 275 -170
		mu 0 4 115 178 179 95
		f 4 139 -157 -172 169
		mu 0 4 94 86 106 114
		f 4 155 -174 -175 172
		mu 0 4 105 96 117 116
		f 4 -355 357 356 -176
		mu 0 4 118 222 223 97
		f 4 -179 175 144 229
		mu 0 4 151 118 97 150
		f 4 -298 300 299 145
		mu 0 4 120 192 193 99
		f 4 148 335 -183 -146
		mu 0 4 100 210 211 121
		f 4 -185 -148 150 149
		mu 0 4 123 122 101 102
		f 4 282 -187 -150 152
		mu 0 4 181 182 124 103
		f 4 -245 247 246 -173
		mu 0 4 116 161 162 105
		f 4 -351 353 352 -190
		mu 0 4 127 220 221 30
		f 4 -193 189 38 233
		mu 0 4 153 127 30 152
		f 4 -294 296 295 37
		mu 0 4 129 190 191 31
		f 4 40 339 -197 -38
		mu 0 4 32 212 213 130
		f 4 -199 -83 79 39
		mu 0 4 132 131 59 33
		f 4 286 -201 -40 42
		mu 0 4 183 184 133 34
		f 4 -241 243 242 -202
		mu 0 4 135 159 160 35
		f 4 -189 -204 201 43
		mu 0 4 64 126 135 35
		f 4 204 65 -206 -207
		mu 0 4 136 49 82 137
		f 4 -209 205 117 -208
		mu 0 4 139 137 82 51
		f 4 -211 207 66 -210
		mu 0 4 140 138 50 36
		f 4 -213 -214 211 47
		mu 0 4 39 143 141 37
		f 4 112 -216 212 49
		mu 0 4 78 144 142 38
		f 4 48 -218 -113 109
		mu 0 4 40 145 144 78
		f 4 -219 -220 -49 51
		mu 0 4 68 146 145 40
		f 4 162 -222 218 95
		mu 0 4 109 147 146 68
		f 4 130 -224 -163 159
		mu 0 4 89 148 147 109
		f 4 -225 -226 -131 127
		mu 0 4 41 149 148 89
		f 4 -227 -228 224 53
		mu 0 4 98 150 149 41
		f 4 -229 -230 226 143
		mu 0 4 119 151 150 98
		f 4 -231 -232 228 177
		mu 0 4 42 152 151 119
		f 4 -233 -234 230 55
		mu 0 4 128 153 152 42
		f 4 54 -236 232 191
		mu 0 4 43 154 153 128
		f 4 57 347 -238 -55
		mu 0 4 44 216 217 155
		f 4 -240 -87 83 56
		mu 0 4 157 156 61 45
		f 4 -242 -57 59 202
		mu 0 4 159 158 46 134
		f 4 -244 -203 199 58
		mu 0 4 160 159 134 47
		f 4 -246 -59 61 187
		mu 0 4 161 160 47 125
		f 4 -248 -188 185 154
		mu 0 4 162 161 125 104
		f 4 -250 -155 151 60
		mu 0 4 163 162 104 48
		f 4 -252 -61 63 -251
		mu 0 4 164 163 48 93
		f 4 -254 250 135 -253
		mu 0 4 165 164 93 113
		f 4 -256 252 167 106
		mu 0 4 166 165 113 74
		f 4 -257 -107 103 -205
		mu 0 4 136 166 74 49
		f 4 257 -110 -259 -260
		mu 0 4 167 40 78 168
		f 4 -262 258 -50 46
		mu 0 4 169 168 78 38
		f 4 -264 -47 -48 45
		mu 0 4 171 170 39 37
		f 4 -67 64 -267 -45
		mu 0 4 36 50 173 172
		f 4 -118 120 -269 -65
		mu 0 4 51 82 175 174
		f 4 -271 -121 -66 62
		mu 0 4 176 175 82 49
		f 4 -104 -272 -273 -63
		mu 0 4 49 74 177 176
		f 4 -168 170 -275 271
		mu 0 4 74 113 178 177
		f 4 -277 -171 -136 138
		mu 0 4 179 178 113 93
		f 4 -279 -139 -64 -278
		mu 0 4 180 179 93 48
		f 4 -152 -280 -281 277
		mu 0 4 48 104 181 180
		f 4 -186 -282 -283 279
		mu 0 4 104 125 182 181
		f 4 -62 -284 -285 281
		mu 0 4 125 47 183 182
		f 4 -200 -286 -287 283
		mu 0 4 47 134 184 183
		f 4 -60 -288 -289 285
		mu 0 4 134 46 186 184
		f 4 -290 -291 287 -84
		mu 0 4 61 187 185 45
		f 4 -343 345 -58 -292
		mu 0 4 189 215 216 44
		f 4 -295 291 -192 194
		mu 0 4 190 188 43 128
		f 4 -297 -195 -56 52
		mu 0 4 191 190 128 42
		f 4 -299 -53 -178 180
		mu 0 4 192 191 42 119
		f 4 -301 -181 -144 146
		mu 0 4 193 192 119 98
		f 4 -303 -147 -54 50
		mu 0 4 194 193 98 41
		f 4 -305 -51 -128 -304
		mu 0 4 195 194 41 89
		f 4 -307 303 -160 -306
		mu 0 4 196 195 89 109
		f 4 -309 305 -96 98
		mu 0 4 197 196 109 68
		f 4 -310 -99 -52 -258
		mu 0 4 167 197 68 40
		f 4 310 69 -312 -313
		mu 0 4 198 52 80 199
		f 4 -315 311 113 -314
		mu 0 4 200 199 80 53
		f 4 -317 313 71 -316
		mu 0 4 201 200 53 54
		f 4 -319 -320 317 74
		mu 0 4 56 203 202 55
		f 4 -322 318 76 123
		mu 0 4 204 203 56 85
		f 4 -324 -124 121 75
		mu 0 4 205 204 85 57
		f 4 -326 -76 78 -325
		mu 0 4 206 205 57 71
		f 4 -328 324 99 158
		mu 0 4 207 206 71 106
		f 4 -330 -159 156 126
		mu 0 4 208 207 106 86
		f 4 -332 -127 124 -331
		mu 0 4 209 208 86 58
		f 4 -334 330 80 -333
		mu 0 4 210 209 58 101
		f 4 -336 332 147 -335
		mu 0 4 211 210 101 122
		f 4 -338 334 181 -337
		mu 0 4 212 211 122 59
		f 4 -340 336 82 -339
		mu 0 4 213 212 59 131
		f 4 -342 338 195 -341
		mu 0 4 214 213 131 60
		f 4 -344 340 84 292
		mu 0 4 215 214 60 187
		f 4 -346 -293 289 -345
		mu 0 4 216 215 187 61
		f 4 -348 344 86 -347
		mu 0 4 217 216 61 156
		f 4 -350 346 236 -349
		mu 0 4 219 217 156 63
		f 4 -352 348 88 190
		mu 0 4 220 218 62 126
		f 4 -354 -191 188 87
		mu 0 4 221 220 126 64
		f 4 -356 -88 90 176
		mu 0 4 222 221 64 117
		f 4 -358 -177 173 142
		mu 0 4 223 222 117 96
		f 4 -360 -143 140 89
		mu 0 4 224 223 96 65
		f 4 -362 -90 91 -361
		mu 0 4 225 224 65 91
		f 4 -364 360 131 -363
		mu 0 4 226 225 91 111
		f 4 -366 362 163 94
		mu 0 4 227 226 111 66
		f 4 -367 -95 92 -311
		mu 0 4 198 227 66 52
		f 4 370 -370 -369 -368
		mu 0 4 228 231 230 229
		f 4 374 373 -373 -372
		mu 0 4 232 235 234 233
		f 4 377 367 -377 -376
		mu 0 4 236 239 238 237
		f 4 381 -381 -380 378
		mu 0 4 240 243 242 241
		f 4 -384 -383 -371 -378
		mu 0 4 244 245 231 228
		f 4 -388 -387 -386 -385
		mu 0 4 246 249 248 247
		f 4 391 -391 -390 -389
		mu 0 4 250 253 252 251
		f 4 395 394 -394 -393
		mu 0 4 254 257 256 255
		f 4 385 398 -398 -397
		mu 0 4 247 248 259 258
		f 4 401 400 -400 -399
		mu 0 4 248 261 260 259
		f 4 404 403 -403 -395
		mu 0 4 257 264 263 262
		f 4 -408 -407 -406 388
		mu 0 4 251 266 265 250
		f 4 -410 -409 -402 386
		mu 0 4 267 268 261 248
		f 4 -414 -413 -412 -411
		mu 0 4 269 272 271 270
		f 4 411 -417 -416 -415
		mu 0 4 270 271 274 273
		f 4 420 -420 -419 -418
		mu 0 4 275 278 277 276
		f 4 424 -424 -423 -422
		mu 0 4 279 282 281 280
		f 4 -429 -428 -427 425
		mu 0 4 283 286 285 284
		f 4 432 431 -431 -430
		mu 0 4 287 290 289 288
		f 4 436 -436 -435 433
		mu 0 4 291 294 293 292
		f 4 426 -440 -439 437
		mu 0 4 284 285 296 295
		f 4 405 -443 -442 440
		mu 0 4 250 265 298 297
		f 4 -392 -441 -445 -444
		mu 0 4 299 302 301 300
		f 4 -425 -448 -447 -446
		mu 0 4 303 306 305 304
		f 4 -433 -451 -450 448
		mu 0 4 307 310 309 308
		f 4 -375 -454 -453 -452
		mu 0 4 311 314 313 312
		f 4 451 -456 -455 -374
		mu 0 4 235 316 315 234
		f 4 -460 458 457 -457
		mu 0 4 317 320 319 318
		f 4 -464 462 461 -461
		mu 0 4 321 324 323 322
		f 4 -468 466 -466 -465
		mu 0 4 325 328 327 326
		f 4 471 470 -470 -469
		mu 0 4 329 332 331 330
		f 4 474 -474 -472 -473
		mu 0 4 333 336 335 334
		f 4 477 476 -396 -476
		mu 0 4 337 338 257 254
		f 4 479 -405 -477 478
		mu 0 4 339 264 257 338
		f 4 473 -483 481 480
		mu 0 4 335 336 341 340
		f 4 -485 -471 -481 483
		mu 0 4 342 343 335 340
		f 4 -467 -488 486 -486
		mu 0 4 344 347 346 345
		f 4 490 -463 -490 488
		mu 0 4 348 351 350 349
		f 4 493 -459 -493 491
		mu 0 4 352 355 354 353
		f 4 -496 -458 -494 494
		mu 0 4 356 357 355 352
		f 4 498 -379 -498 496
		mu 0 4 358 361 360 359
		f 4 -382 -499 500 -500
		mu 0 4 243 240 363 362
		f 4 -437 503 502 -502
		mu 0 4 294 291 365 364
		f 4 -421 -507 505 -505
		mu 0 4 278 275 367 366
		f 4 509 508 -508 416
		mu 0 4 271 369 368 274
		f 4 -512 510 -510 412
		mu 0 4 272 370 369 271
		f 4 -515 513 -513 447
		mu 0 4 306 372 371 305
		f 4 514 421 -517 515
		mu 0 4 373 279 280 374
		f 4 -520 518 517 487
		mu 0 4 347 376 375 346
		f 4 521 519 467 -521
		mu 0 4 377 378 328 325
		f 4 524 523 -523 419
		mu 0 4 278 380 379 277
		f 4 526 -525 504 525
		mu 0 4 381 380 278 366
		f 4 -529 443 -528 -514
		mu 0 4 372 299 300 371
		f 4 -531 384 -530 -511
		mu 0 4 370 246 247 369
		f 4 529 396 -532 -509
		mu 0 4 369 247 258 368
		f 4 533 475 -533 -527
		mu 0 4 381 337 254 380
		f 4 532 392 -535 -524
		mu 0 4 380 254 255 379
		f 4 536 -522 -536 469
		mu 0 4 331 378 377 330
		f 4 -519 -537 484 537
		mu 0 4 375 376 343 342
		f 4 528 -516 -539 390
		mu 0 4 253 373 374 252
		f 4 542 541 -541 539
		mu 0 4 382 385 384 383
		f 4 -543 545 -545 543
		mu 0 4 386 389 388 387
		f 4 -550 548 -548 546
		mu 0 4 390 393 392 391
		f 4 547 552 -552 550
		mu 0 4 391 392 395 394
		f 4 -557 555 554 553
		mu 0 4 396 399 398 397
		f 4 556 559 -559 557
		mu 0 4 399 396 401 400
		f 4 563 562 -562 560
		mu 0 4 402 405 404 403
		f 4 566 -564 565 564
		mu 0 4 406 409 408 407
		f 4 569 -551 -569 567
		mu 0 4 410 391 394 411
		f 4 -572 -547 -570 570
		mu 0 4 412 390 391 410
		f 4 -575 -544 -574 572
		mu 0 4 413 386 387 414
		f 4 574 576 -576 -542
		mu 0 4 385 416 415 384
		f 4 -580 -567 578 577
		mu 0 4 417 409 406 418
		f 4 -563 579 581 -581
		mu 0 4 404 405 420 419
		f 4 584 -558 -584 582
		mu 0 4 421 399 400 422
		f 4 -556 -585 586 585
		mu 0 4 398 399 421 423
		f 4 588 -540 -588 423
		mu 0 4 282 382 383 281
		f 4 -589 445 -590 -546
		mu 0 4 389 303 304 388
		f 4 -592 410 -591 -549
		mu 0 4 393 269 270 392
		f 4 590 414 -593 -553
		mu 0 4 392 270 273 395
		f 4 -595 -554 593 506
		mu 0 4 275 396 397 367
		f 4 594 417 -596 -560
		mu 0 4 396 275 276 401
		f 4 597 -561 -597 465
		mu 0 4 327 402 403 326
		f 4 -598 485 598 -566
		mu 0 4 408 344 345 407
		f 4 -601 501 599 -587
		mu 0 4 421 294 364 423
		f 4 602 -568 -602 439
		mu 0 4 285 410 411 296
		f 4 -604 -571 -603 427
		mu 0 4 286 412 410 285
		f 4 -606 -573 -605 450
		mu 0 4 310 413 414 309
		f 4 605 429 -607 -577
		mu 0 4 416 287 288 415
		f 4 -609 -578 607 489
		mu 0 4 350 417 418 349
		f 4 -582 608 463 -610
		mu 0 4 419 420 324 321
		f 4 600 -583 -611 435
		mu 0 4 294 421 422 293
		f 4 612 -438 -612 369
		mu 0 4 231 284 295 230
		f 4 -614 -426 -613 382
		mu 0 4 245 283 284 231
		f 4 -616 -449 -615 453
		mu 0 4 314 307 308 313
		f 4 615 371 -617 -432
		mu 0 4 290 232 233 289
		f 4 -619 -491 617 492
		mu 0 4 354 351 348 353
		f 4 -462 618 459 -620
		mu 0 4 322 323 320 317
		f 4 621 -434 -621 380
		mu 0 4 243 291 292 242
		f 4 -504 -622 499 622
		mu 0 4 365 291 243 362
		f 4 534 625 -625 -624
		mu 0 4 379 255 425 424
		f 4 627 -627 -626 393
		mu 0 4 256 426 425 255
		f 4 629 -629 -628 402
		mu 0 4 263 428 427 262
		f 4 -633 -632 409 630
		mu 0 4 429 430 268 267
		f 4 -635 -631 387 -634
		mu 0 4 431 432 249 246
		f 4 -637 633 530 -636
		mu 0 4 433 431 246 370
		f 4 -639 635 511 637
		mu 0 4 434 433 370 272
		f 4 -641 -638 413 -640
		mu 0 4 435 434 272 269
		f 4 -643 639 591 -642
		mu 0 4 436 435 269 393
		f 4 -645 641 549 643
		mu 0 4 437 436 393 390
		f 4 -647 -644 571 645
		mu 0 4 438 437 390 412
		f 4 -649 -646 603 647
		mu 0 4 439 438 412 286
		f 4 -651 -648 428 649
		mu 0 4 440 439 286 283
		f 4 -653 -650 613 651
		mu 0 4 441 440 283 245
		f 4 -655 -652 383 -654
		mu 0 4 442 441 245 244
		f 4 653 375 -657 -656
		mu 0 4 443 236 237 444
		f 4 -660 -659 657 497
		mu 0 4 360 446 445 359
		f 4 -662 -661 659 379
		mu 0 4 242 448 447 241
		f 4 -664 -663 661 620
		mu 0 4 292 449 448 242
		f 4 -666 -665 663 434
		mu 0 4 293 450 449 292
		f 4 -668 -667 665 610
		mu 0 4 422 451 450 293
		f 4 -670 -669 667 583
		mu 0 4 400 452 451 422
		f 4 671 -671 669 558
		mu 0 4 401 453 452 400
		f 4 673 -673 -672 595
		mu 0 4 276 454 453 401
		f 4 -676 -675 -674 418
		mu 0 4 277 455 454 276
		f 4 623 -677 675 522
		mu 0 4 379 424 455 277
		f 4 527 678 636 -678
		mu 0 4 371 300 431 433
		f 4 -680 634 -679 444
		mu 0 4 301 432 431 300
		f 4 -681 632 679 441
		mu 0 4 298 430 429 297
		f 4 682 472 -682 628
		mu 0 4 428 333 334 427
		f 4 681 468 -684 626
		mu 0 4 426 329 330 425
		f 4 -685 624 683 535
		mu 0 4 377 424 425 330
		f 4 684 520 685 676
		mu 0 4 424 377 325 455
		f 4 -686 464 -687 674
		mu 0 4 455 325 326 454
		f 4 -688 672 686 596
		mu 0 4 403 453 454 326
		f 4 688 670 687 561
		mu 0 4 404 452 453 403
		f 4 -689 580 689 668
		mu 0 4 452 404 419 451
		f 4 -690 609 690 666
		mu 0 4 451 419 321 450
		f 4 -691 460 691 664
		mu 0 4 450 321 322 449
		f 4 -692 619 692 662
		mu 0 4 449 322 317 448
		f 4 -693 456 693 660
		mu 0 4 448 317 318 447
		f 4 658 -694 495 694
		mu 0 4 445 446 357 356
		f 4 696 655 -696 455
		mu 0 4 316 443 444 315
		f 4 -698 654 -697 452
		mu 0 4 313 441 442 312
		f 4 -699 652 697 614
		mu 0 4 308 440 441 313
		f 4 -700 650 698 449
		mu 0 4 309 439 440 308
		f 4 -701 648 699 604
		mu 0 4 414 438 439 309
		f 4 -702 646 700 573
		mu 0 4 387 437 438 414
		f 4 702 644 701 544
		mu 0 4 388 436 437 387
		f 4 703 642 -703 589
		mu 0 4 304 435 436 388
		f 4 -705 640 -704 446
		mu 0 4 305 434 435 304
		f 4 677 638 704 512
		mu 0 4 371 433 434 305
		f 4 531 706 -534 -706
		mu 0 4 368 258 337 381
		f 4 707 -478 -707 397
		mu 0 4 259 338 337 258
		f 4 708 -479 -708 399
		mu 0 4 260 339 338 259
		f 4 -482 -711 407 709
		mu 0 4 340 341 266 251
		f 4 -712 -484 -710 389
		mu 0 4 252 342 340 251
		f 4 -713 -538 711 538
		mu 0 4 374 375 342 252
		f 4 713 -518 712 516
		mu 0 4 280 346 375 374
		f 4 -715 -487 -714 422
		mu 0 4 281 345 346 280
		f 4 -716 -599 714 587
		mu 0 4 383 407 345 281
		f 4 716 -565 715 540
		mu 0 4 384 406 407 383
		f 4 717 -579 -717 575
		mu 0 4 415 418 406 384
		f 4 718 -608 -718 606
		mu 0 4 288 349 418 415
		f 4 719 -489 -719 430
		mu 0 4 289 348 349 288
		f 4 720 -618 -720 616
		mu 0 4 233 353 348 289
		f 4 721 -492 -721 372
		mu 0 4 234 352 353 233
		f 4 -723 -495 -722 454
		mu 0 4 315 356 352 234
		f 4 723 -695 722 695
		mu 0 4 444 445 356 315
		f 4 724 -658 -724 656
		mu 0 4 237 359 445 444
		f 4 725 -497 -725 376
		mu 0 4 238 358 359 237
		f 4 -727 -501 -726 368
		mu 0 4 230 362 363 229
		f 4 -728 -623 726 611
		mu 0 4 295 365 362 230
		f 4 -729 -503 727 438
		mu 0 4 296 364 365 295
		f 4 -730 -600 728 601
		mu 0 4 411 423 364 296
		f 4 -731 -586 729 568
		mu 0 4 394 398 423 411
		f 4 731 -555 730 551
		mu 0 4 395 397 398 394
		f 4 732 -594 -732 592
		mu 0 4 273 367 397 395
		f 4 -734 -506 -733 415
		mu 0 4 274 366 367 273
		f 4 705 -526 733 507
		mu 0 4 368 381 366 274;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Arm" -p "Grp_Geo";
	rename -uid "5C5A11A2-4F83-150E-B79B-9BA0A8A97732";
	setAttr ".rp" -type "double3" 1.1546319456101628e-14 1.7763568394002505e-15 -1.7763568394002505e-15 ;
	setAttr ".sp" -type "double3" 1.1990408665951691e-14 1.7763568394002505e-15 -1.7763568394002505e-15 ;
createNode mesh -n "ArmShape" -p "Arm";
	rename -uid "48B1652B-4D54-BF9C-E434-E6932FF20552";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.1713396742732356 0.27208968137319278 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 130 ".uvst[0].uvsp[0:129]" -type "float2" 1.20387924 0.48060855
		 1.18061137 0.48980126 1.1876663 0.47899806 1.19752944 0.47710896 1.23941648 0.251136
		 1.17535758 0.24071223 1.17008543 0.1442129 1.24402106 0.15227622 1.365358 0.22297537
		 0.91601866 0.28752333 1.3907479 0.35572684 1.3340323 0.31448543 1.064921856 0.29118231
		 1.035568237 0.19826972 1.092836261 0.16072488 1.10888135 0.2580817 1.30624223 0.1831463
		 1.28767812 0.27909407 1.010576963 0.42620695 1.31069338 0.36251777 1.11863995 0.31523705
		 1.083768845 0.34350008 1.17944777 0.29781178 1.23615384 0.30958837 1.27506137 0.3338719
		 1.23239303 0.37198207 1.25896859 0.38875073 1.23407698 0.44562817 1.21848369 0.43437621
		 1.18161738 0.35860255 1.18453038 0.42059794 1.10600376 0.39543721 1.12948895 0.3760508
		 1.15058327 0.43645826 1.13665617 0.44908863 1.28179169 0.40923014 1.058698297 0.46380615
		 1.12202322 0.49335313 1.24396741 0.45870614 1.17190731 0.48214579 1.17878056 0.478185
		 1.17118788 0.4971953 1.20821249 0.48642531 0.98145032 0.24459887 1.022650957 0.33197564
		 1.051883578 0.37577462 1.08564949 0.4175685 1.12795556 0.46240276 1.1687988 0.4894312
		 1.075414181 0.062766075 1.16485703 0.04763031 1.24991906 0.052962661 1.32275498 0.08640784
		 1.38859677 0.12922329 1.46712267 0.16338804 0.9472841 0.15451318 1.0079274178 0.10421699
		 1.17213547 0.48154628 1.17806053 0.47737014 1.18806994 0.47816265 1.19626892 0.48812234
		 1.1115793 0.25741816 1.096128583 0.15968359 1.16871452 0.14353764 1.17409074 0.240013
		 0.98332822 0.24328744 1.024524212 0.33077931 1.39229572 0.35510862 1.43695617 0.25800395
		 1.28938711 0.27801979 1.24206161 0.24996161 1.24729669 0.15144861 1.30833638 0.18245947
		 1.037692547 0.19720495 1.066695094 0.29051018 1.053000569 0.37594366 1.35824454 0.40622163
		 1.27641308 0.3320837 1.23865128 0.30783284 1.17630732 0.29720533 1.12125158 0.31514573
		 1.085258603 0.3435576 1.13185191 0.37673545 1.15253758 0.43720949 1.13827956 0.45010638
		 1.10728717 0.39632261 1.18083835 0.35785449 1.18476295 0.41978276 1.26003027 0.38614178
		 1.23547125 0.44282949 1.22024214 0.43180978 1.23455977 0.36945975 1.086859584 0.41918468
		 1.12988925 0.46419048 1.25488138 0.4852072 1.31456006 0.44887924 1.20407665 0.47955751
		 1.1968106 0.47637749 1.16846931 0.48780322 1.1709547 0.49670053 1.33588099 0.31390846
		 1.36721206 0.22254562 1.31164896 0.36064911 1.28269172 0.40589595 1.24558187 0.45510328
		 1.2079668 0.48645544 1.16328549 0.046984076 1.25383365 0.05218637 1.079342127 0.061640024
		 1.010641575 0.10288811 0.94992173 0.15267849 1.4687494 0.16274714 1.39125466 0.12926507
		 1.32545805 0.085954189 0.8756454 0.19526744 0.91779166 0.28627348 1.20644689 0.49443352
		 1.013704419 0.42343307 1.060089111 0.4633007 1.12191594 0.49403274 0.97270024 0.3780008
		 1.43523932 0.25849658 0.97110176 0.37914199 1.20672035 0.49554369 1.25517762 0.48749575
		 1.31325924 0.45014119 1.35498416 0.40540382 0.87392992 0.19632569 1.18106878 0.48921132
		 1.19584179 0.48921141;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 114 ".pt[0:113]" -type "float3"  7.5600772 9.8191195 -1.2896594 
		5.7165389 9.8191195 -3.6603129 7.4220185 9.8191195 -1.4219959 5.7457128 9.8191195 
		-3.577601 4.23772 9.8191195 1.2962073 2.4054103 9.8191195 -1.0600073 4.6870041 9.8191195 
		1.2584908 2.6275103 9.8191195 -1.3898659 9.9444752 9.8191195 -4.8450198 9.7540131 
		9.8191195 -5.0899401 9.766717 9.8191195 -5.1058402 9.9560375 9.8191195 -4.8644896 
		8.9679031 9.8191195 -2.9358892 9.0175495 9.8191195 -3.0997458 7.7317944 9.8191195 
		-4.7531314 7.5721908 9.8191195 -4.7306714 9.6499128 9.8191195 -4.055264 8.8400126 
		9.8191195 -5.096736 8.7712212 9.8191195 -5.08921 9.6214771 9.8191195 -3.9958441 6.7286797 
		9.8191195 -4.2191167 6.6064677 9.8191195 -4.2337976 8.2841816 9.8191195 -2.0763822 
		8.2626534 9.8191195 -2.2465403 6.6124444 9.8191195 -2.4630482 3.3547797 9.8191195 
		0.16081145 3.6493304 9.8191195 -0.075880967 6.6340747 9.8191195 -2.4804299 7.4696403 
		9.8191195 -3.1238215 8.2656174 9.8191195 -3.7952096 9.184248 9.8191195 -4.514317 
		9.8730392 9.8191195 -5.0083833 9.8988085 9.8191195 -5.0290904 9.2668438 9.8191195 
		-4.580688 8.3955364 9.8191195 -3.8996084 7.5378265 9.8191195 -3.1786139 8.7404604 
		9.8191195 -5.171288 7.5766888 9.8191195 -4.8387351 6.5807104 9.8191195 -4.3381572 
		5.6354246 9.8191195 -3.7420216 2.423466 9.8191195 -1.3445231 4.5806456 9.8191195 
		1.4294504 7.6110964 9.8191195 -1.2014542 8.3905668 9.8191195 -2.0108159 9.0981693 
		9.8191195 -2.8822238 9.7106352 9.8191195 -3.9237151 9.9636192 9.8191195 -4.8186164 
		9.9367151 9.8191195 -5.0595517 9.7123108 9.8191195 -5.1417804 4.0599327 9.8191195 
		-2.3389039 4.983614 9.8191195 -1.1511182 5.8438931 9.8191195 -0.044862971 6.1130905 
		9.8191195 0.13614228 6.1372757 9.8191195 0.0020755378 5.1417046 9.8191195 -1.2781552 
		4.1468544 9.8191195 -2.5574589 4.0122242 9.8191195 -2.5654161 -5.7796531 9.8191195 
		9.4297667 -7.6231914 9.8191195 7.059113 -5.8744507 9.8191195 9.2626667 -7.5507565 
		9.8191195 7.1070619 -2.5375876 9.8191195 6.7406511 -4.3698997 9.8191195 4.3844385 
		-2.6774044 9.8191195 7.1763196 -4.7368984 9.8191195 4.5279627 -9.7331638 9.8191195 
		10.967369 -9.9236259 9.8191195 10.722448 -9.9417782 9.8191195 10.731344 -9.7544651 
		9.8191195 10.974307 -7.6803641 9.8191195 10.442183 -7.8486619 9.8191195 10.45346 
		-9.1344166 9.8191195 8.8000736 -9.0760765 9.8191195 8.6473999 -8.9092331 9.8191195 
		10.858335 -9.7191334 9.8191195 9.8168631 -9.6960506 9.8191195 9.7505617 -8.8457947 
		9.8191195 10.843928 -8.3917112 9.8191195 7.9311976 -8.3775511 9.8191195 7.806932 
		-6.6998377 9.8191195 9.9643469 -6.8577375 9.8191195 9.9037743 -6.6840248 9.8191195 
		8.2216148 -3.4205303 9.8191195 5.605257 -3.7150784 9.8191195 5.8419476 -6.7056556 
		9.8191195 8.2389965 -7.5143785 9.8191195 8.9169083 -8.3407593 9.8191195 9.5492001 
		-9.2411289 9.8191195 10.29179 -9.8730373 9.8191195 10.858999 -9.8988075 9.8191195 
		10.879707 -9.3237219 9.8191195 10.35816 -8.4706745 9.8191195 9.6535969 -7.5825644 
		9.8191195 8.9717007 -9.7675133 9.8191195 9.70119 -9.1805496 9.8191195 8.6269026 -8.4714956 
		9.8191195 7.7573657 -7.6826763 9.8191195 6.9600239 -4.6463947 9.8191195 4.3366151 
		-2.4892149 9.8191195 7.1105886 -5.7070045 9.8191195 9.5005913 -6.6616397 9.8191195 
		10.084707 -7.6590691 9.8191195 10.583414 -8.7973385 9.8191195 10.948763 -9.7123108 
		9.8191195 10.992399 -9.9367161 9.8191195 10.91017 -9.9636192 9.8191195 10.669234 
		-5.9759593 9.8191195 5.7256522 -5.052278 9.8191195 6.9134378 -4.191999 9.8191195 
		8.0196934 -4.0808911 9.8191195 8.3277349 -4.2147975 9.8191195 8.3207054 -5.2103686 
		9.8191195 7.0404749 -6.2052188 9.8191195 5.7611713 -6.1817575 9.8191195 5.6261759;
	setAttr -s 114 ".vt[0:113]"  -0.89021111 -1.70933056 2.47613144 0.95332718 -1.70933056 2.47613144
		 -0.77378273 -0.19602776 2.45874977 0.90252304 -0.19602776 2.45874977 -0.85006523 0.487607 -0.16135979
		 0.98224449 0.487607 -0.16135979 -1.0047988892 -1.24147606 0.075332642 1.054695129 -1.24147606 0.075332642
		 -0.10565567 -2.11630154 5.022611618 0.084806442 -2.11630154 5.022611618 0.087530136 -1.94124508 5.035009384
		 -0.1007843 -1.94124508 5.035817146 -0.64376831 -1.93826437 3.80545425 -0.58444214 -1.11533546 3.89302158
		 0.70131302 -1.11533546 3.89302158 0.75194359 -1.93826437 3.80545425 -0.37033844 -1.63469601 4.57321835
		 0.43956184 -1.63469601 4.57321835 0.4624157 -2.10830975 4.53630447 -0.38784027 -2.10830975 4.53630447
		 0.83151627 -0.58582783 3.19157505 0.88554192 -1.82119942 3.13678265 -0.79217148 -1.82119942 3.13678265
		 -0.70245743 -0.58582783 3.19157505 0.035791397 0.16819286 2.45874977 0.032875061 0.85182667 -0.16135979
		 0.032875061 -1.33970356 0.075332642 0.035791397 -1.80755711 2.47613144 0.022369385 -1.91942644 3.13678265
		 0.037570953 -2.036491394 3.78862286 0.028440475 -2.20653629 4.51947117 0 -2.17110682 5.050109863
		 0 -1.91110992 5.070816994 0.028440475 -1.30634212 4.58584213 0.037570953 -0.7511158 3.89302158
		 0.022369385 -0.22160816 3.19157505 0.51352692 -1.88943577 4.55265713 0.80193138 -1.52680016 3.84923744
		 0.94539261 -1.20351315 3.16417885 1.023626328 -0.93171978 2.46744061 1.11146545 -0.37169456 -0.043012619
		 -1.045714378 -0.37169456 -0.043012619 -0.95204544 -0.93171978 2.46744061 -0.86446381 -1.20351315 3.16417885
		 -0.71954918 -1.52680016 3.84923744 -0.45664787 -1.88943577 4.55265713 -0.12565422 -2.024578094 5.021924973
		 0 -2.046536446 5.10127831 0.12565422 -2.024578094 5.021924973 0.95801353 0.25058651 1.14869595
		 0.034332275 0.61480618 1.14869595 -0.82594681 0.25058651 1.14869595 -1.01609993 -0.59406948 1.21221352
		 -0.96123886 -1.48064327 1.27573299 0.034332275 -1.57886982 1.27573299 1.029182434 -1.48064327 1.27573299
		 1.084766388 -0.59406948 1.21221352 -0.89021111 -1.70933056 -8.24329472 0.95332718 -1.70933056 -8.24329472
		 -0.77378273 -0.19602776 -8.22591305 0.90252304 -0.19602776 -8.22591305 -0.85006523 0.487607 -5.60580349
		 0.98224449 0.487607 -5.6058054 -1.0047988892 -1.24147606 -5.84249592 1.054695129 -1.24147606 -5.84249592
		 -0.10565567 -2.11630154 -10.7897768 0.084806442 -2.11630154 -10.7897768 0.087530136 -1.94124508 -10.80217457
		 -0.1007843 -1.94124508 -10.80297947 -0.64376831 -1.93826437 -9.57261753 -0.58444214 -1.11533546 -9.66018391
		 0.70131302 -1.11533546 -9.66018391 0.75194359 -1.93826437 -9.57261753 -0.37033844 -1.63469601 -10.34038067
		 0.43956184 -1.63469601 -10.34038067 0.4624157 -2.10830975 -10.30346775 -0.38784027 -2.10830975 -10.30346775
		 0.83151627 -0.58582783 -8.95873928 0.88554192 -1.82119942 -8.90394688 -0.79217148 -1.82119942 -8.90394688
		 -0.70245743 -0.58582783 -8.95873928 0.035791397 0.16819286 -8.22591305 0.032875061 0.85182667 -5.6058054
		 0.032875061 -1.33970356 -5.84249592 0.035791397 -1.80755711 -8.24329472 0.022369385 -1.91942644 -8.90394688
		 0.037570953 -2.036491394 -9.55578709 0.028440475 -2.20653629 -10.2866354 0 -2.17110682 -10.81727314
		 0 -1.91110992 -10.83798122 0.028440475 -1.30634212 -10.35300541 0.037570953 -0.7511158 -9.66018391
		 0.022369385 -0.22160816 -8.95873928 0.51352692 -1.88943577 -10.31982136 0.80193138 -1.52680016 -9.61640072
		 0.94539261 -1.20351315 -8.93134403 1.023626328 -0.93171978 -8.23460484 1.11146545 -0.37169456 -5.72415066
		 -1.045714378 -0.37169456 -5.72415066 -0.95204544 -0.93171978 -8.23460484 -0.86446381 -1.20351315 -8.93134403
		 -0.71954918 -1.52680016 -9.61640072 -0.45664787 -1.88943577 -10.31982136 -0.12565422 -2.024578094 -10.78909016
		 0 -2.046536446 -10.86844349 0.12565422 -2.024578094 -10.78909016 0.95801353 0.25058651 -6.91586018
		 0.034332275 0.61480618 -6.91586018 -0.82594681 0.25058651 -6.91586018 -1.01609993 -0.59406948 -6.9793787
		 -0.96123886 -1.48064327 -7.042897224 0.034332275 -1.57886982 -7.042897224 1.029182434 -1.48064327 -7.042897224
		 1.084766388 -0.59406948 -6.9793787;
	setAttr -s 216 ".ed";
	setAttr ".ed[0:165]"  0 27 1 2 24 1 4 25 0 6 26 0 0 42 1 1 39 1 2 51 0 3 49 0
		 4 41 0 5 40 0 6 53 0 7 55 0 0 22 0 1 21 0 8 31 0 3 20 0 9 48 0 2 23 0 11 32 0 8 46 0
		 12 19 0 13 16 0 12 44 1 14 17 0 13 34 1 15 18 0 14 37 1 15 29 1 16 11 0 17 10 0 16 33 1
		 18 9 0 17 36 1 19 8 0 18 30 1 19 45 1 20 14 0 21 15 0 20 38 1 22 12 0 21 28 1 23 13 0
		 22 43 1 23 35 1 24 3 1 25 5 0 24 50 1 26 7 0 27 1 1 26 54 1 28 22 1 27 28 1 29 12 1
		 28 29 1 30 19 1 29 30 1 31 9 0 30 31 1 32 10 0 31 47 1 33 17 1 32 33 1 34 14 1 33 34 1
		 35 20 1 34 35 1 35 24 1 36 18 1 37 15 1 36 37 1 38 21 1 37 38 1 39 3 1 38 39 1 40 7 0
		 39 56 1 41 6 0 42 2 1 41 52 1 43 23 1 42 43 1 44 13 1 43 44 1 45 16 1 44 45 1 46 11 0
		 45 46 1 47 32 1 46 47 1 48 10 0 47 48 1 48 36 1 49 5 0 50 25 1 49 50 1 51 4 0 50 51 1
		 52 42 1 51 52 1 53 0 0 52 53 1 54 27 1 53 54 1 55 1 0 54 55 1 56 40 1 55 56 1 56 49 1
		 103 104 1 104 89 1 68 89 0 103 68 0 59 81 1 81 107 1 107 108 1 59 108 0 110 111 1
		 111 84 1 57 84 1 110 57 0 96 113 1 113 106 1 60 106 0 96 60 1 109 99 1 99 59 1 108 109 1
		 84 85 1 85 79 1 57 79 0 60 77 0 77 95 1 95 96 1 92 81 1 59 80 0 80 92 1 99 100 1
		 100 80 1 101 70 1 101 102 1 102 73 1 70 73 0 70 91 1 73 90 1 90 91 1 71 94 1 71 74 0
		 74 93 1 93 94 1 86 69 1 86 87 1 87 76 1 69 76 0 73 68 0 89 90 1 105 93 1 74 67 0
		 105 67 0 87 88 1 65 88 0 76 65 0 102 103 1 77 71 0 94 95 1 85 86 1 79 69 0;
	setAttr ".ed[166:215]" 100 101 1 80 70 0 91 92 1 81 60 1 106 107 1 111 112 1
		 112 58 0 84 58 1 58 78 0 78 85 1 78 72 0 72 86 1 72 75 0 75 87 1 75 66 0 88 66 0
		 104 105 1 89 67 0 90 74 1 91 71 1 92 77 1 94 72 1 93 75 1 95 78 1 58 96 1 112 113 1
		 57 99 1 109 110 1 79 100 1 69 101 1 76 102 1 65 103 0 88 104 1 66 105 0 106 62 0
		 82 62 0 107 82 1 61 82 0 108 61 0 98 109 1 61 98 0 63 110 0 98 63 0 63 83 0 83 111 1
		 83 64 0 64 112 0 97 64 0 113 97 1 62 97 0;
	setAttr -s 104 -ch 416 ".fc[0:103]" -type "polyFaces" 
		f 4 88 87 -19 -86
		mu 0 4 0 129 2 3
		f 4 1 46 96 -7
		mu 0 4 4 5 6 7
		f 4 102 101 -1 -100
		mu 0 4 8 121 10 11
		f 4 75 107 -8 -73
		mu 0 4 12 13 14 15
		f 4 97 77 6 98
		mu 0 4 16 17 4 7
		f 4 0 51 50 -13
		mu 0 4 11 10 126 19
		f 4 72 15 38 73
		mu 0 4 12 15 20 21
		f 4 66 -2 17 43
		mu 0 4 22 5 4 23
		f 4 -78 80 79 -18
		mu 0 4 4 17 24 23
		f 4 -82 84 83 -22
		mu 0 4 25 26 27 28
		f 4 -25 21 30 63
		mu 0 4 29 25 28 30
		f 4 -27 23 32 69
		mu 0 4 31 32 33 34
		f 4 -53 55 54 -21
		mu 0 4 35 125 124 38
		f 4 -31 28 18 61
		mu 0 4 30 28 3 2
		f 4 91 -33 29 -90
		mu 0 4 39 34 33 40
		f 4 -55 57 -15 -34
		mu 0 4 38 124 123 42
		f 4 -84 86 85 -29
		mu 0 4 28 27 0 3
		f 4 -39 36 26 71
		mu 0 4 21 20 32 31
		f 4 -51 53 52 -40
		mu 0 4 19 126 125 35
		f 4 -80 82 81 -42
		mu 0 4 23 24 26 25
		f 4 -44 41 24 65
		mu 0 4 22 23 25 29
		f 4 44 7 94 -47
		mu 0 4 5 15 14 6
		f 4 -102 104 103 -49
		mu 0 4 122 9 43 44
		f 4 -52 48 13 40
		mu 0 4 18 122 44 45
		f 4 -54 -41 37 27
		mu 0 4 36 18 45 46
		f 4 -56 -28 25 34
		mu 0 4 37 36 46 47
		f 4 -58 -35 31 -57
		mu 0 4 41 37 47 48
		f 4 -88 90 89 -59
		mu 0 4 2 1 39 40
		f 4 -61 -62 58 -30
		mu 0 4 33 30 2 40
		f 4 -63 -64 60 -24
		mu 0 4 32 29 30 33
		f 4 -65 -66 62 -37
		mu 0 4 20 22 29 32
		f 4 -45 -67 64 -16
		mu 0 4 15 5 22 20
		f 4 -69 -70 67 -26
		mu 0 4 46 31 34 47
		f 4 -71 -72 68 -38
		mu 0 4 45 21 31 46
		f 4 5 -74 70 -14
		mu 0 4 44 12 21 45
		f 4 -104 106 -76 -6
		mu 0 4 44 43 13 12
		f 4 99 4 -98 100
		mu 0 4 8 11 17 16
		f 4 -81 -5 12 42
		mu 0 4 24 17 11 19
		f 4 -83 -43 39 22
		mu 0 4 26 24 19 35
		f 4 -85 -23 20 35
		mu 0 4 27 26 35 38
		f 4 -87 -36 33 19
		mu 0 4 0 27 38 42
		f 4 14 59 -89 -20
		mu 0 4 42 123 129 0
		f 4 -91 -60 56 16
		mu 0 4 39 1 41 48
		f 4 -68 -92 -17 -32
		mu 0 4 47 34 39 48
		f 4 -95 92 -46 -94
		mu 0 4 6 14 49 50
		f 4 -97 93 -3 -96
		mu 0 4 7 6 50 51
		f 4 78 -99 95 8
		mu 0 4 52 16 7 51
		f 4 10 -101 -79 76
		mu 0 4 53 8 16 52
		f 4 3 49 -103 -11
		mu 0 4 53 54 121 8
		f 4 -105 -50 47 11
		mu 0 4 43 9 127 55
		f 4 -107 -12 -75 -106
		mu 0 4 13 43 55 56
		f 4 -108 105 -10 -93
		mu 0 4 14 13 56 49
		f 4 111 110 -110 -109
		mu 0 4 57 58 59 128
		f 4 115 -115 -114 -113
		mu 0 4 61 62 63 64
		f 4 119 118 -118 -117
		mu 0 4 65 66 120 115
		f 4 123 122 -122 -121
		mu 0 4 69 70 71 72
		f 4 -127 -116 -126 -125
		mu 0 4 73 62 61 74
		f 4 129 -129 -128 -119
		mu 0 4 66 75 117 120
		f 4 -133 -132 -131 -124
		mu 0 4 69 77 78 70
		f 4 -136 -135 112 -134
		mu 0 4 79 80 61 64
		f 4 134 -138 -137 125
		mu 0 4 61 80 81 74
		f 4 141 -141 -140 138
		mu 0 4 82 83 84 85
		f 4 -145 -144 -142 142
		mu 0 4 86 87 83 82
		f 4 -149 -148 -147 145
		mu 0 4 88 89 90 91
		f 4 152 -152 -151 149
		mu 0 4 92 93 119 118
		f 4 -155 -111 -154 143
		mu 0 4 87 59 58 83
		f 4 157 -157 147 -156
		mu 0 4 96 97 90 89
		f 4 160 159 -159 151
		mu 0 4 93 98 99 119
		f 4 153 -112 -162 140
		mu 0 4 83 58 57 84
		f 4 -164 -146 -163 131
		mu 0 4 77 88 91 78
		f 4 165 -150 -165 128
		mu 0 4 75 92 118 117
		f 4 167 -139 -167 137
		mu 0 4 80 82 85 81
		f 4 -169 -143 -168 135
		mu 0 4 79 86 82 80
		f 4 113 -171 -123 -170
		mu 0 4 64 63 71 70
		f 4 173 -173 -172 117
		mu 0 4 67 100 101 68
		f 4 -176 -175 -174 127
		mu 0 4 76 102 100 67
		f 4 -178 -177 175 164
		mu 0 4 95 103 102 76
		f 4 -180 -179 177 150
		mu 0 4 94 104 103 95
		f 4 181 -181 179 158
		mu 0 4 116 105 104 94
		f 4 183 -158 -183 109
		mu 0 4 59 97 96 60
		f 4 156 -184 154 184
		mu 0 4 90 97 59 87
		f 4 146 -185 144 185
		mu 0 4 91 90 87 86
		f 4 162 -186 168 186
		mu 0 4 78 91 86 79
		f 4 130 -187 133 169
		mu 0 4 70 78 79 64
		f 4 178 -189 148 187
		mu 0 4 103 104 89 88
		f 4 176 -188 163 189
		mu 0 4 102 103 88 77
		f 4 174 -190 132 -191
		mu 0 4 100 102 77 69
		f 4 190 120 -192 172
		mu 0 4 100 69 72 101
		f 4 -194 124 -193 -120
		mu 0 4 65 73 74 66
		f 4 -195 -130 192 136
		mu 0 4 81 75 66 74
		f 4 -196 -166 194 166
		mu 0 4 85 92 75 81
		f 4 -197 -153 195 139
		mu 0 4 84 93 92 85
		f 4 -198 -161 196 161
		mu 0 4 57 98 93 84
		f 4 197 108 -199 -160
		mu 0 4 98 57 128 99
		f 4 -200 -182 198 182
		mu 0 4 96 105 116 60
		f 4 180 199 155 188
		mu 0 4 104 105 96 89
		f 4 202 201 -201 170
		mu 0 4 63 106 107 71
		f 4 204 203 -203 114
		mu 0 4 62 108 106 63
		f 4 -207 -205 126 -206
		mu 0 4 109 108 62 73
		f 4 -209 205 193 -208
		mu 0 4 110 109 73 65
		f 4 207 116 -211 -210
		mu 0 4 110 65 115 114
		f 4 -213 -212 210 171
		mu 0 4 101 112 111 68
		f 4 214 213 212 191
		mu 0 4 72 113 112 101
		f 4 200 215 -215 121
		mu 0 4 71 107 113 72;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Tail" -p "Grp_Geo";
	rename -uid "82D2EF7B-4092-6622-9867-439BC963CE9C";
	setAttr ".rp" -type "double3" 2.6645352591003757e-15 0 -3.1086244689504383e-15 ;
	setAttr ".sp" -type "double3" 2.6645352591003757e-15 0 -3.1086244689504383e-15 ;
createNode mesh -n "TailShape" -p "Tail";
	rename -uid "32A0D262-414C-5262-0218-048DA95DCF11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000011920928955 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 99 ".uvst[0].uvsp[0:98]" -type "float2" 0.5 0.00031787157
		 0.5 0.0098483562 0.47385621 0.012618124 0.47121215 0.0041555166 0.47900248 0.03247875
		 0.5 0.031968653 0.40669501 0.28477049 0.34330046 0.27566886 0.36177242 0.22685254
		 0.41848993 0.23901796 0.39207256 0.3538959 0.32252789 0.3458817 0.38138568 0.17820197
		 0.43126595 0.19186753 0.40144587 0.12842983 0.44502366 0.1429702 0.41672921 0.08935374
		 0.45549083 0.10274488 0.43435061 0.04968363 0.46470869 0.06302315 0.45102262 0.028024793
		 0.5 0.19763523 0.5 0.14947397 0.5 0.10833526 0.5 0.070067525 0.5 0.29058754 0.5 0.35974944
		 0.5 0.24481225 0.31504321 0.26000923 0.33960104 0.20334363 0.29184937 0.33165526
		 0.42395377 0.034876466 0.44696975 0.020644784 0.40174353 0.067033887 0.38498771 0.1032545
		 0.3629396 0.15196192 0.32825983 0.24385387 0.39426553 0.23717505 0.40908933 0.16982645
		 0.35310984 0.18183672 0.30512726 0.31729519 0.37857354 0.31130356 0.42486227 0.11427367
		 0.37553883 0.12794757 0.43978715 0.0648278 0.3974371 0.080084324 0.45066011 0.031895339
		 0.41503119 0.044395566 0.46491599 0.0070171356 0.43810761 0.019483268 0.44756687
		 0.016379297 0.5 0 0.5 0.026941538 0.5 0.059585571 0.5 0.1115222 0.5 0.16710865 0.5
		 0.2346645 0.5 0.30879474 0.52878785 0.0041555166 0.52614367 0.012618124 0.52099752
		 0.03247875 0.59330487 0.28477049 0.58150995 0.23901796 0.63822746 0.22685254 0.65669942
		 0.27566886 0.67747223 0.3458817 0.60792744 0.3538959 0.56873405 0.19186753 0.61861432
		 0.17820197 0.55497634 0.1429702 0.59855413 0.12842983 0.54450917 0.10274488 0.58327079
		 0.08935374 0.53529131 0.06302315 0.56564927 0.04968363 0.54897726 0.028024793 0.66039908
		 0.20334363 0.68495679 0.26000923 0.70815051 0.33165526 0.55303025 0.020644784 0.57604635
		 0.034876466 0.59825647 0.067033887 0.61501217 0.1032545 0.6370604 0.15196192 0.67174029
		 0.24385387 0.64689028 0.18183672 0.59091055 0.16982645 0.60573435 0.23717505 0.62142658
		 0.31130356 0.69487286 0.31729519 0.62446117 0.12794757 0.57513762 0.11427367 0.6025629
		 0.080084324 0.56021273 0.0648278 0.58496892 0.044395566 0.54934001 0.031895339 0.56189227
		 0.019483268 0.53508389 0.0070171356 0.55243301 0.016379297;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 99 ".pt[0:98]" -type "float3"  -2.1480858 2.3224266 -5.6994152 
		-2.6026928 2.3224266 -6.2651482 -3.0372288 2.3224266 -6.8059044 -3.3829243 2.3224266 
		-7.2361031 -3.5455563 2.3224266 -7.4384894 -3.1159298 2.3224266 -6.9038434 -2.1411259 
		2.3224266 -5.6907539 -1.1550571 2.3224266 -4.4636459 -0.54899132 2.3224266 -3.7094309 
		0.27152905 2.3224266 -2.688339 0.99434555 2.3224266 -1.7888341 1.5547284 2.3224266 
		-1.0914687 1.8957165 2.3224266 -0.66712791 -1.2112819 2.3224266 -4.5336146 -1.4339439 
		2.3224266 -4.8107052 -1.7557784 2.3224266 -5.2112107 1.923941 2.3224266 -5.3533173 
		2.7180028 2.3224266 -5.0880089 3.3331821 2.3224266 -5.005157 -3.4948552 2.3224266 
		-7.3753948 -2.4495955 2.3224266 -7.6355615 -1.6588774 2.3224266 -7.329031 -0.67107654 
		2.3224266 -6.7535191 0.084626131 2.3224266 -6.3062916 1.0309463 2.3224266 -5.7776318 
		0.071456313 2.3224266 -5.6837311 1.4088547 2.3224266 -5.8854237 1.9213425 2.3224266 
		-5.8590961 0.50511366 2.3224266 -5.5744796 -0.42303377 2.3224266 -5.9519134 0.79010487 
		2.3224266 -6.1117039 -1.0014315 2.3224266 -6.2956438 0.078296743 2.3224266 -6.4201946 
		-1.6667479 2.3224266 -6.7186351 -0.71499377 2.3224266 -6.8169365 -2.2448118 2.3224266 
		-7.1299038 -1.3742127 2.3224266 -7.1874323 -2.7490854 2.3224266 -7.4861193 -2.0834494 
		2.3224266 -7.5513535 -2.5990074 2.3224266 -7.702199 -3.1491992 2.3224266 -7.5633016 
		3.4596601 2.3224266 -3.7760272 2.9079745 2.3224266 -2.519702 3.473594 2.3224266 -2.2777164 
		4.1223779 2.3224266 -3.6322153 2.5915687 2.3224266 -4.1248641 2.1374927 2.3224266 
		-3.042187 1.5871456 2.3224266 -4.7146201 1.1903754 2.3224266 -3.7565479 0.51888227 
		2.3224266 -5.3994408 0.17846994 2.3224266 -4.5764966 -0.36733797 2.3224266 -5.9844151 
		-0.5858013 2.3224266 -5.207551 -1.544421 2.3224266 -6.7699761 -1.7542354 2.3224266 
		-6.2419782 -2.6728964 2.3224266 -7.1998792 -2.3461635 2.3224266 -7.4892683 -3.0458226 
		2.3224266 -7.5861335 -2.6866829 2.3224266 -1.6483514 -2.5985289 2.3224266 -0.81579584 
		-2.6500483 2.3224266 -0.19720432 -3.9739335 2.3224266 -6.4106469 -3.844806 2.3224266 
		-5.5724812 -3.4954295 2.3224266 -4.4839497 -3.2213662 2.3224266 -3.6496906 -2.9088156 
		2.3224266 -2.6117513 -2.6105669 2.3224266 -3.5285342 -3.0954275 2.3224266 -2.2659111 
		-3.1800447 2.3224266 -1.7597673 -2.5972295 2.3224266 -3.0815256 -2.7660134 2.3224266 
		-4.0691619 -3.1832054 2.3224266 -2.9188652 -2.9771717 2.3224266 -4.7079954 -3.3312385 
		2.3224266 -3.6803894 -3.2470269 2.3224266 -5.4487681 -3.5479059 2.3224266 -4.5404892 
		-3.5242167 2.3224266 -6.1018105 -3.7678068 2.3224266 -5.2640085 -3.7635243 2.3224266 
		-6.6709452 -3.9705193 2.3224266 -6.0349579 -4.006845 2.3224266 -6.5709009 -3.7527652 
		2.3224266 -7.0782933 -1.4769632 2.3224266 0.19090225 -0.13133089 2.3224266 -0.077403083 
		-0.016778633 2.3224266 0.52704746 -1.4791863 2.3224266 0.86904162 -1.6307478 2.3224266 
		-0.73193127 -0.47570586 2.3224266 -0.94229531 -1.9904566 2.3224266 -1.8397615 -0.9694342 
		2.3224266 -2.0209866 -2.4292581 2.3224266 -3.0303993 -1.5523278 2.3224266 -3.1856768 
		-2.8097448 2.3224266 -4.0217667 -2.0040636 2.3224266 -4.0678759 -3.3234973 2.3224266 
		-5.3403611 -2.7627118 2.3224266 -5.4315953 -3.5003936 2.3224266 -6.5349259 -3.8533359 
		2.3224266 -6.2781477 -3.7973154 2.3224266 -6.9822555;
	setAttr -s 99 ".vt[0:98]"  2.14808655 -0.91384256 -1.9073486e-06 2.60269356 -1.49733531 -1.9073486e-06
		 3.037229538 -1.99574685 -1.9073486e-06 3.38292503 -2.45937562 -1.9073486e-06 3.54555702 -2.92095852 -1.9073486e-06
		 3.11593056 -3.30441976 -1.9073486e-06 2.14112663 -3.30827141 -1.9073486e-06 1.15505791 -2.98186398 -1.9073486e-06
		 0.54899216 -2.5863688 -1.9073486e-06 -0.27152824 -1.95713568 -1.9073486e-06 -0.99434471 -1.28368449 -1.9073486e-06
		 -1.55472755 -0.46521831 -1.9073486e-06 -1.89571571 0.43289828 -1.9073486e-06 1.21128273 1.050234318 -1.9073486e-06
		 1.4339447 0.21231079 -1.9073486e-06 1.75577927 -0.34227479 -1.9073486e-06 0.38137054 -0.84468293 1.85247993
		 -0.059736252 -0.15815711 2.13610458 -0.34156609 0.70986295 2.40397453 3.49485588 -3.18895459 -1.9073486e-06
		 3.21176529 -3.058151484 0.61245537 2.7518425 -2.88572931 0.87827301 2.08325386 -2.49612904 1.13478279
		 1.56837082 -2.057302237 1.32829857 0.93893433 -1.46719241 1.58293724 1.26955605 0.14183497 1.077596664
		 0.84328842 0.031565189 1.80975533 0.62935066 0.88222122 2.049661636 1.046058655 0.97931671 1.24647522
		 1.59452438 -0.41247463 0.94137383 1.19655228 -0.55986392 1.59641838 1.98930359 -0.98372066 0.79382324
		 1.62647057 -1.14928412 1.36989975 2.4568882 -1.57613134 0.63493156 2.13145065 -1.75229311 1.13822174
		 2.88451385 -2.063476324 0.51404381 2.57101059 -2.22571588 0.96170998 3.25630569 -2.54472089 0.40758514
		 3.026985168 -2.70633459 0.75819588 3.30292702 -2.96873999 0.56564713 3.45098305 -2.91477823 0.24250221
		 -0.99134827 -0.35388589 1.98346233 -1.38832092 -0.43480241 1.22114754 -1.72840691 0.46329379 1.40237999
		 -1.32159615 0.5358851 2.25062561 -0.48040962 -1.10524809 1.69646454 -0.83089256 -1.25075722 1.049943924
		 0.20165634 -1.7581358 1.43742752 -0.11046982 -1.92380095 0.86777878 0.95518875 -2.33801842 1.18451881
		 0.6869297 -2.52285719 0.69540787 1.58854103 -2.77040148 0.98132133 1.29493332 -2.92184639 0.56983566
		 2.43395996 -3.072223663 0.7148056 2.25847435 -3.22325611 0.40518951 3.086647034 -3.25792575 0.33247566
		 3.099750519 -3.10982943 0.6055584 3.42156982 -3.15539789 0.3019371 0.38137054 -0.84468293 -1.85248566
		 -0.059736252 -0.15815711 -2.1361084 -0.34156609 0.70986295 -2.40397835 3.21176529 -3.058151484 -0.61245918
		 2.7518425 -2.88572931 -0.87827682 2.08325386 -2.49612904 -1.13478661 1.56837082 -2.057302237 -1.32830238
		 0.93893433 -1.46719241 -1.58294296 1.26955605 0.14183497 -1.077600479 0.84328842 0.031565189 -1.80975723
		 0.62935066 0.88222122 -2.049667358 1.046058655 0.97931671 -1.24647903 1.59452438 -0.41247463 -0.94137764
		 1.19655228 -0.55986392 -1.59642029 1.98930359 -0.98372066 -0.79382515 1.62647057 -1.14928412 -1.36990547
		 2.4568882 -1.57613134 -0.63493538 2.13145065 -1.75229311 -1.13822556 2.88451385 -2.063476324 -0.51404953
		 2.57101059 -2.22571588 -0.96171379 3.25630569 -2.54472089 -0.40758896 3.026985168 -2.70633459 -0.75819969
		 3.30292702 -2.96873999 -0.56565094 3.45098305 -2.91477823 -0.24250603 -0.99134827 -0.35388589 -1.9834671
		 -1.38832092 -0.43480241 -1.22115135 -1.72840691 0.46329379 -1.4023838 -1.32159615 0.5358851 -2.25063133
		 -0.48040962 -1.10524809 -1.69646835 -0.83089256 -1.25075722 -1.049947739 0.20165634 -1.7581358 -1.43743134
		 -0.11046982 -1.92380095 -0.86778259 0.95518875 -2.33801842 -1.18452263 0.6869297 -2.52285719 -0.69541168
		 1.58854103 -2.77040148 -0.98132706 1.29493332 -2.92184639 -0.56983948 2.43395996 -3.072223663 -0.71480942
		 2.25847435 -3.22325611 -0.40519333 3.086647034 -3.25792575 -0.33247757 3.099750519 -3.10982943 -0.60556221
		 3.42156982 -3.15539789 -0.30194092;
	setAttr -s 190 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 0 2 3 0 4 40 0 3 4 0 5 55 1 4 19 0 5 6 1
		 6 7 1 7 8 1 8 9 1 9 10 1 10 11 1 11 12 1 13 14 1 14 15 1 15 0 1 16 17 1 18 27 0 17 18 1
		 19 5 1 20 39 0 19 57 1 20 21 0 21 22 0 22 23 0 23 24 0 24 16 1 28 13 0 40 39 0 25 26 1
		 26 30 0 30 29 1 29 25 0 25 28 0 28 27 0 27 26 0 30 32 0 32 31 1 31 29 0 32 34 0 34 33 1
		 33 31 0 34 36 0 36 35 1 35 33 0 36 38 1 38 37 1 37 35 1 38 39 1 40 37 1 0 31 1 33 1 1
		 35 2 1 37 3 1 25 14 1 29 15 1 26 17 1 16 30 1 38 21 1 36 22 1 34 23 1 32 24 1 43 12 0
		 44 18 0 56 20 1 56 55 1 41 42 1 42 46 0 46 45 1 45 41 0 41 44 0 44 43 0 43 42 0 46 48 1
		 48 47 1 47 45 1 48 50 1 50 49 1 49 47 1 50 52 1 52 51 1 51 49 1 52 54 1 54 53 1 53 51 1
		 54 55 1 56 53 1 41 17 1 45 16 1 47 24 1 49 23 1 51 22 1 53 21 1 54 6 1 52 7 1 50 8 1
		 48 9 1 46 10 1 42 11 1 57 20 1 40 57 1 57 55 1 19 98 1 98 96 1 5 96 1 81 98 1 4 81 0
		 66 67 1 67 71 0 71 70 1 70 66 0 66 69 0 69 68 0 68 67 0 71 73 0 73 72 1 72 70 0 73 75 0
		 75 74 1 74 72 0 75 77 0 77 76 1 76 74 0 77 79 1 79 78 1 78 76 1 79 80 1 81 80 0 81 78 1
		 0 72 1 74 1 1 76 2 1 78 3 1 66 14 1 69 13 0 70 15 1 67 59 1 58 59 1 58 71 1 59 60 1
		 60 68 0 79 62 1 61 62 0 61 80 0 77 63 1 62 63 0 75 64 1 63 64 0 73 65 1 64 65 0 65 58 1
		 82 83 1 83 87 0 87 86 1 86 82 0 82 85 0 85 84 0 84 83 0 87 89 1 89 88 1 88 86 1 89 91 1
		 91 90 1 90 88 1 91 93 1;
	setAttr ".ed[166:189]" 93 92 1 92 90 1 93 95 1 95 94 1 94 92 1 95 96 1 97 96 1
		 97 94 1 82 59 1 85 60 0 86 58 1 88 65 1 90 64 1 92 63 1 94 62 1 97 61 1 95 6 1 93 7 1
		 91 8 1 89 9 1 87 10 1 83 11 1 84 12 0 98 61 1;
	setAttr -s 92 -ch 368 ".fc[0:91]" -type "polyFaces" 
		f 4 -21 22 102 -6
		mu 0 4 0 1 2 3
		f 4 101 -23 -7 3
		mu 0 4 4 2 1 5
		f 4 30 31 32 33
		mu 0 4 6 7 8 9
		f 4 -31 34 35 36
		mu 0 4 7 6 10 11
		f 4 -33 37 38 39
		mu 0 4 9 8 12 13
		f 4 -39 40 41 42
		mu 0 4 13 12 14 15
		f 4 -42 43 44 45
		mu 0 4 15 14 16 17
		f 4 -45 46 47 48
		mu 0 4 17 16 18 19
		f 4 -48 49 -30 50
		mu 0 4 19 18 20 4
		f 4 51 -43 52 -1
		mu 0 4 21 13 15 22
		f 4 -2 -53 -46 53
		mu 0 4 23 22 15 17
		f 4 -3 -54 -49 54
		mu 0 4 24 23 17 19
		f 4 -5 -55 -51 -4
		mu 0 4 5 24 19 4
		f 4 55 -15 -29 -35
		mu 0 4 6 25 26 10
		f 4 -16 -56 -34 56
		mu 0 4 27 25 6 9
		f 4 -17 -57 -40 -52
		mu 0 4 21 27 9 13
		f 4 57 -18 58 -32
		mu 0 4 7 28 29 8
		f 4 -20 -58 -37 -19
		mu 0 4 30 28 7 11
		f 4 59 -24 21 -50
		mu 0 4 18 31 32 20
		f 4 60 -25 -60 -47
		mu 0 4 16 33 31 18
		f 4 61 -26 -61 -44
		mu 0 4 14 34 33 16
		f 4 62 -27 -62 -41
		mu 0 4 12 35 34 14
		f 4 -59 -28 -63 -38
		mu 0 4 8 29 35 12
		f 4 67 68 69 70
		mu 0 4 36 37 38 39
		f 4 -68 71 72 73
		mu 0 4 37 36 40 41
		f 4 -70 74 75 76
		mu 0 4 39 38 42 43
		f 4 -76 77 78 79
		mu 0 4 43 42 44 45
		f 4 -79 80 81 82
		mu 0 4 45 44 46 47
		f 4 -82 83 84 85
		mu 0 4 47 46 48 49
		f 4 -85 86 -67 87
		mu 0 4 49 48 3 50
		f 4 88 19 -65 -72
		mu 0 4 36 28 30 40
		f 4 -89 -71 89 17
		mu 0 4 28 36 39 29
		f 4 27 -90 -77 90
		mu 0 4 35 29 39 43
		f 4 -91 -80 91 26
		mu 0 4 35 43 45 34
		f 4 -92 -83 92 25
		mu 0 4 34 45 47 33
		f 4 -93 -86 93 24
		mu 0 4 33 47 49 31
		f 4 -94 -88 65 23
		mu 0 4 31 49 50 32
		f 4 94 -8 5 -87
		mu 0 4 48 51 0 3
		f 4 95 -9 -95 -84
		mu 0 4 46 52 51 48
		f 4 96 -10 -96 -81
		mu 0 4 44 53 52 46
		f 4 97 -11 -97 -78
		mu 0 4 42 54 53 44
		f 4 98 -12 -98 -75
		mu 0 4 38 55 54 42
		f 4 99 -13 -99 -69
		mu 0 4 37 56 55 38
		f 4 -14 -100 -74 63
		mu 0 4 57 56 37 41
		f 4 -101 -102 29 -22
		mu 0 4 32 2 4 20
		f 4 -103 100 -66 66
		mu 0 4 3 2 32 50
		f 4 105 -105 -104 20
		mu 0 4 0 58 59 1
		f 4 -108 6 103 -107
		mu 0 4 60 5 1 59
		f 4 -112 -111 -110 -109
		mu 0 4 61 62 63 64
		f 4 -115 -114 -113 108
		mu 0 4 64 65 66 61
		f 4 -118 -117 -116 110
		mu 0 4 62 67 68 63
		f 4 -121 -120 -119 116
		mu 0 4 67 69 70 68
		f 4 -124 -123 -122 119
		mu 0 4 69 71 72 70
		f 4 -127 -126 -125 122
		mu 0 4 71 73 74 72
		f 4 -130 128 -128 125
		mu 0 4 73 60 75 74
		f 4 0 -132 120 -131
		mu 0 4 21 22 69 67
		f 4 -133 123 131 1
		mu 0 4 23 71 69 22
		f 4 -134 126 132 2
		mu 0 4 24 73 71 23
		f 4 107 129 133 4
		mu 0 4 5 60 73 24
		f 4 112 135 14 -135
		mu 0 4 61 66 26 25
		f 4 -137 111 134 15
		mu 0 4 27 62 61 25
		f 4 130 117 136 16
		mu 0 4 21 67 62 27
		f 4 109 -140 138 -138
		mu 0 4 64 63 76 77
		f 4 141 114 137 140
		mu 0 4 78 65 64 77
		f 4 127 -145 143 -143
		mu 0 4 74 75 79 80
		f 4 124 142 146 -146
		mu 0 4 72 74 80 81
		f 4 121 145 148 -148
		mu 0 4 70 72 81 82
		f 4 118 147 150 -150
		mu 0 4 68 70 82 83
		f 4 115 149 151 139
		mu 0 4 63 68 83 76
		f 4 -156 -155 -154 -153
		mu 0 4 84 85 86 87
		f 4 -159 -158 -157 152
		mu 0 4 87 88 89 84
		f 4 -162 -161 -160 154
		mu 0 4 85 90 91 86
		f 4 -165 -164 -163 160
		mu 0 4 90 92 93 91
		f 4 -168 -167 -166 163
		mu 0 4 92 94 95 93
		f 4 -171 -170 -169 166
		mu 0 4 94 96 97 95
		f 4 -174 172 -172 169
		mu 0 4 96 98 58 97
		f 4 156 175 -141 -175
		mu 0 4 84 89 78 77
		f 4 -139 -177 155 174
		mu 0 4 77 76 85 84
		f 4 -178 161 176 -152
		mu 0 4 83 90 85 76
		f 4 -151 -179 164 177
		mu 0 4 83 82 92 90
		f 4 -149 -180 167 178
		mu 0 4 82 81 94 92
		f 4 -147 -181 170 179
		mu 0 4 81 80 96 94
		f 4 -144 -182 173 180
		mu 0 4 80 79 98 96
		f 4 171 -106 7 -183
		mu 0 4 97 58 0 51
		f 4 168 182 8 -184
		mu 0 4 95 97 51 52
		f 4 165 183 9 -185
		mu 0 4 93 95 52 53
		f 4 162 184 10 -186
		mu 0 4 91 93 53 54
		f 4 159 185 11 -187
		mu 0 4 86 91 54 55
		f 4 153 186 12 -188
		mu 0 4 87 86 55 56
		f 4 -189 158 187 13
		mu 0 4 57 88 87 56
		f 4 144 -129 106 189
		mu 0 4 79 75 60 59
		f 4 -173 181 -190 104
		mu 0 4 58 98 79 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Body" -p "Grp_Geo";
	rename -uid "7B9A5855-47C2-0076-4FCB-6382F2D76BD8";
	setAttr ".rp" -type "double3" 2.6367796834847468e-15 0 2.2828960943854781e-15 ;
	setAttr ".sp" -type "double3" 2.6367796834847468e-15 0 2.2828960943854781e-15 ;
createNode mesh -n "BodyShape" -p "Body";
	rename -uid "E377A250-433C-D2F6-4DE1-C7AE74B6AB7C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.30691862230204592 0.20827456286975338 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 378 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.43551049 0.070383489 0.4621354
		 0.089572728 0.44943377 0.1344015 0.42134109 0.12573361 0.18750203 0.04949829 0.21801519
		 0.05053632 0.21323597 0.10720998 0.18163538 0.10620606 0.40880877 0.060037315 0.39616767
		 0.1216107 0.39355996 0.18105567 0.41882637 0.18201929 0.42215839 0.22866553 0.39498088
		 0.22730577 0.17786741 0.16710296 0.20971966 0.16682297 0.20826554 0.22356659 0.17596668
		 0.22459966 0.44924182 0.18279445 0.45696807 0.22958106 0.089025259 0.05691953 0.11966509
		 0.051794022 0.1163249 0.1091654 0.08278954 0.11144167 0.10640633 0.22659963 0.081630647
		 0.20030618 0.083318233 0.16531429 0.11402178 0.16618064 0.49318317 0.14544684 0.4947693
		 0.11661762 0.51068652 0.11602736 0.04620564 0.11353165 0.5106616 0.19773048 0.49617204
		 0.17760986 0.053374887 0.16725343 0.066050708 0.19304711 0.15326029 0.050762475 0.14857399
		 0.10808611 0.14499909 0.16705427 0.14205527 0.22574446 0.45706028 0.26619214 0.42349181
		 0.25784212 0.39625016 0.25380796 0.20859337 0.26346785 0.17732739 0.26556021 0.11530817
		 0.27772003 0.14555883 0.27064234 0.45860168 0.34434122 0.48389241 0.31747538 0.49073204
		 0.34923941 0.46532378 0.36146009 0.42327592 0.28922266 0.45329663 0.30037862 0.44263098
		 0.32899696 0.4214122 0.31941825 0.39702228 0.28164536 0.39790037 0.31494129 0.18082285
		 0.30567944 0.21056968 0.30311769 0.21273756 0.34016538 0.18530619 0.34280974 0.14200562
		 0.35507399 0.11876291 0.31910527 0.15137804 0.31078595 0.16206467 0.3475827 0.47068763
		 0.38232273 0.09671998 0.36450487 0.10779893 0.34554446 0.12825334 0.36608273 0.49083963
		 0.27747011 0.49613276 0.22692436 0.5345664 0.22959352 0.53282857 0.27345151 0.54029
		 0.17100209 0.53897548 0.19879067 0.53401291 0.31113583 0.53993618 0.34396487 0.060427427
		 0.35321534 0.066990018 0.33326852 0.072232366 0.2353338 0.063200951 0.21100086 0.075879455
		 0.27383572 0.34039292 0.27428454 0.37105435 0.27703375 0.37347031 0.31328255 0.34181297
		 0.31068176 0.3392216 0.22572178 0.36911854 0.22629517 0.36984324 0.25096136 0.33963525
		 0.24918205 0.33881181 0.17968905 0.36819473 0.18024939 0.34379503 0.048649311 0.37869605
		 0.052102625 0.37008968 0.1184634 0.33987844 0.11626452 0.27666205 0.10928619 0.27862382
		 0.053304106 0.3090564 0.053011656 0.30821049 0.11031437 0.27352268 0.2232531 0.27468717
		 0.16779602 0.30737573 0.16904891 0.30662811 0.22383994 0.27323276 0.2625007 0.30608362
		 0.26311427 0.27324259 0.33671016 0.2727704 0.30205029 0.30553532 0.30317032 0.30504525
		 0.33796781 0.44140324 0.060193062 0.46856919 0.081396937 0.43659565 0.33576524 0.41812849
		 0.32970482 0.39686373 0.3264699 0.21282732 0.35358846 0.18760645 0.35516626 0.087685525
		 0.044835985 0.11856997 0.040309668 0.13549876 0.37265915 0.12868613 0.38579971 0.45422706
		 0.36293554 0.44976935 0.34700662 0.49669555 0.11409163 0.50890493 0.1087144 0.16528434
		 0.35856378 0.14744353 0.36406279 0.15251046 0.03880851 0.30976894 0.025869489 0.3817431
		 0.035801351 0.30952942 0.038928166 0.3095234 0.039143592 0.37261975 0.32748312 0.31052187
		 0.3268643 0.41312021 0.046713233 0.18717599 0.037879542 0.21688318 0.038308486 0.30483174
		 0.35333884 0.57595652 0.26921946 0.56964624 0.22867954 0.57865894 0.22746599 0.58484626
		 0.26895553 0.57100391 0.20021272 0.57349741 0.17523134 0.025829673 0.19813484 0.57976997
		 0.19967532 0.58536708 0.33614302 0.57922113 0.30521685 0.58863688 0.30377203 0.59315258
		 0.33457404 0.029147029 0.32383054 0.019984722 0.34333533 0.60049033 0.35414344 0.023406267
		 0.3209089 0.039724648 0.2161676 0.043783784 0.23777837 0.036602736 0.23700103 0.033953726
		 0.21751648 0.038433433 0.27062315 0.031114697 0.26983196 0.48191759 0.10722846 0.48722544
		 0.10237336 0.47418022 0.14109117 0.47712967 0.18093175 0.3102608 0.30857688 0.31059733
		 0.32215661 0.30996433 0.27105916 0.30977413 0.045911312 0.30981866 0.11565733 0.24117404
		 0.33727986 0.23972762 0.35215396 0.24047792 0.30140299 0.2402842 0.26225215 0.24009609
		 0.2229026 0.24162853 0.16644922 0.24508256 0.1080575 0.24899423 0.052573651 0.24678689
		 0.039463118 0.30608654 0.2632764 0.073748708 0.30802608 0.035159409 0.30119997 0.027320623
		 0.29915708 0.3099077 0.24728054 0.30987814 0.22530895 0.30984691 0.17956454 0.30990937
		 0.24738103 0.18402338 0.07049036 0.1982981 0.12585819 0.17019016 0.13456613 0.1574204
		 0.089779913 0.43047965 0.052930072 0.43480206 0.10975787 0.40317386 0.10989758 0.40004814
		 0.053130284 0.21075764 0.060151398 0.22342816 0.12168658 0.22613734 0.18108881 0.22474173
		 0.22732669 0.19757444 0.22870696 0.20086193 0.18212038 0.43688953 0.17073137 0.43724644
		 0.22827214 0.40496218 0.22633868 0.40508258 0.16956562 0.16278505 0.22966641 0.17046887
		 0.18291831 0.52871287 0.062997416 0.53343427 0.11765903 0.49997646 0.11448014 0.49819279
		 0.057042107 0.50676316 0.23222932 0.50074691 0.17155504 0.53147268 0.17149401 0.53228569
		 0.20661548 0.12648451 0.14573592 0.56991994 0.12070203 0.56295198 0.067013741 0.12479401
		 0.11692017 0.10913414 0.19792777 0.54812837 0.19974941 0.56131411 0.17415968 0.1235835
		 0.17785448 0.46777761 0.11253569 0.46462828 0.055114165 0.47111273 0.23037371 0.46976656
		 0.17157939 0.19624949 0.2578485 0.16271734 0.26623744 0.22347325 0.25378245 0.43475866
		 0.2691955 0.40356058 0.26622385 0.49644089 0.28310531 0.46639848 0.27517062 0.16126293
		 0.34432632 0.15457511 0.36145866 0.12915486 0.34928179 0.13595378 0.31751722 0.19646966
		 0.28918582 0.19835031 0.31934613 0.17718875 0.32896048 0.16649938 0.30038482 0.22268388
		 0.28157836 0.22177175 0.31481695 0.43017828 0.30920374 0.42470074 0.34620059 0.39733315
		 0.34280658 0.40050042 0.3058126 0.46762931 0.35961407 0.44780833 0.35159284 0.45946926
		 0.31513166;
	setAttr ".uvst[0].uvsp[250:377]" 0.49181777 0.3243677 0.14924097 0.38233656
		 0.48101008 0.37097639 0.50199282 0.35109097 0.12324446 0.37586015 0.12897342 0.27755219
		 0.087010503 0.27359444 0.08524555 0.22976345 0.12365866 0.22706544 0.080835462 0.19898343
		 0.079526782 0.17120057 0.07996285 0.34407532 0.085855007 0.31125158 0.54311693 0.34009236
		 0.54903185 0.36026919 0.55049562 0.21791732 0.54071015 0.24195606 0.53598213 0.28034836
		 0.27938998 0.27420104 0.27776009 0.31040287 0.24606481 0.31309277 0.24864203 0.27694499
		 0.28052256 0.22571522 0.28012943 0.24915093 0.24988577 0.25092715 0.25060627 0.2262814
		 0.2808831 0.17969024 0.25148863 0.18030411 0.27576625 0.048680305 0.27972803 0.11629355
		 0.24955627 0.11851537 0.24085125 0.052145064 0.33969021 0.11020604 0.33895713 0.054346159
		 0.33972669 0.22418833 0.34010929 0.16872209 0.33894557 0.26343298 0.33687758 0.3376205
		 0.33831799 0.30298591 0.15094841 0.081573963 0.17813396 0.060332775 0.20164743 0.32961684
		 0.18322927 0.3357147 0.22281423 0.32632905 0.42207205 0.35849488 0.3968879 0.35624045
		 0.49958056 0.045582876 0.53036696 0.050929442 0.16177809 0.38391823 0.47362322 0.37729424
		 0.17009687 0.34697646 0.16567618 0.36291778 0.55989361 0.053838849 0.12286115 0.11440343
		 0.46197444 0.36841893 0.44430375 0.36247116 0.46569407 0.043197379 0.23779914 0.035865128
		 0.24677899 0.3272506 0.20641574 0.046790063 0.40141988 0.040906057 0.43110394 0.041334778
		 0.043898702 0.26941264 0.035012722 0.26918322 0.041158557 0.22768587 0.050171137
		 0.22888935 0.048800707 0.20042169 0.04003191 0.19988817 0.037953794 0.1785804 0.58133698
		 0.20293307 0.034540772 0.3363061 0.026756167 0.33474684 0.031256437 0.30396456 0.040666223
		 0.30539817 0.5812856 0.33179396 0.58711964 0.32906157 0.59670269 0.34583712 0.027351499
		 0.35982132 0.57379496 0.22379935 0.57951224 0.22534135 0.57627463 0.24462995 0.56907594
		 0.24520862 0.58086544 0.27756375 0.57352662 0.27816623 0.13764167 0.10746557 0.13230258
		 0.10263216 0.14546615 0.14131796 0.14259869 0.18112785 0.36896253 0.33913857 0.36998808
		 0.35404921 0.37063092 0.30325496 0.37189519 0.26411778 0.37316984 0.22478014 0.37316585
		 0.16830754 0.37138832 0.10986394 0.36932123 0.054354891 0.37111652 0.041522712 0.53713059
		 0.31462663 0.58386379 0.30708939 0.57595336 0.30891281 0.55421853 0.20155087 0.046295166
		 0.17544425 0.073567748 0.37240475 0.58985269 0.35156155 0.10818511 0.14969909 0.11035872
		 0.17553234 0.019431949 0.35432023 0.58827454 0.20616955 0.1088962 0.11638772 0.11064529
		 0.10907519 0.49205232 0.38594121 0.47993469 0.39067954 0.51245588 0.3703354 0.10361737
		 0.18058902 0.0601089 0.19447827 0.032906353 0.19510978 0.54636014 0.37229103 0.59257698
		 0.35965186 0.5115068 0.14933664 0.50943232 0.17521876 0.013346791 0.3373962 0.58183658
		 0.17836118 0.11668539 0.38072866 0.4581503 0.3839246 0.054810047 0.059925795 0.058293104
		 0.046813428 0.49667743 0.37580276 0.51621139 0.18034869;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 350 ".pt";
	setAttr ".pt[0:165]" -type "float3"  6.9158096 7.2865891 1.2665751 0.73800534 
		7.2865891 -7.0064082 5.1411638 7.2865891 0.40785003 1.1727546 7.2865891 -5.0607281 
		6.5646896 7.2865891 1.0749048 1.079861 7.2865891 -6.1459327 5.2731605 7.2865891 -3.7909119 
		5.0776887 7.2865891 -3.7824278 4.0208688 7.2865891 -3.1504099 4.8819375 7.2865891 
		-1.6965249 6.6468282 7.2865891 -1.7177027 6.3620172 7.2865891 -1.8241003 2.8629327 
		7.2865891 -4.3512816 3.4806788 7.2865891 -5.7898531 3.4224241 7.2865891 -5.6034727 
		4.9400053 7.2865891 -3.7412188 6.0999913 7.2865891 -1.9948072 6.2198329 7.2865891 
		0.84971201 1.1337929 7.2865891 -5.9203796 3.3793244 7.2865891 -5.4933834 4.6041055 
		7.2865891 -3.6445608 5.5105352 7.2865891 -2.0632052 5.6797886 7.2865891 0.54476738 
		1.20298 7.2865891 -5.5170774 3.3886032 7.2865891 -4.791853 8.1837835 7.2865891 -3.6339207 
		8.1781673 7.2865891 -4.1407905 6.8300233 7.2865891 -5.2595372 7.1896839 7.2865891 
		-5.7218113 5.9879999 7.2865891 -6.9576554 5.3830872 7.2865891 -7.1380196 3.0881679 
		7.2865891 4.0194416 3.4475543 7.2865891 4.481586 4.1662035 7.2865891 5.405715 -4.0142145 
		7.2865891 -5.1136966 -3.0086434 7.2865891 -3.820606 -2.6896431 7.2865891 -3.4103954 
		4.6129365 7.2865891 2.3158734 5.0887632 7.2865891 2.6617968 5.4341021 7.2865891 2.977726 
		5.6301036 7.2865891 3.1891453 5.9190307 7.2865891 3.4879608 -1.9122854 7.2865891 
		-6.6222277 -1.3059576 7.2865891 -5.7698073 -1.1737878 7.2865891 -5.5534248 -1.0239999 
		7.2865891 -5.2378154 -0.83697402 7.2865891 -4.7295847 6.4128003 7.2865891 1.1941968 
		6.1548715 7.2865891 -1.517912 4.6749215 7.2865891 0.36267269 4.5044551 7.2865891 
		-1.4634577 4.2219348 7.2865891 2.0513434 1.1075287 7.2865891 -4.6078258 -0.54493648 
		7.2865891 -4.3142748 4.8449883 7.2865891 -3.4566729 3.1590905 7.2865891 -5.361062 
		3.6463478 7.2865891 -2.8756435 2.5408745 7.2865891 -3.9932683 0.67277592 7.2865891 
		-6.5010872 2.7923944 7.2865891 3.6390986 5.4909143 7.2865891 3.1772075 -1.6188948 
		7.2865891 -6.169558 7.9811535 7.2865891 -3.921684 7.9907012 7.2865891 -4.352128 6.8486347 
		7.2865891 -5.2944517 7.1431417 7.2865891 -5.6860695 6.1390014 7.2865891 -6.729341 
		5.6110482 7.2865891 -6.8689871 -1.5627067 7.2865891 -6.1363363 0.96516025 7.2865891 
		-6.5038652 3.4400959 7.2865891 -5.7113938 5.1754231 7.2865891 -3.7866728 6.5431008 
		7.2865891 -1.7211643 6.7951851 7.2865891 1.2413851 5.829505 7.2865891 3.4091969 6.4067869 
		7.2865891 -0.18414167 6.9042692 7.2865891 -0.24784741 6.7920942 7.2865891 -0.26217195 
		6.5863047 7.2865891 -0.39688009 6.2704129 7.2865891 -0.58482826 5.695704 7.2865891 
		-0.76473755 5.1270361 7.2865891 -0.66527051 4.7051716 7.2865891 -0.57132262 1.9712949 
		7.2865891 -6.0388041 2.1647019 7.2865891 -6.5058627 2.2579906 7.2865891 -6.2153616 
		2.306505 7.2865891 -5.9824347 2.2994692 7.2865891 -5.8046117 2.2945945 7.2865891 
		-5.2979002 2.0698438 7.2865891 -4.8071928 1.8761997 7.2865891 -4.4017372 2.7441995 
		7.2865891 3.5771236 3.9083323 7.2865891 3.2400339 4.330246 7.2865891 3.6462345 4.6453452 
		7.2865891 3.9926567 4.8316245 7.2865891 4.2118883 5.0223265 7.2865891 4.4389305 5.1031575 
		7.2865891 4.5246811 3.7847612 7.2865891 4.9152088 4.5589046 7.2865891 1.2726824 4.9875264 
		7.2865891 1.4275354 5.5122337 7.2865891 1.6622269 5.9445872 7.2865891 1.9836417 6.2150159 
		7.2865891 2.2019472 6.4299664 7.2865891 2.3952122 6.5350389 7.2865891 2.4471896 6.0694776 
		7.2865891 2.2556238 -2.3850489 7.2865891 -3.0187094 -1.8021859 7.2865891 -4.1219125 
		-2.0554721 7.2865891 -4.5848575 -2.2386229 7.2865891 -4.8765631 -2.3818972 7.2865891 
		-5.0840139 -2.6473479 7.2865891 -5.4435511 -3.0056255 7.2865891 -5.9224563 -3.6879342 
		7.2865891 -4.6941237 -0.48256645 7.2865891 -6.4288745 -0.59664685 7.2865891 -6.9078722 
		-0.30827868 7.2865891 -6.4136519 -0.12255445 7.2865891 -6.0514245 -0.029503047 7.2865891 
		-5.8304572 0.083415896 7.2865891 -5.4652658 0.15896191 7.2865891 -4.9830256 0.27236578 
		7.2865891 -4.5489216 -2.18507 7.2865891 -4.790637 -1.1283977 7.2865891 -5.4609394 
		0.03149252 7.2865891 -5.7350645 1.1854979 7.2865891 -5.8020778 2.3231564 7.2865891 
		-5.6327929 3.3234375 7.2865891 -5.2823191 5.6085925 7.2865891 -7.1530743 5.7769389 
		7.2865891 -6.9315791 8.0640297 7.2865891 -4.0427551 8.2439508 7.2865891 -3.8126562 
		5.9021835 7.2865891 -1.9662428 6.0639143 7.2865891 -0.68462026 6.0263848 7.2865891 
		0.70154768 5.7994514 7.2865891 1.8398013 5.3123775 7.2865891 2.8582206 4.5324788 
		7.2865891 3.8660331 6.6651464 7.2865891 -6.2534561 6.616158 7.2865891 -6.3616858 
		4.0033364 7.2865891 -4.2450838 3.4418986 7.2865891 -3.7508459 3.0936127 7.2865891 
		-3.4344552 7.6174245 7.2865891 -5.0308657 7.7112417 7.2865891 -4.9532514 5.0818219 
		7.2865891 -2.8582311 4.4514027 7.2865891 -2.4234691 4.0754013 7.2865891 -2.1695523 
		7.4212198 7.2865891 -4.5422101 7.4964566 7.2865891 -4.438334 5.5324488 7.2865891 
		-2.878016 5.7198529 7.2865891 -2.8032663 5.859261 7.2865891 -2.7539177 5.9599953 
		7.2865891 -2.7543077 5.4999299 7.2865891 -2.4872925 6.1731515 7.2865891 -6.1208248 
		6.096108 7.2865891 -6.1903853 4.1721144 7.2865891 -4.627305 4.2500553 7.2865891 -4.6929531 
		4.3077607 7.2865891 -4.749032 4.3769188 7.2865891 -4.7903814 4.0020366 7.2865891 
		-4.4088674 6.8879924 7.2865891 -3.121726 6.4199486 7.2865891 -3.9245565 5.9277353 
		7.2865891 -4.7079687;
	setAttr ".pt[166:331]" 5.3331642 7.2865891 -5.3221998 4.7144222 7.2865891 
		-5.9170122 4.4329457 7.2865891 -6.1911249 4.3481388 7.2865891 -6.2891278 5.1010427 
		7.2865891 -5.3822703 5.8519464 7.2865891 -4.4738059 6.4813843 7.2865891 -3.6316023 
		7.108819 7.2865891 -2.7877913 7.0399966 7.2865891 -2.8628759 3.6307466 7.2865891 
		4.7171574 -3.3730805 7.2865891 -4.2892451 -3.2186978 7.2865891 -4.0907207 -3.6927655 
		7.2865891 -4.7003365 -3.6472352 7.2865891 -4.641788 3.735523 7.2865891 4.8518925 
		3.9120815 7.2865891 5.0789332 4.094079 7.2865891 5.3129683 -3.1563599 7.2865891 -4.0105586 
		-3.1569798 7.2865891 -4.0113559 3.6315162 7.2865891 4.7181473 -0.43038782 7.2865891 
		7.1697698 -6.922893 7.2865891 -0.85032916 -0.84266239 7.2865891 5.2162819 -5.1609144 
		7.2865891 0.028827546 -0.53279346 7.2865891 6.7782397 -6.1781907 7.2865891 -0.31356937 
		-4.8920527 7.2865891 4.3775635 -4.8388071 7.2865891 4.1861849 -3.9898956 7.2865891 
		3.2868116 -2.79706 7.2865891 4.4740977 -3.2247496 7.2865891 6.2148151 -3.2608421 
		7.2865891 5.9085541 -4.8720255 7.2865891 1.8643099 -6.3915839 7.2865891 2.1432152 
		-6.1997409 7.2865891 2.1286242 -4.7675805 7.2865891 4.0595193 -3.3637481 7.2865891 
		5.6099834 -0.66873163 7.2865891 6.3851657 -5.97475 7.2865891 -0.20815757 -6.084415 
		7.2865891 2.1114073 -4.5975208 7.2865891 3.7496033 -3.2931423 7.2865891 5.0111785 
		-0.8359471 7.2865891 5.7806263 -5.6046929 7.2865891 -0.04662624 -5.4150743 7.2865891 
		2.282531 -5.4136934 7.2865891 7.2926235 -5.8975558 7.2865891 7.1700587 -6.6571712 
		7.2865891 5.5783868 -7.1826706 7.2865891 5.8274021 -8.0881767 7.2865891 4.3535581 
		-8.1211729 7.2865891 3.7136185 1.1055785 7.2865891 5.1342859 1.3268422 7.2865891 
		5.6847687 1.5495191 7.2865891 6.0992661 1.706634 7.2865891 6.3419337 1.9259529 7.2865891 
		6.6966839 -5.943357 7.2865891 -3.3829739 -5.2674189 7.2865891 -2.5864902 -5.0908155 
		7.2865891 -2.4058135 -4.8232999 7.2865891 -2.1848063 -4.3800144 7.2865891 -1.8824985 
		-0.38354662 7.2865891 6.6555471 -2.9199493 7.2865891 5.7743549 -0.77827173 7.2865891 
		4.7447033 -2.486836 7.2865891 4.1545444 0.9426406 7.2865891 4.6864905 -4.7123513 
		7.2865891 0.068863578 -4.0499067 7.2865891 -1.4977807 -4.4732866 7.2865891 4.0312266 
		-5.9069209 7.2865891 1.9241258 -3.64044 7.2865891 2.979811 -4.4550028 7.2865891 1.6284188 
		-6.4241581 7.2865891 -0.79819387 1.7273414 7.2865891 6.2015071 -5.5778046 7.2865891 
		-2.9882915 -5.642354 7.2865891 7.0257769 -6.0565662 7.2865891 6.9358549 -6.6948881 
		7.2865891 5.5887365 -7.1377153 7.2865891 5.7896194 -7.9045005 7.2865891 4.5556159 
		-7.9162884 7.2865891 4.001194 -5.5589743 7.2865891 -2.92505 -6.4943142 7.2865891 
		-0.50964463 -6.3071165 7.2865891 2.1211877 -4.8654308 7.2865891 4.2818708 -3.2041163 
		7.2865891 6.1114211 -0.42665425 7.2865891 7.0446486 1.8712316 7.2865891 6.5899525 
		-1.7014611 7.2865891 6.3314147 -1.8772805 7.2865891 6.8087549 -1.865095 7.2865891 
		6.6944981 -1.9465297 7.2865891 6.4598618 -2.053504 7.2865891 6.1040335 -2.0930362 
		7.2865891 5.4940715 -1.8665553 7.2865891 4.9545798 -1.6792464 7.2865891 4.5590134 
		-6.2814345 7.2865891 0.59285367 -6.7731357 7.2865891 0.6763283 -6.516614 7.2865891 
		0.83565998 -6.304863 7.2865891 0.93741488 -6.1330314 7.2865891 0.97150493 -5.6468992 
		7.2865891 1.0836573 -5.1253271 7.2865891 0.97464067 -4.6925344 7.2865891 0.8767097 
		2.1528089 7.2865891 4.6507225 2.4442132 7.2865891 5.1617961 2.7030606 7.2865891 5.553421 
		2.8699002 7.2865891 5.7882738 3.0431921 7.2865891 6.0293064 3.1066151 7.2865891 6.1290455 
		0.11954498 7.2865891 4.8400249 0.16881694 7.2865891 5.2997127 0.27233002 7.2865891 
		5.8728638 0.48017046 7.2865891 6.374691 0.62669539 7.2865891 6.6925621 0.76206303 
		7.2865891 6.9497776 0.78755593 7.2865891 7.0657024 0.71167248 7.2865891 6.5610027 
		-3.5755515 7.2865891 -2.6968865 -3.9601946 7.2865891 -3.0542769 -4.1971283 7.2865891 
		-3.3027637 -4.3626194 7.2865891 -3.492362 -4.6454782 7.2865891 -3.8379104 -5.0211635 
		7.2865891 -4.3028274 -6.0883307 7.2865891 -1.9242424 -6.5204768 7.2865891 -2.1476517 
		-6.1139941 7.2865891 -1.7483449 -5.8101554 7.2865891 -1.4810308 -5.6201334 7.2865891 
		-1.3379865 -5.2966518 7.2865891 -1.141997 -4.852509 7.2865891 -0.95595068 -4.4631743 
		7.2865891 -0.74357718 -4.1272454 7.2865891 -3.2299602 -5.0127649 7.2865891 -2.3395731 
		-5.5429096 7.2865891 -1.2556343 -5.8734512 7.2865891 -0.12970793 -5.97404 7.2865891 
		1.034597 -5.8694921 7.2865891 2.1048567 -8.1876392 7.2865891 3.9331839 -8.0144939 
		7.2865891 4.1508222 -5.7773724 7.2865891 7.0797997 -5.5986643 7.2865891 7.3108745 
		-3.2907462 7.2865891 5.4209328 -2.101352 7.2865891 5.8767543 -0.7658928 7.2865891 
		6.1596279 0.3759917 7.2865891 6.1979384 1.4632298 7.2865891 5.9512858 2.607913 7.2865891 
		5.412559 -7.570456 7.2865891 5.1858673 -7.6627402 7.2865891 5.1124287 -5.0336351 
		7.2865891 3.0167687 -4.4309626 7.2865891 2.5755606 -4.0477204 7.2865891 2.304116 
		-6.6200628 7.2865891 6.4099722 -6.567431 7.2865891 6.5206819 -3.9551497 7.2865891 
		4.4036212 -3.3934777 7.2865891 3.8804526 -3.0636389 7.2865891 3.5671763 -6.1070433 
		7.2865891 6.3287158 -6.0249872 7.2865891 6.4271121 -4.078114 7.2865891 4.8447576 
		-4.0498266 7.2865891 5.0473695 -4.0347724 7.2865891 5.1966448 -4.0584025 7.2865891 
		5.2961903 -3.6966181 7.2865891 4.902791 -7.3299289 7.2865891 4.7298651;
	setAttr ".pt[332:349]" -7.3787284 7.2865891 4.6376081 -5.4384484 7.2865891 
		3.0954685 -5.5192771 7.2865891 3.157403 -5.5862727 7.2865891 3.2015305 -5.6418195 
		7.2865891 3.2603903 -5.190105 7.2865891 2.977675 -4.6243091 7.2865891 6.1292305 -5.2847071 
		7.2865891 5.4809709 -5.9209347 7.2865891 4.8132839 -6.3716059 7.2865891 4.0834188 
		-6.7981033 7.2865891 3.3341248 -6.9954977 7.2865891 2.9924459 -7.0697246 7.2865891 
		2.885941 -6.3755174 7.2865891 3.8399653 -5.679307 7.2865891 4.7923799 -5.0184808 
		7.2865891 5.6093607 -4.3556519 7.2865891 6.4247303 -4.4116359 7.2865891 6.3393288;
	setAttr -s 350 ".vt";
	setAttr ".vt[0:165]"  -3.24271011 -5.52516747 2.95159531 3.092445374 -5.018172264 3.078038216
		 -2.14925098 3.17018366 2.40421295 1.99407959 3.77798891 2.54477501 -3.015947342 -1.29254007 2.8516655
		 2.54916573 -1.29677153 2.91617966 -0.19055367 -4.37591028 4.084235191 -0.11944008 -1.30558586 3.98430443
		 -0.015485764 3.84295893 3.21860886 -1.042438507 3.63508081 3.085309029 -1.71103859 -4.98527718 3.9662571
		 -1.5505867 -1.30558586 3.86632538 1.0045471191 3.84167337 3.10779381 1.45545387 -4.98840904 3.96653271
		 1.38865852 -1.30360937 3.86604595 -0.086212158 -0.20425129 3.90036678 -1.36812019 0.35966825 3.80239391
		 -2.77554989 0.31791544 2.76772499 2.42047882 0.37001467 2.85610867 1.35254669 0.36327171 3.80239391
		 -0.0032920837 3.25348425 3.69707966 -1.10869503 2.60677099 3.53719044 -2.42191982 2.23930216 2.61792755
		 2.20085716 2.70626879 2.73522377 1.013237 2.65587378 3.53719044 -1.3850441 0.14275837 5.46327019
		 -1.14030457 2.28776979 5.65542316 -0.086425781 -0.42269564 5.41895962 -0.0035057068 2.98660707 5.7746048
		 1.050088882 2.33461618 5.65560436 1.36904335 0.1432929 5.42581654 -3.088167191 2.5916543 -1.9073486e-06
		 -3.44755363 1.64226484 -1.9073486e-06 -4.16620255 -5.52516747 -1.9073486e-06 4.014215469 -4.85597897 -1.9073486e-06
		 3.008644104 2.70626879 -1.9073486e-06 2.68964386 3.59417295 -1.9073486e-06 -2.85925674 2.91270018 1.40920448
		 -3.20780182 1.89566851 1.51148415 -3.49180984 0.26226807 1.56076813 -3.66836929 -1.28826094 1.57639122
		 -3.92249203 -5.52516747 1.60435867 3.92782211 -4.85597897 1.61962509 3.28668785 -1.30514956 1.59165573
		 3.13230133 0.37001467 1.57380295 2.92365074 2.70626879 1.52650261 2.6084938 3.66774035 1.42354012
		 -3.014625549 -5.55414772 2.73067379 -1.61746025 -5.0060148239 3.64613152 -1.9483242 3.059144497 2.19101334
		 -1.0088100433 3.49123526 2.80899811 -2.58228683 2.80307531 1.31757164 1.80241203 3.69739866 2.33834267
		 2.29742241 3.56895781 1.40824509 -0.18585014 -4.39190769 3.74394798 1.37391663 -5.014995575 3.64259243
		 -0.0029525757 3.68507147 2.92772579 0.95706367 3.7298522 2.81084061 2.87569237 -5.078557491 2.8514452
		 -2.79239368 2.47427225 -1.9073486e-06 -3.60912704 -5.55887651 1.5121479 3.59835052 -4.94530869 1.59063148
		 -1.16939831 0.25861454 5.47372913 -0.96706676 2.13347292 5.64398956 -0.076873779 -0.14981222 5.44159126
		 -0.0027122498 2.71516943 5.73784256 0.88274956 2.16193056 5.64247608 1.15262032 0.24477577 5.43508816
		 3.56084251 -3.080564022 1.60564232 2.76457787 -3.15747213 2.99710846 1.43351173 -3.060579777 3.91628933
		 -0.15499496 -2.84074831 4.034270287 -1.66949081 -3.14543152 3.91629124 -3.18426514 -3.40885377 2.90162945
		 -3.85036755 -3.4067142 1.5903759 -2.35266209 -5.28008127 3.25777626 -2.51349354 -5.25522232 3.52829933
		 -2.46349812 -3.27714252 3.47833347 -2.31988716 -1.29906321 3.42836857 -2.10845375 0.33879185 3.34442902
		 -1.80133247 2.44348955 3.12940311 -1.63023949 3.40263224 2.80992317 -1.51296234 3.27518988 2.56516552
		 2.15507126 -5.046776772 3.31582737 2.30421829 -5.0032906532 3.59109402 2.12931252 -3.10902548 3.52550888
		 1.99917984 -1.30019045 3.45992279 1.91678238 0.36664343 3.38805676 1.67615318 2.70970488 3.19077682
		 1.52774239 3.80983114 2.89091492 1.40816879 3.71362543 2.63922215 -2.7441988 2.63867426 -1.9073486e-06
		 -3.030570984 2.75217676 0.70534134 -3.3872304 1.76896715 0.75777817 -3.67420197 0.24845123 0.78038025
		 -3.85076141 -1.27970219 0.78819084 -4.032759666 -3.40243483 0.79518509 -4.10488415 -5.52516747 0.80218124
		 -3.78476048 -5.55912113 -1.9073486e-06 -2.33922291 2.93110991 1.78367043 -2.57817078 3.041441441 1.93608665
		 -2.89228058 2.051123142 2.10531712 -3.21237755 0.29009151 2.19552326 -3.42085552 -1.29040051 2.24530506
		 -3.59601402 -3.40778399 2.27728081 -3.6612978 -5.52516747 2.30925369 -3.3905735 -5.55651188 2.15268803
		 2.38504934 3.52355146 -1.7806888e-06 2.68886948 3.63095713 0.71251106 3.0078353882 2.70626879 0.76528931
		 3.21787643 0.37001467 0.78689766 3.37225914 -1.28896952 0.79582405 3.6464138 -3.07247448 0.8028183
		 4.013395309 -4.85597897 0.80981255 3.68793488 -4.94833708 -1.9073486e-06 3.28544998 -5.011933327 2.25231457
		 3.55856323 -4.93707561 2.38010883 3.21113777 -3.11901808 2.33265209 2.96635628 -1.30096054 2.28519535
		 2.82481956 0.37001467 2.24623394 2.60661888 2.70626879 2.16163254 2.34677315 3.72286463 2.013534546
		 2.095405579 3.63317823 1.90267086 3.15615845 1.54252005 0.78033638 3.070583344 1.54252005 1.5606823
		 2.75570869 1.54252005 2.23971272 2.34397697 1.54252005 2.83618259 1.82544327 1.58416128 3.3336935
		 1.27302742 1.62580252 3.6935854 1.28952408 1.35122252 5.54312706 1.11877823 1.3156209 5.54119873
		 -1.14332771 1.30831099 5.56127548 -1.32264328 1.32753134 5.56176281 -1.30571842 1.59904432 3.6935854
		 -1.98128033 1.43077135 3.28068542 -2.63024521 1.26249933 2.72903824 -3.087721825 1.16957617 2.1790657
		 -3.38780403 1.076653957 1.54652977 -3.57019615 1.0053486824 0.77326012 0.45265579 2.61079645 5.71965981
		 0.52329254 2.83285761 5.73705578 0.51515007 3.13088751 3.63092422 0.49453163 3.84231615 3.16320038
		 0.4770546 3.70746183 2.86928368 -0.49868011 2.59656763 5.72041702 -0.57190514 2.80943441 5.73696423
		 -0.56333542 3.10593081 3.63092422 -0.52896118 3.73901987 3.15195942 -0.50588036 3.58815336 2.86836243
		 -0.65708733 -0.056988239 5.43546104 -0.73573494 -0.31990528 5.43272018 -0.72716713 -0.10222816 3.86138439
		 -0.83501244 -1.30558586 3.92531586 -0.91224289 -2.99308968 3.97527981 -0.95079613 -4.68059349 4.02524662
		 -0.9016552 -4.69896126 3.69503975 0.57839012 -0.07247591 5.42534351 0.64130974 -0.32820606 5.41399384
		 0.63316727 -0.10899448 3.86138439 0.63461113 -1.30459738 3.92517567 0.63925743 -2.95066404 3.97527981
		 0.6324501 -4.68215942 4.025382996 0.59403419 -4.70345163 3.69326878 -1.13184166 2.45082712 4.62547588
		 -0.56762123 2.95768309 4.7027607 -0.0033988953 3.12004614 4.76062489;
	setAttr ".vt[166:331]" 0.51922035 2.98187208 4.70280647 1.041841507 2.49920702 4.62556648
		 1.2812767 1.48851252 4.59178352 1.36079407 0.25328207 4.587533 0.63723755 -0.21860027 4.61111546
		 -0.08631897 -0.31347322 4.63309097 -0.73145103 -0.21106672 4.62047958 -1.37658215 0.25121355 4.60625935
		 -1.31418037 1.46328783 4.60109997 -3.63074589 0.93700647 -1.9073486e-06 3.37308121 -1.27278996 -1.9073486e-06
		 3.2186985 0.37001467 -1.9073486e-06 3.69276619 -4.95136547 -1.9073486e-06 3.64723587 -3.06438446 -1.9073486e-06
		 -3.73552227 0.2346344 -1.9073486e-06 -3.91208076 -1.27114344 -1.9073486e-06 -4.094078064 -3.39815545 -1.9073486e-06
		 3.15636063 1.54739141 -1.9073486e-06 3.15698051 1.54252005 -1.9073486e-06 -3.6315155 0.93404341 -1.9073486e-06
		 -3.24271011 -5.52516747 -2.95159912 3.092445374 -5.018172264 -3.078041077 -2.14925098 3.17018366 -2.40421867
		 1.99407959 3.77798891 -2.54478073 -3.015947342 -1.29254007 -2.85166931 2.54916573 -1.29677153 -2.91618347
		 -0.19055367 -4.37591028 -4.08423996 -0.11944008 -1.30558586 -3.98430824 -0.015485764 3.84295893 -3.21861267
		 -1.042438507 3.63508081 -3.085313797 -1.71103859 -4.98527718 -3.96626091 -1.5505867 -1.30558586 -3.86632919
		 1.0045471191 3.84167337 -3.10779762 1.45545387 -4.98840904 -3.96653557 1.38865852 -1.30360937 -3.86605072
		 -0.086212158 -0.20425129 -3.90037155 -1.36812019 0.35966825 -3.80239677 -2.77554989 0.31791544 -2.76772881
		 2.42047882 0.37001467 -2.85611343 1.35254669 0.36327171 -3.80239677 -0.0032920837 3.25348425 -3.69708443
		 -1.10869503 2.60677099 -3.5371933 -2.42191982 2.23930216 -2.61793137 2.20085716 2.70626879 -2.73522758
		 1.013237 2.65587378 -3.5371933 -1.3850441 0.14275837 -5.463274 -1.14030457 2.28776979 -5.65542603
		 -0.086425781 -0.42269564 -5.41896439 -0.0035057068 2.98660707 -5.77460861 1.050088882 2.33461618 -5.65560913
		 1.36904335 0.1432929 -5.4258213 -2.85925674 2.91270018 -1.4092083 -3.20780182 1.89566851 -1.51148796
		 -3.49180984 0.26226807 -1.56077194 -3.66836929 -1.28826094 -1.57639694 -3.92249203 -5.52516747 -1.6043644
		 3.92782211 -4.85597897 -1.61962891 3.28668785 -1.30514956 -1.59166145 3.13230133 0.37001467 -1.57380867
		 2.92365074 2.70626879 -1.52650642 2.6084938 3.66774035 -1.42354584 -3.014625549 -5.55414772 -2.73067665
		 -1.61746025 -5.0060148239 -3.64613533 -1.9483242 3.059144497 -2.19101715 -1.0088100433 3.49123526 -2.80900383
		 -2.58228683 2.80307531 -1.31757545 1.80241203 3.69739866 -2.33834648 2.29742241 3.56895781 -1.4082489
		 -0.18585014 -4.39190769 -3.7439518 1.37391663 -5.014995575 -3.64259529 -0.0029525757 3.68507147 -2.92772865
		 0.95706367 3.7298522 -2.81084633 2.87569237 -5.078557491 -2.85144806 -3.60912704 -5.55887651 -1.51215172
		 3.59835052 -4.94530869 -1.5906353 -1.16939831 0.25861454 -5.47373199 -0.96706676 2.13347292 -5.64399338
		 -0.076873779 -0.14981222 -5.44159698 -0.0027122498 2.71516943 -5.73784637 0.88274956 2.16193056 -5.64248085
		 1.15262032 0.24477577 -5.43509293 3.56084251 -3.080564022 -1.60564423 2.76457787 -3.15747213 -2.99711227
		 1.43351173 -3.060579777 -3.91629219 -0.15499496 -2.84074831 -4.034273148 -1.66949081 -3.14543152 -3.9162941
		 -3.18426514 -3.40885377 -2.90163422 -3.85036755 -3.4067142 -1.59037971 -2.35266209 -5.28008127 -3.25778008
		 -2.51349354 -5.25522232 -3.52830315 -2.46349812 -3.27714252 -3.47833633 -2.31988716 -1.29906321 -3.42837334
		 -2.10845375 0.33879185 -3.34443283 -1.80133247 2.44348955 -3.12940598 -1.63023949 3.40263224 -2.80992699
		 -1.51296234 3.27518988 -2.56517029 2.15507126 -5.046776772 -3.31583023 2.30421829 -5.0032906532 -3.59109688
		 2.12931252 -3.10902548 -3.5255127 1.99917984 -1.30019045 -3.45992661 1.91678238 0.36664343 -3.38805962
		 1.67615318 2.70970488 -3.19078064 1.52774239 3.80983114 -2.89091873 1.40816879 3.71362543 -2.63922501
		 -3.030570984 2.75217676 -0.70534706 -3.38722992 1.76896715 -0.75778389 -3.67420197 0.24845123 -0.78038406
		 -3.85076141 -1.27970219 -0.78819466 -4.032759666 -3.40243483 -0.79519081 -4.10488415 -5.52516747 -0.80218315
		 -2.33922291 2.93110991 -1.78367233 -2.57817078 3.041441441 -1.93609047 -2.89228058 2.051123142 -2.10531998
		 -3.21237755 0.29009151 -2.19552612 -3.42085552 -1.29040051 -2.24530983 -3.59601402 -3.40778399 -2.27728462
		 -3.6612978 -5.52516747 -2.30925941 -3.3905735 -5.55651188 -2.15269089 2.68886948 3.63095713 -0.71251488
		 3.0078353882 2.70626879 -0.76529121 3.21787643 0.37001467 -0.78690147 3.37225914 -1.28896952 -0.79582787
		 3.6464138 -3.07247448 -0.80282211 4.013395309 -4.85597897 -0.80981636 3.28544998 -5.011933327 -2.25231743
		 3.55856323 -4.93707561 -2.38011169 3.21113777 -3.11901808 -2.33265495 2.96635628 -1.30096054 -2.28519821
		 2.82481956 0.37001467 -2.2462368 2.60661888 2.70626879 -2.16163635 2.34677315 3.72286463 -2.013540268
		 2.095405579 3.63317823 -1.90267372 3.15615845 1.54252005 -0.78034019 3.070583344 1.54252005 -1.5606842
		 2.75570869 1.54252005 -2.23971748 2.34397697 1.54252005 -2.83618736 1.82544327 1.58416128 -3.33369637
		 1.27302742 1.62580252 -3.69359016 1.28952408 1.35122252 -5.54313087 1.11877823 1.3156209 -5.54120255
		 -1.14332771 1.30831099 -5.5612793 -1.32264328 1.32753134 -5.56176758 -1.30571842 1.59904432 -3.69359016
		 -1.98128033 1.43077135 -3.28068924 -2.63024521 1.26249933 -2.72904205 -3.087721825 1.16957617 -2.17907143
		 -3.38780403 1.076653957 -1.54653549 -3.57019615 1.0053486824 -0.77326584 0.45265579 2.61079645 -5.71966362
		 0.52329254 2.83285761 -5.73705864 0.51515007 3.13088751 -3.63092804 0.49453163 3.84231615 -3.1632061
		 0.4770546 3.70746183 -2.86928749 -0.49868011 2.59656763 -5.72042084 -0.57190514 2.80943441 -5.73696899
		 -0.56333542 3.10593081 -3.63092804 -0.52896118 3.73901987 -3.15196228 -0.50588036 3.58815336 -2.86836624
		 -0.65708733 -0.056988239 -5.43546486 -0.73573494 -0.31990528 -5.43272591 -0.72716713 -0.10222816 -3.86138916
		 -0.83501244 -1.30558586 -3.92531967 -0.91224289 -2.99308968 -3.97528267 -0.95079613 -4.68059349 -4.025251389
		 -0.9016552 -4.69896126 -3.69504356 0.57839012 -0.07247591 -5.42534637;
	setAttr ".vt[332:349]" 0.64130974 -0.32820606 -5.41399956 0.63316727 -0.10899448 -3.86138916
		 0.63461113 -1.30459738 -3.92518044 0.63925743 -2.95066404 -3.97528267 0.6324501 -4.68215942 -4.025388718
		 0.59403419 -4.70345163 -3.69327354 -1.13184166 2.45082712 -4.62548065 -0.56762123 2.95768309 -4.70276642
		 -0.0033988953 3.12004614 -4.76062775 0.51922035 2.98187208 -4.70281219 1.041841507 2.49920702 -4.6255703
		 1.2812767 1.48851252 -4.59178734 1.36079407 0.25328207 -4.58753586 0.63723755 -0.21860027 -4.61112022
		 -0.08631897 -0.31347322 -4.63309479 -0.73145103 -0.21106672 -4.6204834 -1.37658215 0.25121355 -4.60626221
		 -1.31418037 1.46328783 -4.60110474;
	setAttr -s 657 ".ed";
	setAttr ".ed[0:165]"  0 76 0 2 81 0 0 73 0 1 69 0 2 100 0 3 121 0 4 17 0
		 4 103 1 5 18 0 5 86 1 6 161 0 7 152 1 6 71 1 8 142 0 7 15 1 9 147 0 10 154 0 11 78 1
		 10 72 1 11 16 1 12 89 0 13 84 0 14 159 1 13 70 1 14 19 1 16 133 0 15 151 0 17 135 0
		 16 79 1 17 102 1 18 126 0 19 128 0 18 87 1 19 158 0 20 8 1 21 9 1 20 146 0 22 2 0
		 21 80 1 22 101 1 23 3 0 24 12 1 23 88 1 24 141 0 16 173 0 21 163 0 25 132 0 15 171 1
		 27 150 0 20 165 0 28 145 0 24 167 0 29 140 0 19 169 0 30 157 0 30 129 0 31 32 1 32 175 1
		 33 97 0 34 113 0 35 109 1 35 36 1 37 92 0 38 93 1 37 38 1 39 94 1 38 137 1 40 95 1
		 39 40 1 41 105 0 40 74 1 42 116 0 43 118 1 42 68 1 44 119 1 43 44 1 45 120 1 44 124 1
		 46 108 0 45 46 1 0 47 1 10 48 1 47 75 0 2 49 1 9 50 1 49 82 0 37 51 1 49 99 0 3 52 1
		 46 53 1 52 122 0 6 54 0 13 55 1 54 162 0 8 56 1 12 57 1 56 143 0 50 148 0 48 155 0
		 57 90 0 1 58 1 55 83 0 31 59 0 41 60 1 42 61 1 51 91 0 60 106 0 61 115 0 53 107 0
		 25 62 1 26 63 1 62 131 0 27 64 1 64 149 0 28 65 1 65 144 0 29 66 1 66 139 0 30 67 1
		 67 156 0 67 130 0 68 43 1 69 5 0 68 117 1 70 14 1 69 85 1 71 7 1 70 160 1 72 11 1
		 71 153 1 73 4 0 72 77 1 74 41 1 73 104 1 74 96 1 75 48 0 76 10 0 75 76 1 77 73 1
		 76 77 1 78 4 1 77 78 1 79 17 1 78 79 1 80 22 1 79 134 1 81 9 0 80 81 1 82 50 0 81 82 1
		 83 58 0 84 1 0 83 84 1 85 70 1 84 85 1 86 14 1 85 86 1 87 19 1 86 87 1 88 24 1 87 127 1
		 89 3 0 88 89 1 90 52 0 89 90 1 91 59 0;
	setAttr ".ed[166:331]" 92 31 0 93 32 1 92 93 1 94 180 1 93 138 1 95 181 1 94 95 1
		 96 182 1 95 96 1 97 41 0 96 97 1 98 60 0 99 51 0 100 37 0 99 100 1 101 38 1 100 101 1
		 102 39 1 101 136 1 103 40 1 102 103 1 104 74 1 103 104 1 105 0 0 104 105 1 106 47 0
		 105 106 1 108 36 0 109 45 1 108 109 1 110 44 1 109 123 1 111 43 1 110 111 1 112 68 1
		 111 112 1 113 42 0 112 113 1 114 61 0 115 58 0 116 1 0 115 116 1 117 69 1 116 117 1
		 118 5 1 117 118 1 119 18 1 118 119 1 120 23 1 119 125 1 121 46 0 120 121 1 122 53 0
		 121 122 1 123 110 1 124 45 1 123 124 1 125 120 1 124 125 1 126 23 0 125 126 1 127 88 1
		 126 127 1 128 24 0 127 128 1 129 29 0 128 168 1 130 66 0 129 130 1 131 63 0 132 26 0
		 131 132 1 133 21 0 132 174 1 134 80 1 133 134 1 135 22 0 134 135 1 136 102 1 135 136 1
		 137 39 1 136 137 1 138 94 1 137 138 1 138 185 1 139 65 0 140 28 0 139 140 1 141 20 0
		 140 166 1 142 12 0 141 142 1 143 57 0 142 143 1 144 63 0 145 26 0 144 145 1 146 21 0
		 145 164 1 147 8 0 146 147 1 148 56 0 147 148 1 149 62 0 150 25 0 149 150 1 151 16 0
		 150 172 1 152 11 1 151 152 1 153 72 1 152 153 1 154 6 0 153 154 1 155 54 0 154 155 1
		 156 64 0 157 27 0 156 157 1 158 15 0 157 170 1 159 7 1 158 159 1 160 71 1 159 160 1
		 161 13 0 160 161 1 162 55 0 161 162 1 163 26 0 164 146 1 163 164 1 165 28 0 164 165 1
		 166 141 1 165 166 1 167 29 0 166 167 1 168 129 1 167 168 1 169 30 0 168 169 1 170 158 1
		 169 170 1 171 27 1 170 171 1 172 151 1 171 172 1 173 25 0 172 173 1 174 133 1 173 174 1
		 174 163 1 176 111 1 177 110 1 178 114 1 179 112 1 183 35 1 184 123 1 34 179 1 176 177 1
		 177 184 1 178 34 1 179 176 1 180 185 1 181 180 1;
	setAttr ".ed[332:497]" 182 181 1 184 183 1 185 175 1 186 255 0 255 256 1 256 252 1
		 186 252 0 291 187 0 291 292 1 292 248 1 187 248 0 282 186 0 252 281 1 281 282 1 190 280 1
		 190 203 0 203 279 1 279 280 1 293 191 1 293 294 1 294 204 1 191 204 0 257 190 1 257 258 1
		 258 203 1 336 199 0 199 249 1 249 335 1 335 336 1 205 333 0 333 334 1 200 334 1 200 205 1
		 328 329 1 329 192 0 192 250 1 250 328 1 326 327 1 193 327 1 193 201 1 201 326 0 199 263 0
		 263 264 1 264 249 1 265 200 1 265 266 1 266 205 1 258 309 1 309 310 1 203 310 0 310 311 1
		 311 279 1 294 300 1 300 301 1 204 301 0 205 303 0 266 302 1 302 303 1 207 195 1 321 207 0
		 321 322 1 195 322 0 259 208 1 259 260 1 188 260 0 208 188 0 208 278 1 188 277 0 277 278 1
		 295 209 1 295 296 1 189 296 0 209 189 0 210 198 1 267 210 1 267 268 1 198 268 0 206 194 1
		 316 206 0 316 317 1 194 317 0 202 308 0 202 348 0 348 349 1 349 308 1 201 346 1 346 347 1
		 347 326 1 207 338 0 338 339 1 339 321 1 206 340 0 340 341 1 341 316 1 205 344 0 344 345 1
		 345 333 1 303 343 1 343 344 1 218 271 1 217 218 1 217 270 0 270 271 1 219 272 1 312 219 1
		 312 313 1 313 272 1 220 273 1 219 220 1 272 273 1 275 221 0 253 221 1 253 274 1 274 275 1
		 288 289 1 34 289 0 179 288 1 286 287 1 176 287 1 177 286 1 298 286 1 184 298 1 284 285 1
		 35 285 1 284 36 0 186 227 1 227 254 0 254 255 1 260 261 1 229 261 0 188 229 1 229 276 0
		 276 277 1 296 297 1 232 297 0 189 232 1 336 337 1 337 235 0 199 235 1 317 318 1 236 318 0
		 194 236 1 322 323 1 230 323 0 195 230 1 329 330 1 330 234 0 192 234 0 268 269 1 237 269 0
		 198 237 1 235 262 0 262 263 1 98 239 0 221 239 1 217 231 1 231 91 0 282 283 1 283 227 0
		 187 238 1 290 238 0 290 291 1 211 307 0 211 241 1 241 306 0 306 307 1;
	setAttr ".ed[498:656]" 213 325 0 213 243 1 243 324 0 324 325 1 320 212 0 212 242 1
		 319 242 0 319 320 1 315 214 0 214 244 1 314 244 0 314 315 1 216 332 0 216 246 1 246 331 0
		 331 332 1 216 304 0 304 305 1 246 305 0 287 288 1 292 293 1 248 191 0 249 200 1 264 265 1
		 334 335 1 327 328 1 250 193 1 256 257 1 252 190 0 280 281 1 220 253 1 273 274 1 255 196 0
		 254 228 0 196 228 1 196 251 1 251 256 1 251 197 1 197 257 1 197 202 1 202 258 1 308 309 1
		 207 259 1 260 195 0 261 230 0 263 187 0 262 238 0 248 264 1 191 265 1 204 266 1 301 302 1
		 209 267 1 268 189 0 269 232 0 270 31 0 271 32 1 33 275 0 274 182 1 277 217 0 276 231 0
		 278 218 1 279 219 1 311 312 1 280 220 1 281 253 1 221 282 0 239 283 0 226 284 0 233 107 0
		 226 233 1 225 226 1 285 225 1 224 299 1 286 224 1 298 299 1 223 224 1 287 223 1 247 223 1
		 288 247 1 222 247 1 289 222 0 222 240 1 114 240 0 222 291 0 240 290 0 247 292 1 223 293 1
		 224 294 1 299 300 1 225 295 1 296 226 0 297 233 0 285 298 1 299 225 1 300 295 1 301 209 0
		 302 267 1 303 210 0 210 342 0 342 343 1 304 215 0 215 245 1 305 245 0 307 212 0 306 242 0
		 308 207 0 349 338 1 309 259 1 310 208 0 278 311 1 218 312 1 271 313 1 215 315 0 245 314 0
		 210 316 0 341 342 1 317 198 0 318 237 0 214 320 0 244 319 0 206 321 0 339 340 1 322 194 0
		 323 236 0 325 211 0 324 241 0 326 202 0 347 348 1 327 197 1 328 251 1 196 329 0 228 330 0
		 332 213 0 331 243 0 333 201 0 345 346 1 334 193 1 335 250 1 192 336 0 234 337 0 338 212 0
		 320 339 1 340 214 0 315 341 1 342 215 0 343 304 1 344 216 0 332 345 1 346 213 1 325 347 1
		 348 211 0 307 349 1 272 180 1 313 185 1 273 181 1 91 31 1 33 98 1 182 33 1 107 36 1;
	setAttr -s 305 -ch 1234 ".fc[0:304]" -type "polyFaces" 
		f 4 0 139 138 -3
		mu 0 4 0 1 2 3
		f 4 -207 209 208 -4
		mu 0 4 4 5 6 7
		f 4 189 2 133 190
		mu 0 4 8 0 3 9
		f 4 -8 6 29 186
		mu 0 4 10 11 12 13
		f 4 -211 213 212 -9
		mu 0 4 14 15 16 17
		f 4 -141 143 142 -7
		mu 0 4 11 18 19 12
		f 4 291 23 127 292
		mu 0 4 20 21 22 23
		f 4 33 288 -23 24
		mu 0 4 24 25 26 27
		f 4 279 278 12 129
		mu 0 4 28 29 30 368
		f 4 275 -12 14 26
		mu 0 4 32 33 369 377
		f 4 -24 21 154 153
		mu 0 4 22 21 36 37
		f 4 -25 -156 158 157
		mu 0 4 24 27 38 39
		f 4 -143 145 243 -28
		mu 0 4 12 19 40 41
		f 4 -30 27 245 244
		mu 0 4 13 12 41 42
		f 4 -213 215 226 -31
		mu 0 4 17 16 43 44
		f 4 -32 -158 160 230
		mu 0 4 45 24 39 46
		f 4 -36 -264 266 -16
		mu 0 4 47 48 49 50
		f 4 -145 147 -2 -38
		mu 0 4 51 52 53 54
		f 4 -40 37 4 182
		mu 0 4 55 51 54 56
		f 4 -215 217 -6 -41
		mu 0 4 57 58 59 60
		f 4 -42 -160 162 -21
		mu 0 4 61 62 63 64
		f 4 -35 -255 257 -14
		mu 0 4 372 66 67 68
		f 4 -26 44 317 316
		mu 0 4 69 70 71 72
		f 4 -27 47 313 312
		mu 0 4 32 377 73 74
		f 4 263 45 297 296
		mu 0 4 49 48 75 76
		f 4 254 49 301 300
		mu 0 4 67 66 77 78
		f 4 -34 53 309 308
		mu 0 4 25 24 79 80
		f 4 31 232 307 -54
		mu 0 4 24 45 81 79
		f 4 -64 -65 62 168
		mu 0 4 82 83 84 85
		f 4 -66 -247 249 248
		mu 0 4 86 87 88 89
		f 4 -68 -69 65 172
		mu 0 4 90 91 87 86
		f 4 175 -133 134 176
		mu 0 4 92 93 94 95
		f 4 203 -60 325 322
		mu 0 4 96 97 98 99
		f 4 199 -320 326 320
		mu 0 4 100 101 102 103
		f 4 220 -321 327 324
		mu 0 4 104 100 103 105
		f 4 195 -61 61 -194
		mu 0 4 106 107 108 109
		f 4 -1 80 82 137
		mu 0 4 1 0 110 111
		f 4 1 149 -86 -84
		mu 0 4 54 53 112 113
		f 4 -5 83 87 180
		mu 0 4 56 54 113 114
		f 4 5 219 -91 -89
		mu 0 4 60 59 115 116
		f 4 -292 294 293 -93
		mu 0 4 21 20 117 118
		f 4 13 259 -97 -95
		mu 0 4 372 68 119 120
		f 4 15 268 -98 -85
		mu 0 4 47 50 121 122
		f 4 -279 281 280 -92
		mu 0 4 30 29 123 124
		f 4 20 164 -100 -96
		mu 0 4 61 64 125 126
		f 4 -22 92 101 152
		mu 0 4 36 21 118 127
		f 5 177 -104 -176 -59 654
		mu 0 5 128 129 93 92 167
		f 6 -322 328 59 202 104 -205
		mu 0 6 130 131 98 97 176 177
		f 6 -63 86 105 165 -103 -167
		mu 0 6 85 84 132 133 165 164
		f 4 -190 192 191 -81
		mu 0 4 0 8 134 110
		f 4 206 100 -206 207
		mu 0 4 5 4 135 136
		f 5 656 -457 -566 567 566
		mu 0 5 137 109 287 338 339
		f 4 -47 109 111 237
		mu 0 4 138 139 140 141
		f 4 -49 112 113 271
		mu 0 4 142 143 371 145
		f 4 261 110 -261 262
		mu 0 4 146 147 148 149
		f 4 252 114 -252 253
		mu 0 4 150 151 370 153
		f 4 -55 118 119 284
		mu 0 4 154 155 156 157
		f 4 55 234 -121 -119
		mu 0 4 155 158 159 156
		f 4 201 -323 329 319
		mu 0 4 101 96 99 102
		f 4 -209 211 210 -123
		mu 0 4 7 6 15 14
		f 4 -125 -154 156 155
		mu 0 4 27 22 37 38
		f 4 -128 124 22 290
		mu 0 4 23 22 27 26
		f 4 277 -130 126 11
		mu 0 4 33 28 368 369
		f 4 -139 141 140 -131
		mu 0 4 3 2 18 11
		f 4 -134 130 7 188
		mu 0 4 9 3 11 10
		f 4 -135 -71 67 174
		mu 0 4 95 94 91 90
		f 4 -137 -138 135 -82
		mu 0 4 160 1 111 161
		f 4 -140 136 18 131
		mu 0 4 2 1 160 162
		f 4 -142 -132 128 17
		mu 0 4 18 2 162 163
		f 4 -144 -18 19 28
		mu 0 4 19 18 163 70
		f 4 -146 -29 25 241
		mu 0 4 40 19 70 69
		f 4 -148 -39 35 -147
		mu 0 4 53 52 48 47
		f 4 -150 146 84 -149
		mu 0 4 112 53 47 122
		f 4 -152 -153 150 -101
		mu 0 4 4 36 127 135
		f 4 -155 151 3 125
		mu 0 4 37 36 4 7
		f 4 -157 -126 122 9
		mu 0 4 38 37 7 14
		f 4 -159 -10 8 32
		mu 0 4 39 38 14 17
		f 4 -161 -33 30 228
		mu 0 4 46 39 17 44
		f 4 -163 -43 40 -162
		mu 0 4 64 63 57 60
		f 4 -165 161 88 -164
		mu 0 4 125 64 60 116
		f 4 -168 -169 166 56
		mu 0 4 166 82 85 164
		f 4 58 -177 173 655
		mu 0 4 167 92 95 168
		f 4 -180 -181 178 -87
		mu 0 4 84 56 114 132
		f 4 -182 -183 179 64
		mu 0 4 83 55 56 84
		f 4 -184 -245 247 246
		mu 0 4 87 13 42 88
		f 4 -186 -187 183 68
		mu 0 4 91 10 13 87
		f 4 -188 -189 185 70
		mu 0 4 94 9 10 91
		f 4 69 -191 187 132
		mu 0 4 93 8 9 94
		f 4 -193 -70 103 106
		mu 0 4 134 8 93 129
		f 4 -80 -195 -196 -79
		mu 0 4 169 171 107 106
		f 4 -78 -197 -221 222
		mu 0 4 172 173 100 104
		f 4 -76 -199 -200 196
		mu 0 4 173 174 101 100
		f 4 -122 -201 -202 198
		mu 0 4 174 175 96 101
		f 4 -74 -203 -204 200
		mu 0 4 175 176 97 96
		f 4 71 -208 -108 -105
		mu 0 4 176 5 136 177
		f 4 -210 -72 73 123
		mu 0 4 6 5 176 175
		f 4 -212 -124 121 72
		mu 0 4 15 6 175 174
		f 4 -214 -73 75 74
		mu 0 4 16 15 174 173
		f 4 -216 -75 77 224
		mu 0 4 43 16 173 172
		f 4 -218 -77 79 -217
		mu 0 4 59 58 171 169
		f 4 -220 216 89 -219
		mu 0 4 115 59 169 170
		f 5 197 -325 333 323 60
		mu 0 5 107 104 105 178 108
		f 4 -222 -223 -198 194
		mu 0 4 171 172 104 107
		f 4 -224 -225 221 76
		mu 0 4 58 43 172 171
		f 4 -227 223 214 -226
		mu 0 4 44 43 58 57
		f 4 -228 -229 225 42
		mu 0 4 63 46 44 57
		f 4 -230 -231 227 159
		mu 0 4 62 45 46 63
		f 4 -233 229 51 305
		mu 0 4 81 45 62 179
		f 4 -235 231 116 -234
		mu 0 4 159 158 180 181
		f 4 -237 -238 235 -111
		mu 0 4 147 138 141 148
		f 4 -239 -317 318 -46
		mu 0 4 48 69 72 75
		f 4 -241 -242 238 38
		mu 0 4 52 40 69 48
		f 4 -244 240 144 -243
		mu 0 4 41 40 52 51
		f 4 -246 242 39 184
		mu 0 4 42 41 51 55
		f 4 -248 -185 181 66
		mu 0 4 88 42 55 83
		f 4 -250 -67 63 170
		mu 0 4 89 88 83 82
		f 4 52 -254 -118 -117
		mu 0 4 180 150 153 181
		f 4 43 -301 303 -52
		mu 0 4 62 67 78 179
		f 4 -258 -44 41 -257
		mu 0 4 68 67 62 61
		f 4 -260 256 95 -259
		mu 0 4 119 68 61 126
		f 4 50 -263 -116 -115
		mu 0 4 367 146 149 152
		f 4 36 -297 299 -50
		mu 0 4 376 49 76 366
		f 4 -267 -37 34 -266
		mu 0 4 50 49 376 65
		f 4 -269 265 94 -268
		mu 0 4 121 50 65 373
		f 4 -271 -272 269 -110
		mu 0 4 139 142 145 140
		f 4 -273 -313 315 -45
		mu 0 4 70 32 74 71
		f 4 -20 -275 -276 272
		mu 0 4 70 163 33 32
		f 4 -129 -277 -278 274
		mu 0 4 163 162 28 33
		f 4 -19 16 -280 276
		mu 0 4 162 160 29 28
		f 4 -282 -17 81 98
		mu 0 4 123 29 160 161
		f 4 -284 -285 282 -113
		mu 0 4 365 154 157 144
		f 4 -286 -309 311 -48
		mu 0 4 35 25 80 364
		f 4 -289 285 -15 -288
		mu 0 4 26 25 35 34
		f 4 -290 -291 287 -127
		mu 0 4 31 23 26 34
		f 4 10 -293 289 -13
		mu 0 4 374 20 23 31
		f 4 -295 -11 91 93
		mu 0 4 117 20 374 375
		f 4 -298 295 -262 264
		mu 0 4 76 75 147 146
		f 4 -300 -265 -51 -299
		mu 0 4 366 76 146 367
		f 4 -302 298 -253 255
		mu 0 4 78 77 151 150
		f 4 -304 -256 -53 -303
		mu 0 4 179 78 150 180
		f 4 -305 -306 302 -232
		mu 0 4 158 81 179 180
		f 4 -308 304 -56 -307
		mu 0 4 79 81 158 155
		f 4 -310 306 54 286
		mu 0 4 80 79 155 154
		f 4 -312 -287 283 -311
		mu 0 4 364 80 154 365
		f 4 -314 310 48 273
		mu 0 4 74 73 143 142
		f 4 -316 -274 270 -315
		mu 0 4 71 74 142 139
		f 4 -318 314 46 239
		mu 0 4 72 71 139 138
		f 4 -319 -240 236 -296
		mu 0 4 75 72 138 147
		f 4 -331 -170 -249 250
		mu 0 4 182 183 86 89
		f 4 -332 -172 -173 169
		mu 0 4 183 184 90 86
		f 4 -333 -174 -175 171
		mu 0 4 184 168 95 90
		f 5 -335 -251 -171 167 57
		mu 0 5 185 182 89 82 166
		f 4 338 -338 -337 -336
		mu 0 4 186 187 188 189
		f 4 342 -342 -341 339
		mu 0 4 190 191 192 193
		f 4 -346 -345 -339 -344
		mu 0 4 194 195 187 186
		f 4 -350 -349 -348 346
		mu 0 4 196 197 198 199
		f 4 353 -353 -352 350
		mu 0 4 200 201 202 203
		f 4 347 -357 -356 354
		mu 0 4 199 198 204 205
		f 4 -361 -360 -359 -358
		mu 0 4 206 207 208 209
		f 4 -365 363 -363 -362
		mu 0 4 210 211 212 213
		f 4 -369 -368 -367 -366
		mu 0 4 214 354 358 217
		f 4 -373 -372 370 -370
		mu 0 4 218 363 355 221
		f 4 -376 -375 -374 358
		mu 0 4 208 222 223 209
		f 4 -379 -378 376 364
		mu 0 4 210 224 225 211
		f 4 381 -381 -380 356
		mu 0 4 198 226 227 204
		f 4 -384 -383 -382 348
		mu 0 4 197 228 226 198
		f 4 386 -386 -385 352
		mu 0 4 201 229 230 202
		f 4 -390 -389 378 387
		mu 0 4 231 232 224 210
		f 4 393 -393 391 390
		mu 0 4 233 234 235 236
		f 4 397 396 -396 394
		mu 0 4 237 238 239 240
		f 4 -401 -400 -398 398
		mu 0 4 241 242 238 237
		f 4 404 403 -403 401
		mu 0 4 243 244 245 246
		f 4 408 -408 406 405
		mu 0 4 247 248 249 250
		f 4 412 -412 410 409
		mu 0 4 360 252 253 362
		f 4 -417 -416 -415 413
		mu 0 4 255 256 257 258
		f 4 -420 -419 -418 372
		mu 0 4 218 259 260 363
		f 4 -423 -422 -421 -392
		mu 0 4 235 261 262 236
		f 4 -426 -425 -424 -411
		mu 0 4 253 263 264 362
		f 4 -429 -428 -427 361
		mu 0 4 213 265 266 210
		f 4 426 -431 -430 -388
		mu 0 4 210 266 267 231
		f 4 -435 -434 432 431
		mu 0 4 268 269 270 271
		f 4 -439 -438 436 435
		mu 0 4 272 273 274 275
		f 4 -442 -436 440 439
		mu 0 4 276 272 275 277
		f 4 -446 -445 443 -443
		mu 0 4 278 279 280 281
		f 4 -449 -326 447 -447
		mu 0 4 282 99 98 283
		f 4 -452 -327 450 -450
		mu 0 4 284 103 102 285
		f 4 -454 -328 451 -453
		mu 0 4 286 105 103 284
		f 4 456 -62 455 -455
		mu 0 4 287 109 108 288
		f 4 -460 -459 -458 335
		mu 0 4 189 289 290 186
		f 4 462 461 -461 -397
		mu 0 4 238 291 292 239
		f 4 -465 -464 -463 399
		mu 0 4 242 293 291 238
		f 4 467 466 -466 -404
		mu 0 4 244 294 295 245
		f 4 470 -470 -469 357
		mu 0 4 209 296 297 206
		f 4 473 472 -472 -413
		mu 0 4 360 361 299 252
		f 4 476 475 -475 -394
		mu 0 4 233 300 301 234
		f 4 479 -479 -478 366
		mu 0 4 358 359 303 217
		f 4 482 481 -481 -409
		mu 0 4 247 304 305 248
		f 4 -485 -484 -471 373
		mu 0 4 223 306 296 209
		f 4 457 -491 -490 343
		mu 0 4 186 290 309 194
		f 4 -494 492 -492 -340
		mu 0 4 193 310 311 190
		f 4 -498 -497 -496 494
		mu 0 4 312 313 314 315
		f 4 -502 -501 -500 498
		mu 0 4 316 317 318 351
		f 4 -506 504 -504 -503
		mu 0 4 320 321 322 323
		f 4 -510 508 -508 -507
		mu 0 4 324 325 326 353
		f 4 -514 -513 -512 510
		mu 0 4 328 329 330 331
		f 4 511 516 -516 -515
		mu 0 4 331 330 332 333
		f 4 -451 -330 448 -518
		mu 0 4 285 102 99 282
		f 4 519 -351 -519 341
		mu 0 4 191 200 203 192
		f 4 -377 -522 375 520
		mu 0 4 211 225 222 208
		f 4 -523 -364 -521 359
		mu 0 4 207 212 211 208
		f 4 -371 -525 368 -524
		mu 0 4 221 355 354 214
		f 4 526 -355 -526 337
		mu 0 4 187 199 205 188
		f 4 -528 -347 -527 344
		mu 0 4 195 196 199 187
		f 4 -530 -440 528 444
		mu 0 4 279 276 277 280
		f 4 532 -532 459 530
		mu 0 4 334 335 289 189
		f 4 -535 -534 -531 336
		mu 0 4 188 336 334 189
		f 4 -537 -536 534 525
		mu 0 4 205 337 336 188
		f 4 -539 -538 536 355
		mu 0 4 204 258 337 205
		f 4 -540 -414 538 379
		mu 0 4 227 255 258 204
		f 4 541 -391 540 395
		mu 0 4 239 233 236 240
		f 4 542 -477 -542 460
		mu 0 4 292 300 233 239
		f 4 491 -545 484 543
		mu 0 4 190 311 306 223
		f 4 -546 -343 -544 374
		mu 0 4 222 191 190 223
		f 4 -547 -520 545 521
		mu 0 4 225 200 191 222
		f 4 -548 -354 546 377
		mu 0 4 224 201 200 225
		f 4 -549 -387 547 388
		mu 0 4 232 229 201 224
		f 4 550 -405 549 407
		mu 0 4 248 244 243 249
		f 4 551 -468 -551 480
		mu 0 4 305 294 244 248
		f 3 102 -166 653
		mu 0 3 164 165 133
		f 4 -57 -553 434 553
		mu 0 4 166 164 269 268
		f 4 487 -558 464 556
		mu 0 4 270 308 293 242
		f 4 -433 -557 400 558
		mu 0 4 271 270 242 241
		f 4 -437 -561 383 559
		mu 0 4 275 274 228 197
		f 4 -441 -560 349 561
		mu 0 4 277 275 197 196
		f 4 -529 -562 527 562
		mu 0 4 280 277 196 195
		f 4 -444 -563 345 -564
		mu 0 4 281 280 195 194
		f 4 -565 -487 563 489
		mu 0 4 309 307 281 194
		f 4 565 454 569 568
		mu 0 4 338 287 288 340
		f 4 -573 452 571 570
		mu 0 4 341 286 284 342
		f 4 -572 449 574 573
		mu 0 4 342 284 285 343
		f 4 -575 517 576 575
		mu 0 4 343 285 282 344
		f 4 -577 446 578 577
		mu 0 4 344 282 283 345
		f 6 580 -580 -579 -448 -329 321
		mu 0 6 130 346 345 283 98 131
		f 4 579 582 493 -582
		mu 0 4 345 346 310 193
		f 4 -584 -578 581 340
		mu 0 4 192 344 345 193
		f 4 -585 -576 583 518
		mu 0 4 203 343 344 192
		f 4 -586 -574 584 351
		mu 0 4 202 342 343 203
		f 4 -587 -571 585 384
		mu 0 4 230 341 342 202
		f 4 588 -569 587 402
		mu 0 4 245 338 340 246
		f 4 589 -568 -589 465
		mu 0 4 295 339 338 245
		f 5 -456 -324 -334 453 -591
		mu 0 5 288 108 178 105 286
		f 4 -570 590 572 591
		mu 0 4 340 288 286 341
		f 4 -588 -592 586 592
		mu 0 4 246 340 341 230
		f 4 593 -402 -593 385
		mu 0 4 229 243 246 230
		f 4 -550 -594 548 594
		mu 0 4 249 243 229 232
		f 4 -407 -595 389 595
		mu 0 4 250 249 232 231
		f 4 -598 -597 -596 429
		mu 0 4 267 347 250 231
		f 4 600 -600 -599 515
		mu 0 4 332 348 349 333
		f 4 503 -603 497 601
		mu 0 4 323 322 313 312
		f 4 420 -605 416 603
		mu 0 4 236 262 256 255
		f 4 -541 -604 539 605
		mu 0 4 240 236 255 227
		f 4 606 -395 -606 380
		mu 0 4 226 237 240 227
		f 4 -608 -399 -607 382
		mu 0 4 228 241 237 226
		f 4 -609 -559 607 560
		mu 0 4 274 271 241 228
		f 4 -610 -432 608 437
		mu 0 4 273 268 271 274
		f 4 599 611 509 -611
		mu 0 4 349 348 325 324
		f 4 596 -614 425 -613
		mu 0 4 250 347 263 253
		f 4 614 -406 612 411
		mu 0 4 252 247 250 253
		f 4 615 -483 -615 471
		mu 0 4 299 304 247 252
		f 4 507 617 505 -617
		mu 0 4 327 356 321 320
		f 4 423 -620 422 -619
		mu 0 4 254 352 261 235
		f 4 620 -410 618 392
		mu 0 4 234 251 254 235
		f 4 621 -474 -621 474
		mu 0 4 301 298 251 234
		f 4 495 -624 501 622
		mu 0 4 315 314 317 316
		f 4 414 -626 419 624
		mu 0 4 258 257 259 218
		f 4 -625 369 626 537
		mu 0 4 258 218 221 337
		f 4 -627 523 627 535
		mu 0 4 337 221 214 336
		f 4 -628 365 -629 533
		mu 0 4 336 214 217 334
		f 4 -630 -533 628 477
		mu 0 4 303 335 334 217
		f 4 499 -632 513 630
		mu 0 4 319 357 329 328
		f 4 417 -634 428 632
		mu 0 4 219 350 265 213
		f 4 634 371 -633 362
		mu 0 4 212 220 219 213
		f 4 524 -635 522 635
		mu 0 4 215 220 212 207
		f 4 367 -636 360 -637
		mu 0 4 216 215 207 206
		f 4 -638 -480 636 468
		mu 0 4 297 302 216 206
		f 4 -640 502 -639 421
		mu 0 4 261 320 323 262
		f 4 640 616 639 619
		mu 0 4 352 327 320 261
		f 4 -642 506 -641 424
		mu 0 4 263 324 353 264
		f 4 642 610 641 613
		mu 0 4 347 349 324 263
		f 4 598 -643 597 643
		mu 0 4 333 349 347 267
		f 4 644 514 -644 430
		mu 0 4 266 331 333 267
		f 4 -646 -511 -645 427
		mu 0 4 265 328 331 266
		f 4 646 -631 645 633
		mu 0 4 350 319 328 265
		f 4 -648 -499 -647 418
		mu 0 4 259 316 351 260
		f 4 648 -623 647 625
		mu 0 4 257 315 316 259
		f 4 -650 -495 -649 415
		mu 0 4 256 312 315 257
		f 4 638 -602 649 604
		mu 0 4 262 323 312 256
		f 4 -652 438 650 330
		mu 0 4 182 273 272 183
		f 4 -651 441 652 331
		mu 0 4 183 272 276 184
		f 4 -653 529 555 332
		mu 0 4 184 276 279 168
		f 5 -58 -554 609 651 334
		mu 0 5 185 166 268 273 182
		f 5 552 -654 -489 -488 433
		mu 0 5 269 164 133 308 270
		f 5 -655 554 442 486 -486
		mu 0 5 128 167 278 281 307
		f 4 -656 -556 445 -555
		mu 0 4 167 168 279 278
		f 5 -109 -90 78 193 -657
		mu 0 5 137 170 169 106 109;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Head" -p "Grp_Geo";
	rename -uid "FBCD56CF-4A88-F5EE-23B6-489E0D9DD15F";
	setAttr ".rp" -type "double3" -2.3453461395206432e-15 0 -2.4980018054066022e-15 ;
	setAttr ".sp" -type "double3" -2.3453461395206432e-15 0 -2.4980018054066022e-15 ;
createNode mesh -n "HeadShape" -p "Head";
	rename -uid "6FDD378F-4522-B324-2495-01A048DAB97C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.42705138027667999 1.1147213578224182 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 485 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.82087523 0.68264407 0.83925664
		 0.62441421 0.91731399 0.65866637 0.98295599 0.46647868 0.58826464 1.072233796 0.6103794
		 1.10295117 1.029628277 0.46647868 0.55921435 1.12941074 1.030889034 0.49090451 0.98543084
		 0.49090451 1.05167377 0.62735349 1.069488764 0.62812454 0.49652529 0.57924426 0.52546906
		 0.59633911 0.82366335 0.96395856 0.84302008 0.95902783 0.63564569 1.025923729 0.66865236
		 1.063282132 0.51582962 0.9826712 0.56434494 0.98717666 0.54115903 1.046924114 0.51630497
		 1.045573115 1.092371941 0.63976502 1.081377983 0.63902718 1.0048968792 0.57208157
		 1.044013262 0.57250321 0.65604168 0.71571827 0.62171912 0.67610127 0.63316655 0.65189648
		 0.72126967 0.69885296 1.051398754 0.59528208 1.017389059 0.59428799 1.033645153 0.51343989
		 0.98938143 0.51343989 0.70554245 0.93606454 0.73608673 0.8843075 0.79371434 0.92276239
		 1.032328367 0.61121696 1.05923903 0.61220002 1.10051775 0.64198232 0.76187021 0.83318228
		 0.7997247 0.74090689 0.86932331 0.77940154 1.10909939 0.64453673 0.51968902 0.9343093
		 0.57755244 0.93721002 0.67483604 0.97905564 0.95214206 0.46545845 0.95442593 0.49007073
		 0.94685566 0.48912367 0.94438839 0.46408904 0.96814841 0.55065131 0.95307171 0.51343989
		 0.96080649 0.51343989 0.9735465 0.55065131 0.99482149 0.59313178 0.97869527 0.57127041
		 0.98425645 0.57168955 1.00022983551 0.5937292 0.65686184 0.5632872 0.74914438 0.59011382
		 0.73498887 0.64460063 0.64285499 0.61544186 0.69150615 0.79645318 0.65134382 0.77966726
		 0.62696731 0.9464761 0.59846634 0.99567819 0.56555587 1.056117535 1.019014597 0.61080629
		 1.043312788 0.62687111 1.040694356 0.62635535 1.014088035 0.61036724 1.07770288 0.63888448
		 1.076730847 0.63842082 1.1239928 0.68699801 1.13080513 0.68699801 0.34452263 1.11481166
		 0.37469921 1.059272051 0.49598774 1.052195191 0.51745081 1.094730616 0.40484491 0.99189526
		 0.47163463 0.98689449 0.42234081 0.93173862 0.46240789 0.92958546 0.45615625 0.67278624
		 0.43082589 0.6831488 0.43063989 0.6627335 0.86891598 1.017322659 1.13080513 0.68864465
		 1.1239928 0.68821442 1.11904967 0.64488447 1.11777914 0.66187298 1.13080513 0.66230327
		 1.13080513 0.64531475 1.086249352 0.49090451 1.085488319 0.46647868 1.13080513 0.46611637
		 1.13080513 0.49083206 1.091336489 0.55065131 1.087314487 0.51343989 1.13080513 0.51343989
		 1.13080513 0.55065131 1.098199844 0.59602332 1.094504714 0.57292491 0.59179503 0.89305532
		 0.65053058 0.89644212 0.52617681 0.88119274 0.42971522 0.88966149 0.46291649 0.86041152
		 1.13080513 0.57292491 1.13080513 0.5886091 1.12421441 0.65434617 1.12421441 0.65171111
		 1.13080513 0.65171111 1.13080513 0.65434617 1.12478852 0.61524343 0.54132378 1.13393843
		 1.12478852 0.61233336 1.13080513 0.61233336 1.13080513 0.61524343 1.10424125 0.64027762
		 1.096639752 0.62961763 1.11643064 0.64696097 1.11975408 0.64486825 0.51059133 0.63711047
		 0.48033923 0.65959281 0.84527242 1.00032198429 0.82545292 0.97995347 0.86811298 0.95696872
		 0.8455025 0.96160942 0.84807885 0.96225315 0.87014598 0.9614076 0.86648244 0.95352095
		 0.47872499 0.56876081 0.89427775 0.96153897 0.89427775 0.95513862 0.52647984 0.28310785
		 0.49111027 0.52383846 0.39666563 0.51836914 0.38585469 0.45644104 0.52022719 0.28314725
		 0.51511365 0.53025049 0.57601392 0.60262686 0.589508 0.54820025 0.56873012 0.63430345
		 0.83070791 0.96298772 0.5327124 0.83326083 0.60238487 0.85321134 0.64036256 0.83401656
		 0.67134762 0.84733915 0.62858593 0.85580552 0.61684805 0.8234024 0.53617233 0.79810786
		 0.46845001 0.78696471 0.47422981 0.71882826 0.49101037 0.72667593 0.48705664 0.77244639
		 0.49212849 0.68746597 0.49870268 0.69919711 0.61531329 0.68991017 0.63155335 0.72020382
		 1.13080513 0.64486825 0.4908269 0.8105334 0.43057787 0.79431432 0.43057832 0.79431266
		 0.50728106 0.78614444 0.51887333 0.66008627 0.52363127 0.67153031 0.63364708 0.77144396
		 0.54287255 0.53774351 0.51379478 0.2832039 0.50315225 0.28323147 0.48880386 0.28326395
		 0.47187474 0.28339824 0.46058786 0.28365692 0.45819944 0.28389016 1.095846891 0.61318314
		 1.11643064 0.62356842 1.11643064 0.60340905 1.13080513 0.60169435 1.13080513 0.64696097
		 1.13080513 0.62356842 0.56667113 0.65255439 0.5649901 0.6668191 0.82943213 0.97443563
		 0.82831013 0.96165806 0.84734952 0.98461229 0.8532337 0.97180396 0.84942663 0.96081382
		 0.8774392 0.96918601 0.86946505 0.96032399 0.86919063 0.99286765 0.89427775 0.99891227
		 0.89427775 0.9658106 0.89427775 0.96100622 0.6018495 0.69895786 0.61344266 0.72402185
		 0.61406696 0.76819289 0.61065465 0.81010795 0.53276849 0.23488264 1.039023638 0.55065131
		 0.94354045 0.43447179 0.95060885 0.43529636 0.53276849 0.23488264 0.53276849 0.23488264
		 0.98126316 0.43603742 0.47173557 0.23488264 0.45958191 0.23488264 0.50314569 0.23488264
		 0.48869136 0.23488264 0.45767692 0.23488264 0.89427775 0.94649059 0.40406087 0.55910319
		 0.43092853 0.73023915 0.041747693 0.67640322 -0.032842305 0.71070987 1.02875638 0.43603742
		 0.024793724 0.6177187 0.26660052 1.070823312 0.29446709 1.12855792 1.085117459 0.43603742
		 1.13080513 0.43599522 0.99745935 0.55065131 1.13087237 0.31135532 1.027623177 0.31135532
		 0.94857943 0.31135532 0.36601639 0.57924902 0.94553506 0.95902783 0.96489179 0.96395856
		 0.33693746 0.59626955 0.9799754 0.31135532 0.22000043 1.023621321 0.34136513 0.98250335
		 0.33942005 1.045521736 0.31445935 1.046429753 0.29254311 0.98626333 0.94222778 0.31135532
		 0.98288864 0.46647868 0.98536342 0.49090451 1.030821562 0.49090451 0.20605451 0.71358722
		 0.14099987 0.69533151 0.23007348 0.65051913 0.24158837 0.67482197 1.029560804 0.46647868
		 1.051606417 0.62735349 1.081310868 0.63902718 1.092304826 0.63976502 0.1516068 0.93243921
		 0.10095067 0.97126591;
	setAttr ".uvst[0].uvsp[250:484]" 1.069421411 0.62812454 0.12198613 0.88004851
		 1.0048295259 0.57208157 1.017321706 0.59428799 0.097210653 0.8283487 0.033752374
		 0.86507285 1.051331282 0.59528208 0.061503418 0.73516697 0.33858433 0.93400836 0.28034568
		 0.93611109 1.04394567 0.57250321 0.18158908 0.97602147 1.033577681 0.51343989 0.98931408
		 0.51343989 1.032260895 0.61121696 1.059171796 0.61220002 1.1004504 0.64198232 1.10903203
		 0.64453673 0.95207471 0.46545845 0.94432074 0.46408904 0.94678807 0.48912367 0.9543587
		 0.49007073 0.9680807 0.55065131 0.20729096 0.56143355 0.22059439 0.61391413 0.12833023
		 0.64087194 0.11525837 0.5860886 0.20849405 0.77762723 0.1683231 0.79349244 0.25806618
		 0.99417686 0.23045526 0.94453645 0.2897687 1.055177331 0.97347903 0.55065131 0.96073914
		 0.51343989 0.95300418 0.51343989 0.99475408 0.59313178 0.33711529 1.094722986 0.35962728
		 1.052523255 0.38561961 0.98738515 0.39615461 0.92986363 0.4053424 0.67285955 0.91963923
		 1.017322659 1.00016236305 0.5937292 0.98418897 0.57168955 0.97862792 0.57127041 1.018947363
		 0.61080629 1.014020443 0.61036724 1.040626764 0.62635535 1.043245673 0.62687111 1.076663494
		 0.63842082 0.20772243 0.89417905 0.26688057 0.89179432 0.33322963 0.88079137 0.39703473
		 0.86043394 1.077635527 0.63888448 1.12392569 0.68699801 1.12392569 0.68821442 1.11898255
		 0.64488447 1.1177119 0.66187298 0.31229961 1.13345551 1.086181998 0.49090451 1.085420847
		 0.46647868 1.091269016 0.55065131 0.35097262 0.63737082 0.96310246 0.97995347 0.94328272
		 1.00032198429 0.38103524 0.65978914 0.92044222 0.95696872 0.91840947 0.9614076 0.9404763
		 0.96225315 0.94305265 0.96160942 0.38395882 0.56885254 0.391509 0.59022075 0.53905708
		 0.28310785 0.37219831 0.52390516 0.34818405 0.53014845 0.54530978 0.28314725 0.27413243
		 0.54744238 0.28685826 0.60213989 0.29377589 0.63400829 0.95784748 0.96298772 0.32778129
		 0.83283848 0.25688636 0.85186541 0.21889202 0.83211082 0.23046082 0.85405385 0.18764958
		 0.84475601 0.24258837 0.82195431 0.3253575 0.79769534 0.39284155 0.78699386 0.37443033
		 0.77246433 0.37119022 0.72602904 0.38775811 0.71856815 0.36279875 0.69918084 0.36929908
		 0.68758881 0.24828188 0.68864471 0.23067315 0.71857178 1.087247133 0.51343989 0.37004921
		 0.81059206 0.3539528 0.78654677 0.33684173 0.67223585 0.34215629 0.6605767 0.22593482
		 0.76979768 0.32047123 0.53745192 0.56238472 0.28323147 0.5517422 0.2832039 0.57673305
		 0.28326395 0.59366214 0.28339824 1.09813261 0.59602332 0.60494912 0.28365692 1.094437599
		 0.57292491 1.1241473 0.65434617 1.1241473 0.65171111 1.12472129 0.61524343 1.12472129
		 0.61233336 0.29570797 0.65231615 0.29735091 0.6666047 0.96024501 0.96165806 0.95912325
		 0.97443563 0.94120586 0.98461229 0.93532169 0.97180396 0.93912852 0.96081382 0.911116
		 0.96918601 0.91909015 0.96032399 0.91936457 0.99286765 0.26282355 0.69771332 0.2489025
		 0.72281742 0.24474618 0.76697224 0.24878566 0.80878377 1.10417402 0.64027762 1.11636353
		 0.64696097 1.09657228 0.62961763 0.60595506 0.23488264 0.59380138 0.23488264 0.57684559
		 0.23488264 0.56239128 0.23488264 1.11968672 0.64486825 -0.077631801 0.5784179 0.60786003
		 0.23488264 1.11636353 0.62356842 0.063131459 0.91664779 -0.054094784 0.64940649 1.095779657
		 0.61318314 -0.0092501305 0.77129918 1.11636353 0.60340905 1.038956285 0.55065131
		 0.52469242 1.14159131 0.95054144 0.43529636 0.13910167 1.0158813 0.18597858 1.060141087
		 0.24371737 1.10102153 0.27888131 1.12353849 0.94347286 0.43447179 0.98119575 0.43603742
		 0.82412136 0.8720091 1.028689146 0.43603742 1.085049987 0.43603742 0.89445066 0.719423
		 0.99739212 0.55065131 0.97990799 0.31135532 0.9485119 0.31135532 0.75495189 0.97639084
		 0.71613145 1.020074606 0.57486159 1.12471926 1.027555704 0.31135532 0.94216037 0.31135532
		 1.13087237 0.43599522 1.13080513 0.31135532 1.13087237 0.55065131 1.13087237 0.57292491
		 1.13087237 0.46611637 1.13087237 0.49083206 1.13087237 0.51343989 0.50958014 1.11463106
		 0.48078999 1.058640957 1.13087237 0.61233336 1.13087237 0.61524343 1.13087237 0.62356842
		 1.13087237 0.60169435 1.13087237 0.65171111 1.13087237 0.65434617 1.13087237 0.64696097
		 1.13087237 0.68699801 1.13087237 0.68864465 1.13087237 0.66230327 1.13087237 0.5886091
		 1.13087237 0.64531475 1.13087249 0.64486825 0.32877505 1.14146185 0.43623164 0.9312101
		 0.45235488 0.99108964 0.98119575 0.43603742 0.95054144 0.43529636 0.098340012 0.51697862
		 0.003518614 0.54794401 0.33449122 0.46569473 0.30712336 0.47088084 0.2599681 0.47965133
		 0.19216314 0.49326077 1.028689146 0.43603742 0.94347286 0.43447179 0.60733753 0.28389016
		 0.36030272 0.46099308 0.53276849 0.28308225 0.95060885 0.43529636 0.94289285 0.58836854
		 0.94354045 0.43447179 0.8624385 0.55527002 0.5571335 0.47137019 0.60469747 0.48068133
		 0.50376052 0.46101594 0.5296278 0.46593598 1.02875638 0.43603742 0.98126316 0.43603742
		 0.67321944 0.49545297 0.76767725 0.52144849 0.46668094 0.51811385 0.47822013 0.45624384
		 0.92207301 0.95352095 0.45520401 0.58069474 0.40738493 0.58083737 0.37217358 0.6198225
		 0.36755547 0.60473496 0.37792152 0.59813792 0.39027455 0.63762718 0.41019636 0.65257663
		 0.89427775 1.028729558 0.48442605 0.59810418 0.47100097 0.59013212 0.47097981 0.6376304
		 0.45096278 0.6526472 0.48951226 0.61980367 0.49452892 0.60472935 0.45861757 0.55896336
		 0.45916456 0.5586881 0.40367982 0.55893439;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 386 ".pt";
	setAttr ".pt[0:165]" -type "float3"  1.3765669 12.602754 -0.51928765 3.3580439 
		12.602754 -0.348961 4.2603106 12.602754 -0.47756159 2.5938444 12.602754 -0.18527612 
		0.85895038 12.602754 1.2175353 1.5244787 12.602754 2.0733554 1.9773557 12.602754 
		2.6557217 2.9785478 12.602754 3.9431806 -2.7271569 12.602754 -3.3939331 -2.679889 
		12.602754 -3.3331499 -2.2524846 12.602754 -2.7835395 0.97953141 12.602754 -1.0559186 
		-0.087863185 12.602754 3.1425645e-06 3.873034 12.602754 -3.3093095 3.8031864 12.602754 
		-3.2504241 3.0948625 12.602754 -2.7331171 2.3206406 12.602754 -2.1411757 1.7413911 
		12.602754 -1.6926295 1.3281972 12.602754 -4.7027907 1.3577086 12.602754 -4.8517866 
		4.6446834 12.602754 1.1316066 4.4524436 12.602754 1.1222653 3.2421036 12.602754 0.55151576 
		2.5051754 12.602754 0.42566282 1.4955246 12.602754 0.39104021 0.46890348 12.602754 
		-0.64559257 0.47951615 12.602754 -1.4904488 0.68086928 12.602754 -2.5639026 0.87572974 
		12.602754 -3.1810598 1.1329674 12.602754 -4.080698 -0.68903238 12.602754 -2.6071787 
		-0.35318649 12.602754 -1.5357196 0.14254475 12.602754 -0.2024228 1.0731037 12.602754 
		1.0387443 1.7579234 12.602754 1.831413 2.2934818 12.602754 2.3309271 3.5535052 12.602754 
		3.2693372 -1.728057 12.602754 -4.1614904 -1.6919745 12.602754 -4.0643196 -1.4503434 
		12.602754 -3.3833053 -1.0188923 12.602754 -3.0738361 2.7406318 12.602754 -2.4652977 
		3.9199429 12.602754 -0.43668166 3.7429726 12.602754 0.59600431 2.7613497 12.602754 
		2.6986754 -2.1531174 12.602754 -2.6557608 -1.2388084 12.602754 -3.2305598 1.0190332 
		12.602754 -3.6668725 -1.9962664 12.602754 -3.1018414 -2.3271496 12.602754 -2.8795533 
		-1.8108552 12.602754 -2.215637 -1.5297842 12.602754 -2.4414976 -0.6358974 12.602754 
		-1.2350345 -0.8896935 12.602754 -1.0310912 -2.2080412 12.602754 -3.3741682 -2.5389245 
		12.602754 -3.15188 -2.3541193 12.602754 -3.5620136 -2.6972649 12.602754 -3.355494 
		-2.4401693 12.602754 -3.3334703 -2.6087182 12.602754 -3.2416296 -2.5323727 12.602754 
		-3.143455 -2.3846903 12.602754 -3.2621284 -2.8429801 12.602754 -3.841516 -2.8222682 
		12.602754 -3.814882 -3.0067723 12.602754 -3.7534976 -2.9860604 12.602754 -3.7268636 
		-2.7158747 12.602754 -3.6523175 -2.7098722 12.602754 -3.644599 -2.8673432 12.602754 
		-3.5742023 -2.8613408 12.602754 -3.5664835 4.8316226 12.602754 -0.45700303 4.9168644 
		12.602754 -0.42603096 3.3390675 12.602754 3.2420526 3.3647842 12.602754 3.2448294 
		3.3552527 12.602754 3.320888 3.3089981 12.602754 3.2087419 3.2282004 12.602754 3.3967795 
		3.2058475 12.602754 3.4061453 4.1618242 12.602754 2.1643207 4.0261974 12.602754 0.64300889 
		3.0906086 12.602754 2.9772723 4.5325632 12.602754 1.1191927 4.2471623 12.602754 0.11622513 
		1.513505 12.602754 -0.052874919 4.4935322 12.602754 0.53393406 3.3905075 12.602754 
		2.9446168 3.2314463 12.602754 3.1097255 4.3505764 12.602754 0.92661345 4.2079849 
		12.602754 0.5580321 3.2941465 12.602754 2.743582 3.3779755 12.602754 2.845314 3.4292614 
		12.602754 2.8082528 3.2739594 12.602754 3.614429 3.2410364 12.602754 3.5943513 3.160183 
		12.602754 3.5961683 3.0923395 12.602754 3.6191289 3.03951 12.602754 3.5923688 3.0983324 
		12.602754 3.4786322 -0.22986534 12.602754 -4.7629933 -0.2188997 12.602754 -4.6532311 
		-0.15323079 12.602754 -3.9801002 -0.14943597 12.602754 -3.6439483 -0.094084837 12.602754 
		-3.2210948 -0.058611963 12.602754 -2.7157238 0.063519388 12.602754 -1.5322559 0.32378846 
		12.602754 -0.44726965 1.3332034 12.602754 0.7821818 2.201148 12.602754 1.2177317 
		2.8315203 12.602754 1.4983847 3.3372679 12.602754 1.7176344 3.6365502 12.602754 1.8506753 
		3.7403765 12.602754 1.9028705 3.9493656 12.602754 2.0095448 3.9849045 12.602754 2.0535591 
		4.0954585 12.602754 0.18118475 4.7346568 12.602754 -0.47505027 3.6688173 12.602754 
		-3.1443937 1.2880695 12.602754 -4.5771956 -0.21988775 12.602754 -4.5308785 -1.6507138 
		12.602754 -3.9634902 -2.6254647 12.602754 -3.2631643 3.5498347 12.602754 2.8906827 
		4.2025871 12.602754 2.1799335 3.6624527 12.602754 2.8714471 4.6092501 12.602754 1.1203197 
		4.886724 12.602754 -0.44067284 3.8551984 12.602754 -3.2942119 1.3447404 12.602754 
		-4.7925286 -0.22619928 12.602754 -4.7191625 -1.7141942 12.602754 -4.1270294 -2.7125103 
		12.602754 -3.3750987 4.1096721 12.602754 2.1571288 4.0539598 12.602754 2.1270835 
		3.7646627 12.602754 2.8553183 3.5023766 12.602754 3.2637496 2.9530342 12.602754 3.9103718 
		3.8139009 12.602754 2.8793547 -2.4123833 12.602754 -2.9891574 -1.5368258 12.602754 
		-3.6366279 -0.17608739 12.602754 -4.2332945 1.2138317 12.602754 -4.3103232 3.3294027 
		12.602754 -2.9045932 4.4741526 12.602754 -0.48003161 4.4044423 12.602754 0.30633196 
		4.3112578 12.602754 0.65972215 2.2442026 12.602754 -0.96986645 2.9311576 12.602754 
		-1.3107255 3.3692997 12.602754 -1.5291773 3.7372935 12.602754 -1.697852 4.0402951 
		12.602754 -1.8301786 4.3443279 12.602754 -1.9483089 4.4899354 12.602754 -2.0130906 
		4.5912175 12.602754 -2.0322499 4.6413064 12.602754 -2.0522299 2.9014454 12.602754 
		-4.2416449 2.879051 12.602754 -4.2016702 2.8422036 12.602754 -4.1466098 2.7313042 
		12.602754 -4.0030217 2.4946802 12.602754 -3.7358515 2.3024414 12.602754 -3.5026662 
		2.0192201 12.602754 -3.1503825 1.6893964 12.602754 -2.7319236 1.2832251 12.602754 
		-2.1643436 0.7274006 12.602754 -1.3365352 0.23440626 12.602754 0.58653396 0.60026091 
		12.602754 0.43601531;
	setAttr ".pt[166:331]" 4.2751622 12.602754 1.2602541 4.3574762 12.602754 1.2113595 
		3.5043879 12.602754 2.4030268 3.291853 12.602754 2.5678296 3.6300666 12.602754 2.6813054 
		3.6572897 12.602754 2.5517623 3.123812 12.602754 3.4353912 2.9833686 12.602754 3.6644156 
		3.3907425 12.602754 3.3568492 3.4821222 12.602754 3.8317165 3.4602175 12.602754 4.142662 
		3.2982445 12.602754 3.5288541 3.3005941 12.602754 3.9145143 3.4109995 12.602754 3.7174487 
		3.4149892 12.602754 4.0960279 3.3565133 12.602754 3.3534124 3.3576128 12.602754 3.3332374 
		3.2839167 12.602754 3.9113047 3.3658485 12.602754 3.6470535 3.9820633 12.602754 1.1468699 
		4.0265703 12.602754 0.78989607 3.9872494 12.602754 0.52300882 3.9148855 12.602754 
		0.44464451 2.9477289 12.602754 3.9035497 -2.730365 12.602754 -3.3980584 1.3640978 
		12.602754 -4.90133 2.9303911 12.602754 -4.2954488 2.8997085 12.602754 3.841799 2.8126228 
		12.602754 3.7298133 -0.23447336 12.602754 -4.8197451 4.9414144 12.602754 -0.41014335 
		4.6937828 12.602754 -2.0981009 4.2185636 12.602754 2.1997437 4.6717439 12.602754 
		1.1537249 3.9001927 12.602754 -3.3332655 2.2178628 12.602754 2.9649961 2.5979517 
		12.602754 3.4537621 2.7463987 12.602754 3.644654 2.9270313 12.602754 3.8769341 2.9059675 
		12.602754 3.8498476 2.8549678 12.602754 3.7842658 2.8368776 12.602754 3.761003 2.5979459 
		12.602754 3.4537547 2.8888996 12.602754 3.8278995 3.3950584 12.602754 4.4787822 3.3248384 
		12.602754 4.3884845 3.1773603 12.602754 4.1988387 3.1689479 12.602754 4.1880212 -0.92296886 
		12.602754 1.3285536 -1.2173558 12.602754 3.3276997 -1.5487411 12.602754 4.1904263 
		-0.8842687 12.602754 2.6096363 -1.3449603 12.602754 0.81197655 -4.1697979 12.602754 
		3.1536803 -4.0973105 12.602754 3.0981896 -3.4386415 12.602754 2.5170202 -2.6933334 
		12.602754 1.8879104 -2.1302774 12.602754 1.4185327 -4.9161267 12.602754 0.3149693 
		-5.0655518 12.602754 0.30976209 -0.097227022 12.602754 4.9420705 -0.061793614 12.602754 
		4.7497773 -0.32869101 12.602754 3.4209044 -0.27903089 12.602754 2.6629713 -0.079097934 
		12.602754 1.6563619 -0.83433241 12.602754 0.40165052 -1.6454517 12.602754 0.21711458 
		-2.7194138 12.602754 0.16846769 -3.3551197 12.602754 0.21873009 -4.2756109 12.602754 
		0.26548097 -2.4445992 12.602754 -1.1964552 -1.4965564 12.602754 -0.61694026 -0.33480546 
		12.602754 0.18116218 0.63838077 12.602754 1.3880752 1.2390116 12.602754 2.2483957 
		1.5934983 12.602754 2.8934138 2.2008321 12.602754 4.3563066 -3.6924822 12.602754 
		-2.5829344 -3.6078005 12.602754 -2.5248163 -3.0117333 12.602754 -2.128617 -2.8151159 
		12.602754 -1.630442 -3.1005201 12.602754 2.2284851 -1.4310368 12.602754 3.8632126 
		-0.40173456 12.602754 3.9265726 1.8374892 12.602754 3.4410632 -2.9143598 12.602754 
		-1.8841344 -3.8532088 12.602754 0.24832211 -2.6162977 12.602754 -2.6036019 -2.0919237 
		12.602754 -1.9897782 -1.1434871 12.602754 -0.82714987 -2.8280725 12.602754 -2.8759286 
		-2.9741507 12.602754 -3.0637741 -2.7355318 12.602754 -3.0961256 -2.6800528 12.602754 
		-3.0247836 -3.1288292 12.602754 -3.6118159 -3.1081173 12.602754 -3.585182 -2.9770763 
		12.602754 -3.4424233 -2.9710739 12.602754 -3.4347048 -1.6609501 12.602754 4.7602429 
		-1.6509788 12.602754 4.8516998 2.2242186 12.602754 4.1379132 2.2209492 12.602754 
		4.1639824 2.2959435 12.602754 4.1721187 2.1992857 12.602754 4.1004753 2.3979142 12.602754 
		4.0639739 2.4120457 12.602754 4.0440216 1.0027169 12.602754 4.702889 -0.42212257 
		12.602754 4.2175517 2.0281448 12.602754 3.8310378 -0.083227739 12.602754 4.8283105 
		-0.97735107 12.602754 4.3144951 -0.50814527 12.602754 1.5716654 -0.63440597 12.602754 
		4.6545987 1.9276572 12.602754 4.1201215 2.1224127 12.602754 4.0009131 -0.22554015 
		12.602754 4.6038499 -0.54542589 12.602754 4.377737 1.7574778 12.602754 3.9784052 
		1.8355007 12.602754 4.0848026 1.7881831 12.602754 4.1269765 2.5956848 12.602754 4.159471 
		2.5840602 12.602754 4.1222787 2.6044712 12.602754 4.0427222 2.6421051 12.602754 3.9809244 
		2.6286914 12.602754 3.9224908 2.5062475 12.602754 3.9544146 -4.6140699 12.602754 
		-1.2399715 -4.5115457 12.602754 -1.2037836 -3.8824079 12.602754 -0.98343998 -3.5615277 
		12.602754 -0.90208882 -3.1695564 12.602754 -0.74973369 -2.6940296 12.602754 -0.59797728 
		-1.5894364 12.602754 -0.20398788 -0.61100459 12.602754 0.30390337 0.33276641 12.602754 
		1.5861045 0.54929119 12.602754 2.5451167 0.67241079 12.602754 3.2333834 0.76551926 
		12.602754 3.7842181 0.82376844 12.602754 4.1109462 0.84976476 12.602754 4.2256837 
		0.9036184 12.602754 4.4570203 0.93754327 12.602754 4.5023313 -0.88014978 12.602754 
		4.1794415 -1.6558387 12.602754 4.6601691 -3.964803 12.602754 2.9897654 -4.7866449 
		12.602754 0.30427146 -4.3942056 12.602754 -1.1765162 -3.5208149 12.602754 -2.4607303 
		1.8392458 12.602754 4.2652631 1.0082535 12.602754 4.746809 1.7948366 12.602754 4.37221 
		-0.099854186 12.602754 4.9044213 -1.6580369 12.602754 4.8185101 -4.1512308 12.602754 
		3.1395259 -5.005837 12.602754 0.31061417 -4.5729704 12.602754 -1.2262216 -3.6626973 
		12.602754 -2.5612676 1.0078747 12.602754 4.6496444 0.99197727 12.602754 4.587605 
		1.7558013 12.602754 4.4695816 2.2072868 12.602754 4.3044467 1.7674419 12.602754 4.5238309 
		-3.234246 12.602754 -2.2726295 -4.1194811 12.602754 -1.064496 -4.5140619 12.602754 
		0.29244864 -3.6569231 12.602754 2.7094185;
	setAttr ".pt[332:385]" -1.6004702 12.602754 4.4013619 -0.83169097 12.602754 
		4.5139394 -0.47192699 12.602754 4.5033531 -1.5545397 12.602754 2.0826943 -2.0393889 
		12.602754 2.6834638 -2.349622 12.602754 3.0663846 -2.5960269 12.602754 3.3914235 
		-2.7926328 12.602754 3.660567 -2.9758909 12.602754 3.9340096 -3.0715084 12.602754 
		4.0630698 -3.1132269 12.602754 4.1588216 -3.1439149 12.602754 4.2037516 -4.8379121 
		12.602754 1.9774817 -4.7944784 12.602754 1.9645593 -4.7332697 12.602754 1.940824 
		-4.5702295 12.602754 1.8642823 -4.259881 12.602754 1.691921 -3.9923048 12.602754 
		1.5556118 -3.5897317 12.602754 1.3568109 -3.1130526 12.602754 1.1271871 -2.476016 
		12.602754 0.85647517 -1.5553586 12.602754 0.49782488 0.1706246 12.602754 0.78125876 
		0.11121208 12.602754 4.6062851 0.045409679 12.602754 4.6764131 1.3829757 12.602754 
		4.1077328 1.5897828 12.602754 3.9355645 1.6203201 12.602754 4.2962804 1.4900388 12.602754 
		4.293303 2.4589672 12.602754 3.9696414 2.7106125 12.602754 3.8835948 2.3221786 12.602754 
		4.2155166 2.7556117 12.602754 4.4155197 3.0582952 12.602754 4.4656353 2.5081692 12.602754 
		4.1637363 2.876766 12.602754 4.2550907 2.6626565 12.602754 4.3187957 3.0240924 12.602754 
		4.4101415 2.3267837 12.602754 4.1808734 2.3072188 12.602754 4.1773038 2.8775463 12.602754 
		4.2378526 2.60569 12.602754 4.257895 0.07035248 12.602754 4.2902093 -0.28161058 12.602754 
		4.2518272 -0.52798462 12.602754 4.1513219 -0.58629453 12.602754 4.0616641 -5.1144481 
		12.602754 0.30464455 -4.8960948 12.602754 1.9936917 -4.6673346 12.602754 -1.2576244 
		-1.6414413 12.602754 4.8796515 -3.1999376 12.602754 4.2450671 1.0235271 12.602754 
		4.7671838 -0.082304008 12.602754 4.9739423 -4.1989927 12.602754 3.1750085;
	setAttr -s 386 ".vt";
	setAttr ".vt[0:165]"  -0.22679901 2.84657001 0.92391777 -1.070343971 2.12721825 1.83832741
		 -1.35578823 1.065320015 2.33398819 -0.85478783 2.52362919 1.39745331 -0.85895157 2.82800579 -3.8146973e-06
		 -1.52447987 2.51656437 -3.8146973e-06 -1.97735691 2.10823536 -3.8146973e-06 -2.978549 -2.60536957 -3.8146973e-06
		 2.72715569 -2.51140022 -3.8146973e-06 2.67988777 -1.061066628 -3.8146973e-06 2.25248337 1.11013794 -3.8146973e-06
		 0.18271446 2.84238338 0.9339447 0.087862015 3.012906075 -3.8146973e-06 0.14837837 -2.55169201 3.23148918
		 0.14705849 -1.10624981 3.17430115 0.17188835 1.066379547 2.62506485 0.18634224 2.10041904 2.014536858
		 0.19444084 2.52327442 1.55557632 1.79396057 -1.059150696 2.50887394 1.85391808 -2.51028442 2.58076859
		 -2.27373123 -2.593297 1.90522671 -2.19532967 -0.83478928 1.81374931 -1.45670986 2.17831421 1.43468857
		 -1.11307335 2.51868439 1.11865044 -0.70821571 2.83259773 0.6326561 0.18271446 2.9365797 0.5236187
		 0.58296776 2.85842037 0.85377884 1.019269943 2.54967403 1.36618042 1.23969269 2.12289143 1.69989014
		 1.57131767 1.087832451 2.17308331 1.56681299 2.60955524 0.70535654 0.92487144 2.8914938 0.45938683
		 0.096130371 3.012906075 0.19178963 -0.85574341 2.82644081 0.17466164 -1.49846745 2.51656437 0.20848846
		 -1.94349003 2.13053417 0.28124046 -2.87717342 -2.60105324 0.54347801 2.71026611 -2.51028442 0.78927231
		 2.64988518 -1.059150696 0.76974678 2.23103714 1.11013794 0.62734032 1.91700411 2.17489433 0.72169417
		 0.17994308 1.64457226 2.34688759 -1.24445534 1.62176418 2.1499424 -1.67062378 1.7643528 1.66527748
		 -2.2994194 1.51471519 0.37119102 2.15311623 1.5249548 -3.8146973e-06 2.076584101 1.72104931 0.67320979
		 1.41708374 1.67515278 1.95759106 2.30628204 3.068255424 0.2491169 2.32714844 3.068255424 -3.8146973e-06
		 1.81085396 3.47403049 -3.8146973e-06 1.81085396 3.46264935 0.22585678 0.88969231 3.013335228 0.20393944
		 0.88969231 3.02471447 -3.8146973e-06 2.51805687 2.44956493 0.2491169 2.53892326 2.44956493 -3.8146973e-06
		 2.66413498 1.9163866 0.2491169 2.69726372 1.87103558 -3.8146973e-06 2.58785057 4.12716198 0.11866951
		 2.60871696 4.12716198 -3.8146973e-06 2.53237152 4.17071247 -3.8146973e-06 2.53237152 4.15933323 0.11866951
		 2.98590469 3.19388676 0.11484718 2.96519279 3.26357937 0.11484718 3.0067710876 3.19388676 -3.8146973e-06
		 2.98605919 3.26357937 -3.8146973e-06 2.8464756 2.15241909 0.10494423 2.84047318 2.22938442 0.10494423
		 2.867342 2.15241909 -3.8146973e-06 2.86133957 2.22938442 -3.8146973e-06 -1.5853405 -1.21104431 2.60861683
		 -1.63294506 -2.58437538 2.6388607 -2.78164768 -0.93444157 0.44792366 -2.79286671 -1.094049454 0.45957375
		 -2.82560158 -1.35831261 0.42560959 -2.75414181 -0.51407146 0.44586372 -2.81306076 -1.14325142 0.33359146
		 -2.80894661 -0.73119164 0.31893539 -2.58227539 -1.85509491 1.26927757 -1.80204105 1.33885765 1.78726578
		 -2.55937672 0.80595016 0.42687988 -2.22467136 -1.25257206 1.85455322 -1.63490868 1.034474373 2.099129677
		 -0.50267982 2.84453773 0.8122673 -1.92956543 -0.21410656 2.06032753 -2.65908241 -0.24111748 0.58774948
		 -2.67692947 0.10470486 0.44559097 -2.06251812 -0.094831467 1.83861542 -1.83128357 0.99595737 1.90984631
		 -2.52581215 0.63795662 0.61740875 -2.60673809 0.16350079 0.61974144 -2.60872459 -0.13041973 0.65935707
		 -2.93482208 -2.60367012 0.27251816 -2.91255188 -1.92235661 0.26395798 -2.88232708 -1.43373775 0.22327423
		 -2.86722469 -1.19820213 0.18089294 -2.83410072 -0.56155014 0.16505814 -2.80228996 -0.35488415 0.23788834
		 2.42196655 -2.51028442 1.76150703 2.36521912 -1.059150696 1.72471809 2.017814636 1.098984718 1.49832344
		 1.85547829 1.70144367 1.370924 1.63182068 2.14889336 1.23567772 1.37631607 2.5700655 1.058866501
		 0.76295853 2.87793541 0.66413116 0.14360809 3.0041379929 0.37558365 -0.83298492 2.82540512 0.40195847
		 -1.37522316 2.51709461 0.66368675 -1.75196552 2.20152092 0.86749649 -2.051393509 1.72029305 1.033288956
		 -2.23016167 1.22328472 1.13013077 -2.29507065 0.83341122 1.16140366 -2.42649555 -0.57958508 1.22373199
		 -2.46122742 -0.72731876 1.22438049 -1.60765553 1.29201126 1.99912453 -1.5394125 -0.60216427 2.56760406
		 0.14798927 -0.46313095 3.067073822 1.74928474 -0.46313095 2.44072819 2.30704308 -0.46313095 1.67717552
		 2.58576202 -0.46313095 0.7513752 2.62546349 -0.46313095 -3.8146973e-06 -2.69454384 -0.78482151 0.68728447
		 -2.60542393 -2.59545612 1.28343201 -2.72864819 -1.23171806 0.75037575 -2.25470257 -1.8422966 1.89204407
		 -1.6143465 -1.82114601 2.62958622 0.14801216 -1.76836967 3.21686268 1.83054543 -1.70516872 2.55156612
		 2.39958 -1.70516872 1.74646378 2.68844223 -1.70516872 0.78287506 2.71250916 -1.71475124 -3.8146973e-06
		 -2.55877686 -1.25727558 1.24625206 -2.52297211 -0.91269875 1.23025513 -2.76023674 -1.87407589 0.80712509
		 -2.85483646 -1.89988136 0.52034187 -2.95303535 -1.93694782 -3.8146973e-06 -2.79067612 -2.59728813 0.82223129
		 2.41238213 0.52104187 -3.8146973e-06 2.38553238 0.52104187 0.68199348 2.14777946 0.52104187 1.58439255
		 1.65011406 0.52104187 2.30138206 0.16375542 0.52104187 2.80699921 -1.43684483 0.48636723 2.44069099
		 -1.78637695 0.45454597 2.10379982 -1.91966724 0.43349266 1.9218111 -0.34483147 2.52345181 1.52627754
		 -0.44588852 2.1036253 1.99708843 -0.50984001 1.645504 2.29777718 -0.57063675 1.07303524 2.54463196
		 -0.62383461 0.51367474 2.74536705 -0.68422318 -0.50451088 2.94115257 -0.70921707 -1.14950371 3.038074493
		 -0.73899841 -1.79278183 3.09553051 -0.74869919 -2.56718826 3.127985 0.96822929 -2.52988338 3.10955715
		 0.95771027 -1.73215199 3.083108902 0.94552994 -1.081202507 3.043711662 0.9194603 -0.46313095 2.93364716
		 0.88259697 0.52104187 2.71388054 0.84492874 1.077464104 2.5291338 0.78525162 1.66037273 2.25359058
		 0.71182632 2.11203003 1.92955112 0.59639549 2.53691483 1.51040649 0.41397667 2.85464764 0.91717529
		 -0.23440742 2.98144245 -3.8146973e-06 -0.38544273 2.9814415 0.17261887;
	setAttr ".vt[166:331]" -2.19319057 -0.37230682 1.67300987 -2.20144653 -0.54282761 1.73252106
		 -2.44368172 0.76018524 0.85235023 -2.44081783 1.027024269 0.68386459 -2.62519455 -0.55697346 0.80748367
		 -2.57366657 -0.44658566 0.87076569 -2.79139423 -1.015763283 0.26711845 -2.84699059 -1.04188633 0.10958672
		 -2.85646057 -1.11700439 0.42933083 -3.11886692 -1.12542915 0.29189873 -3.25925636 -1.13031673 0.16148376
		 -2.90320683 -1.11748981 0.31743813 -3.088681221 -1.16379833 0.17028427 -3.036828041 -1.11106682 0.30067062
		 -3.21954441 -1.11950397 0.15705109 -2.84165192 -1.10373688 0.4137249 -2.8324194 -0.98950291 0.42202759
		 -3.080731392 -0.80557632 0.16327095 -2.98577404 -0.88795376 0.3054142 -2.026207924 -0.41074753 1.57166672
		 -1.8724823 -0.13327217 1.73096085 -1.72963238 0.39505196 1.81415367 -1.66429901 0.95751667 1.8085041
		 -2.94773006 -5.80789471 -3.8146973e-06 2.73036385 -5.80789471 -3.8146973e-06 1.87517166 -5.80789471 2.60298157
		 0.98284721 -5.80789471 3.14456367 -2.8997097 -5.80789471 -3.8146973e-06 -2.81262398 -5.80789471 -3.8146973e-06
		 2.45089912 -5.80789471 1.78105354 -1.64999008 -5.80789471 2.64489174 -0.74692726 -5.80789471 3.17157745
		 -2.62104893 -5.80789471 1.28371429 -2.29472351 -5.80789471 1.91010284 0.1493988 -5.80789471 3.25413322
		 -2.21786404 1.77375126 -3.8146973e-06 -2.59795284 0.89462471 -3.8146973e-06 -2.74639988 0.24951077 -3.8146973e-06
		 -2.92703247 -1.50158024 -3.8146973e-06 -2.90596867 -1.26835537 -3.8146973e-06 -2.85496902 -0.44772434 -3.8146973e-06
		 -2.83687878 -0.2338028 -3.8146973e-06 -2.59794712 0.89464092 -3.8146973e-06 -2.88890076 -1.075568199 -3.8146973e-06
		 -3.39505959 -1.12350941 -3.8146973e-06 -3.32483959 -1.11819267 -3.8146973e-06 -3.17736149 -1.18206024 -3.8146973e-06
		 -3.16894913 -0.74526024 -3.8146973e-06 -0.22679901 2.84657001 -0.92392349 -1.070343971 2.12721825 -1.83833313
		 -1.35578823 1.065320015 -2.33399963 -0.85478783 2.52362919 -1.39745903 0.18271446 2.84238338 -0.93395042
		 0.14837837 -2.55169201 -3.23150063 0.14705849 -1.10624981 -3.17431259 0.17188835 1.066379547 -2.62507248
		 0.18634224 2.10041904 -2.014549255 0.19444084 2.52327442 -1.55558586 1.79396057 -1.059150696 -2.50888634
		 1.85391808 -2.51028442 -2.58078003 -2.27373123 -2.593297 -1.9052372 -2.19532967 -0.83478928 -1.81376266
		 -1.45670986 2.17831421 -1.43470001 -1.11307335 2.51868439 -1.11865807 -0.70821571 2.83259773 -0.63266563
		 0.18271446 2.9365797 -0.52362442 0.58296776 2.85842037 -0.85378456 1.019269943 2.54967403 -1.36618996
		 1.23969269 2.12289143 -1.69989967 1.57131767 1.087832451 -2.1730957 1.56681299 2.60955524 -0.70536685
		 0.92487144 2.8914938 -0.45939255 0.096130371 3.012906075 -0.19179535 -0.85574341 2.82644081 -0.17466927
		 -1.49846745 2.51656437 -0.20849419 -1.94349003 2.13053417 -0.28124619 -2.87717342 -2.60105324 -0.54349136
		 2.71026611 -2.51028442 -0.78928375 2.64988518 -1.059150696 -0.76975632 2.23103714 1.11013794 -0.62734795
		 1.91700411 2.17489433 -0.72169989 0.17994308 1.64457226 -2.34689522 -1.24445534 1.62176418 -2.14995193
		 -1.67062378 1.7643528 -1.66529083 -2.2994194 1.51471519 -0.37119675 2.076584101 1.72104931 -0.67321551
		 1.41708374 1.67515278 -1.95760345 2.30628204 3.068255424 -0.24912262 1.81085396 3.46264935 -0.2258625
		 0.88969231 3.013335228 -0.20394516 2.51805687 2.44956493 -0.24912262 2.66413498 1.9163866 -0.24912262
		 2.58785057 4.12716198 -0.11867523 2.53237152 4.15933323 -0.11867523 2.98590469 3.19388676 -0.11485291
		 2.96519279 3.26357937 -0.11485291 2.8464756 2.15241909 -0.10494995 2.84047318 2.22938442 -0.10494995
		 -1.5853405 -1.21104431 -2.60862923 -1.63294506 -2.58437538 -2.63887024 -2.78164768 -0.93444157 -0.44793701
		 -2.79286671 -1.094049454 -0.45957947 -2.82560158 -1.35831261 -0.42562103 -2.75414181 -0.51407146 -0.44586945
		 -2.81306076 -1.14325142 -0.33360291 -2.80894661 -0.73119164 -0.31894112 -2.58227539 -1.85509491 -1.26929092
		 -1.80204105 1.33885765 -1.78727722 -2.55937672 0.80595016 -0.4268856 -2.22467136 -1.25257206 -1.85456467
		 -1.63490868 1.034474373 -2.099140167 -0.50267982 2.84453773 -0.81227303 -1.92956543 -0.21410656 -2.060337067
		 -2.65908241 -0.24111748 -0.5877552 -2.67692947 0.10470486 -0.44559669 -2.06251812 -0.094831467 -1.83862114
		 -1.83128357 0.99595737 -1.9098587 -2.52581215 0.63795662 -0.61741447 -2.60673809 0.16350079 -0.61974716
		 -2.60872459 -0.13041973 -0.65936661 -2.93482208 -2.60367012 -0.27252388 -2.91255188 -1.92235661 -0.26396942
		 -2.88232708 -1.43373775 -0.22327995 -2.86722469 -1.19820213 -0.18090248 -2.83410072 -0.56155014 -0.16506386
		 -2.80228996 -0.35488415 -0.23789406 2.42196655 -2.51028442 -1.76151466 2.36521912 -1.059150696 -1.72472954
		 2.017814636 1.098984718 -1.49833679 1.85547829 1.70144367 -1.37093544 1.63182068 2.14889336 -1.23568344
		 1.37631607 2.5700655 -1.058879852 0.76295853 2.87793541 -0.66413689 0.14360809 3.0041379929 -0.37558937
		 -0.83298492 2.82540512 -0.40196419 -1.37522316 2.51709461 -0.6636982 -1.75196552 2.20152092 -0.86750221
		 -2.051393509 1.72029305 -1.033294678 -2.23016167 1.22328472 -1.1301403 -2.29507065 0.83341122 -1.16140938
		 -2.42649555 -0.57958508 -1.22374344 -2.46122742 -0.72731876 -1.22439194 -1.60765553 1.29201126 -1.99913216
		 -1.5394125 -0.60216427 -2.56761551 0.14798927 -0.46313095 -3.067085266 1.74928474 -0.46313095 -2.44073868
		 2.30704308 -0.46313095 -1.67718697 2.58576202 -0.46313095 -0.75138474 -2.69454384 -0.78482151 -0.68729591
		 -2.60542393 -2.59545612 -1.28344345 -2.72864819 -1.23171806 -0.75038719 -2.25470257 -1.8422966 -1.89205742
		 -1.6143465 -1.82114601 -2.62959671 0.14801216 -1.76836967 -3.21687508 1.83054543 -1.70516872 -2.55157661
		 2.39958 -1.70516872 -1.74647713 2.68844223 -1.70516872 -0.78288651 -2.55877686 -1.25727558 -1.2462635
		 -2.52297211 -0.91269875 -1.23026657 -2.76023674 -1.87407589 -0.80713844 -2.85483646 -1.89988136 -0.52035522
		 -2.79067612 -2.59728813 -0.82224464 2.38553238 0.52104187 -0.68200493 2.14777946 0.52104187 -1.5844059
		 1.65011406 0.52104187 -2.30138969 0.16375542 0.52104187 -2.80701256;
	setAttr ".vt[332:385]" -1.43684483 0.48636723 -2.44070244 -1.78637695 0.45454597 -2.10380745
		 -1.91966724 0.43349266 -1.92181969 -0.34483147 2.52345181 -1.52628326 -0.44588852 2.1036253 -1.99710083
		 -0.50984001 1.645504 -2.29778481 -0.57063675 1.07303524 -2.5446434 -0.62383461 0.51367474 -2.74537849
		 -0.68422318 -0.50451088 -2.94116592 -0.70921707 -1.14950371 -3.038085938 -0.73899841 -1.79278183 -3.095541
		 -0.74869919 -2.56718826 -3.12799644 0.96822929 -2.52988338 -3.10956955 0.95771027 -1.73215199 -3.083120346
		 0.94552994 -1.081202507 -3.043722153 0.9194603 -0.46313095 -2.93365669 0.88259697 0.52104187 -2.71389198
		 0.84492874 1.077464104 -2.52914429 0.78525162 1.66037273 -2.25360298 0.71182632 2.11203003 -1.92955971
		 0.59639549 2.53691483 -1.51041222 0.41397667 2.85464764 -0.91718483 -0.38544273 2.9814415 -0.17262459
		 -2.19319057 -0.37230682 -1.67302132 -2.20144653 -0.54282761 -1.7325325 -2.44368172 0.76018524 -0.85235596
		 -2.44081783 1.027024269 -0.68387032 -2.62519455 -0.55697346 -0.8074913 -2.57366657 -0.44658566 -0.87077522
		 -2.79139423 -1.015763283 -0.26713181 -2.84699059 -1.04188633 -0.10959244 -2.85646057 -1.11700439 -0.42933655
		 -3.11886692 -1.12542915 -0.29190445 -3.25925636 -1.13031673 -0.16148949 -2.90320683 -1.11748981 -0.31744385
		 -3.088681221 -1.16379833 -0.1702919 -3.036828041 -1.11106682 -0.30067635 -3.21954441 -1.11950397 -0.15706253
		 -2.84165192 -1.10373688 -0.41373634 -2.8324194 -0.98950291 -0.42203903 -3.080731392 -0.80557632 -0.16327667
		 -2.98577404 -0.88795376 -0.30542755 -2.026207924 -0.41074753 -1.57167244 -1.8724823 -0.13327217 -1.73097038
		 -1.72963238 0.39505196 -1.81415939 -1.66429901 0.95751667 -1.80851555 1.87517166 -5.80789471 -2.60299301
		 0.98284721 -5.80789471 -3.14457703 2.45089912 -5.80789471 -1.78106689 -1.64999008 -5.80789471 -2.64490318
		 -0.74692726 -5.80789471 -3.17159081 -2.62104893 -5.80789471 -1.28372574 -2.29472351 -5.80789471 -1.91011429
		 0.1493988 -5.80789471 -3.25414085;
	setAttr -s 759 ".ed";
	setAttr ".ed[0:165]"  0 11 0 1 3 0 28 161 0 1 22 0 18 156 0 2 42 0 2 148 0
		 3 145 0 5 34 0 4 5 1 5 6 1 7 92 0 8 37 0 9 38 0 8 130 1 10 45 1 11 163 0 12 164 1
		 11 25 0 14 151 0 13 126 0 15 159 0 16 146 0 15 41 0 17 162 0 16 17 0 17 11 0 19 154 0
		 18 127 0 22 108 0 22 23 0 24 106 0 23 24 0 25 105 0 24 83 0 26 104 0 25 26 0 27 103 0
		 26 27 0 27 28 0 29 100 0 28 47 0 29 140 0 30 31 0 32 12 0 31 32 0 33 4 0 34 107 0
		 33 34 0 35 6 0 34 35 0 35 44 0 81 131 0 36 136 0 37 98 0 38 99 0 37 129 0 39 10 0
		 40 102 0 39 46 0 40 30 0 41 16 0 42 1 0 41 147 0 43 22 0 42 43 0 43 109 0 44 201 0
		 46 40 0 45 46 0 47 29 0 46 101 0 47 160 0 30 48 0 48 49 0 31 51 0 51 50 0 48 51 0
		 32 52 0 51 52 0 12 53 1 50 53 1 52 53 0 40 54 0 54 48 0 55 54 0 46 56 0 56 54 0 45 57 0
		 57 56 0 48 58 0 49 59 1 58 59 0 50 60 1 59 60 1 51 61 0 61 60 0 58 61 0 54 62 0 48 63 0
		 62 63 0 55 64 1 64 62 0 49 65 1 64 65 1 63 65 0 56 66 0 54 67 0 66 67 0 57 68 1 68 66 0
		 55 69 1 68 69 1 69 67 0 71 153 0 142 115 0 70 125 0 72 77 0 73 76 0 72 73 0 121 75 0
		 122 20 0 74 134 0 123 74 0 77 75 0 121 72 0 123 73 0 74 76 0 134 36 0 135 7 1 79 43 0
		 80 86 0 79 110 0 79 114 0 81 124 0 82 2 0 23 3 0 164 4 1 84 143 0 83 0 0 80 202 0
		 84 167 0 86 85 0 70 81 0 20 71 0 9 120 1 38 119 0 14 116 0 84 87 0 87 144 0 79 88 0
		 80 89 0 88 111 0 86 90 0 89 90 0 85 91 0 90 91 0 87 166 0 93 135 0 92 93 0 94 204 0
		 95 205 0 94 95 0 96 206 0 97 207 0 96 97 0;
	setAttr ".ed[166:331]" 86 97 0 98 19 0 99 18 0 98 128 0 99 118 0 100 39 0 101 47 0
		 100 101 0 102 28 0 101 102 0 103 30 0 102 103 0 104 31 0 103 104 0 105 32 0 104 105 0
		 106 33 0 107 23 0 106 107 0 108 35 0 107 108 0 109 44 0 108 109 0 110 169 0 109 110 0
		 111 168 0 110 111 0 112 171 0 113 170 0 112 113 0 75 97 0 77 96 0 76 95 0 74 94 0
		 134 93 0 92 36 0 114 82 0 42 114 0 21 81 0 115 70 0 116 141 0 117 18 0 118 139 0
		 119 138 0 120 137 1 21 115 0 115 150 0 116 157 0 118 119 0 119 120 0 88 82 0 75 85 0
		 78 133 0 78 122 0 123 133 0 124 20 0 125 71 0 124 125 0 126 14 0 125 152 0 127 19 0
		 126 155 0 128 99 0 127 128 0 129 38 0 128 129 0 130 9 1 129 130 0 121 132 0 121 123 0
		 78 124 0 132 21 0 132 131 0 131 78 0 131 123 0 133 134 0 136 122 0 113 132 0 133 136 0
		 93 94 0 137 10 1 138 39 0 137 138 0 139 100 0 138 139 0 140 117 0 139 140 0 141 15 0
		 140 158 0 142 2 0 141 149 0 143 82 0 142 143 0 144 88 0 143 144 0 83 3 0 145 17 0
		 146 1 0 147 42 0 148 15 0 149 142 0 150 116 0 151 70 0 152 126 0 153 13 0 145 146 0
		 146 147 0 147 148 0 148 149 0 149 150 0 150 151 0 151 152 0 152 153 0 0 145 0 118 117 0
		 154 13 0 155 127 0 156 14 0 157 117 0 158 141 0 159 29 0 160 41 0 161 16 0 162 27 0
		 163 26 0 154 155 0 155 156 0 156 157 0 157 158 0 158 159 0 159 160 0 160 161 0 161 162 0
		 162 163 0 32 165 0 165 164 0 165 24 0 33 165 0 32 83 0 105 0 0 84 115 0 166 112 0
		 167 113 0 166 167 0 167 21 0 168 89 0 169 80 0 168 169 0 169 44 0 44 208 0 170 85 0
		 171 91 0 121 170 0 170 171 0 73 172 0 172 173 0 173 209 0 72 182 0 77 184 0 174 175 0
		 96 183 0 175 176 0 176 210 0 76 177 0 95 178 0 177 178 0;
	setAttr ".ed[332:497]" 172 179 0 177 179 0 173 180 0 179 180 0 178 180 0 180 211 0
		 178 212 0 73 181 0 181 179 0 181 177 0 182 174 0 73 174 0 172 175 0 173 176 0 183 176 0
		 184 175 0 183 184 0 184 182 0 166 185 0 112 185 0 87 186 0 186 185 0 144 187 0 186 187 0
		 88 188 0 187 188 0 188 111 0 92 189 0 7 189 0 8 190 1 19 191 0 154 192 0 191 192 0
		 36 193 0 136 194 0 193 194 0 98 195 0 190 195 0 71 196 0 153 197 0 196 197 0 122 198 0
		 20 199 0 198 199 0 199 196 0 195 191 0 189 193 0 194 198 0 13 200 0 197 200 0 192 200 0
		 201 6 1 203 86 0 213 183 0 207 206 1 211 212 0 204 205 1 203 202 1 208 202 1 135 204 1
		 208 201 1 207 203 1 209 210 1 206 213 0 209 211 1 205 212 0 213 210 0 341 342 0 342 319 0
		 319 220 0 220 341 0 214 218 0 218 231 0 231 299 0 299 214 0 320 321 0 321 293 0 293 224 0
		 224 320 0 316 268 0 316 267 0 267 270 0 268 270 0 214 335 0 335 223 0 223 218 0 301 229 0
		 229 230 0 230 300 0 300 301 0 233 297 0 297 298 0 232 298 0 232 233 0 278 356 0 356 227 0
		 227 309 0 278 309 0 235 294 0 294 295 0 295 252 0 252 235 0 337 338 0 338 221 0 221 247 0
		 247 337 0 312 311 0 311 224 0 293 312 0 339 340 0 340 310 0 310 331 0 331 339 0 228 302 0
		 228 229 0 301 302 0 335 336 0 222 336 0 222 223 0 296 234 0 296 297 0 233 234 0 231 232 0
		 298 299 0 345 346 0 346 220 0 319 345 0 310 347 0 347 348 0 348 331 0 221 349 0 349 350 0
		 350 247 0 351 352 0 223 352 0 351 222 0 352 353 0 218 353 0 317 318 0 264 318 0 264 275 0
		 275 317 0 332 309 0 332 333 0 278 333 0 215 228 0 215 217 0 229 217 0 277 214 0 277 217 0
		 217 335 0 353 232 0 258 59 0 259 60 0 258 259 0 254 255 0 254 50 0 255 53 0 239 4 0
		 239 354 0 354 164 0 5 240 0 239 240 0 241 6 0 240 241 0 291 207 0;
	setAttr ".ed[498:663]" 290 206 0 290 291 0 322 244 0 322 130 0 9 244 0 313 328 0
		 313 120 0 137 328 0 245 251 0 245 10 0 45 251 0 260 261 0 64 260 0 261 65 0 350 351 0
		 247 222 0 336 337 0 249 228 0 248 249 0 248 215 0 249 303 0 302 303 0 250 201 0 241 250 0
		 262 263 0 68 262 0 69 263 0 295 296 0 234 252 0 236 237 0 236 253 0 253 254 0 237 254 0
		 237 238 0 238 255 0 238 12 0 246 236 0 246 256 0 256 253 0 251 246 0 251 257 0 257 256 0
		 57 257 0 253 49 0 253 258 0 254 259 0 256 260 0 253 261 0 55 256 0 257 262 0 256 263 0
		 314 269 0 271 269 0 266 271 0 314 266 0 271 290 0 269 291 0 366 367 0 366 368 0 368 369 0
		 367 369 0 270 289 0 288 289 0 268 288 0 369 211 0 367 212 0 286 287 0 287 135 0 7 286 0
		 286 242 0 326 242 0 326 287 0 275 323 0 323 272 0 272 317 0 324 323 0 227 275 0 324 227 0
		 370 368 0 370 366 0 273 304 0 273 249 0 303 304 0 276 216 0 216 248 0 248 308 0 308 276 0
		 282 276 0 273 308 0 273 282 0 304 305 0 282 305 0 274 280 0 280 284 0 283 284 0 274 283 0
		 280 279 0 279 285 0 284 285 0 355 356 0 278 281 0 281 355 0 321 322 0 244 293 0 312 329 0
		 312 313 0 328 329 0 294 245 0 251 295 0 246 296 0 297 236 0 298 237 0 299 238 0 300 239 0
		 354 230 0 240 301 0 302 241 0 303 250 0 358 274 0 358 250 0 250 208 0 274 202 0 357 358 0
		 357 283 0 359 279 0 359 360 0 360 285 0 309 264 0 340 341 0 220 310 0 346 347 0 244 313 0
		 281 334 0 333 334 0 325 327 0 327 315 0 272 315 0 272 325 0 280 291 0 269 279 0 226 265 0
		 318 265 0 317 226 0 342 343 0 343 219 0 219 319 0 344 219 0 344 345 0 292 225 0 292 321 0
		 320 225 0 243 292 0 243 322 0 8 243 0 314 316 0 266 267 0 315 226 0 323 316 0 316 325 0
		 314 324 0 325 326 0 268 326 0 287 288 0 314 359 0 242 327 0 328 245 0;
	setAttr ".ed[664:758]" 329 294 0 235 330 0 329 330 0 348 349 0 331 221 0 338 339 0
		 332 216 0 333 276 0 334 282 0 230 277 0 336 215 0 337 248 0 216 338 0 339 332 0 309 340 0
		 341 264 0 318 342 0 265 343 0 330 311 0 225 344 0 345 320 0 224 346 0 347 311 0 330 348 0
		 349 235 0 252 350 0 234 351 0 352 233 0 238 354 0 238 277 0 356 307 0 355 306 0 306 307 0
		 307 324 0 304 358 0 305 357 0 307 359 0 306 360 0 266 371 0 371 363 0 267 363 0 271 373 0
		 373 371 0 267 361 0 363 364 0 361 364 0 361 362 0 364 365 0 362 365 0 290 372 0 372 373 0
		 213 372 0 270 366 0 289 367 0 362 369 0 361 368 0 362 209 0 267 370 0 365 210 0 372 365 0
		 373 364 0 355 374 0 374 306 0 281 375 0 375 374 0 334 376 0 375 376 0 282 377 0 376 377 0
		 305 377 0 286 189 0 344 379 0 378 379 0 225 378 0 242 193 0 327 194 0 292 380 0 190 380 0
		 265 381 0 381 382 0 343 382 0 315 383 0 383 384 0 226 384 0 384 381 0 380 378 0 194 383 0
		 382 385 0 219 385 0 379 385 0 288 204 0 289 205 0 203 280 0 31 52 0 237 255 0;
	setAttr -s 372 -ch 1478 ".fc[0:371]" -type "polyFaces" 
		f 4 277 269 224 19
		mu 0 4 0 1 2 406
		f 4 0 18 33 305
		mu 0 4 4 5 412 7
		f 4 229 228 168 28
		mu 0 4 3 6 8 9
		f 4 -124 126 118 -128
		mu 0 4 12 13 481 476
		f 4 279 262 26 -1
		mu 0 4 4 16 17 5
		f 4 183 32 31 184
		mu 0 4 18 19 20 21
		f 4 37 179 -36 38
		mu 0 4 10 11 22 23
		f 4 141 310 211 -307
		mu 0 4 26 27 28 29
		f 4 40 173 172 70
		mu 0 4 24 25 30 31
		f 4 273 265 23 63
		mu 0 4 34 35 36 410
		f 4 280 207 -169 170
		mu 0 4 32 33 9 8
		f 4 275 267 206 256
		mu 0 4 40 41 42 403
		f 4 -30 30 -184 186
		mu 0 4 44 45 19 18
		f 4 271 -23 25 -263
		mu 0 4 16 46 411 17
		f 4 -175 177 -38 39
		mu 0 4 37 38 11 10
		f 4 36 35 181 -34
		mu 0 4 39 23 22 43
		f 4 292 283 -225 227
		mu 0 4 47 48 49 50
		f 4 -207 213 294 285
		mu 0 4 51 52 53 54
		f 4 -24 21 296 287
		mu 0 4 55 56 57 58
		f 4 298 -25 -26 -289
		mu 0 4 68 69 70 71
		f 4 299 -17 -27 24
		mu 0 4 69 72 73 70
		f 4 223 -117 143 134
		mu 0 4 59 60 61 62
		f 4 306 -116 258 -139
		mu 0 4 26 29 63 64
		f 4 -31 -4 1 -137
		mu 0 4 19 45 65 66
		f 4 -140 261 7 -280
		mu 0 4 4 67 66 16
		f 4 16 290 -37 -19
		mu 0 4 73 72 23 39
		f 4 92 94 -97 -98
		mu 0 4 74 431 432 89
		f 4 -80 76 81 -83
		mu 0 4 90 91 433 435
		f 4 137 -47 303 301
		mu 0 4 422 423 78 79
		f 4 8 -49 46 9
		mu 0 4 439 81 78 423
		f 4 -50 -51 -9 10
		mu 0 4 438 83 81 439
		f 4 164 386 -164 165
		mu 0 4 84 85 86 479
		f 4 -231 233 232 13
		mu 0 4 94 95 419 420
		f 4 -210 215 210 248
		mu 0 4 98 99 421 417
		f 4 -60 57 15 69
		mu 0 4 102 103 418 434
		f 4 -101 -103 104 -106
		mu 0 4 111 112 428 429
		f 4 297 288 -62 -288
		mu 0 4 58 68 71 55
		f 4 272 -64 61 22
		mu 0 4 46 34 410 411
		f 4 -65 -66 62 3
		mu 0 4 45 104 105 65
		f 4 -67 64 29 188
		mu 0 4 106 104 45 44
		f 4 -384 -68 -52 49
		mu 0 4 438 107 108 83
		f 4 -109 -111 112 113
		mu 0 4 115 117 424 425
		f 4 -173 175 174 41
		mu 0 4 31 30 38 37
		f 4 -44 73 77 -76
		mu 0 4 120 121 122 91
		f 3 -46 757 -79
		mu 0 3 123 120 90
		f 4 -45 78 82 -81
		mu 0 4 436 123 90 435
		f 4 -61 83 84 -74
		mu 0 4 121 176 177 122
		f 4 -69 86 87 -84
		mu 0 4 176 102 178 177
		f 4 -70 88 89 -87
		mu 0 4 102 434 427 178
		f 4 74 91 -93 -91
		mu 0 4 122 430 431 74
		f 4 -77 95 96 -94
		mu 0 4 433 91 89 432
		f 4 -78 90 97 -96
		mu 0 4 91 122 74 89
		f 4 -85 98 100 -100
		mu 0 4 122 177 112 111
		f 4 -86 101 102 -99
		mu 0 4 177 426 428 112
		f 4 -75 99 105 -104
		mu 0 4 430 122 111 429
		f 4 -88 106 108 -108
		mu 0 4 177 178 117 115
		f 4 -90 109 110 -107
		mu 0 4 178 427 424 117
		f 4 85 107 -114 -112
		mu 0 4 426 177 115 425
		f 4 120 -125 -118 -126
		mu 0 4 124 125 478 480
		f 4 -198 124 196 -166
		mu 0 4 479 478 125 84
		f 4 -332 333 335 -337
		mu 0 4 128 129 130 131
		f 4 127 198 -163 -200
		mu 0 4 12 476 477 133
		f 4 336 337 387 -339
		mu 0 4 128 131 134 135
		f 4 159 158 129 11
		mu 0 4 459 137 465 466
		f 4 201 -129 200 -160
		mu 0 4 459 460 141 137
		f 4 -135 52 239 236
		mu 0 4 59 62 142 143
		f 4 238 -53 -205 -238
		mu 0 4 144 142 62 28
		f 3 340 -334 -342
		mu 0 3 145 130 129
		f 4 -133 130 66 190
		mu 0 4 146 147 104 106
		f 4 135 5 203 202
		mu 0 4 148 149 105 150
		f 4 216 -203 -134 150
		mu 0 4 151 148 150 147
		f 4 132 192 -153 -151
		mu 0 4 147 146 152 151
		f 4 131 153 -155 -152
		mu 0 4 153 154 155 156
		f 4 142 155 -157 -154
		mu 0 4 154 157 158 155
		f 4 309 -142 148 157
		mu 0 4 159 27 26 160
		f 4 -229 231 230 55
		mu 0 4 8 6 95 94
		f 4 -209 214 209 250
		mu 0 4 200 32 99 98
		f 4 -174 171 59 71
		mu 0 4 30 25 103 102
		f 4 -176 -72 68 58
		mu 0 4 38 30 102 176
		f 4 -178 -59 60 -177
		mu 0 4 11 38 176 121
		f 4 -180 176 43 -179
		mu 0 4 22 11 121 120
		f 4 -182 178 45 -181
		mu 0 4 43 22 120 123
		f 4 -304 -183 -32 -303
		mu 0 4 79 78 21 20
		f 4 47 -185 182 48
		mu 0 4 81 18 21 78
		f 4 -186 -187 -48 50
		mu 0 4 83 44 18 81
		f 4 -188 -189 185 51
		mu 0 4 108 106 44 83
		f 5 -313 314 315 390 -141
		mu 0 5 153 162 108 163 164
		f 4 313 312 151 -312
		mu 0 4 165 162 153 156
		f 4 -317 319 317 -156
		mu 0 4 157 166 167 158
		f 4 -131 133 -204 65
		mu 0 4 104 147 150 105
		f 4 -206 -212 204 -144
		mu 0 4 61 29 28 62
		f 4 -268 276 -20 147
		mu 0 4 42 41 0 406
		f 4 -148 -284 293 -214
		mu 0 4 52 49 48 53
		f 4 -56 146 -215 -171
		mu 0 4 8 94 99 32
		f 4 -14 145 -216 -147
		mu 0 4 94 420 421 99
		f 4 -150 -149 138 260
		mu 0 4 168 160 26 64
		f 4 244 242 -220 218
		mu 0 4 169 457 458 143
		f 4 -143 166 -197 217
		mu 0 4 157 154 84 125
		f 4 144 -223 -224 221
		mu 0 4 463 464 60 59
		f 4 -270 278 270 20
		mu 0 4 2 1 456 454
		f 4 -21 -282 291 -228
		mu 0 4 50 201 453 47
		f 4 -168 169 -230 226
		mu 0 4 462 461 6 3
		f 4 -232 -170 -55 56
		mu 0 4 95 6 461 220
		f 4 -234 -57 -13 14
		mu 0 4 419 95 220 415
		f 4 -236 125 119 -127
		mu 0 4 13 124 480 481
		f 4 -237 219 121 -222
		mu 0 4 59 143 458 463
		f 4 -219 -240 240 220
		mu 0 4 169 143 142 13
		f 4 -241 -239 -235 235
		mu 0 4 13 142 144 124
		f 4 -242 -221 123 122
		mu 0 4 141 169 13 12
		f 4 -201 -123 199 -246
		mu 0 4 137 141 12 133
		f 4 318 316 -218 -121
		mu 0 4 124 166 157 125
		f 4 53 -245 241 128
		mu 0 4 460 457 169 141
		f 4 -248 -249 246 -58
		mu 0 4 103 98 417 418
		f 4 -250 -251 247 -172
		mu 0 4 25 200 98 103
		f 4 42 -253 249 -41
		mu 0 4 24 222 200 25
		f 4 295 -22 -254 -286
		mu 0 4 54 57 56 51
		f 4 274 -257 253 -266
		mu 0 4 35 40 403 36
		f 4 -259 255 -136 -258
		mu 0 4 64 63 149 148
		f 4 -260 -261 257 -217
		mu 0 4 151 168 64 148
		f 4 -35 -33 136 -262
		mu 0 4 67 20 19 66
		f 4 -264 -272 -8 -2
		mu 0 4 65 46 16 66
		f 4 -265 -273 263 -63
		mu 0 4 105 34 46 65
		f 4 6 -274 264 -6
		mu 0 4 149 35 34 105
		f 4 -267 -275 -7 -256
		mu 0 4 63 40 35 149
		f 4 115 212 -276 266
		mu 0 4 63 29 41 40
		f 4 -277 -213 205 -269
		mu 0 4 0 41 29 61
		f 4 116 225 -278 268
		mu 0 4 61 60 1 0
		f 4 -279 -226 222 114
		mu 0 4 456 1 60 464
		f 4 -281 208 252 251
		mu 0 4 33 32 200 222
		f 4 -292 -28 -227 -283
		mu 0 4 47 453 462 3
		f 4 4 -293 282 -29
		mu 0 4 9 48 47 3
		f 4 -294 -5 -208 -285
		mu 0 4 53 48 9 33
		f 4 284 -252 254 -295
		mu 0 4 53 33 222 54
		f 4 -287 -296 -255 -43
		mu 0 4 24 57 54 222
		f 4 -297 286 -71 72
		mu 0 4 58 57 24 31
		f 4 2 -298 -73 -42
		mu 0 4 37 68 58 31
		f 4 -290 -299 -3 -40
		mu 0 4 10 69 68 37
		f 4 -291 -300 289 -39
		mu 0 4 23 72 69 10
		f 4 -302 -301 44 17
		mu 0 4 422 79 116 395
		f 4 -305 300 302 34
		mu 0 4 67 116 79 20
		f 4 -306 180 304 139
		mu 0 4 4 7 116 67
		f 4 -309 -310 307 195
		mu 0 4 182 27 159 183
		f 4 -311 308 243 237
		mu 0 4 28 27 182 144
		f 4 -193 189 -314 -192
		mu 0 4 152 146 162 165
		f 4 -315 -190 -191 187
		mu 0 4 108 162 146 106
		f 4 -244 194 -319 234
		mu 0 4 144 182 166 124
		f 4 -320 -195 -196 193
		mu 0 4 167 166 182 183
		f 4 -120 323 342 -344
		mu 0 4 14 127 184 185
		f 4 117 324 349 -324
		mu 0 4 127 126 186 184
		f 4 -321 343 325 -345
		mu 0 4 187 14 185 188
		f 4 -322 344 327 -346
		mu 0 4 189 187 188 190
		f 4 197 326 348 -325
		mu 0 4 126 87 191 186
		f 4 163 395 385 -327
		mu 0 4 87 475 192 191
		f 4 -199 329 331 -331
		mu 0 4 132 15 129 128
		f 4 321 334 -336 -333
		mu 0 4 187 189 131 130
		f 4 322 396 -338 -335
		mu 0 4 189 193 134 131
		f 4 320 332 -341 -340
		mu 0 4 14 187 130 145
		f 4 -119 339 341 -330
		mu 0 4 15 14 145 129
		f 4 -386 398 -329 -347
		mu 0 4 191 192 194 190
		f 4 -349 346 -328 -348
		mu 0 4 186 191 190 188
		f 4 -350 347 -326 -343
		mu 0 4 184 186 188 185
		f 3 -308 350 -352
		mu 0 3 183 159 195
		f 4 -158 352 353 -351
		mu 0 4 159 160 196 195
		f 4 149 354 -356 -353
		mu 0 4 160 168 197 196
		f 4 259 356 -358 -355
		mu 0 4 168 151 198 197
		f 3 152 -359 -357
		mu 0 3 151 152 198
		f 3 -12 360 -360
		mu 0 3 136 452 199
		f 5 -362 12 54 368 -370
		mu 0 5 223 415 220 216 224
		f 4 27 363 -365 -363
		mu 0 4 205 202 225 230
		f 4 -54 365 367 -367
		mu 0 4 170 140 203 204
		f 4 -115 370 372 -372
		mu 0 4 174 173 206 207
		f 4 -122 373 375 -375
		mu 0 4 172 171 208 209
		f 4 -145 374 376 -371
		mu 0 4 173 172 209 206
		f 4 167 362 -378 -369
		mu 0 4 216 205 230 224
		f 4 -202 359 378 -366
		mu 0 4 140 136 199 203
		f 4 -243 366 379 -374
		mu 0 4 171 170 204 208
		f 4 -271 371 381 -381
		mu 0 4 175 174 207 210
		f 4 281 380 -383 -364
		mu 0 4 202 455 236 225
		f 4 -389 -161 162 161
		mu 0 4 468 482 133 477
		f 4 -390 384 -132 140
		mu 0 4 164 213 154 153
		f 4 -392 -159 245 160
		mu 0 4 483 465 137 133
		f 3 -393 -316 67
		mu 0 3 107 163 108
		f 4 -394 -165 -167 -385
		mu 0 4 213 85 84 154
		f 4 -395 -323 345 328
		mu 0 4 194 193 189 190
		f 4 -398 -162 330 338
		mu 0 4 135 211 132 128
		f 4 -403 -402 -401 -400
		mu 0 4 214 215 390 217
		f 4 -407 -406 -405 -404
		mu 0 4 218 219 400 399
		f 4 -411 -410 -409 -408
		mu 0 4 237 238 239 244
		f 4 414 -414 -413 411
		mu 0 4 226 472 471 229
		f 4 403 -418 -417 -416
		mu 0 4 218 399 398 231
		f 4 -422 -421 -420 -419
		mu 0 4 232 233 234 235
		f 4 -426 424 -424 -423
		mu 0 4 245 246 247 250
		f 4 429 -429 -428 -427
		mu 0 4 240 241 242 243
		f 4 -434 -433 -432 -431
		mu 0 4 252 253 256 260
		f 4 -438 -437 -436 -435
		mu 0 4 248 249 389 251
		f 4 -441 409 -440 -439
		mu 0 4 262 239 238 263
		f 4 -445 -444 -443 -442
		mu 0 4 254 255 392 257
		f 4 -448 418 -447 445
		mu 0 4 258 232 235 259
		f 4 416 -451 449 -449
		mu 0 4 231 398 397 261
		f 4 -454 422 -453 451
		mu 0 4 264 245 250 265
		f 4 405 -456 -425 -455
		mu 0 4 266 267 247 246
		f 4 -459 401 -458 -457
		mu 0 4 268 269 270 271
		f 4 -462 -461 -460 443
		mu 0 4 272 282 283 284
		f 4 -465 -464 -463 436
		mu 0 4 285 292 293 294
		f 4 467 450 466 -466
		mu 0 4 295 296 297 298
		f 4 -467 417 469 -469
		mu 0 4 298 297 299 304
		f 4 -474 -473 471 -471
		mu 0 4 273 274 275 276
		f 4 476 -476 474 -430
		mu 0 4 240 277 278 241
		f 4 479 -479 477 446
		mu 0 4 235 279 280 259
		f 4 415 -483 -482 480
		mu 0 4 218 231 279 281
		f 4 404 454 -484 -470
		mu 0 4 299 266 246 304
		f 4 486 485 -95 -485
		mu 0 4 305 306 88 75
		f 4 489 -82 -489 487
		mu 0 4 307 93 92 308
		f 4 -493 -492 490 -138
		mu 0 4 76 286 287 77
		f 4 -10 -491 494 -494
		mu 0 4 80 77 287 288
		f 4 -11 493 496 495
		mu 0 4 82 80 288 289
		f 4 -500 498 -387 -498
		mu 0 4 290 474 86 85
		f 4 -503 -233 -502 500
		mu 0 4 310 97 96 311
		f 4 -506 -211 -505 503
		mu 0 4 312 101 100 346
		f 4 -509 -16 -508 506
		mu 0 4 357 110 109 359
		f 4 511 -105 510 509
		mu 0 4 360 114 113 361
		f 4 464 513 -468 -513
		mu 0 4 292 285 296 295
		f 4 -450 -514 437 -515
		mu 0 4 261 397 249 248
		f 4 -478 -518 516 515
		mu 0 4 259 280 300 301
		f 4 -520 -446 -516 518
		mu 0 4 302 258 259 301
		f 4 -496 521 520 383
		mu 0 4 82 289 303 107
		f 4 -525 -113 523 522
		mu 0 4 362 119 118 363
		f 4 -527 -452 -526 432
		mu 0 4 253 264 265 256
		f 4 530 -530 -529 527
		mu 0 4 378 308 379 380
		f 3 758 -488 -531
		mu 0 3 378 307 308
		f 4 80 -490 -533 533
		mu 0 4 161 93 307 385
		f 4 528 -537 -536 534
		mu 0 4 380 379 388 391
		f 4 535 -540 -539 537
		mu 0 4 391 388 393 357
		f 4 538 -541 -89 508
		mu 0 4 357 393 179 110
		f 4 542 484 -92 -542
		mu 0 4 379 305 75 180
		f 4 93 -486 -544 488
		mu 0 4 92 88 306 308
		f 4 543 -487 -543 529
		mu 0 4 308 306 305 379
		f 4 545 -510 -545 536
		mu 0 4 379 360 361 388
		f 4 544 -511 -102 546
		mu 0 4 388 361 113 181
		f 4 103 -512 -546 541
		mu 0 4 180 114 360 379
		f 4 548 -523 -548 539
		mu 0 4 388 362 363 393
		f 4 547 -524 -110 540
		mu 0 4 393 363 118 179
		f 4 111 524 -549 -547
		mu 0 4 181 119 362 388
		f 4 552 551 550 -550
		mu 0 4 313 470 473 316
		f 4 499 -555 -551 553
		mu 0 4 474 290 316 473
		f 4 558 -558 -557 555
		mu 0 4 317 318 319 320
		f 4 561 560 -560 -415
		mu 0 4 226 321 322 472
		f 4 563 -388 -563 -559
		mu 0 4 317 135 134 318
		f 4 -567 -130 -566 -565
		mu 0 4 451 139 138 324
		f 4 564 -570 568 -568
		mu 0 4 451 324 325 444
		f 4 -573 -572 -571 473
		mu 0 4 273 327 328 274
		f 4 575 574 570 -574
		mu 0 4 329 242 274 328
		f 3 577 556 -577
		mu 0 3 330 320 319
		f 4 -581 -519 -580 578
		mu 0 4 331 302 301 332
		f 4 -585 -584 -583 -582
		mu 0 4 333 334 300 335
		f 4 -588 586 584 -586
		mu 0 4 336 332 334 333
		f 4 587 589 -589 -579
		mu 0 4 332 336 337 331
		f 4 593 592 -592 -591
		mu 0 4 338 339 340 341
		f 4 591 596 -596 -595
		mu 0 4 341 340 342 343
		f 4 -600 -599 426 -598
		mu 0 4 344 345 240 243
		f 4 -602 -501 -601 408
		mu 0 4 239 310 311 244
		f 4 -605 -504 -604 602
		mu 0 4 394 312 346 262
		f 4 -607 -507 -606 431
		mu 0 4 256 357 359 260
		f 4 -608 -538 606 525
		mu 0 4 265 391 357 256
		f 4 608 -535 607 452
		mu 0 4 250 380 391 265
		f 4 609 -528 -609 423
		mu 0 4 247 378 380 250
		f 4 610 -532 -610 455
		mu 0 4 267 385 378 247
		f 4 612 420 611 491
		mu 0 4 286 234 233 287
		f 4 -495 -612 421 -614
		mu 0 4 288 287 233 232
		f 4 -497 613 447 614
		mu 0 4 289 288 232 258
		f 4 -522 -615 519 615
		mu 0 4 303 289 258 302
		f 5 619 -391 -619 -618 616
		mu 0 5 338 164 163 303 347
		f 4 621 -594 -617 -621
		mu 0 4 348 339 338 347
		f 4 595 -625 -624 622
		mu 0 4 343 342 349 350
		f 4 -517 583 -587 579
		mu 0 4 301 300 334 332
		f 4 472 -575 428 625
		mu 0 4 275 274 242 241
		f 4 -628 402 -627 442
		mu 0 4 392 215 214 257
		f 4 459 -629 457 627
		mu 0 4 284 283 271 270
		f 4 440 603 -630 601
		mu 0 4 239 262 346 310
		f 4 629 504 -146 502
		mu 0 4 310 346 100 97
		f 4 -632 -477 598 630
		mu 0 4 351 277 240 345
		f 4 -636 634 -634 -633
		mu 0 4 352 327 446 445
		f 4 -638 554 -637 594
		mu 0 4 343 316 290 341
		f 4 -641 470 639 -639
		mu 0 4 447 273 276 442
		f 4 -644 -643 -642 400
		mu 0 4 390 386 443 217
		f 4 458 -646 644 643
		mu 0 4 269 268 441 449
		f 4 -649 407 -648 646
		mu 0 4 440 237 244 448
		f 4 -651 649 647 600
		mu 0 4 311 405 448 244
		f 4 -15 651 650 501
		mu 0 4 96 221 405 311
		f 4 412 -654 -553 652
		mu 0 4 229 471 470 313
		f 4 640 -655 -635 572
		mu 0 4 273 447 446 327
		f 4 -657 -656 571 635
		mu 0 4 352 229 328 327
		f 4 -653 657 573 655
		mu 0 4 229 313 329 328
		f 4 -660 -412 656 658
		mu 0 4 325 226 229 352
		f 4 660 -562 659 569
		mu 0 4 324 321 226 325
		f 4 549 637 -623 -662
		mu 0 4 313 316 343 350
		f 4 -569 -659 632 -663
		mu 0 4 444 325 352 445
		f 4 507 -247 505 663
		mu 0 4 359 109 101 312
		f 4 605 -664 604 664
		mu 0 4 260 359 312 394
		f 4 430 -665 666 -666
		mu 0 4 252 260 394 407
		f 4 461 668 462 -668
		mu 0 4 282 272 294 293
		f 4 435 -669 444 -670
		mu 0 4 251 389 255 254
		f 4 671 581 -671 475
		mu 0 4 277 333 335 278
		f 4 585 -672 631 672
		mu 0 4 336 333 277 351
		f 4 481 -480 419 673
		mu 0 4 281 279 235 234
		f 4 478 482 448 674
		mu 0 4 280 279 231 261
		f 4 517 -675 514 675
		mu 0 4 300 280 261 248
		f 4 582 -676 434 -677
		mu 0 4 335 300 248 251
		f 4 670 676 669 677
		mu 0 4 278 335 251 254
		f 4 -678 441 -679 -475
		mu 0 4 278 254 257 241
		f 4 679 -626 678 626
		mu 0 4 214 275 241 257
		f 4 -680 399 -681 -472
		mu 0 4 275 214 217 276
		f 4 -682 -640 680 641
		mu 0 4 443 442 276 217
		f 4 -683 -667 -603 438
		mu 0 4 263 407 394 262
		f 4 684 648 683 645
		mu 0 4 268 237 440 441
		f 4 410 -685 456 -686
		mu 0 4 238 237 268 271
		f 4 686 439 685 628
		mu 0 4 283 263 238 271
		f 4 460 -688 682 -687
		mu 0 4 283 282 407 263
		f 4 665 687 667 688
		mu 0 4 252 407 282 293
		f 4 -690 433 -689 463
		mu 0 4 292 253 252 293
		f 4 526 689 512 -691
		mu 0 4 264 253 292 295
		f 4 453 690 465 691
		mu 0 4 245 264 295 298
		f 4 425 -692 468 483
		mu 0 4 246 245 298 304
		f 4 -18 -534 692 492
		mu 0 4 76 437 309 286
		f 4 -674 -613 -693 693
		mu 0 4 281 234 286 309
		f 4 -481 -694 -611 406
		mu 0 4 218 281 309 219
		f 4 -697 -696 597 694
		mu 0 4 364 365 344 243
		f 4 -576 -698 -695 427
		mu 0 4 242 329 364 243
		f 4 699 620 -699 588
		mu 0 4 337 348 347 331
		f 4 -616 580 698 617
		mu 0 4 303 302 331 347
		f 4 -658 661 -701 697
		mu 0 4 329 313 350 364
		f 4 -702 696 700 623
		mu 0 4 349 365 364 350
		f 4 704 -704 -703 653
		mu 0 4 228 366 367 314
		f 4 702 -707 -706 -552
		mu 0 4 314 367 368 315
		f 4 709 -709 -705 707
		mu 0 4 369 370 366 228
		f 4 712 -712 -710 710
		mu 0 4 371 372 370 369
		f 4 705 -715 -714 -554
		mu 0 4 315 368 373 291
		f 4 713 -716 -396 -499
		mu 0 4 291 373 192 475
		f 4 717 -556 -717 559
		mu 0 4 467 317 320 227
		f 4 719 557 -719 -711
		mu 0 4 369 319 318 371
		f 4 718 562 -397 -721
		mu 0 4 371 318 134 193
		f 4 721 576 -720 -708
		mu 0 4 228 330 319 369
		f 4 716 -578 -722 413
		mu 0 4 227 320 330 228
		f 4 723 722 -399 715
		mu 0 4 373 372 194 192
		f 4 724 711 -724 714
		mu 0 4 368 370 372 373
		f 4 703 708 -725 706
		mu 0 4 367 366 370 368
		f 3 -727 -726 695
		mu 0 3 365 374 344
		f 4 725 -729 -728 599
		mu 0 4 344 374 375 345
		f 4 727 730 -730 -631
		mu 0 4 345 375 376 351
		f 4 729 732 -732 -673
		mu 0 4 351 376 377 336
		f 3 731 -734 -590
		mu 0 3 336 377 337
		f 3 734 -361 566
		mu 0 3 323 199 452
		f 4 737 736 -736 -684
		mu 0 4 402 408 409 396
		f 4 739 -368 -739 662
		mu 0 4 354 204 203 326
		f 5 741 -741 -650 -652 361
		mu 0 5 416 413 404 405 221
		f 4 744 -744 -743 681
		mu 0 4 358 381 382 356
		f 4 747 -747 -746 654
		mu 0 4 355 383 384 353
		f 4 742 -749 -748 638
		mu 0 4 356 382 383 355
		f 4 740 749 -738 -647
		mu 0 4 404 413 408 402
		f 4 738 -379 -735 567
		mu 0 4 326 203 199 323
		f 4 745 -751 -740 633
		mu 0 4 353 384 204 354
		f 4 752 -752 -745 642
		mu 0 4 450 387 381 358
		f 4 735 753 -753 -645
		mu 0 4 396 409 414 401
		f 4 -756 -561 754 388
		mu 0 4 469 322 321 212
		f 4 -620 590 -757 389
		mu 0 4 164 338 341 213
		f 4 -755 -661 565 391
		mu 0 4 484 321 324 138
		f 3 -521 618 392
		mu 0 3 107 303 163
		f 4 756 636 497 393
		mu 0 4 213 341 290 85
		f 4 -723 -713 720 394
		mu 0 4 194 372 371 193
		f 4 -564 -718 755 397
		mu 0 4 135 317 467 211
		f 3 -758 75 79
		mu 0 3 90 120 91
		f 3 532 -759 531
		mu 0 3 385 307 378;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "ik_Foot_Left";
	rename -uid "11A01DD7-435B-21BD-AA9F-6C97998D578F";
	setAttr ".rp" -type "double3" 3.5000022270001798 0.47835884795530892 0.10212369007394778 ;
	setAttr ".sp" -type "double3" 3.5000022270001798 0.47835884795530892 0.10212369007394778 ;
createNode nurbsCurve -n "curveShape1" -p "ik_Foot_Left";
	rename -uid "9DC82D7F-411A-F8B1-213A-90842ED168CB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		5.5000022270001798 2.4783588479553087 2.1021236900739479
		5.5000022270001798 2.4783588479553087 -1.8978763099260523
		1.5000022270001798 2.4783588479553087 -1.8978763099260523
		1.5000022270001798 -1.5216411520446911 -1.8978763099260523
		5.5000022270001798 -1.5216411520446911 -1.8978763099260523
		5.5000022270001798 2.4783588479553087 -1.8978763099260523
		1.5000022270001798 2.4783588479553087 -1.8978763099260523
		1.5000022270001798 2.4783588479553087 2.1021236900739479
		5.5000022270001798 2.4783588479553087 2.1021236900739479
		5.5000022270001798 -1.5216411520446911 2.1021236900739479
		5.5000022270001798 -1.5216411520446911 -1.8978763099260523
		1.5000022270001798 -1.5216411520446911 -1.8978763099260523
		1.5000022270001798 -1.5216411520446911 2.1021236900739479
		5.5000022270001798 -1.5216411520446911 2.1021236900739479
		1.5000022270001798 -1.5216411520446911 2.1021236900739479
		1.5000022270001798 2.4783588479553087 2.1021236900739479
		;
createNode transform -n "fk_Foot_Left_grp";
	rename -uid "6493B0BC-4739-1690-8708-1CB36D287BA9";
	setAttr ".t" -type "double3" 3.5000022270001798 0.47835884795530892 0.10212369007394778 ;
	setAttr ".r" -type "double3" -90.000102593710764 -59.070724935210926 -89.999911993428242 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.3877787807814457e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.3877787807814457e-16 0 ;
createNode transform -n "fk_Foot_Left" -p "fk_Foot_Left_grp";
	rename -uid "5EBB87BA-40F6-E28C-B608-7EB8ADE3D999";
	setAttr ".s" -type "double3" 1.25 1.25 1.25 ;
createNode nurbsCurve -n "fk_Foot_LeftShape" -p "fk_Foot_Left";
	rename -uid "F50A806C-4D0F-989A-43E2-D698E0708100";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Foot_Left_gimbal" -p "fk_Foot_Left";
	rename -uid "52621739-43EF-7079-2EAD-EBAA72A5D8A6";
	setAttr ".rp" -type "double3" 0 4.163336342344337e-17 0 ;
	setAttr ".sp" -type "double3" 0 4.163336342344337e-17 0 ;
createNode nurbsCurve -n "fk_Foot_Left_gimbalShape" -p "fk_Foot_Left_gimbal";
	rename -uid "3C7B4B80-4EC4-9B29-5E04-B5A18CD9CDDA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4394712022965417e-17 0.23508348746736743 -0.23508348746736735
		1.2465188054052768e-33 0.33245825626631631 -2.0357196969332738e-17
		-1.4394712022965417e-17 0.23508348746736732 0.23508348746736735
		-2.0357196969332747e-17 4.4990270328203403e-17 0.33245825626631648
		-1.4394712022965417e-17 -0.23508348746736732 0.23508348746736735
		-2.0391943433425769e-33 -0.33245825626631653 3.3302570908809677e-17
		1.4394712022965417e-17 -0.23508348746736726 -0.23508348746736735
		2.0357196969332747e-17 -1.7581639407769856e-17 -0.33245825626631648
		1.4394712022965417e-17 0.23508348746736743 -0.23508348746736735
		1.2465188054052768e-33 0.33245825626631631 -2.0357196969332738e-17
		-1.4394712022965417e-17 0.23508348746736732 0.23508348746736735
		;
createNode transform -n "ik_Hand_Right";
	rename -uid "1D5792F2-4FB4-6C48-C064-249C4757835C";
	addAttr -ci true -sn "default" -ln "default" -dt "string";
	setAttr ".rp" -type "double3" -8.6105497160678102 8.2039372623131293 0.043644276556082939 ;
	setAttr ".sp" -type "double3" -8.6105497160678102 8.2039372623131293 0.043644276556082939 ;
	setAttr ".default" -type "string" "-8.61054971606781 8.20393726231313 0.04364427655608294";
createNode nurbsCurve -n "curveShape2" -p "ik_Hand_Right";
	rename -uid "EF0C542A-4787-F4E4-2DE5-EC89B6B5F6A8";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-9.2067626388664294 6.9453905903423205 1.073493986542511
		-9.3029002137297372 6.9453905903423205 -0.92419406886038447
		-7.4015266766178893 7.5589099183414161 -1.0156965635931459
		-8.0143367932691909 9.462483934283938 -0.98620543343034517
		-9.9157103303810388 8.8489646062848433 -0.89470293869758377
		-9.3029002137297372 6.9453905903423205 -0.92419406886038447
		-7.4015266766178893 7.5589099183414161 -1.0156965635931459
		-7.3053891017545807 7.5589099183414152 0.98199149180974965
		-9.2067626388664294 6.9453905903423205 1.073493986542511
		-9.819572755517731 8.8489646062848415 1.1029851167053117
		-9.9157103303810388 8.8489646062848433 -0.89470293869758377
		-8.0143367932691909 9.462483934283938 -0.98620543343034517
		-7.9181992184058823 9.462483934283938 1.0114826219725503
		-9.819572755517731 8.8489646062848415 1.1029851167053117
		-7.9181992184058823 9.462483934283938 1.0114826219725503
		-7.3053891017545807 7.5589099183414152 0.98199149180974965
		;
createNode transform -n "fk_Hand_Right_grp";
	rename -uid "DD4DF81D-4168-CE96-2483-9D8F19BC07AD";
	setAttr ".t" -type "double3" -8.6105497160678102 8.2039372623131293 0.043644276556082939 ;
	setAttr ".r" -type "double3" -0.84577497133413571 -2.6222687366235982 -162.11658100959392 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.3877787807814457e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.3877787807814457e-16 0 ;
createNode transform -n "fk_Hand_Right" -p "fk_Hand_Right_grp";
	rename -uid "C2BFD926-49E6-3E6C-E41C-F4ADF7142425";
	setAttr ".s" -type "double3" 1.2 1.2 1.2 ;
createNode nurbsCurve -n "fk_Hand_RightShape" -p "fk_Hand_Right";
	rename -uid "5A6CB3FD-4CC4-3EDA-BE96-DEB3B3B661DB";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Hand_Right_gimbal" -p "fk_Hand_Right";
	rename -uid "C075860E-4D17-A9BF-6365-A1B8E8F23485";
	setAttr ".rp" -type "double3" 2.2204460492503136e-16 4.4408920985006271e-16 -2.775557561562892e-17 ;
	setAttr ".sp" -type "double3" 2.2204460492503136e-16 4.4408920985006271e-16 -2.775557561562892e-17 ;
createNode nurbsCurve -n "fk_Hand_Right_gimbalShape" -p "fk_Hand_Right_gimbal";
	rename -uid "BE5B9FC9-4B5E-28C4-B99E-E0B8A425DDB2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4394712022965417e-17 0.23508348746736785 -0.23508348746736735
		1.2465188054052768e-33 0.33245825626631675 -3.4234984777147195e-17
		-1.4394712022965417e-17 0.23508348746736774 0.23508348746736735
		-2.0357196969332747e-17 4.6132390456263713e-16 0.33245825626631648
		-1.4394712022965417e-17 -0.2350834874673669 0.23508348746736735
		-2.0391943433425769e-33 -0.33245825626631609 1.942478310099522e-17
		1.4394712022965417e-17 -0.23508348746736685 -0.23508348746736735
		2.0357196969332747e-17 3.9875199482666385e-16 -0.33245825626631648
		1.4394712022965417e-17 0.23508348746736785 -0.23508348746736735
		1.2465188054052768e-33 0.33245825626631675 -3.4234984777147195e-17
		-1.4394712022965417e-17 0.23508348746736774 0.23508348746736735
		;
createNode transform -n "fk_Toe_Right_grp";
	rename -uid "49C2F170-4803-EF23-1144-49957DE41696";
	setAttr ".t" -type "double3" -3.4999947045584516 0.00035530823193347105 0.89988449240854951 ;
	setAttr ".r" -type "double3" -89.999999951903618 87.118722464758463 89.999998702323794 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -8.3266726846886741e-17 0 ;
	setAttr ".sp" -type "double3" 0 -8.3266726846886741e-17 0 ;
createNode transform -n "fk_Toe_Right" -p "fk_Toe_Right_grp";
	rename -uid "0AF078E7-4E20-5D6B-C320-FAAA0EFB3A89";
createNode nurbsCurve -n "fk_Toe_RightShape" -p "fk_Toe_Right";
	rename -uid "682FF633-4D73-1280-FC4C-2E9ABC603EC0";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Calf_Left_grp";
	rename -uid "80F3C029-48EC-14A3-8BA3-A29C6B88BAF1";
	setAttr ".t" -type "double3" 3.5000004783906369 1.6624961741273339 0.40132659829376438 ;
	setAttr ".r" -type "double3" 90.000226745236347 14.18044888519956 -89.999915391614934 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.6653345369377348e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.6653345369377348e-16 0 ;
createNode transform -n "fk_Calf_Left" -p "fk_Calf_Left_grp";
	rename -uid "E1E1B889-4DC6-50DF-9D88-6DBCD695E0B2";
	setAttr ".s" -type "double3" 1.25 1.25 1.25 ;
createNode nurbsCurve -n "fk_Calf_LeftShape" -p "fk_Calf_Left";
	rename -uid "270689CE-4D7F-48A0-55F9-04A219F2D836";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Calf_Left_gimbal" -p "fk_Calf_Left";
	rename -uid "EC72808E-4327-1BA0-9DB3-96A83D7FB6CF";
	setAttr ".rp" -type "double3" 0 -4.5102810375396997e-17 0 ;
	setAttr ".sp" -type "double3" 0 -4.5102810375396997e-17 0 ;
createNode nurbsCurve -n "fk_Calf_Left_gimbalShape" -p "fk_Calf_Left_gimbal";
	rename -uid "06120836-477B-EAA4-DE87-78BFAF8E5CD7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9192949363953891e-17 0.31344464995648985 -0.3134446499564898
		1.6620250738737024e-33 0.44327767502175508 -2.7142929292443649e-17
		-1.9192949363953891e-17 0.3134446499564898 0.3134446499564898
		-2.7142929292443659e-17 5.6323581903312531e-18 0.4432776750217553
		-1.9192949363953891e-17 -0.3134446499564898 0.3134446499564898
		-2.7189257911234358e-33 -0.44327767502175536 4.44034278784129e-17
		1.9192949363953891e-17 -0.3134446499564898 -0.3134446499564898
		2.7142929292443659e-17 -7.7796854790966431e-17 -0.4432776750217553
		1.9192949363953891e-17 0.31344464995648985 -0.3134446499564898
		1.6620250738737024e-33 0.44327767502175508 -2.7142929292443649e-17
		-1.9192949363953891e-17 0.3134446499564898 0.3134446499564898
		;
createNode transform -n "pv_Knee_Left";
	rename -uid "5B8B171C-4186-861D-C8D9-F38599E279B8";
	setAttr ".t" -type "double3" 3.5000004783906369 1.6624961741273339 0.40132659829376438 ;
	setAttr ".r" -type "double3" 90.000226745236347 14.180448885199553 -89.999915391614948 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode locator -n "pv_Knee_LeftShape" -p "pv_Knee_Left";
	rename -uid "D263BAED-4257-0E3B-0C03-C6A933DDEACA";
	setAttr -k off ".v";
createNode transform -n "fk_Thigh_Left_grp";
	rename -uid "CFA0A8F2-48C1-DE76-52A7-0CA45A0C0336";
	setAttr ".t" -type "double3" 3.4999999999999996 3.7716107743836833 0.51308489454966832 ;
	setAttr ".r" -type "double3" 90.000215977311498 3.0331665384345392 -89.999987004136941 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.6653345369377348e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.6653345369377348e-16 0 ;
createNode transform -n "fk_Thigh_Left" -p "fk_Thigh_Left_grp";
	rename -uid "9A5B29CD-4601-D2FD-09F0-4288E415A227";
	setAttr ".s" -type "double3" 1.5 1.5 1.5 ;
createNode nurbsCurve -n "fk_Thigh_LeftShape" -p "fk_Thigh_Left";
	rename -uid "0B5E2CCC-47C6-72C5-BFBC-6885160A4688";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Thigh_Left_gimbal" -p "fk_Thigh_Left";
	rename -uid "512EC35E-4779-25C3-1779-109AFF4C95EF";
	setAttr ".rp" -type "double3" 0 4.1633363423443383e-17 -3.3306690738754706e-16 ;
	setAttr ".sp" -type "double3" 0 4.1633363423443383e-17 -3.3306690738754706e-16 ;
createNode nurbsCurve -n "fk_Thigh_Left_gimbalShape" -p "fk_Thigh_Left_gimbal";
	rename -uid "282A87CF-492F-FFFE-4524-F6A7B75A67EE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9192949363953891e-17 0.31344464995648985 -0.31344464995649002
		1.6620250738737024e-33 0.44327767502175508 -2.4918753421747494e-16
		-1.9192949363953891e-17 0.3134446499564898 0.31344464995648957
		-2.7142929292443659e-17 3.6857380757913781e-17 0.44327767502175508
		-1.9192949363953891e-17 -0.3134446499564898 0.31344464995648957
		-2.7189257911234358e-33 -0.44327767502175536 -1.7764117704661841e-16
		1.9192949363953891e-17 -0.3134446499564898 -0.31344464995649002
		2.7142929292443659e-17 -4.6571832223383903e-17 -0.44327767502175552
		1.9192949363953891e-17 0.31344464995648985 -0.31344464995649002
		1.6620250738737024e-33 0.44327767502175508 -2.4918753421747494e-16
		-1.9192949363953891e-17 0.3134446499564898 0.31344464995648957
		;
createNode transform -n "fk_Calf_Right_grp";
	rename -uid "9517054E-4730-1753-888A-839D8854D74C";
	setAttr ".t" -type "double3" -3.4999992979332966 1.6624961684123445 0.4013267061489596 ;
	setAttr ".r" -type "double3" 90.000334174362209 14.180445954749345 -89.999866440811815 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.6653345369377348e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.6653345369377348e-16 0 ;
createNode transform -n "fk_Calf_Right" -p "fk_Calf_Right_grp";
	rename -uid "C96E4F5B-4017-BA52-DA8B-76A1AEA5BF81";
	setAttr ".s" -type "double3" 1.25 1.25 1.25 ;
createNode nurbsCurve -n "fk_Calf_RightShape" -p "fk_Calf_Right";
	rename -uid "D751A4A0-43BD-6783-F475-2797E2708077";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Calf_Right_gimbal" -p "fk_Calf_Right";
	rename -uid "D1B77E78-48D1-2F52-27DF-B4A6C9D729E6";
	setAttr ".rp" -type "double3" 0 -3.9898639947466569e-17 0 ;
	setAttr ".sp" -type "double3" 0 -3.9898639947466569e-17 0 ;
createNode nurbsCurve -n "fk_Calf_Right_gimbalShape" -p "fk_Calf_Right_gimbal";
	rename -uid "FE55843E-4375-CF4F-5182-0B873BDDAEF0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.9192949363953891e-17 0.31344464995648985 -0.3134446499564898
		1.6620250738737024e-33 0.44327767502175508 -2.7142929292443649e-17
		-1.9192949363953891e-17 0.3134446499564898 0.3134446499564898
		-2.7142929292443659e-17 -3.0412591895527824e-18 0.4432776750217553
		-1.9192949363953891e-17 -0.3134446499564898 0.3134446499564898
		-2.7189257911234358e-33 -0.44327767502175536 4.44034278784129e-17
		1.9192949363953891e-17 -0.3134446499564898 -0.3134446499564898
		2.7142929292443659e-17 -8.6470472170850466e-17 -0.4432776750217553
		1.9192949363953891e-17 0.31344464995648985 -0.3134446499564898
		1.6620250738737024e-33 0.44327767502175508 -2.7142929292443649e-17
		-1.9192949363953891e-17 0.3134446499564898 0.3134446499564898
		;
createNode transform -n "pv_Knee_Right";
	rename -uid "33777E9D-4A28-38B7-33E3-999851B3AAB5";
	setAttr ".t" -type "double3" -3.4999992979332966 1.6624961684123445 0.4013267061489596 ;
	setAttr ".r" -type "double3" 90.000334174362223 14.180445954749345 -89.999866440811815 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode locator -n "pv_Knee_RightShape" -p "pv_Knee_Right";
	rename -uid "90EEB40C-4F27-7C8F-2B9B-B6AB1EBFEB59";
	setAttr -k off ".v";
createNode transform -n "fk_Neck_grp";
	rename -uid "A625D238-4738-28F9-42D9-F187B32B3647";
	setAttr ".t" -type "double3" -2.8049060298758128e-09 10.579692304310031 0.23999384453504075 ;
	setAttr ".r" -type "double3" -90.000006632766286 4.5132019421591059 89.999999859259901 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.3877787807814457e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.3877787807814457e-16 0 ;
createNode transform -n "fk_Neck" -p "fk_Neck_grp";
	rename -uid "0D2A6818-40DC-7760-8EC0-C2B4A5C822F0";
	setAttr ".s" -type "double3" 2.75 2.75 2.75 ;
createNode nurbsCurve -n "fk_NeckShape" -p "fk_Neck";
	rename -uid "17846BF4-4C56-5EAA-5FF8-1485484D8B63";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Hip_grp";
	rename -uid "CA337F7A-46D4-3061-B3CB-958307D81F2B";
	setAttr ".t" -type "double3" -7.0476868156526496e-16 4.4247303365243873 0.51308489454966699 ;
	setAttr ".r" -type "double3" -90.000000000000938 3.8660624896492894 89.999999999999929 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -4.4408920985006262e-16 0 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-16 0 ;
createNode transform -n "fk_Hip" -p "fk_Hip_grp";
	rename -uid "98285988-48FA-B648-ED0A-D4B5255BD1A2";
	setAttr ".s" -type "double3" 1.3343910188246904 1.3343910188246904 1.3343910188246904 ;
createNode nurbsCurve -n "fk_HipShape" -p "fk_Hip";
	rename -uid "B85B8447-4FF6-0690-E9EE-8FA90C96A9B9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Thigh_Right_grp";
	rename -uid "208D3BDD-435B-0A15-7764-DCB5BCE473D5";
	setAttr ".t" -type "double3" -3.5000000000000004 3.7716107743836726 0.51308489454966444 ;
	setAttr ".r" -type "double3" 90.000316959679409 3.0331636084621061 -89.999980927798376 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.6653345369377348e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.6653345369377348e-16 0 ;
createNode transform -n "fk_Thigh_Right" -p "fk_Thigh_Right_grp";
	rename -uid "BCDF6948-4F9F-3254-0C0C-17A591BB3BAE";
	setAttr ".s" -type "double3" 1.5 1.5 1.5 ;
createNode nurbsCurve -n "fk_Thigh_RightShape" -p "fk_Thigh_Right";
	rename -uid "97ABCD9D-4827-1D57-B030-D79839664E78";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Thigh_Right_gimbal" -p "fk_Thigh_Right";
	rename -uid "250DD38F-46C0-82B7-7730-D8B55149E5C7";
	setAttr ".rp" -type "double3" 1.1102230246251565e-16 1.3877787807814457e-17 0 ;
	setAttr ".sp" -type "double3" 1.1102230246251565e-16 1.3877787807814457e-17 0 ;
createNode nurbsCurve -n "fk_Thigh_Right_gimbalShape" -p "fk_Thigh_Right_gimbal";
	rename -uid "E53573DB-485E-B2D5-6E6B-E18EF2105A5B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.3021525182646954e-16 0.31344464995648985 -0.3134446499564898
		1.1102230246251565e-16 0.44327767502175508 -2.7142929292443649e-17
		9.1829353098561769e-17 0.3134446499564898 0.3134446499564898
		8.3879373170071995e-17 2.2979592950099324e-17 0.4432776750217553
		9.1829353098561769e-17 -0.3134446499564898 0.3134446499564898
		1.1102230246251565e-16 -0.44327767502175536 4.44034278784129e-17
		1.3021525182646954e-16 -0.3134446499564898 -0.3134446499564898
		1.3816523175495931e-16 -6.044962003119836e-17 -0.4432776750217553
		1.3021525182646954e-16 0.31344464995648985 -0.3134446499564898
		1.1102230246251565e-16 0.44327767502175508 -2.7142929292443649e-17
		9.1829353098561769e-17 0.3134446499564898 0.3134446499564898
		;
createNode transform -n "fk_Spine1_grp";
	rename -uid "FF0B9814-416E-3C33-4406-7997ECD2821B";
	setAttr ".t" -type "double3" 5.0187583378153288e-16 5.5247303365243869 0.4387489730007243 ;
	setAttr ".r" -type "double3" -90.000000000000938 6.9535812880495289 89.999999999999886 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -2.7755575615628914e-16 0 ;
	setAttr ".sp" -type "double3" 0 -2.7755575615628914e-16 0 ;
createNode transform -n "fk_Spine1" -p "fk_Spine1_grp";
	rename -uid "1363155C-4AE2-03CD-F2F4-418B2933080E";
	setAttr ".s" -type "double3" 1.8708358379588821 1.8708358379588821 1.8708358379588821 ;
createNode nurbsCurve -n "fk_Spine1Shape" -p "fk_Spine1";
	rename -uid "E3C025D6-49C9-CFFD-F845-469A5F93F59A";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "ik_Foot_Right";
	rename -uid "A68C9FF2-46A5-4903-51A5-0691B6187A6A";
	setAttr ".rp" -type "double3" -3.4999965376528115 0.47835882693921339 0.10212385849303629 ;
	setAttr ".sp" -type "double3" -3.4999965376528115 0.47835882693921339 0.10212385849303629 ;
createNode nurbsCurve -n "curveShape3" -p "ik_Foot_Right";
	rename -uid "AE810D95-4501-3A50-CC44-CA99F6216749";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		-1.4999965376528115 2.4783588269392132 2.1021238584930364
		-1.4999965376528115 2.4783588269392132 -1.8978761415069636
		-5.4999965376528115 2.4783588269392132 -1.8978761415069636
		-5.4999965376528115 -1.5216411730607866 -1.8978761415069636
		-1.4999965376528115 -1.5216411730607866 -1.8978761415069636
		-1.4999965376528115 2.4783588269392132 -1.8978761415069636
		-5.4999965376528115 2.4783588269392132 -1.8978761415069636
		-5.4999965376528115 2.4783588269392132 2.1021238584930364
		-1.4999965376528115 2.4783588269392132 2.1021238584930364
		-1.4999965376528115 -1.5216411730607866 2.1021238584930364
		-1.4999965376528115 -1.5216411730607866 -1.8978761415069636
		-5.4999965376528115 -1.5216411730607866 -1.8978761415069636
		-5.4999965376528115 -1.5216411730607866 2.1021238584930364
		-1.4999965376528115 -1.5216411730607866 2.1021238584930364
		-5.4999965376528115 -1.5216411730607866 2.1021238584930364
		-5.4999965376528115 2.4783588269392132 2.1021238584930364
		;
createNode transform -n "fk_Foot_Right_grp";
	rename -uid "FF25A709-4E97-425E-213F-9A8FE0557B65";
	setAttr ".t" -type "double3" -3.4999965376528115 0.47835882693921339 0.10212385849303629 ;
	setAttr ".r" -type "double3" -90.000256146200442 -59.070733138664551 -89.999780276575081 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.3877787807814457e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.3877787807814457e-16 0 ;
createNode transform -n "fk_Foot_Right" -p "fk_Foot_Right_grp";
	rename -uid "F8079AD2-4D51-2131-586B-3B8DB75BE5EB";
	setAttr ".s" -type "double3" 1.25 1.25 1.25 ;
createNode nurbsCurve -n "fk_Foot_RightShape" -p "fk_Foot_Right";
	rename -uid "1F8286BB-4731-939E-C723-D4947A3B5017";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Foot_Right_gimbal" -p "fk_Foot_Right";
	rename -uid "2C72B067-4CE6-ADE5-01C2-23987D797D81";
	setAttr ".rp" -type "double3" 0 -2.7755575615628914e-17 -2.2204460492503131e-16 ;
	setAttr ".sp" -type "double3" 0 -2.7755575615628914e-17 -2.2204460492503131e-16 ;
createNode nurbsCurve -n "fk_Foot_Right_gimbalShape" -p "fk_Foot_Right_gimbal";
	rename -uid "06A663A5-4A7D-E4D2-4A04-8C80CFB26FD0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4394712022965417e-17 0.2350834874673674 -0.23508348746736746
		1.2465188054052768e-33 0.33245825626631631 -1.3137949943184839e-16
		-1.4394712022965417e-17 0.23508348746736729 0.23508348746736724
		-2.0357196969332747e-17 3.3569069047600332e-18 0.33245825626631637
		-1.4394712022965417e-17 -0.23508348746736735 0.23508348746736724
		-2.0391943433425769e-33 -0.33245825626631653 -7.7719731553705983e-17
		1.4394712022965417e-17 -0.23508348746736729 -0.23508348746736746
		2.0357196969332747e-17 -5.9215002831213227e-17 -0.33245825626631659
		1.4394712022965417e-17 0.2350834874673674 -0.23508348746736746
		1.2465188054052768e-33 0.33245825626631631 -1.3137949943184839e-16
		-1.4394712022965417e-17 0.23508348746736729 0.23508348746736724
		;
createNode transform -n "fk_Toe_Left_grp";
	rename -uid "6E7B07A7-44F0-06F4-0739-028A3D08437B";
	setAttr ".t" -type "double3" 3.5000029612181223 0.00035375742368426444 0.89988668820110096 ;
	setAttr ".r" -type "double3" 89.993115705187179 -87.118722445579863 -89.993453166772966 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -8.3266726846886741e-17 0 ;
	setAttr ".sp" -type "double3" 0 -8.3266726846886741e-17 0 ;
createNode transform -n "fk_Toe_Left" -p "fk_Toe_Left_grp";
	rename -uid "57296BF3-4716-7BE0-4F86-7AB1755E2842";
createNode nurbsCurve -n "fk_Toe_LeftShape" -p "fk_Toe_Left";
	rename -uid "6466D829-412A-7AAB-347F-AAA8A8C5956B";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "ik_Hand_Left";
	rename -uid "49943C02-4B09-E76E-32EF-489D02F99188";
	addAttr -ci true -sn "default" -ln "default" -dt "string";
	setAttr ".rp" -type "double3" 8.6105773063410922 8.2038886286593211 0.043294356424432398 ;
	setAttr ".sp" -type "double3" 8.6105773063410922 8.2038886286593211 0.043294356424432398 ;
	setAttr ".default" -type "string" "8.610577306341092 8.203888628659321 0.0432943564244324";
createNode nurbsCurve -n "curveShape4" -p "ik_Hand_Left";
	rename -uid "7F3AADBB-4081-75AF-18EA-BEAC63A1D0CD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 15 0 no 3
		16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
		16
		9.3028490223694611 6.9453353167484719 -0.92459170725526019
		9.2068473447162305 6.9453353167484631 1.0731028834887217
		7.3054738958308594 7.5588742403870688 0.98173003711668438
		7.9183055903127233 9.4624419405701694 1.011180420104125
		9.8196790391980944 8.8489030169315637 1.1025532664761621
		9.2068473447162305 6.9453353167484631 1.0731028834887217
		7.3054738958308594 7.5588742403870688 0.98173003711668438
		7.40147557348409 7.5588742403870786 -1.0159645536272974
		9.3028490223694611 6.9453353167484719 -0.92459170725526019
		9.915680716851325 8.8489030169315726 -0.89514132426781967
		9.8196790391980944 8.8489030169315637 1.1025532664761621
		7.9183055903127233 9.4624419405701694 1.011180420104125
		8.0143072679659539 9.4624419405701801 -0.98651417063985702
		9.915680716851325 8.8489030169315726 -0.89514132426781967
		8.0143072679659539 9.4624419405701801 -0.98651417063985702
		7.40147557348409 7.5588742403870786 -1.0159645536272974
		;
createNode transform -n "fk_Hand_Left_grp";
	rename -uid "779CC15A-4215-E00C-9A23-1AB5F8FFBD21";
	setAttr ".t" -type "double3" 8.6105773063410922 8.2038886286593211 0.043294356424432398 ;
	setAttr ".r" -type "double3" -179.15539620859846 -2.618550696899733 -17.883954575797631 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.3877787807814457e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.3877787807814457e-16 0 ;
createNode transform -n "fk_Hand_Left" -p "fk_Hand_Left_grp";
	rename -uid "2B682833-4A04-CAB9-C4A8-299336E33296";
	setAttr ".s" -type "double3" 1.2 1.2 1.2 ;
createNode nurbsCurve -n "fk_Hand_LeftShape" -p "fk_Hand_Left";
	rename -uid "179FBE09-4B88-C417-7A6B-AAAA82C1B211";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Hand_Left_gimbal" -p "fk_Hand_Left";
	rename -uid "B721E98D-43F6-0EDD-446B-739F6A766F40";
	setAttr ".rp" -type "double3" -2.2204460492503131e-16 -4.4408920985006262e-16 -1.3877787807814457e-17 ;
	setAttr ".sp" -type "double3" -2.2204460492503131e-16 -4.4408920985006262e-16 -1.3877787807814457e-17 ;
createNode nurbsCurve -n "fk_Hand_Left_gimbalShape" -p "fk_Hand_Left_gimbal";
	rename -uid "6611AA39-4E87-21A5-6AE3-B9B5D6085E4A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.4394712022965417e-17 0.23508348746736696 -0.23508348746736735
		1.2465188054052768e-33 0.33245825626631587 -2.0357196969332738e-17
		-1.4394712022965417e-17 0.23508348746736685 0.23508348746736735
		-2.0357196969332747e-17 -4.268545151374881e-16 0.33245825626631648
		-1.4394712022965417e-17 -0.23508348746736779 0.23508348746736735
		-2.0391943433425769e-33 -0.33245825626631698 3.3302570908809677e-17
		1.4394712022965417e-17 -0.23508348746736774 -0.23508348746736735
		2.0357196969332747e-17 -4.8942642487346139e-16 -0.33245825626631648
		1.4394712022965417e-17 0.23508348746736696 -0.23508348746736735
		1.2465188054052768e-33 0.33245825626631587 -2.0357196969332738e-17
		-1.4394712022965417e-17 0.23508348746736685 0.23508348746736735
		;
createNode transform -n "fk_UpperArm_Left_grp";
	rename -uid "C16D93A1-428B-3B14-8D7D-B2B943750217";
	setAttr ".t" -type "double3" 3.8636376943762141 9.7433150327081055 0.11691699603318667 ;
	setAttr ".r" -type "double3" 88.609923624872565 4.3090066452912286 -18.051819204980124 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.6653345369377348e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.6653345369377348e-16 0 ;
createNode transform -n "fk_UpperArm_Left" -p "fk_UpperArm_Left_grp";
	rename -uid "47B3847E-4268-D848-44BF-AC9ED3B4019C";
	setAttr ".s" -type "double3" 1.75 1.75 1.75 ;
createNode nurbsCurve -n "fk_UpperArm_LeftShape" -p "fk_UpperArm_Left";
	rename -uid "E6FF0550-41BF-90C4-734D-E8BD8E9CD149";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_UpperArm_Left_gimbal" -p "fk_UpperArm_Left";
	rename -uid "E12F7B99-4754-E586-05F7-FF86210CD2C4";
	setAttr ".rp" -type "double3" -2.775557561562892e-17 -4.1633363423443383e-17 0 ;
	setAttr ".sp" -type "double3" -2.775557561562892e-17 -4.1633363423443383e-17 0 ;
createNode nurbsCurve -n "fk_UpperArm_Left_gimbalShape" -p "fk_UpperArm_Left_gimbal";
	rename -uid "87BE8F82-4C8C-D55B-7F4C-FD90AA476F75";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-8.5626262516750222e-18 0.3134446499564898 -0.3134446499564898
		-2.775557561562891e-17 0.44327767502175508 -2.7142929292443649e-17
		-4.6948524979582805e-17 0.3134446499564898 0.3134446499564898
		-5.4898504908072572e-17 -4.7759826655295895e-18 0.4432776750217553
		-4.6948524979582805e-17 -0.3134446499564898 0.3134446499564898
		-2.7755575615628914e-17 -0.44327767502175541 4.44034278784129e-17
		-8.5626262516750222e-18 -0.3134446499564898 -0.3134446499564898
		-6.1264632318525495e-19 -8.8205195646827273e-17 -0.4432776750217553
		-8.5626262516750222e-18 0.3134446499564898 -0.3134446499564898
		-2.775557561562891e-17 0.44327767502175508 -2.7142929292443649e-17
		-4.6948524979582805e-17 0.3134446499564898 0.3134446499564898
		;
createNode transform -n "fk_UpperArm_Right_grp";
	rename -uid "B91174C6-4B40-CDD8-A9B4-2F89A47199A7";
	setAttr ".t" -type "double3" -3.863610081060969 9.7433789063506939 0.11694247046863648 ;
	setAttr ".r" -type "double3" -88.59835299002286 4.305274509238072 -161.94731190026329 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.6653345369377348e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.6653345369377348e-16 0 ;
createNode transform -n "fk_UpperArm_Right" -p "fk_UpperArm_Right_grp";
	rename -uid "01EB63BC-4C76-A7CA-6FB1-83A90B1C2ACD";
	setAttr ".s" -type "double3" 1.75 1.75 1.75 ;
createNode nurbsCurve -n "fk_UpperArm_RightShape" -p "fk_UpperArm_Right";
	rename -uid "C0D5CFFC-41A5-F1F9-A242-F896D36BD92F";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_UpperArm_Right_gimbal" -p "fk_UpperArm_Right";
	rename -uid "3095C2D6-40EB-D794-1EEC-87B5CC3B637D";
	setAttr ".rp" -type "double3" 5.5511151231257827e-17 0 8.8817841970012523e-16 ;
	setAttr ".sp" -type "double3" 5.5511151231257827e-17 0 8.8817841970012523e-16 ;
createNode nurbsCurve -n "fk_UpperArm_Right_gimbalShape" -p "fk_UpperArm_Right_gimbal";
	rename -uid "D9464B90-4CA0-830C-9F14-298D904B427C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4704100595211712e-17 0.31344464995648985 -0.31344464995648935
		5.5511151231257827e-17 0.44327767502175508 4.1694628055761898e-16
		3.6318201867303936e-17 0.3134446499564898 0.31344464995649024
		2.8368221938814168e-17 2.2979592950099324e-17 0.44327767502175575
		3.6318201867303936e-17 -0.3134446499564898 0.31344464995649024
		5.5511151231257827e-17 -0.44327767502175536 4.8849263772847551e-16
		7.4704100595211712e-17 -0.3134446499564898 -0.31344464995648935
		8.2654080523701486e-17 -6.044962003119836e-17 -0.44327767502175486
		7.4704100595211712e-17 0.31344464995648985 -0.31344464995648935
		5.5511151231257827e-17 0.44327767502175508 4.1694628055761898e-16
		3.6318201867303936e-17 0.3134446499564898 0.31344464995649024
		;
createNode transform -n "fk_ForeArm_Left_grp";
	rename -uid "20B884C7-4DCF-16C3-76DA-6DBA3D39E770";
	setAttr ".t" -type "double3" 6.2338604952343779 8.9708122832075823 -0.070921701540598847 ;
	setAttr ".r" -type "double3" -91.387749580009682 -2.618550696899733 -17.883954575797635 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.3877787807814457e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.3877787807814457e-16 0 ;
createNode transform -n "fk_ForeArm_Left" -p "fk_ForeArm_Left_grp";
	rename -uid "2CDBBA09-4B54-C2BF-E00B-AFB1EB30AFC5";
	setAttr ".s" -type "double3" 1.6 1.6 1.6 ;
createNode nurbsCurve -n "fk_ForeArm_LeftShape" -p "fk_ForeArm_Left";
	rename -uid "D1EE615C-4B50-C86E-0B81-A8BC7386CC93";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_ForeArm_Left_gimbal" -p "fk_ForeArm_Left";
	rename -uid "D3415198-4E88-5B6C-0A5A-3EADEB991805";
	setAttr ".rp" -type "double3" 0 1.214306433183765e-17 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" 0 1.214306433183765e-17 -4.4408920985006262e-16 ;
createNode nurbsCurve -n "fk_ForeArm_Left_gimbalShape" -p "fk_ForeArm_Left_gimbal";
	rename -uid "F2E95B78-40F6-C40C-EAD1-4782365270D5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-9.4228471769056001e-17 0.2742640687119286 -0.27426406871192904
		-1.1102230246251565e-16 0.38786796564403575 -4.678392729809508e-16
		-1.2781613315597529e-16 0.27426406871192854 0.27426406871192816
		-1.3477236559340386e-16 2.5311314259267328e-17 0.38786796564403542
		-1.2781613315597529e-16 -0.2742640687119286 0.27426406871192816
		-1.1102230246251565e-16 -0.38786796564403597 -4.0523621045645133e-16
		-9.4228471769056001e-17 -0.27426406871192854 -0.27426406871192904
		-8.7272239331627444e-17 -4.7689247099368143e-17 -0.38786796564403631
		-9.4228471769056001e-17 0.2742640687119286 -0.27426406871192904
		-1.1102230246251565e-16 0.38786796564403575 -4.678392729809508e-16
		-1.2781613315597529e-16 0.27426406871192854 0.27426406871192816
		;
createNode transform -n "pv_Elbow_Left";
	rename -uid "AA4AE73D-4814-8CED-F052-FAB3F8D9BBDA";
	setAttr ".t" -type "double3" 6.2338604952343779 8.9708122832075823 -0.070921701540598847 ;
	setAttr ".r" -type "double3" -91.387749580009697 -2.6185506968997312 -17.883954575797635 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode locator -n "pv_Elbow_LeftShape" -p "pv_Elbow_Left";
	rename -uid "FAF41504-43FC-06EB-3E75-0B9EEFDF9292";
	setAttr -k off ".v";
createNode transform -n "fk_Shoulder_Right_grp";
	rename -uid "F48EC600-43B2-D0DA-785B-498D563D0536";
	setAttr ".t" -type "double3" -2.000000000497701 8.9178842016271744 0.17554794164159016 ;
	setAttr ".r" -type "double3" -149.05509507088067 11.326340584144548 161.86262776570487 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 0 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 0 ;
createNode transform -n "fk_Shoulder_Right" -p "fk_Shoulder_Right_grp";
	rename -uid "8FB013C9-40C3-87BB-5038-50A5D16A604D";
createNode nurbsCurve -n "fk_Shoulder_RightShape" -p "fk_Shoulder_Right";
	rename -uid "2C6FE465-417D-3E5B-F0E5-B492AF3F4134";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Spine2_grp";
	rename -uid "F3ACDCF9-4B34-B3C1-362E-D280EC46EC1D";
	setAttr ".t" -type "double3" -1.4226040009325978e-15 6.5210963461160949 0.31722991355626784 ;
	setAttr ".r" -type "double3" -90.000000000000966 11.15500468355353 89.999999999999815 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -2.7755575615628914e-16 0 ;
	setAttr ".sp" -type "double3" 0 -2.7755575615628914e-16 0 ;
createNode transform -n "fk_Spine2" -p "fk_Spine2_grp";
	rename -uid "B2BCA4F7-4A79-C449-CB13-17AFFE681FEF";
	setAttr ".s" -type "double3" 1.8424844861576191 1.8424844861576191 1.8424844861576191 ;
createNode nurbsCurve -n "fk_Spine2Shape" -p "fk_Spine2";
	rename -uid "6A33AD0B-4D13-E1BF-2742-FDAA1CB8C564";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Head_grp";
	rename -uid "2EC894CC-45AE-71D3-A7A9-37BE6085A303";
	setAttr ".t" -type "double3" -5.9677886023189029e-09 11.120306054292088 0.19732127904970959 ;
	setAttr ".r" -type "double3" -90.000006612199599 0 90.000000381184321 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -2.7755575615628914e-16 0 ;
	setAttr ".sp" -type "double3" 0 -2.7755575615628914e-16 0 ;
createNode transform -n "fk_Head" -p "fk_Head_grp";
	rename -uid "0CA6246B-4194-CFEE-E7C7-19955940727E";
	setAttr ".s" -type "double3" 1.7 1.7 1.7 ;
createNode nurbsCurve -n "fk_HeadShape" -p "fk_Head";
	rename -uid "612FF999-468D-E05D-29E8-D89E99BB9083";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_ForeArm_Right_grp";
	rename -uid "02B37737-4D95-2B8F-944A-C6A92BAB162D";
	setAttr ".t" -type "double3" -6.2338327946780474 8.9708364223121375 -0.070733841859873081 ;
	setAttr ".r" -type "double3" 91.399156493132708 -2.6222687366235991 -162.11658100959392 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -1.3877787807814457e-16 0 ;
	setAttr ".sp" -type "double3" 0 -1.3877787807814457e-16 0 ;
createNode transform -n "fk_ForeArm_Right" -p "fk_ForeArm_Right_grp";
	rename -uid "0485C539-45D9-4B26-CAF1-B798A598376E";
	setAttr ".s" -type "double3" 1.6 1.6 1.6 ;
createNode nurbsCurve -n "fk_ForeArm_RightShape" -p "fk_ForeArm_Right";
	rename -uid "FB5AD561-495C-95A7-023B-2CA80C90C38C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_ForeArm_Right_gimbal" -p "fk_ForeArm_Right";
	rename -uid "6C1862F3-4083-7AC1-41DC-CA981E5D5207";
	setAttr ".rp" -type "double3" -1.1102230246251565e-16 1.3877787807814457e-17 -4.4408920985006262e-16 ;
	setAttr ".sp" -type "double3" -1.1102230246251565e-16 1.3877787807814457e-17 -4.4408920985006262e-16 ;
createNode nurbsCurve -n "fk_ForeArm_Right_gimbalShape" -p "fk_ForeArm_Right_gimbal";
	rename -uid "E13BD204-45CF-6CEE-940A-2A988EDAD9E6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.6793830693459653e-17 0.2742640687119286 -0.27426406871192904
		1.4542719396394896e-33 0.38786796564403575 -4.678392729809508e-16
		-1.6793830693459653e-17 0.27426406871192854 0.27426406871192816
		-2.3750063130888207e-17 2.5311314259267328e-17 0.38786796564403542
		-1.6793830693459653e-17 -0.2742640687119286 0.27426406871192816
		-2.3790600672330058e-33 -0.38786796564403597 -4.0523621045645133e-16
		1.6793830693459653e-17 -0.27426406871192854 -0.27426406871192904
		2.3750063130888207e-17 -4.7689247099368143e-17 -0.38786796564403631
		1.6793830693459653e-17 0.2742640687119286 -0.27426406871192904
		1.4542719396394896e-33 0.38786796564403575 -4.678392729809508e-16
		-1.6793830693459653e-17 0.27426406871192854 0.27426406871192816
		;
createNode transform -n "pv_Elbow_Right";
	rename -uid "742A8664-4022-A40B-19B0-B58AE13E4E25";
	setAttr ".t" -type "double3" -6.2338327946780474 8.9708364223121375 -0.070733841859873081 ;
	setAttr ".r" -type "double3" 91.399156493132722 -2.6222687366236008 -162.11658100959392 ;
	setAttr ".s" -type "double3" 2 2 2 ;
createNode locator -n "pv_Elbow_RightShape" -p "pv_Elbow_Right";
	rename -uid "046E17EC-4FDC-5899-B47E-D49AB93FA0AE";
	setAttr -k off ".v";
createNode transform -n "fk_Shoulder_Left_grp";
	rename -uid "918BCE97-4D05-DB22-193A-AD9523E8E8C0";
	setAttr ".t" -type "double3" 1.999999999502299 8.9178842016271709 0.17554400773502932 ;
	setAttr ".r" -type "double3" 149.05069083682301 11.32651399630492 18.134674277947294 ;
	setAttr ".s" -type "double3" 5 5 5 ;
	setAttr ".rp" -type "double3" 0 -2.2204460492503131e-16 0 ;
	setAttr ".sp" -type "double3" 0 -2.2204460492503131e-16 0 ;
createNode transform -n "fk_Shoulder_Left" -p "fk_Shoulder_Left_grp";
	rename -uid "63F56A3C-49B7-2BA2-A111-4EBE88B6DF30";
createNode nurbsCurve -n "fk_Shoulder_LeftShape" -p "fk_Shoulder_Left";
	rename -uid "D2BFA02D-4D8C-CBD7-5310-78AC0ACC2F2C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "fk_Spine3_grp";
	rename -uid "8F95C31F-4AF9-A002-1164-5FB1A9491654";
	setAttr ".t" -type "double3" -4.9770093802494271e-10 7.5078921393339746 0.12264428945042377 ;
	setAttr ".r" -type "double3" 89.999998797610701 -2.1877615373732775 90.000000000000028 ;
	setAttr ".s" -type "double3" 9.153245458717425 9.153245458717425 9.153245458717425 ;
	setAttr ".rp" -type "double3" 0 -2.7755575615628914e-16 0 ;
	setAttr ".sp" -type "double3" 0 -2.7755575615628914e-16 0 ;
createNode transform -n "fk_Spine3" -p "fk_Spine3_grp";
	rename -uid "8F76F954-4D61-B1AE-1964-52894911610E";
createNode nurbsCurve -n "fk_Spine3Shape" -p "fk_Spine3";
	rename -uid "AFDB1817-4254-42EB-9839-5CAC0C995FE7";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A471396E-4B08-36FD-6B8A-BF8AE99F11AD";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7DBE1F76-4A40-9556-2935-FE917E4260E3";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AA704C07-4FED-B0FF-BC8E-6292CB8DB078";
createNode displayLayerManager -n "layerManager";
	rename -uid "782D4503-47F1-09EA-84BE-DA8CF4CCF170";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "1F307025-4443-F41E-34D3-A38A7DA39C2E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "584F82A3-4C36-DF34-845E-92972CCC7D22";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DC0C4DAB-4060-172F-41B8-4EA04D39AE48";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CEA823A4-4486-4178-E7FF-078AE1A0BDD6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1585\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner2\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner2\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1585\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8249F92B-4E75-81FA-A400-31A3C6799B14";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "59587665-4591-1955-81C2-DD81C525B4CE";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "68CE846E-4D4B-95EB-A71C-D0B5E0D8970A";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "D0D0ADBA-457A-0280-9A68-A9A81ACDB56E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "A65AC09F-47BA-DACF-8742-B8990B315E9C";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode condition -n "SypnoticNode";
	rename -uid "DDD59DA2-424E-A3A8-610C-D38AA6403700";
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "21EF150D-49A2-81BA-38F0-BF9BB7A1C5F7";
	setAttr ".op" 2;
createNode condition -n "condition1";
	rename -uid "49A703C4-4665-142E-801E-36AF5117812A";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode expression -n "expression1";
	rename -uid "C7FFFA28-475F-804D-7F8E-548A5BEDCFDF";
	setAttr -k on ".nds";
createNode condition -n "SypnoticNode1";
	rename -uid "944B1F65-4734-ED8E-20FA-709ED94932AA";
createNode addDoubleLinear -n "addDoubleLinear1";
	rename -uid "313CC1E2-4FBD-672D-BB82-B4A3208008C4";
createNode addDoubleLinear -n "addDoubleLinear2";
	rename -uid "10C3D7BF-4D57-CA4A-234D-8986403AC525";
createNode addDoubleLinear -n "addDoubleLinear3";
	rename -uid "62AFDD4F-4C30-A312-6444-1F9985BA3F31";
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "2B09C164-4F22-7634-2568-86B4A14CBB6B";
	setAttr ".op" 2;
createNode condition -n "condition2";
	rename -uid "EEE519B5-4FC8-CD9D-3F2D-7F853D82257C";
	setAttr ".op" 2;
	setAttr ".cf" -type "float3" 0 1 1 ;
createNode expression -n "expression2";
	rename -uid "08EA1B90-40CA-6AA8-C3AC-A28FA0F44FF1";
	setAttr -k on ".nds";
createNode displayLayer -n "geo";
	rename -uid "AF6848C0-4D03-B6B9-6E97-2B83EF3277F0";
	setAttr ".do" 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "0998DAF5-4608-4DBF-BAF1-60A7C4D3AC08";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.375;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "69AA346E-4439-E2CF-4E8E-8E853CE8759B";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.375;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "AB8DF097-4ABD-D9FE-8F9E-16BD3730E009";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.25;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "571EB16C-4E15-B718-ADA3-89ABC2770339";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.5;
createNode makeNurbCircle -n "makeNurbCircle5";
	rename -uid "0AC3A1AA-4E88-85C2-504F-5FACCD9D4548";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.5;
createNode makeNurbCircle -n "makeNurbCircle6";
	rename -uid "F6844DF4-4AA6-7271-5D01-408C67CEB297";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.5;
createNode makeNurbCircle -n "makeNurbCircle7";
	rename -uid "393A3622-46F9-4936-F896-D68867DD370E";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.375;
createNode makeNurbCircle -n "makeNurbCircle8";
	rename -uid "76BFAE80-473C-5C46-00FE-0F89E4A183CF";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 1.25;
createNode makeNurbCircle -n "makeNurbCircle9";
	rename -uid "5F1077CD-4AEA-DE5F-8501-6589687529E0";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.5;
createNode makeNurbCircle -n "makeNurbCircle10";
	rename -uid "105753C3-4F31-0F36-48F4-CC9EF181D74E";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.75;
createNode makeNurbCircle -n "makeNurbCircle11";
	rename -uid "532DE89C-46E8-B048-8A7B-3F8A3874E02C";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.375;
createNode makeNurbCircle -n "makeNurbCircle12";
	rename -uid "296F2171-4850-03A9-8D39-CAAD8D6F178C";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.25;
createNode makeNurbCircle -n "makeNurbCircle13";
	rename -uid "20EDD5C7-4151-ADC8-4E4B-F685733143C5";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.375;
createNode makeNurbCircle -n "makeNurbCircle14";
	rename -uid "1ED4D701-447E-C9DB-48EB-C8B8B52A2D4E";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.5;
createNode makeNurbCircle -n "makeNurbCircle15";
	rename -uid "06D7D030-47BF-B710-DB1B-33A70334F8F6";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.5;
createNode makeNurbCircle -n "makeNurbCircle16";
	rename -uid "CC49F495-41E9-F447-63CB-D38C2A934DDD";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.4375;
createNode makeNurbCircle -n "makeNurbCircle17";
	rename -uid "660E3B4E-4CA4-EA01-236D-3283B810304E";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.625;
createNode makeNurbCircle -n "makeNurbCircle18";
	rename -uid "E783B712-4FBB-1C2B-1081-1EABF3B65756";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.75;
createNode makeNurbCircle -n "makeNurbCircle19";
	rename -uid "4D9CB429-4612-754C-1483-7D8718092769";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.75;
createNode makeNurbCircle -n "makeNurbCircle20";
	rename -uid "81B893F2-4B37-88E3-567A-D4A6D3034FA3";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.4375;
createNode makeNurbCircle -n "makeNurbCircle21";
	rename -uid "594CA92C-46EB-97E3-85DB-898DEE79DC6A";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.625;
createNode makeNurbCircle -n "makeNurbCircle22";
	rename -uid "717FEECB-4993-A853-20D3-DE8EC9E9EF48";
	setAttr ".nr" -type "double3" 1 0 0 ;
	setAttr ".r" 0.75;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 97;
	setAttr -av -k on ".unw" 97;
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
	setAttr -s 9 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".dsm";
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
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -k on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -cb on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".sdf";
	setAttr -av -k on ".outf" 51;
	setAttr -av -cb on ".imfkey" -type "string" "exr";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".an";
	setAttr -k on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -k on ".me";
	setAttr -k on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -k on ".ofe";
	setAttr -k on ".efe";
	setAttr -k on ".oft";
	setAttr -k on ".umfn";
	setAttr -k on ".ufe";
	setAttr -av -k on ".pff";
	setAttr -av -k on ".peie";
	setAttr -av -k on ".ifp";
	setAttr -k on ".rv";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -k on ".gv";
	setAttr -k on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -k on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".mbso";
	setAttr -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -k on ".prm";
	setAttr -k on ".pom";
	setAttr -k on ".pfrm";
	setAttr -k on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".isl";
	setAttr -k on ".ism";
	setAttr -k on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -k on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
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
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandPinky1.is";
connectAttr "BoneFK_RightHandPinky1.s" "BoneFK_RightHandPinky2.is";
connectAttr "BoneFK_RightHandPinky2.s" "BoneFK_RightHandPinky3.is";
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandRing1.is";
connectAttr "BoneFK_RightHandRing1.s" "BoneFK_RightHandRing2.is";
connectAttr "BoneFK_RightHandRing2.s" "BoneFK_RightHandRing3.is";
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandMiddle1.is";
connectAttr "BoneFK_RightHandMiddle1.s" "BoneFK_RightHandMiddle2.is";
connectAttr "BoneFK_RightHandMiddle2.s" "BoneFK_RightHandMiddle3.is";
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandIndex1.is";
connectAttr "BoneFK_RightHandIndex1.s" "BoneFK_RightHandIndex2.is";
connectAttr "BoneFK_RightHandIndex2.s" "BoneFK_RightHandIndex3.is";
connectAttr "BoneFK_RightHand.s" "BoneFK_RightHandThumb1.is";
connectAttr "BoneFK_RightHandThumb1.s" "BoneFK_RightHandThumb2.is";
connectAttr "BoneFK_RightHandThumb2.s" "BoneFK_RightHandThumb3.is";
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
connectAttr "geo.di" "Grp_Geo.do";
connectAttr "makeNurbCircle1.oc" "fk_Foot_LeftShape.cr";
connectAttr "makeNurbCircle2.oc" "fk_Hand_RightShape.cr";
connectAttr "makeNurbCircle3.oc" "fk_Toe_RightShape.cr";
connectAttr "makeNurbCircle4.oc" "fk_Calf_LeftShape.cr";
connectAttr "makeNurbCircle5.oc" "fk_Thigh_LeftShape.cr";
connectAttr "makeNurbCircle6.oc" "fk_Calf_RightShape.cr";
connectAttr "makeNurbCircle7.oc" "fk_NeckShape.cr";
connectAttr "makeNurbCircle8.oc" "fk_HipShape.cr";
connectAttr "makeNurbCircle9.oc" "fk_Thigh_RightShape.cr";
connectAttr "makeNurbCircle10.oc" "fk_Spine1Shape.cr";
connectAttr "makeNurbCircle11.oc" "fk_Foot_RightShape.cr";
connectAttr "makeNurbCircle12.oc" "fk_Toe_LeftShape.cr";
connectAttr "makeNurbCircle13.oc" "fk_Hand_LeftShape.cr";
connectAttr "makeNurbCircle14.oc" "fk_UpperArm_LeftShape.cr";
connectAttr "makeNurbCircle15.oc" "fk_UpperArm_RightShape.cr";
connectAttr "makeNurbCircle16.oc" "fk_ForeArm_LeftShape.cr";
connectAttr "makeNurbCircle17.oc" "fk_Shoulder_RightShape.cr";
connectAttr "makeNurbCircle18.oc" "fk_Spine2Shape.cr";
connectAttr "makeNurbCircle19.oc" "fk_HeadShape.cr";
connectAttr "makeNurbCircle20.oc" "fk_ForeArm_RightShape.cr";
connectAttr "makeNurbCircle21.oc" "fk_Shoulder_LeftShape.cr";
connectAttr "makeNurbCircle22.oc" "fk_Spine3Shape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "multiplyDivide1.ox" "condition1.ctr";
connectAttr "condition1.ocr" "expression1.in[0]";
connectAttr ":time1.o" "expression1.tim";
connectAttr "BoneFK_LeftForeArm.tx" "addDoubleLinear1.i1";
connectAttr "BoneIK_LeftForeArm.tx" "addDoubleLinear2.i1";
connectAttr "BoneIK_LeftHand.tx" "addDoubleLinear2.i2";
connectAttr "BoneFK_LeftLeg.tx" "addDoubleLinear3.i1";
connectAttr "BoneFK_LeftFoot.tx" "addDoubleLinear3.i2";
connectAttr "addDoubleLinear3.o" "multiplyDivide2.i1x";
connectAttr "addDoubleLinear2.o" "multiplyDivide2.i2x";
connectAttr "multiplyDivide2.ox" "condition2.ctr";
connectAttr "condition2.ocr" "expression2.in[0]";
connectAttr ":time1.o" "expression2.tim";
connectAttr "layerManager.dli[1]" "geo.id";
connectAttr "SypnoticNode.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "SypnoticNode1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "addDoubleLinear1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "addDoubleLinear2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "addDoubleLinear3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "HeadShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BodyShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TailShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LegShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "ArmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "CloakShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Eye_LShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Eye_rShape.iog" ":initialShadingGroup.dsm" -na;
// End of prinny_011a2_rigTesting.ma
