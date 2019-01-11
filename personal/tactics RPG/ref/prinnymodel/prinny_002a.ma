//Maya ASCII 2018 scene
//Name: prinny_002a.ma
//Last modified: Wed, May 09, 2018 05:34:20 PM
//Codeset: 932
requires maya "2018";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "A79D9069-4096-24B7-E0D1-4B81480E2CBF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 26.191852150301369 8.028068581504197 -11.481095503535322 ;
	setAttr ".r" -type "double3" -1.5383527187712165 -280.99999999944578 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CCFFC9E0-4BFB-EDF5-0045-02B8D05B988E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4.4721191614309568;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 21.80348064682159 7.9080096490763534 -12.33410851294887 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "EA7BEABD-426E-4415-6635-9A8B1A6B7245";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 21.80348064682159 1000.309550673559 -12.334108512948649 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C49AE41C-4A06-E3FD-111D-BDAD70851AF2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 992.40154102448264;
	setAttr ".ow" 1.56686074568735;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 21.80348064682159 7.9080096490763534 -12.33410851294887 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "2F686688-40D4-6C6A-53E1-D384B5549AD7";
	setAttr ".t" -type "double3" 21.382337540860579 8.9433434959498754 1001.0912865839114 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "8E0EB8AD-48FF-AFBA-B086-6FAB6246D134";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1016.7629134059654;
	setAttr ".ow" 6.9938207312820788;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 21.845755999726876 8.8966213644387206 -15.671626822054023 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "1627FB44-48EE-70B1-A59E-19823ECE2D38";
	setAttr ".t" -type "double3" 1000.7609836822902 8.7113918064955485 -15.065478830109688 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5EDBD2C1-4E03-78B9-508B-6EA3CFA37AF8";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 978.95750303546856;
	setAttr ".ow" 10.192691565649442;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 21.80348064682159 7.7925173596209607 -12.40391146674901 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "imagePlane1";
	rename -uid "6FF9D906-4505-E91B-A467-478A1CA01523";
	setAttr ".t" -type "double3" -21.5 0 8.244563383270032 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "0CE574CF-4B69-D3D0-4FCD-58A0384BDEAA";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "E:/tactics RPG/ref/prinnymodel/�O�ʐ}.png";
	setAttr ".cov" -type "short2" 8292 4186 ;
	setAttr ".dlc" no;
	setAttr ".w" 82.92;
	setAttr ".h" 41.86;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "imagePlane2";
	rename -uid "3C68A5B5-4E9B-CC7B-7184-339ECBE4B2B6";
	setAttr ".t" -type "double3" 10.34233122118285 0 -24 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	rename -uid "D511FE81-4F97-F851-FC8C-3F86C473FAD0";
	setAttr -k off ".v";
	setAttr ".fc" 102;
	setAttr ".imn" -type "string" "E:/tactics RPG/ref/prinnymodel/�O�ʐ}.png";
	setAttr ".cov" -type "short2" 8292 4186 ;
	setAttr ".dlc" no;
	setAttr ".w" 82.92;
	setAttr ".h" 41.86;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "Head";
	rename -uid "FBCD56CF-4A88-F5EE-23B6-489E0D9DD15F";
	setAttr ".t" -type "double3" 21.732223844536712 11.839727245351309 -22.251993413843564 ;
	setAttr ".s" -type "double3" 1.2859259174342181 1 1.2444444377937594 ;
createNode mesh -n "HeadShape" -p "Head";
	rename -uid "6FDD378F-4522-B324-2495-01A048DAB97C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.0625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 51 ".pt";
	setAttr ".pt[0]" -type "float3" 1.0872382 0 -0.37845516 ;
	setAttr ".pt[1]" -type "float3" -0.86548108 0 -0.58933342 ;
	setAttr ".pt[2]" -type "float3" 0.19469722 0.041169599 -0.067720771 ;
	setAttr ".pt[3]" -type "float3" -0.22009251 -0.041169599 -0.09311606 ;
	setAttr ".pt[4]" -type "float3" 0 -0.032935679 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.065871358 0 ;
	setAttr ".pt[6]" -type "float3" -0.017759347 0 0 ;
	setAttr ".pt[8]" -type "float3" -0.47987741 0 -0.48074174 ;
	setAttr ".pt[9]" -type "float3" 1.0872382 0 -0.37845516 ;
	setAttr ".pt[10]" -type "float3" 0.041438475 0 0 ;
	setAttr ".pt[12]" -type "float3" 1.0990779 0 -0.37845516 ;
	setAttr ".pt[13]" -type "float3" -0.029598912 0 0 ;
	setAttr ".pt[15]" -type "float3" -0.59751326 0 -0.64543116 ;
	setAttr ".pt[16]" -type "float3" 1.1541293 0 -0.36999005 ;
	setAttr ".pt[17]" -type "float3" 0.011839565 0 0 ;
	setAttr ".pt[19]" -type "float3" -0.68763715 0 -0.64157349 ;
	setAttr ".pt[20]" -type "float3" -0.023679126 0 0 ;
	setAttr ".pt[21]" -type "float3" 1.0872382 0 -0.37845516 ;
	setAttr ".pt[22]" -type "float3" -0.51124686 0 -0.57485008 ;
	setAttr ".pt[25]" -type "float3" 0.85021555 0 -0.43771094 ;
	setAttr ".pt[26]" -type "float3" -0.58182812 0 -0.37094867 ;
	setAttr ".pt[28]" -type "float3" 0 0.045062512 0 ;
	setAttr ".pt[30]" -type "float3" 0.041438475 0 0 ;
	setAttr ".pt[31]" -type "float3" -0.023679126 0 0 ;
	setAttr ".pt[32]" -type "float3" -0.029598912 0 0 ;
	setAttr ".pt[33]" -type "float3" 0.011839565 0 0 ;
	setAttr ".pt[34]" -type "float3" -0.017759347 0 0 ;
	setAttr ".pt[41]" -type "float3" 0 0.012126833 0 ;
	setAttr ".pt[42]" -type "float3" 0 0.032935679 0 ;
	setAttr ".pt[43]" -type "float3" 0 0.11093387 0 ;
	setAttr ".pt[44]" -type "float3" 0 0.032935679 0 ;
	setAttr ".pt[53]" -type "float3" 0.19469722 0 0 ;
	setAttr ".pt[54]" -type "float3" 0.25395289 0 0 ;
	setAttr ".pt[55]" -type "float3" 0.27934819 0 0 ;
	setAttr ".pt[56]" -type "float3" 0.29627842 0 0 ;
	setAttr ".pt[57]" -type "float3" 0.13544154 0 0 ;
	setAttr ".pt[58]" -type "float3" -0.10108636 0 0 ;
	setAttr ".pt[59]" -type "float3" -0.10108636 0 0 ;
	setAttr ".pt[60]" -type "float3" -0.10108636 0 0 ;
	setAttr ".pt[62]" -type "float3" 0.16756566 0 -0.10108636 ;
	setAttr ".pt[63]" -type "float3" 0.19716458 0 -0.10108636 ;
	setAttr ".pt[64]" -type "float3" 0.15572609 0 -0.10108636 ;
	setAttr ".pt[65]" -type "float3" 0.16164587 0 -0.10108636 ;
	setAttr ".pt[66]" -type "float3" 0.2267635 0 -0.10108636 ;
	setAttr ".pt[67]" -type "float3" 0.18532501 0 -0.10108636 ;
	setAttr ".pt[68]" -type "float3" 0 0.019063115 0 ;
	setAttr ".pt[69]" -type "float3" 0 0.084934473 0 ;
	setAttr ".pt[70]" -type "float3" 0 -0.013872564 0 ;
	setAttr ".pt[71]" -type "float3" -0.10108636 0 0 ;
	setAttr ".pt[72]" -type "float3" -0.10108636 0 0 ;
	setAttr ".pt[73]" -type "float3" -0.10108636 0 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Body";
	rename -uid "7B9A5855-47C2-0076-4FCB-6382F2D76BD8";
	setAttr ".t" -type "double3" 21.796921773262316 7.2865890529638921 -22.251993808786096 ;
	setAttr ".s" -type "double3" 1.2859259174342181 1 1.2444444377937594 ;
createNode mesh -n "BodyShape" -p "Body";
	rename -uid "E377A250-433C-D2F6-4DE1-C7AE74B6AB7C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.21875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 52 ".pt";
	setAttr ".pt[0]" -type "float3" 0.23586819 0 -0.26956365 ;
	setAttr ".pt[1]" -type "float3" -0.38749775 -0.16219348 0.15162955 ;
	setAttr ".pt[2]" -type "float3" 0.23586819 0.28999364 -0.26956365 ;
	setAttr ".pt[3]" -type "float3" -0.38749775 0.68631786 0.15162955 ;
	setAttr ".pt[5]" -type "float3" -0.11275672 0.54132116 0 ;
	setAttr ".pt[7]" -type "float3" 0.064877398 0 0 ;
	setAttr ".pt[8]" -type "float3" 0.23586819 0 -0.26956365 ;
	setAttr ".pt[11]" -type "float3" -0.38749775 0 0.15162955 ;
	setAttr ".pt[14]" -type "float3" -7.4505806e-09 0.7845161 -0.26558799 ;
	setAttr ".pt[15]" -type "float3" -7.4505806e-09 0.88931298 0 ;
	setAttr ".pt[18]" -type "float3" -3.5527137e-14 0.50352734 -0.28952572 ;
	setAttr ".pt[19]" -type "float3" -7.1054274e-15 0.54132116 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.69751823 -0.26558799 ;
	setAttr ".pt[25]" -type "float3" 0 0.80231512 0 ;
	setAttr ".pt[26]" -type "float3" 0.1252062 0 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.50820643 0 ;
	setAttr ".pt[28]" -type "float3" 0 -0.50820643 0 ;
	setAttr ".pt[29]" -type "float3" 0.1252062 0 0 ;
	setAttr ".pt[32]" -type "float3" 0.23586819 0.055647198 -0.26956365 ;
	setAttr ".pt[36]" -type "float3" -0.083470806 0.1530298 0 ;
	setAttr ".pt[38]" -type "float3" -0.38749775 -5.5879354e-09 0.15162955 ;
	setAttr ".pt[39]" -type "float3" -0.083470806 0.1530298 0 ;
	setAttr ".pt[40]" -type "float3" 0 0.22664326 -0.12408955 ;
	setAttr ".pt[41]" -type "float3" 0 0.22664326 -0.088139012 ;
	setAttr ".pt[42]" -type "float3" 0.23586819 0 -0.26956365 ;
	setAttr ".pt[48]" -type "float3" -0.38749775 0 0.15162955 ;
	setAttr ".pt[49]" -type "float3" 0 0.22664326 -0.088139012 ;
	setAttr ".pt[51]" -type "float3" 0 0.34887511 -0.095329121 ;
	setAttr ".pt[53]" -type "float3" 0 0.34887511 -0.095329121 ;
	setAttr ".pt[54]" -type "float3" 0 0.34887511 -0.095329121 ;
	setAttr ".pt[55]" -type "float3" -0.083470806 0.1530298 0 ;
	setAttr ".pt[63]" -type "float3" 0 -0.50820643 0 ;
	setAttr ".pt[64]" -type "float3" 0.064877398 0 0 ;
	setAttr ".pt[68]" -type "float3" -0.11275672 0.54132116 0 ;
	setAttr ".pt[69]" -type "float3" 0 0.80231512 0 ;
	setAttr ".pt[70]" -type "float3" -7.4505806e-09 0.88931298 0 ;
	setAttr ".pt[71]" -type "float3" -7.1054274e-15 0.54132116 0 ;
	setAttr ".pt[72]" -type "float3" -0.050543178 0.084217042 0.016847726 ;
	setAttr ".pt[73]" -type "float3" -0.050543178 0 0.016847726 ;
	setAttr ".pt[74]" -type "float3" -0.050543178 0 0.016847726 ;
	setAttr ".pt[75]" -type "float3" -0.050543178 0 0.016847726 ;
	setAttr ".pt[76]" -type "float3" -0.050543178 0 0.016847726 ;
	setAttr ".pt[79]" -type "float3" 0 -0.50820643 0 ;
	setAttr ".pt[80]" -type "float3" 0.13226831 0 0.11793409 ;
	setAttr ".pt[81]" -type "float3" 0.067390904 0 0.11793409 ;
	setAttr ".pt[82]" -type "float3" 0.067390904 0 0.11793409 ;
	setAttr ".pt[83]" -type "float3" 0.067390904 0 0.11793409 ;
	setAttr ".pt[84]" -type "float3" -0.045365833 0.54132116 0.11793409 ;
	setAttr ".pt[85]" -type "float3" 0 0.80231512 0 ;
	setAttr ".pt[86]" -type "float3" -7.4505806e-09 0.88931298 0 ;
	setAttr ".pt[87]" -type "float3" -7.1054274e-15 0.54132116 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Tail";
	rename -uid "82D2EF7B-4092-6622-9867-439BC963CE9C";
	setAttr ".t" -type "double3" 24.871449903766717 2.3224264896080591 -22.251993808786096 ;
	setAttr ".s" -type "double3" 1.2444444377937594 1 1.2444444377937594 ;
createNode mesh -n "TailShape" -p "Tail";
	rename -uid "32A0D262-414C-5262-0218-048DA95DCF11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.10019796 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.18631557 ;
	setAttr ".pt[2]" -type "float3" 0 0 -0.10019796 ;
	setAttr ".pt[3]" -type "float3" 0 0 -0.18631557 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.18631557 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.10019796 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.18631557 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.10019796 ;
	setAttr ".pt[18]" -type "float3" 0 0 -0.18631557 ;
	setAttr ".pt[19]" -type "float3" 0 0 -0.10019796 ;
	setAttr ".pt[22]" -type "float3" 0 0 -0.18631557 ;
	setAttr ".pt[23]" -type "float3" 0 0 -0.10019796 ;
	setAttr ".pt[26]" -type "float3" 0 0 -0.18631557 ;
	setAttr ".pt[27]" -type "float3" 0 0 -0.10019796 ;
	setAttr ".pt[30]" -type "float3" 0.068770327 0.017192584 -0.18631557 ;
	setAttr ".pt[31]" -type "float3" 0.018124845 -0.0060416153 -0.10019796 ;
	setAttr ".pt[61]" -type "float3" 0.069478579 0.015104037 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Leg";
	rename -uid "2A52B86F-4C92-B244-8ED8-A28E32EBE42D";
	setAttr ".t" -type "double3" 21.643890170002472 1.6031555946912242 -18.675165323931186 ;
	setAttr ".s" -type "double3" 1.2444444377937594 1 1.2444444377937594 ;
createNode mesh -n "LegShape" -p "Leg";
	rename -uid "42473932-47B6-18C9-2AF0-F2888DF2811F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0 0 -0.075326949 0 0 -0.056909539 
		0 0 -0.075326949 0 0 -0.056909539 0 0 0.05316478 0 0 0.034001075 0 0 0.05316478 0 
		0 0.034001075 0 0 -0.075326949 0 0 0.05316478 0 0 0.034001075 0 0 -0.056909539 0 
		0 -0.075326949 0 0 -0.056909539 0 0 0.034001075 0 0 0.05316478 0 0 0.05316478 0 0 
		-0.075326949 0 0 -0.056909539 0 0 0.034001075 0 0 -0.075326949 0 0 0.05316478 0 0 
		0.034001075 0 0 -0.056909539;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube1";
	rename -uid "5C5A11A2-4F83-150E-B79B-9BA0A8A97732";
	setAttr ".t" -type "double3" 21.80348064682159 9.8191195330137102 -18.663538850840698 ;
	setAttr ".r" -type "double3" 14.096092034540623 0 0 ;
	setAttr ".s" -type "double3" 1.2859259174342181 1 1.2444444377937594 ;
	setAttr ".rp" -type "double3" 0 0.16279075755943428 -0.088443176276521471 ;
	setAttr ".rpt" -type "double3" 0 0.0029150689564834409 0.17129608953448061 ;
	setAttr ".sp" -type "double3" 0 0.16279075755943428 -0.071070409887740646 ;
	setAttr ".spt" -type "double3" 0 0 -0.017372766388780839 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "48B1652B-4D54-BF9C-E434-E6932FF20552";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 49 ".pt";
	setAttr ".pt[0]" -type "float3" 0.061834726 -3.8191672e-14 0 ;
	setAttr ".pt[1]" -type "float3" -0.070298545 -6.1284311e-14 0 ;
	setAttr ".pt[2]" -type "float3" 0.17826296 -0.040656481 0.008203866 ;
	setAttr ".pt[3]" -type "float3" -0.12110408 -0.040656485 0.008203866 ;
	setAttr ".pt[4]" -type "float3" 0.19564962 -0.060984731 0.012305737 ;
	setAttr ".pt[5]" -type "float3" -0.12922108 -0.060984723 0.012305798 ;
	setAttr ".pt[6]" -type "float3" 0.040916469 -0.37607241 0.07588575 ;
	setAttr ".pt[7]" -type "float3" -0.056770645 -0.37607241 0.07588575 ;
	setAttr ".pt[8]" -type "float3" 0.019998178 -0.024679122 -0.043158468 ;
	setAttr ".pt[9]" -type "float3" -0.040847808 -0.024679122 -0.043158468 ;
	setAttr ".pt[10]" -type "float3" -0.038124841 -0.013922792 -0.05171733 ;
	setAttr ".pt[11]" -type "float3" 0.024870433 -0.013678168 -0.050934453 ;
	setAttr ".pt[12]" -type "float3" 0.083018132 -4.9737992e-14 0 ;
	setAttr ".pt[13]" -type "float3" 0.14234555 9.311929e-10 5.2154064e-08 ;
	setAttr ".pt[14]" -type "float3" -0.10061768 -4.4408921e-14 0 ;
	setAttr ".pt[15]" -type "float3" -0.049986251 -5.1514348e-14 0 ;
	setAttr ".pt[16]" -type "float3" 0.086308524 0.030959584 -0.019263405 ;
	setAttr ".pt[17]" -type "float3" -0.073967241 0.030959588 -0.019263346 ;
	setAttr ".pt[18]" -type "float3" -0.051113896 0.0051015876 0.016325466 ;
	setAttr ".pt[19]" -type "float3" 0.068807475 0.0051015876 0.016325466 ;
	setAttr ".pt[20]" -type "float3" -0.066828482 -7.1054274e-14 0 ;
	setAttr ".pt[21]" -type "float3" -0.012802544 -7.6383344e-14 0 ;
	setAttr ".pt[22]" -type "float3" 0.061437067 -4.7961635e-14 0 ;
	setAttr ".pt[23]" -type "float3" 0.15114966 -1.3038646e-08 1.4901161e-08 ;
	setAttr ".pt[24]" -type "float3" 0 -0.040656485 0.008203866 ;
	setAttr ".pt[25]" -type "float3" 0 -0.060984723 0.012305798 ;
	setAttr ".pt[26]" -type "float3" 0 -0.37607241 0.07588575 ;
	setAttr ".pt[29]" -type "float3" 0 -0.0051015876 -0.016325466 ;
	setAttr ".pt[31]" -type "float3" 0 0.0257692 -0.02498644 ;
	setAttr ".pt[32]" -type "float3" 0 -0.026233602 -0.012316334 ;
	setAttr ".pt[38]" -type "float3" 0.047046177 -2.6645353e-14 0 ;
	setAttr ".pt[40]" -type "float3" 0 -0.21344657 0.04307029 ;
	setAttr ".pt[41]" -type "float3" 0 -0.21344657 0.04307029 ;
	setAttr ".pt[42]" -type "float3" 0 -0.21344657 0.04307029 ;
	setAttr ".pt[43]" -type "float3" 9.3132257e-10 0 0 ;
	setAttr ".pt[44]" -type "float3" -0.010856808 -8.8817842e-15 0 ;
	setAttr ".pt[45]" -type "float3" 0.0072378721 -8.8817842e-15 0 ;
	setAttr ".pt[47]" -type "float3" 0 -0.01731885 -0.054937307 ;
	setAttr ".pt[48]" -type "float3" 0 0.0068739373 0.021997122 ;
	setAttr ".pt[49]" -type "float3" 0 -0.01731885 -0.054937307 ;
	setAttr ".pt[50]" -type "float3" -0.10953364 0.050820604 -0.010254832 ;
	setAttr ".pt[51]" -type "float3" 0 0.050820604 -0.010254832 ;
	setAttr ".pt[52]" -type "float3" 0.17293243 0.050820678 -0.010254875 ;
	setAttr ".pt[53]" -type "float3" -0.01722022 -0.050820604 0.010254832 ;
	setAttr ".pt[54]" -type "float3" 0.037641775 -0.19311832 0.038968358 ;
	setAttr ".pt[55]" -type "float3" 0 -0.19311832 0.038968358 ;
	setAttr ".pt[56]" -type "float3" -0.038363799 -0.19311832 0.038968358 ;
	setAttr ".pt[57]" -type "float3" 0.017220218 -0.050820604 0.010254832 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "locator_Right";
	rename -uid "0E980A4B-437C-5D33-D184-9E96EA8AC8F0";
	setAttr ".rp" -type "double3" -3.481 14.483 2.23 ;
	setAttr ".sp" -type "double3" -3.481 14.483 2.23 ;
createNode locator -n "locator_RightShape" -p "locator_Right";
	rename -uid "9B863B8B-48E3-D50D-A703-739BA3062459";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -3.481 14.483 2.23 ;
createNode transform -n "locator_Left" -p "locator_Right";
	rename -uid "390ECEAE-4E18-EE46-7A34-E78DCFA8832A";
	setAttr ".rp" -type "double3" -3.471 12.963 2.26 ;
	setAttr ".sp" -type "double3" -3.471 12.963 2.26 ;
createNode locator -n "locator_LeftShape" -p "locator_Left";
	rename -uid "94FFD51E-465C-1B99-5487-9E90A198A324";
	setAttr -k off ".v";
	setAttr ".lp" -type "double3" -3.471 12.963 2.26 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0AC7A87E-476C-EF8D-0F0D-31AA0D7D7B90";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A517321C-488E-7A76-23B9-948F3BA5CDE0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2E5BA00D-4508-F227-2DF1-D885BD69ACF2";
createNode displayLayerManager -n "layerManager";
	rename -uid "ABEF0D48-49FE-3DD1-5D90-4592AF5553BA";
createNode displayLayer -n "defaultLayer";
	rename -uid "1F307025-4443-F41E-34D3-A38A7DA39C2E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C6FDAE6F-423C-5B96-E44E-D4B8627D4BDA";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DC0C4DAB-4060-172F-41B8-4EA04D39AE48";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "83D7159F-418F-027D-84ED-43AB53E59BFB";
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CEA823A4-4486-4178-E7FF-078AE1A0BDD6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 777\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1560\n            -height 716\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 777\n            -height 336\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 776\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1560\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1560\\n    -height 716\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8249F92B-4E75-81FA-A400-31A3C6799B14";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "27B93748-4175-DA76-A0BA-5BA198E76160";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 30.59621555571221 11.839727245351309 -4.2306926825080859 1;
	setAttr ".re" 5;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak1";
	rename -uid "EAAAA399-44D9-9738-73D6-79A443627D2A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -2.99927831 0 0 3.018026829
		 0 0 -0.73107547 2.92429686 0 0.44989231 2.92429686 0 -0.73107547 2.92429686 0 0.44989231
		 2.92429686 0 -2.99927831 0 0 3.018026829 0 0;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "74C5B45F-4876-FBC8-CD1D-559C872399DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 30.59621555571221 11.839727245351309 -4.2306926825080859 1;
	setAttr ".re" 4;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak2";
	rename -uid "3CEAF5AA-4FF9-EB3E-E4F5-74984762EDB8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" -0.14996411 -0.50612885 0 ;
	setAttr ".tk[1]" -type "float3" 0.26243719 -0.37491027 0 ;
	setAttr ".tk[6]" -type "float3" -0.14996411 -0.50612885 0 ;
	setAttr ".tk[7]" -type "float3" 0.26243719 -0.37491027 0 ;
	setAttr ".tk[8]" -type "float3" 0.37491027 1.0497495 0 ;
	setAttr ".tk[9]" -type "float3" -0.31867373 1.1247314 0 ;
	setAttr ".tk[10]" -type "float3" -0.31867373 1.1247314 0 ;
	setAttr ".tk[11]" -type "float3" 0.37491027 1.0497495 0 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "E1B778B4-459F-8DD3-6E2A-4CA17A260D13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[21]" "e[23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.256239263384387 11.839727245351309 -4.2306926825080859 1;
	setAttr ".re" 4;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak3";
	rename -uid "CDF694DD-406F-94E4-3DBE-AF94F7E12AB4";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[0:15]" -type "float3"  0.61473495 -0.20620064 0 -0.74538428
		 -0.16870962 0 0.10894893 0 0 0.58562076 0 0 0.10894893 0 0 0.58562076 0 0 0.61473495
		 -0.20620064 0 -0.74538428 -0.16870962 0 -0.56473041 0 0 0.44633967 0 0 0.44633967
		 0 0 -0.56473041 0 0 0.34875154 0 0 0.34875154 0 0 -0.63593549 0 0 -0.63593549 0 0;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "997B4E64-483D-F5F2-9635-2C9021EFECBA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[15]" "e[17]" "e[20]" "e[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.256239263384387 11.839727245351309 -4.2306926825080859 1;
	setAttr ".re" 15;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak4";
	rename -uid "ECC4DC00-416B-029A-209C-85B377BD3C52";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[0]" -type "float3" 0.063945152 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.063945152 0 0 ;
	setAttr ".tk[9]" -type "float3" -0.031972576 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.031972576 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.047958866 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.047958866 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.031972576 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.031972576 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.015986288 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.015986288 0 0 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "966504C0-474C-214C-0435-128D32A1FDFC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:9]" "e[12:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.256239263384387 11.839727245351309 -4.2306926825080859 1;
	setAttr ".re" 8;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak5";
	rename -uid "18FF2028-44A1-A306-B5B6-8FB7A090C242";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0.49557504 0.23979436 0 ;
	setAttr ".tk[3]" -type "float3" -0.54353386 0.23979436 0 ;
	setAttr ".tk[4]" -type "float3" 0.49557504 0.23979436 0 ;
	setAttr ".tk[5]" -type "float3" -0.54353386 0.23979436 0 ;
	setAttr ".tk[20]" -type "float3" -0.015986288 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.015986288 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.015986288 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.015986288 0 0 ;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "5F6B3CD1-4FC0-7EA7-6CA4-D1927D2A4CB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[50]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.256239263384387 11.839727245351309 -15.702548585770357 1;
	setAttr ".re" 6;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak6";
	rename -uid "0BD3B252-4D5C-6777-7DB5-B9BCACD9978B";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk[0:27]" -type "float3"  0 0 1.43888891 0 0 1.43888891
		 0 0 1.43888891 0 0 1.43888891 0 0 -1.43888891 0 0 -1.43888891 0 0 -1.43888891 0 0
		 -1.43888891 0 0 1.43888891 0 0 1.43888891 0 0 -1.43888891 0 0 -1.43888891 0 0 1.43888891
		 0 0 -1.43888891 0 0 -1.43888891 0 0 1.43888891 0 0 1.43888891 0 0 -1.43888891 0 0
		 -1.43888891 0 0 1.43888891 0 0 -1.43888891 0 0 1.43888891 0 0 1.43888891 0 0 -1.43888891
		 -0.28775322 0 -1.43888891 -0.28775322 0 1.43888891 0.33571211 0 1.43888891 0.33571211
		 0 -1.43888891;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "628B740A-4ACE-062F-3EB4-DDA36FD38BA0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[0:3]" "e[14]" "e[18]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[66]" "e[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.256239263384387 11.839727245351309 -15.702548585770357 1;
	setAttr ".re" 1;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak7";
	rename -uid "DBBB53B2-45F8-D3E8-C22B-35A8B09A54A0";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk[0:41]" -type "float3"  0 0 1.2064203 0 0 1.2064203
		 0 0 -1.18750906 0 0 -1.18750906 0 0 1.18750834 0 0 1.18750834 0 0 -1.20642102 0 0
		 -1.20642102 0 0 0.29777563 0 0 0.29777563 0 0 -0.29777634 0 0 -0.29777634 0 0 0.99673307
		 0 0 -0.99673378 0 0 -0.99673378 0 0 0.99673307 0 0 1.13652456 0 0 -1.13652527 0 0
		 -1.13652527 0 0 1.13652456 0 0 -0.71715081 0 0 0.71715009 0 0 0.71715009 0 0 -0.71715081
		 0 0 0.17402005 0 0 -0.17402077 0 0 -0.17402077 0 0 0.17402005 0 0 -2.1903598e-07
		 0 0 -3.2098242e-08 0 0 5.4924513e-08 0 0 1.3227806e-07 0 0 1.8384709e-07 0 0 2.0963161e-07
		 0 0 2.2252387e-07 0 0 2.2252387e-07 0 0 2.0963161e-07 0 0 1.8384709e-07 0 0 1.3227806e-07
		 0 0 5.4924513e-08 0 0 -3.2098242e-08 0 0 -2.1903598e-07;
createNode polyCube -n "polyCube2";
	rename -uid "E7685EF3-472E-0A92-1457-F484DB82DC24";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "AB19E340-4E60-14B2-7AC5-C4BF7C3286C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.320937192109991 7.2865890529638921 0 1;
	setAttr ".re" 4;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak8";
	rename -uid "CF93CD66-46FB-498B-4206-438EEF638301";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -3.74028754 -5.091648579 0
		 3.47843122 -4.48065042 0 -2.66376662 2.88041592 0 2.48919559 2.99679661 0 -2.66376662
		 2.88041592 0 2.48919559 2.99679661 0 -3.74028754 -5.091648579 0 3.47843122 -4.48065042
		 0;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "65774A9A-48D2-29B4-FB0E-C6BB5D067337";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.320937192109991 7.2865890529638921 -15.702548980712891 1;
	setAttr ".re" 0;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak9";
	rename -uid "4796AAA8-4E11-599E-72E8-FFB1AB048FE3";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0 1.3466655 3.36159897 -0.029095097
		 1.40485573 3.36159897 0 0 3.36159897 0 0 3.36159897 0 0 -3.36159897 0 0 -3.36159897
		 0 1.3466655 -3.36159897 -0.029095097 1.40485573 -3.36159897 -0.29095092 0.17457056
		 3.36159897 -0.29095092 0.17457056 -3.36159897 -0.17457056 0 -3.36159897 -0.17457056
		 0 3.36159897;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "A54EF2D4-4FFA-6691-95FB-4B9832B115BB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[16]" "e[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.320937192109991 7.2865890529638921 -15.702548980712891 1;
	setAttr ".re" 1;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak10";
	rename -uid "1C5CD65F-4286-6233-558B-8A9C87CD1B33";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[0:17]" -type "float3"  0 -1.28018403 0 0 -1.28018403
		 0 0 0 -0.75803369 0 0 -0.75803369 0 0 0.75803369 0 0 0.75803369 0 -1.28018403 0 0
		 -1.28018403 0 0.029095093 0 -0.18791914 0.029095093 0 0.18791914 0 0 0.18791914 0
		 0 -0.18791914 -0.20366566 -0.46552145 0 0 0 -0.18791914 0 0 -0.75803369 0 0 0.75803369
		 0 0 0.18791914 -0.20366566 -0.46552145 0;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "9FEF34CD-45DC-D43E-E15D-71BFE6128A21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[19:20]" "e[23]" "e[25]" "e[27]" "e[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.320937192109991 7.2865890529638921 -15.702548980712891 1;
	setAttr ".re" 23;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "75B1BD12-401D-76B3-0DB3-1F837DA9B928";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[8:9]" "e[12]" "e[17]" "e[24]" "e[28]" "e[36]" "e[43]" "e[48]" "e[55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.320937192109991 7.2865890529638921 -15.702548980712891 1;
	setAttr ".re" 24;
	setAttr ".p[0]"  0 0 1;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "94B7AE5A-407B-B3DB-368C-83A87C23CBE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[8:9]" "e[28]" "e[36]" "e[48]" "e[56:57]" "e[59]" "e[71]" "e[73]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.320937192109991 7.2865890529638921 -15.702548980712891 1;
	setAttr ".re" 56;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak11";
	rename -uid "A41C513F-4D3A-0DCC-6D2A-CCA7AC1FF37D";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[30:39]" -type "float3"  -0.05210793 -0.7295112 0 -0.12158518
		 -0.72951108 0 -0.17369311 -0.7295112 0 -0.17369311 -0.7295112 0 -0.12158518 -0.72951108
		 0 -0.05210793 -0.7295112 0 0.05210793 -0.7295112 0 0.086846545 -0.7295112 0 0.086846545
		 -0.7295112 0 0.05210793 -0.7295112 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "B4FEEEC3-4274-EEC7-7B8D-0EB7A0E9DC8A";
	setAttr ".ics" -type "componentList" 2 "f[28]" "f[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.320937192109991 7.2865890529638921 -15.702548980712891 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 19.448698 8.9326973 -12.385191 ;
	setAttr ".rs" 40437;
	setAttr ".lt" -type "double3" 2.2412627309620348e-15 2.1926904736346842e-15 1.4478145643231917 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 17.95281580653565 7.4968310561663305 -12.456455230712891 ;
	setAttr ".cbx" -type "double3" 20.944582140115667 10.368564036179224 -12.313926458358765 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "D41D9F15-4ACF-23AA-971A-A5B5B1AFA964";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[20]" -type "float3" 0.53844851 0.086846545 0 ;
	setAttr ".tk[21]" -type "float3" 0.66003376 -0.034738623 0 ;
	setAttr ".tk[22]" -type "float3" 0.66003376 -0.034738623 0 ;
	setAttr ".tk[23]" -type "float3" 0.53844851 0.086846545 0 ;
	setAttr ".tk[30]" -type "float3" 0.12158516 -0.22580105 0 ;
	setAttr ".tk[31]" -type "float3" 0.64266449 -0.17369309 0 ;
	setAttr ".tk[32]" -type "float3" -0.017369309 -0.26053968 0 ;
	setAttr ".tk[33]" -type "float3" -0.017369309 -0.26053968 0 ;
	setAttr ".tk[34]" -type "float3" 0.64266449 -0.17369309 0 ;
	setAttr ".tk[35]" -type "float3" 0.12158516 -0.22580105 0 ;
	setAttr ".tk[36]" -type "float3" 0.10421588 -0.39949426 0 ;
	setAttr ".tk[37]" -type "float3" -0.017369309 -0.27790898 0 ;
	setAttr ".tk[38]" -type "float3" -0.017369309 -0.27790898 0 ;
	setAttr ".tk[39]" -type "float3" 0.10421588 -0.39949426 0 ;
	setAttr ".tk[40]" -type "float3" 0.17369311 1.0768975 0 ;
	setAttr ".tk[41]" -type "float3" 0.69477254 0.62529522 0 ;
	setAttr ".tk[42]" -type "float3" 0.10421585 0.52107924 0 ;
	setAttr ".tk[43]" -type "float3" 0.10421585 0.52107924 0 ;
	setAttr ".tk[44]" -type "float3" 0.69477254 0.62529522 0 ;
	setAttr ".tk[45]" -type "float3" 0.17369311 1.0768975 0 ;
	setAttr ".tk[46]" -type "float3" -0.45160195 0.60792595 0 ;
	setAttr ".tk[47]" -type "float3" -0.017369313 0.64266455 0 ;
	setAttr ".tk[48]" -type "float3" -0.017369313 0.64266455 0 ;
	setAttr ".tk[49]" -type "float3" -0.45160195 0.60792595 0 ;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "0C9AC055-45E3-0752-D4CE-A2B31AD0AA0B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[26]" "e[31]" "e[34]" "e[40]" "e[46]" "e[52]" "e[61]" "e[71]" "e[81]" "e[91]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.320937192109991 7.2865890529638921 -15.702548980712891 1;
	setAttr ".re" 6;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak13";
	rename -uid "FDB0018E-442A-6BF2-0DA2-469C97CDB266";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 0.36452627 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.36452627 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.087989077 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.087989077 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.087989077 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.36452627 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.36452627 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.087989077 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.36452627 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.087989077 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.28910705 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.28910705 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.28910705 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.28910705 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.28910705 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.36452627 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.31424677 ;
	setAttr ".tk[42]" -type "float3" 0 0 0.31424677 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.31424677 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.31424677 ;
	setAttr ".tk[50]" -type "float3" 0 -0.30106503 0.63976359 ;
	setAttr ".tk[51]" -type "float3" 0 -0.51745582 1.2418931 ;
	setAttr ".tk[52]" -type "float3" 0 -0.30106503 0.63976359 ;
	setAttr ".tk[53]" -type "float3" 0 -0.52686411 1.3359756 ;
	setAttr ".tk[54]" -type "float3" 0 -0.51745582 1.2418931 ;
	setAttr ".tk[55]" -type "float3" 0 -0.30106503 0.60213041 ;
createNode polySplitRing -n "polySplitRing15";
	rename -uid "A84431F3-4E0C-C774-042C-BF8E8B2A0FC8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[6:7]" "e[14]" "e[26]" "e[34]" "e[46]" "e[61]" "e[81]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.320937192109991 7.2865890529638921 -15.702548980712891 1;
	setAttr ".re" 6;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak14";
	rename -uid "87FAF042-46AE-6476-C269-66A1B232A4CF";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[0]" -type "float3" 0.49586162 0 -0.68657744 ;
	setAttr ".tk[1]" -type "float3" -0.34328878 0 -0.85822165 ;
	setAttr ".tk[2]" -type "float3" 0.49586162 0 -0.68657744 ;
	setAttr ".tk[3]" -type "float3" -0.34328878 0 -0.85822165 ;
	setAttr ".tk[8]" -type "float3" 0.49586162 0 -0.68657744 ;
	setAttr ".tk[11]" -type "float3" -0.34328878 0 -0.85822165 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.11798164 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.11798164 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.11798164 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.11798164 ;
	setAttr ".tk[32]" -type "float3" 0.49586162 0 -0.68657744 ;
	setAttr ".tk[38]" -type "float3" -0.34328878 0 -0.85822165 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.11798164 ;
	setAttr ".tk[42]" -type "float3" 0.49586162 0 -0.68657744 ;
	setAttr ".tk[48]" -type "float3" -0.34328878 0 -0.85822165 ;
createNode polySplitRing -n "polySplitRing16";
	rename -uid "4C973AEC-4B92-006B-2934-F9845906EAB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[6:7]" "e[16]" "e[22]" "e[30]" "e[42]" "e[50]" "e[53]" "e[57]" "e[63]" "e[65]" "e[67]" "e[69]" "e[73]" "e[82]" "e[100]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.256239263384387 11.839727245351309 -15.702548585770357 1;
	setAttr ".re" 69;
	setAttr ".p[0]"  0 0 1;
createNode polyCube -n "polyCube3";
	rename -uid "2CC48B2B-4A39-5E87-A096-98A4CCA91F6E";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "DBD5A29F-4367-FCEC-042E-1BA09AD47952";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.809517187634405 2.3224264896080591 -15.702548980712891 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 21.749126 2.1445148 -15.702549 ;
	setAttr ".rs" 34199;
	setAttr ".lt" -type "double3" 0.52045026585328724 -2.0760420068451332e-15 0.93679456119153226 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 20.209048671284613 1.902948609606991 -17.894205570220947 ;
	setAttr ".cbx" -type "double3" 23.289202494183478 2.386081150786648 -13.510892868041992 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "67001028-48F0-F1D8-A4D8-AE8F74DFF676";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -1.10046852 0.08052212 1.69165599
		 0.97968531 0.56365466 1.69165599 -1.39571607 -0.067101769 1.95952618 0.71127844 0.55023432
		 1.95952618 -1.39571607 -0.067101769 -1.95952678 0.71127844 0.55023432 -1.95952678
		 -1.10046852 0.08052212 -1.69165659 0.97968531 0.56365466 -1.69165659;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "6200FD87-45AE-A53D-EBF0-D9A85455FEC8";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.809517187634405 2.3224264896080591 -15.702548980712891 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 22.408455 1.2996843 -15.702549 ;
	setAttr ".rs" 45664;
	setAttr ".lt" -type "double3" 0.8339706991223611 1.2476549285005343e-14 1.0193176086258418 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 20.868377966442999 1.0581180370018579 -17.894205093383789 ;
	setAttr ".cbx" -type "double3" 23.948530478039679 1.5412506377861597 -13.510892868041992 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "F08D3352-4453-95F5-6E10-0FB7B3F72DDB";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.809517187634405 2.3224264896080591 -15.702548980712891 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 23.027954 0.74399871 -15.702549 ;
	setAttr ".rs" 53953;
	setAttr ".lt" -type "double3" 0.38619145094917029 3.3992201544539714e-15 1.2333774925545282 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 21.90390905515283 0.19376438023305909 -17.894205093383789 ;
	setAttr ".cbx" -type "double3" 24.151999992886481 1.2942330157921411 -13.510892868041992 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "139FD37E-4117-5DE3-4BF6-8D9A37C62BB9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0.026840707 -0.053681415 0
		 -0.34892917 0.41603085 0 -0.34892917 0.41603085 0 0.026840707 -0.053681415 0 0.053681415
		 0.013420354 0 -0.77838016 0.63075644 0 -0.77838016 0.63075644 0 0.053681415 0.013420354
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "13C592AE-4AF2-93CD-CE7D-74A335AD16AE";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.809517187634405 2.3224264896080591 -15.702548980712891 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 23.917089 -0.19398196 -15.702549 ;
	setAttr ".rs" 49425;
	setAttr ".lt" -type "double3" -3.2751579226442118e-15 4.5654128776775253e-15 0.9623355515966322 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 22.793043417492804 -0.74421627162240966 -17.894205093383789 ;
	setAttr ".cbx" -type "double3" 25.041134161511359 0.35625236393667237 -13.510892868041992 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "ACEAB233-4149-EF5D-44F0-5AAEF30827B2";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.809517187634405 2.3224264896080591 -15.702548980712891 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 24.340193 -1.0583163 -15.702549 ;
	setAttr ".rs" 62838;
	setAttr ".lt" -type "double3" 2.7755575615628914e-16 6.5846665959599842e-15 0.65624511326872481 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 23.216146750012335 -1.6085506164863013 -17.894205093383789 ;
	setAttr ".cbx" -type "double3" 25.46423749403089 -0.50808198092721923 -13.510892868041992 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "FB60DAC2-4052-119E-5392-A7A4E761A0D4";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.809517187634405 2.3224264896080591 -15.702548980712891 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 24.674458 -0.52137417 -15.702549 ;
	setAttr ".rs" 39148;
	setAttr ".lt" -type "double3" -8.2434059578417873e-15 1.7568760409966845e-15 0.32489989066531966 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 23.950640005627569 -0.9858449184729956 -17.894205093383789 ;
	setAttr ".cbx" -type "double3" 25.39827422575086 -0.056903430207004391 -13.510892868041992 ;
createNode polyTweak -n "polyTweak17";
	rename -uid "28130463-4E80-727A-DB77-F8AA2DBF054E";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[0]" -type "float3" 0.045740373 -0.045740377 0 ;
	setAttr ".tk[1]" -type "float3" -0.045740377 0.1486562 0 ;
	setAttr ".tk[6]" -type "float3" 0.045740373 -0.045740377 0 ;
	setAttr ".tk[7]" -type "float3" -0.045740377 0.1486562 0 ;
	setAttr ".tk[8]" -type "float3" -0.080045655 0.034305282 0 ;
	setAttr ".tk[9]" -type "float3" -0.034305278 0.02287019 0 ;
	setAttr ".tk[10]" -type "float3" -0.034305278 0.02287019 0 ;
	setAttr ".tk[11]" -type "float3" -0.080045655 0.034305282 0 ;
	setAttr ".tk[12]" -type "float3" -0.36592296 0.17152639 0 ;
	setAttr ".tk[13]" -type "float3" -0.19439657 0.11435093 0 ;
	setAttr ".tk[14]" -type "float3" -0.19439657 0.11435093 0 ;
	setAttr ".tk[15]" -type "float3" -0.36592296 0.17152639 0 ;
	setAttr ".tk[16]" -type "float3" -0.43453351 0.4802739 0 ;
	setAttr ".tk[17]" -type "float3" -0.62893009 0.46883881 0 ;
	setAttr ".tk[18]" -type "float3" -0.62893009 0.46883881 0 ;
	setAttr ".tk[19]" -type "float3" -0.43453351 0.4802739 0 ;
	setAttr ".tk[20]" -type "float3" -0.25157204 0.94911307 0 ;
	setAttr ".tk[21]" -type "float3" -0.57175463 0.91480738 0 ;
	setAttr ".tk[22]" -type "float3" -0.57175463 0.91480738 0 ;
	setAttr ".tk[23]" -type "float3" -0.25157204 0.94911307 0 ;
	setAttr ".tk[24]" -type "float3" 0.4459686 1.2121209 0 ;
	setAttr ".tk[25]" -type "float3" -0.3544879 1.0405939 0 ;
	setAttr ".tk[26]" -type "float3" -0.3544879 1.0405939 0 ;
	setAttr ".tk[27]" -type "float3" 0.4459686 1.2121209 0 ;
createNode polyCube -n "polyCube4";
	rename -uid "94DF44C7-46BD-E7A5-EB7B-8694E5955D00";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing17";
	rename -uid "A185BE40-40C2-CCD7-D7A0-AFBECADDD943";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.205804024400859 1.6031555946912242 -12.867491009030424 1;
	setAttr ".re" 4;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak18";
	rename -uid "AA92BE04-48AC-E984-345D-3A9EB442AD80";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" -0.73707867 -1.3834397 0 ;
	setAttr ".tk[1]" -type "float3" 0.18143484 -1.3834397 0 ;
	setAttr ".tk[6]" -type "float3" -0.73707867 -1.3834397 0 ;
	setAttr ".tk[7]" -type "float3" 0.18143484 -1.3834397 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "25E6163A-4042-BEDF-4645-2BB1B7E0DE73";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.205804024400859 1.6031555946912242 -12.867491009030424 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 19.149105 2.6928186 -13.194224 ;
	setAttr ".rs" 35143;
	setAttr ".lt" -type "double3" -7.1054273576010019e-15 -2.234202142410099e-15 0.91354585599561755 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 17.71925273961082 2.6928186234082654 -14.386899354252897 ;
	setAttr ".cbx" -type "double3" 20.578958426180034 2.6928186234082654 -12.001549484524809 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "3430CEA8-4DDA-AEA1-F09E-C0B6D907E970";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0 -0.022766916 0.06534671
		 0 -0.022766916 0.06534671 -0.98655128 0.58966297 0.36594152 0.87315446 0.58966303
		 0.36594152 -0.98655128 0.58966297 -1.019408345 0.87315446 0.58966303 -1.019408345
		 0 -0.022766916 0.32673353 0 -0.022766916 0.32673353 0.12473644 -0.36286956 0.19604014
		 0.12473644 -0.36286956 -0.078416049 0.1474158 -0.36286956 -0.078416049 0.1474158
		 -0.36286956 0.19604014;
createNode polySplitRing -n "polySplitRing18";
	rename -uid "A10057AA-4B70-EACC-7281-5086F5BDEDE6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[8:9]" "e[12]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.205804024400859 1.6031555946912242 -12.867491009030424 1;
	setAttr ".re" 8;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak20";
	rename -uid "763B8704-4FE9-C81E-0735-E0B71CFC1A04";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  -0.21545388 0 0 0.1814348
		 0 0 0.1814348 0 0 -0.21545388 0 0;
createNode polySplitRing -n "polySplitRing19";
	rename -uid "23408E62-40EA-F927-4A55-BD8A6FDC4A45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[13]" "e[15]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.205804024400859 1.6031555946912242 -12.867491009030424 1;
	setAttr ".re" 4;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak21";
	rename -uid "9CEE49D7-4957-7D9A-FC58-6099581C578A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[3]" -type "float3" -0.045358703 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.045358703 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.10205708 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.10205708 0 0 ;
	setAttr ".tk[16]" -type "float3" -0.090717405 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.090717405 0 0 ;
	setAttr ".tk[18]" -type "float3" 0.045358703 0 0 ;
	setAttr ".tk[19]" -type "float3" 0.045358703 0 0 ;
createNode polySplitRing -n "polySplitRing20";
	rename -uid "FDD44BD1-49D5-8CBD-3837-158D6E3CECC8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[24]" "e[27]" "e[30]" "e[34]" "e[38]" "e[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.205804024400859 1.6031555946912242 -12.867491009030424 1;
	setAttr ".re" 24;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak22";
	rename -uid "309DDB87-4100-7412-20C7-EAAA4F2C6EE2";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[0]" -type "float3" 0.045358703 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.10205708 0 0 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.0063590873 ;
	setAttr ".tk[3]" -type "float3" 0 0 -0.0063590873 ;
	setAttr ".tk[6]" -type "float3" 0.045358703 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.10205708 0 0 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.0063590873 ;
	setAttr ".tk[9]" -type "float3" 0 0 -0.025436349 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.025436349 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.0063590873 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.0063590873 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.012718175 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.012718175 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.0063590873 ;
	setAttr ".tk[20]" -type "float3" -0.056698378 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.056698378 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.011339676 0 0 ;
	setAttr ".tk[23]" -type "float3" -0.011339676 0 0 ;
createNode polySplitRing -n "polySplitRing21";
	rename -uid "5C234240-425F-FD17-9B72-F6B7BB53F4C2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0:3]" "e[16]" "e[19]" "e[22]" "e[26]" "e[32]" "e[35]" "e[40]" "e[43]" "e[46]" "e[58]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.205804024400859 1.6031555946912242 -12.867491009030424 1;
	setAttr ".re" 32;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak23";
	rename -uid "D8D3D8A6-403D-EB40-976C-059EF46595D9";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk[0:24]" -type "float3"  0.34724256 0 0 -0.26149374
		 0 0 0.34724256 0 0 -0.26149374 0 0 0.20752013 0 0 -0.13497587 0 0 0.20752013 0 0
		 -0.13497587 0 0 0.34724256 0 0 0.20752013 0 0 -0.13497587 0 0 -0.26149374 0 0 0.34724256
		 0 0 -0.26149374 0 0 -0.13497587 0 0 0.20752013 0 0 0.20752013 0 0 0.34724256 0 0
		 -0.26149374 0 0 -0.13497587 0 0 0.34724256 0 0 0.20752013 0 0 -0.13497587 0 0 -0.26149374
		 0 0 0 0 0;
createNode polyCube -n "polyCube5";
	rename -uid "22879D73-4288-2690-5510-468D5D3CBD4C";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "51B799FF-4066-DF94-11A6-39891477EC7E";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.400789214892995 9.5255203161771824 -12.4564496442317 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 19.400789 9.2541409 -11.990229 ;
	setAttr ".rs" 47334;
	setAttr ".lt" -type "double3" 0 -1.1102230246251565e-15 2.0923098330050003 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 18.849133922382009 8.91355859380322 -12.397297041082286 ;
	setAttr ".cbx" -type "double3" 19.952444507403982 9.5947238121564915 -11.58315999951353 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "30B225D0-4195-D9C0-E67D-79AD12F3023D";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.051655278 -0.11196174 -0.4408474
		 0.051655278 -0.11196174 -0.4408474 -0.051655278 -0.4307965 0.37328964 0.051655278
		 -0.4307965 0.37328964 -0.051655278 0.25267676 0.73232841 0.051655278 0.25267676 0.73232841
		 -0.051655278 0.39059201 0.16946839 0.051655278 0.39059201 0.16946839;
createNode polySplitRing -n "polySplitRing22";
	rename -uid "A5714BAE-45DC-CABF-EDCC-DBBD29CFEAA9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.400789214892995 9.5255203161771824 -12.4564496442317 1;
	setAttr ".re" 12;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak25";
	rename -uid "C309ADDE-465D-3488-0729-68B497FEBB2A";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[0:11]" -type "float3"  0 -2.40242076 0.45563123 0
		 -2.40242076 0.45563123 0 -2.14008737 0.80080646 0 -2.14008737 0.80080646 0 7.4505806e-09
		 7.4505806e-09 0 7.4505806e-09 7.4505806e-09 0 -0.041421033 -0.11045609 0 -0.041421033
		 -0.11045609 0 -3.10458851 0.73756999 0 -3.10458851 0.73756999 0 -3.66851187 0.10548675
		 0 -3.66851187 0.10548675;
createNode polySplitRing -n "polySplitRing23";
	rename -uid "82A35BE3-4E77-94DF-6F3F-BB8C5680AEDA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[20:21]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.400789214892995 9.5255203161771824 -12.4564496442317 1;
	setAttr ".re" 21;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak26";
	rename -uid "547CD1E0-454C-656B-A747-2288B9ED3DB4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[12:15]" -type "float3"  0 0.015110809 0.0075554047
		 0 0.055228047 0.089093685 0 0.055228047 0.089093685 0 0.015110809 0.0075554047;
createNode polySplitRing -n "polySplitRing24";
	rename -uid "22CDF0E7-4571-09D6-9A02-7B844980C7C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 19.400789214892995 9.5255203161771824 -12.4564496442317 1;
	setAttr ".re" 15;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak27";
	rename -uid "47A1B7E9-4E39-EC48-FB0A-8484BCAB50F7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 0.015110809 0.052887827
		 0 0.015110809 0.052887827 0 -0.030221619 -0.037777022 0 -0.030221619 -0.037777022;
createNode polySplitRing -n "polySplitRing25";
	rename -uid "273AC360-4645-6727-4B3A-39B34772DE3D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[40]" "e[43]" "e[48]" "e[51]" "e[56]" "e[59]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.809517187634405 2.3224264896080591 -15.702548980712891 1;
	setAttr ".re" 24;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak28";
	rename -uid "2082FF17-478A-CBBD-D10A-1CB17729B06A";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[8:31]" -type "float3"  0 0 0.33917719 0 0 0.33917719
		 0 0 -0.33917719 0 0 -0.33917719 0 0 0.60871929 0 0 0.60871929 0 0 -0.60871929 0 0
		 -0.60871929 0 0 0.86335653 0 0 0.86335653 0 0 -0.86335653 0 0 -0.86335653 0 0 1.056876302
		 -0.045740377 -0.080045655 1.056876302 -0.045740377 -0.080045655 -1.056876302 0 0
		 -1.056876302 0 0 1.20699131 -0.20583166 -0.080045655 1.20699131 -0.20583166 -0.080045655
		 -1.20699131 0 0 -1.20699131 0.66323537 0.3087475 1.50703812 -0.26300713 -0.19439659
		 1.50703812 -0.26300713 -0.19439659 -1.50703812 0.66323537 0.3087475 -1.50703812;
createNode polySplitRing -n "polySplitRing26";
	rename -uid "E25555DC-473F-0CD1-1D24-15A3AF97D341";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]" "e[38]" "e[42]" "e[46]" "e[50]" "e[54]" "e[58]" "e[70]" "e[86]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 21.809517187634405 2.3224264896080591 -15.702548980712891 1;
	setAttr ".re" 18;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak29";
	rename -uid "CD4CEC48-4919-08E2-F3A5-5CB877C94FB3";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" 0.24863602 0.045206562 0 ;
	setAttr ".tk[1]" -type "float3" -0.2473304 -0.10861316 1.8626487e-09 ;
	setAttr ".tk[2]" -type "float3" 0.24863602 0.045206562 0 ;
	setAttr ".tk[3]" -type "float3" -0.24733043 -0.10861316 3.5527137e-15 ;
	setAttr ".tk[10]" -type "float3" -0.2473304 -0.10861316 3.5527137e-15 ;
	setAttr ".tk[11]" -type "float3" 0.24863602 0.045206562 0 ;
	setAttr ".tk[14]" -type "float3" -0.24733043 -0.10861316 3.5527137e-15 ;
	setAttr ".tk[15]" -type "float3" 0.24863602 0.045206562 0 ;
	setAttr ".tk[18]" -type "float3" -0.23107727 -0.12486632 -9.3131902e-10 ;
	setAttr ".tk[19]" -type "float3" 0.21612971 0.093966037 0 ;
	setAttr ".tk[22]" -type "float3" -0.24733043 -0.10861316 3.5527137e-15 ;
	setAttr ".tk[23]" -type "float3" 0.22154742 0.093966037 0 ;
	setAttr ".tk[26]" -type "float3" -0.20940639 -0.14111948 -1.8626416e-09 ;
	setAttr ".tk[27]" -type "float3" 0.18904111 0.13730779 0 ;
	setAttr ".tk[30]" -type "float3" -0.20557284 -0.1249908 3.5527137e-15 ;
	setAttr ".tk[31]" -type "float3" 0.052310698 0.068742231 0 ;
createNode polySplitRing -n "polySplitRing27";
	rename -uid "F4B4E81D-457F-3A97-FEB8-FFBB9BB2B120";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[0:3]" "e[14]" "e[18]" "e[24]" "e[27]" "e[30]" "e[34]" "e[40]" "e[43]";
	setAttr ".ix" -type "matrix" 1.2859259174342181 0 0 0 0 0.96988862924478136 0.2435488592904492 0
		 0 -0.30308302327501446 1.2069725099430819 0 21.80348064682159 9.8053962201324172 -18.534553409884477 1;
	setAttr ".re" 1;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak30";
	rename -uid "025106C1-4596-5EE9-3791-49BC7A457B59";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[0:23]" -type "float3"  -0.40039051 2.088891029 2.1181047
		 0.47197163 2.088891029 2.1181047 -0.40039051 3.0017695427 0.56628227 0.47197163 3.0017695427
		 0.56628227 -0.49406007 0.067475319 -0.67105883 0.55981088 0.067475319 -0.67105883
		 -0.49406007 -0.67246431 0.57792026 0.55981088 -0.67246431 0.57792026 0.42600033 4.79753733
		 3.086153507 -0.42600033 4.79753733 3.086153507 -0.42600033 4.895473 2.87985134 0.42600033
		 4.895473 2.87985134 -0.17513253 3.40807939 2.63236952 -0.17513253 4.015534878 1.73274159
		 0.25027511 4.015534878 1.73274159 0.25027511 3.40807939 2.63236952 0.095007211 4.48279858
		 2.34319711 -0.03812651 4.48279858 2.34319711 -0.03812651 4.074059963 2.99357986 0.095007211
		 4.074059963 2.99357986 0.34669125 3.56082964 1.15516019 0.34669125 2.74978971 2.37083936
		 -0.30195305 2.74978971 2.37083936 -0.30195305 3.56082964 1.15516019;
createNode polySplitRing -n "polySplitRing28";
	rename -uid "84769B49-4863-4268-229C-EFADBC2981F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[4:5]" "e[8:9]" "e[16]" "e[19]" "e[22]" "e[26]" "e[32]" "e[35]" "e[38]" "e[42]" "e[48]" "e[60]";
	setAttr ".ix" -type "matrix" 1.2859259174342181 0 0 0 0 0.96988862924478136 0.2435488592904492 0
		 0 -0.30308302327501446 1.2069725099430819 0 21.80348064682159 9.8053962201324172 -18.534553409884477 1;
	setAttr ".re" 32;
	setAttr ".p[0]"  0 0 1;
createNode polyTweak -n "polyTweak31";
	rename -uid "160C8861-485F-553B-7C66-AC9641C25F85";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -0.35325268 0.071281075 ;
	setAttr ".tk[3]" -type "float3" 7.4505806e-09 -0.35325268 0.071281075 ;
	setAttr ".tk[4]" -type "float3" -7.4505806e-09 -0.35325268 0.071281075 ;
	setAttr ".tk[5]" -type "float3" 7.4505806e-09 -0.35325268 0.071281075 ;
	setAttr ".tk[10]" -type "float3" 4.6566129e-10 -0.052390527 0.010571641 ;
	setAttr ".tk[11]" -type "float3" 9.3132257e-10 -0.052390527 0.010571641 ;
	setAttr ".tk[13]" -type "float3" 0 -0.35325268 0.071281075 ;
	setAttr ".tk[14]" -type "float3" 3.7252903e-09 -0.35325268 0.071281075 ;
	setAttr ".tk[16]" -type "float3" 0 -0.35325268 0.071281075 ;
	setAttr ".tk[17]" -type "float3" 3.7252903e-09 -0.35325268 0.071281075 ;
	setAttr ".tk[20]" -type "float3" 0 -0.35325268 0.071281075 ;
	setAttr ".tk[23]" -type "float3" 0 -0.35325268 0.071281075 ;
	setAttr ".tk[26]" -type "float3" 0 -0.095269136 0.019223876 ;
	setAttr ".tk[27]" -type "float3" 0 -0.095269136 0.019223876 ;
	setAttr ".tk[28]" -type "float3" 0 -0.095269136 0.019223876 ;
	setAttr ".tk[29]" -type "float3" 0 -0.095269136 0.019223876 ;
	setAttr ".tk[30]" -type "float3" 0 -0.095269136 0.019223876 ;
	setAttr ".tk[31]" -type "float3" 0 -0.095269136 0.019223876 ;
createNode polySplitRing -n "polySplitRing29";
	rename -uid "8E9D7C5C-4AFB-8760-8443-D1BF84AD333C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[46]" "e[50]" "e[76]" "e[82]";
	setAttr ".ix" -type "matrix" 1.2859259174342181 0 0 0 0 0.96988862924478136 0.2435488592904492 0
		 0 -0.30308302327501446 1.2069725099430819 0 21.80348064682159 9.8053962201324172 -18.534553409884477 1;
	setAttr ".re" 7;
	setAttr ".p[0]"  0 0 1;
select -ne :time1;
	setAttr ".o" 14;
	setAttr ".unw" 14;
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
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":sideShape.msg" "imagePlaneShape1.ltc";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape2.ws";
connectAttr ":frontShape.msg" "imagePlaneShape2.ltc";
connectAttr "polySplitRing16.out" "HeadShape.i";
connectAttr "polySplitRing15.out" "BodyShape.i";
connectAttr "polySplitRing26.out" "TailShape.i";
connectAttr "polySplitRing21.out" "LegShape.i";
connectAttr "polySplitRing29.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "HeadShape.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "HeadShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySplitRing3.ip";
connectAttr "HeadShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing4.ip";
connectAttr "HeadShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing5.ip";
connectAttr "HeadShape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing6.ip";
connectAttr "HeadShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing7.ip";
connectAttr "HeadShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polySplitRing8.ip";
connectAttr "BodyShape.wm" "polySplitRing8.mp";
connectAttr "polyCube2.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polySplitRing9.ip";
connectAttr "BodyShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing8.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing10.ip";
connectAttr "BodyShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing9.out" "polyTweak10.ip";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "BodyShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "BodyShape.wm" "polySplitRing12.mp";
connectAttr "polyTweak11.out" "polySplitRing13.ip";
connectAttr "BodyShape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing12.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace1.ip";
connectAttr "BodyShape.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing13.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polySplitRing14.ip";
connectAttr "BodyShape.wm" "polySplitRing14.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polySplitRing15.ip";
connectAttr "BodyShape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing14.out" "polyTweak14.ip";
connectAttr "polySplitRing7.out" "polySplitRing16.ip";
connectAttr "HeadShape.wm" "polySplitRing16.mp";
connectAttr "polyTweak15.out" "polyExtrudeFace2.ip";
connectAttr "TailShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyCube3.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "TailShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak16.out" "polyExtrudeFace4.ip";
connectAttr "TailShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak16.ip";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "TailShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "TailShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak17.out" "polyExtrudeFace7.ip";
connectAttr "TailShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polySplitRing17.ip";
connectAttr "LegShape.wm" "polySplitRing17.mp";
connectAttr "polyCube4.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace8.ip";
connectAttr "LegShape.wm" "polyExtrudeFace8.mp";
connectAttr "polySplitRing17.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polySplitRing18.ip";
connectAttr "LegShape.wm" "polySplitRing18.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polySplitRing19.ip";
connectAttr "LegShape.wm" "polySplitRing19.mp";
connectAttr "polySplitRing18.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polySplitRing20.ip";
connectAttr "LegShape.wm" "polySplitRing20.mp";
connectAttr "polySplitRing19.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polySplitRing21.ip";
connectAttr "LegShape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing20.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyCube5.out" "polyTweak24.ip";
connectAttr "polyTweak25.out" "polySplitRing22.ip";
connectAttr "pCubeShape1.wm" "polySplitRing22.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak25.ip";
connectAttr "polyTweak26.out" "polySplitRing23.ip";
connectAttr "pCubeShape1.wm" "polySplitRing23.mp";
connectAttr "polySplitRing22.out" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polySplitRing24.ip";
connectAttr "pCubeShape1.wm" "polySplitRing24.mp";
connectAttr "polySplitRing23.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polySplitRing25.ip";
connectAttr "TailShape.wm" "polySplitRing25.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polySplitRing26.ip";
connectAttr "TailShape.wm" "polySplitRing26.mp";
connectAttr "polySplitRing25.out" "polyTweak29.ip";
connectAttr "polyTweak30.out" "polySplitRing27.ip";
connectAttr "pCubeShape1.wm" "polySplitRing27.mp";
connectAttr "polySplitRing24.out" "polyTweak30.ip";
connectAttr "polyTweak31.out" "polySplitRing28.ip";
connectAttr "pCubeShape1.wm" "polySplitRing28.mp";
connectAttr "polySplitRing27.out" "polyTweak31.ip";
connectAttr "polySplitRing28.out" "polySplitRing29.ip";
connectAttr "pCubeShape1.wm" "polySplitRing29.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "HeadShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "BodyShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "TailShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "LegShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of prinny_002a.ma
