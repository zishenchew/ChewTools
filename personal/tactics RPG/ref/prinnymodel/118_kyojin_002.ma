//Maya ASCII 2018 scene
//Name: 118_kyojin_002.ma
//Last modified: Wed, Mar 14, 2018 10:48:37 AM
//Codeset: 932
file -rdi 1 -ns ":" -rfn "SER_116_kRN" -op "v=0;" -typ "mayaAscii" "D:/SER/SVN/MAYA/model/SER_018_k/scenes/SER_118_k.ma";
file -rdi 1 -ns ":" -rfn "SkyDomeRN" -op "v=0;" -typ "mayaAscii" "D:/SER/SVN/MAYA/motion/maya/camera/SkyDome.ma";
file -r -ns ":" -dr 1 -rfn "SER_116_kRN" -op "v=0;" -typ "mayaAscii" "D:/SER/SVN/MAYA/model/SER_018_k/scenes/SER_118_k.ma";
file -r -ns ":" -dr 1 -rfn "SkyDomeRN" -op "v=0;" -typ "mayaAscii" "D:/SER/SVN/MAYA/motion/maya/camera/SkyDome.ma";
requires maya "2018";
requires -dataType "HIKCharacter" -dataType "HIKCharacterState" -dataType "HIKEffectorState"
		 -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2016.5";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "2.0.1";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2018.0.0";
requires "stereoCamera" "10.0";
requires "clgDangleCurve" "2.0.2";
requires "AtgMaterials" "ATG SDK: 1.32.0";
requires "Boole" "20110503";
requires "DF_locator" "1.11 / Expire: 2011.8.31";
requires "COLLADA" "3.04C PhyreEngine(TM) 3.15.0.0";
requires "clgSymbolMaker" "1.5";
requires "stereoCamera" "10.0";
requires "mayall_maya60" "0.9.1(Beta)";
requires "sxmaterial" "8.5";
requires "transIT3" "1.0";
requires "vsMaster" "1.0";
requires "vstUtils" "1.0";
requires "xfrog" "1.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	rename -uid "E0B888DA-4136-92F6-E57A-328A6E2BA7AE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -205.93471025183038 912.38637912440822 748.75024464837406 ;
	setAttr ".r" -type "double3" -75.938352657815585 -6143.4000000008373 -1.7327914196636248e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3E040931-40AA-BA8B-8581-80AEC02AFA6F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 398.48847632828836;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -168.57943552086078 525.14731246215035 662.42729799524272 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "68A12F88-4E8F-E776-CB3A-8CB7AF4B8EA2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -53.731335361518546 3746.2113116463647 388.6119740748058 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6868491E-493C-1597-A513-56BBB2A5D16F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 3181.2780545547816;
	setAttr ".ow" 622.45571024789513;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -81.662040308539531 564.93325709158296 466.81794792646372 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "4D889182-433A-EE81-891A-FE83494F6D2D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.242510375696861 317.34309906605017 4317.2309133387262 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0C18DBF6-4EC3-9015-8B28-688419D2D57A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 4128.0216648418327;
	setAttr ".ow" 672.90052358801177;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 11.262340171265201 287.25485948745415 189.20924849689365 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "A0807A28-4055-0E61-14B3-23BDE3D45225";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4435.4220152163871 354.67218122413749 334.96227033477123 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8A791614-45DE-5519-032A-5DA6E10D3C43";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 4467.3730461091791;
	setAttr ".ow" 91.520895085387991;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -31.951030892791742 354.67218122413749 334.96227033477027 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "left";
	rename -uid "DCF85347-48F5-6035-6EE8-308EB8D19195";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3500.0999999999999 0 0 ;
	setAttr ".r" -type "double3" 0 -89.999999999999986 0 ;
createNode camera -n "leftShape" -p "left";
	rename -uid "80A3BD97-4846-AC5B-2949-7E9E598702DF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 3500.0999999999999;
	setAttr ".ow" 74.354179476115164;
	setAttr ".imn" -type "string" "left1";
	setAttr ".den" -type "string" "left1_depth";
	setAttr ".man" -type "string" "left1_mask";
	setAttr ".hc" -type "string" "viewSet -ls %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "tweenMachineData";
	rename -uid "B8F45582-4E51-6579-DAEF-60A2DF762F01";
	addAttr -ci true -sn "data" -ln "data" -dt "string";
	setAttr ".data" -type "string" "<tweenMachineData>\n    <buttons height=\"8\">\n         <button rgb=\"0.6 0.6 0.6\" value=\"-75\" />\n         <button rgb=\"0.6 0.6 0.6\" value=\"-60\" />\n         <button rgb=\"0.6 0.6 0.6\" value=\"-33\" />\n         <button rgb=\"0.6 0.6 0.6\" value=\"0\" />\n         <button rgb=\"0.6 0.6 0.6\" value=\"33\" />\n         <button rgb=\"0.6 0.6 0.6\" value=\"60\" />\n         <button rgb=\"0.6 0.6 0.6\" value=\"75\" />\n    </buttons>\n    <groups><group index=\"0\" name=\"testing\" /></groups>\n</tweenMachineData>";
createNode transform -n "white_fadeouit";
	rename -uid "CC789D09-4BA2-7D5A-48B4-31A2219D426E";
createNode mesh -n "white_fadeouitShape" -p "white_fadeouit";
	rename -uid "0DC8FBFB-4A03-AE04-76ED-D8B4C1D96843";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "nurbsCircle1";
	rename -uid "AEEA63AA-447C-8E22-141E-1C9215BBA528";
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	rename -uid "266FCFD5-4727-24FE-9E74-719DD884E6F5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "camera1";
	rename -uid "829EE475-4602-343D-AC2E-D1B36EB26AE6";
	setAttr ".ro" 2;
createNode camera -n "cameraShape1" -p "camera1";
	rename -uid "FB1C6048-4DD3-9B8C-9BCD-75A4BFE39B62";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 57.407223532732722;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".tp" -type "double3" -37.940530080004407 553.28668320734664 648.63518559868226 ;
	setAttr ".dr" yes;
	setAttr ".ai_translator" -type "string" "perspective";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8BE358CB-4CB6-A545-D673-B28816A683C2";
	setAttr -s 7 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7EA7A33E-4623-2D2F-0CBF-E691FE6652DC";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 2 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "01CE8B20-4D29-E4EF-0503-92A1DE58539F";
createNode displayLayerManager -n "layerManager";
	rename -uid "7704E96C-445F-F4AB-9ABC-B59A4C4A7952";
createNode displayLayer -n "defaultLayer";
	rename -uid "DA5F8D8A-41A5-D46B-13E0-59A71302C52F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B5DBF17F-4A12-ECEB-1C3F-489BAE693BA9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A6E4C04B-4A24-5689-299F-AF9831CA26A0";
	setAttr ".g" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "3C5B9124-4994-4A46-46D2-B29D3A1C1E2D";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "070DDD16-4830-F7B5-B128-7387C0BA1FBF";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "C2C7E2AF-41CD-854F-D363-9DA81C7C8C5E";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "9E6DBAF1-434F-E50F-E14A-B3B2F120E1A1";
lockNode -l 1 ;
createNode reference -n "SER_116_kRN";
	rename -uid "B84D1FB2-4E76-7AF9-E1C4-0F82EE9BC124";
	setAttr ".fn[0]" -type "string" "D:/SER/SVN/MAYA/model/SER_016_k/scenes/SER_116_k.ma";
	setAttr -s 1292 ".phl";
	setAttr ".phl[1285]" 0;
	setAttr ".phl[1287]" 0;
	setAttr ".phl[1288]" 0;
	setAttr ".phl[1289]" 0;
	setAttr ".phl[1290]" 0;
	setAttr ".phl[1291]" 0;
	setAttr ".phl[1292]" 0;
	setAttr ".phl[1293]" 0;
	setAttr ".phl[1294]" 0;
	setAttr ".phl[1295]" 0;
	setAttr ".phl[1296]" 0;
	setAttr ".phl[1297]" 0;
	setAttr ".phl[1298]" 0;
	setAttr ".phl[1299]" 0;
	setAttr ".phl[1300]" 0;
	setAttr ".phl[1301]" 0;
	setAttr ".phl[1302]" 0;
	setAttr ".phl[1303]" 0;
	setAttr ".phl[1304]" 0;
	setAttr ".phl[1305]" 0;
	setAttr ".phl[1306]" 0;
	setAttr ".phl[1307]" 0;
	setAttr ".phl[1308]" 0;
	setAttr ".phl[1309]" 0;
	setAttr ".phl[1310]" 0;
	setAttr ".phl[1311]" 0;
	setAttr ".phl[1312]" 0;
	setAttr ".phl[1313]" 0;
	setAttr ".phl[1314]" 0;
	setAttr ".phl[1315]" 0;
	setAttr ".phl[1316]" 0;
	setAttr ".phl[1317]" 0;
	setAttr ".phl[1318]" 0;
	setAttr ".phl[1319]" 0;
	setAttr ".phl[1320]" 0;
	setAttr ".phl[1321]" 0;
	setAttr ".phl[1322]" 0;
	setAttr ".phl[1323]" 0;
	setAttr ".phl[1324]" 0;
	setAttr ".phl[1325]" 0;
	setAttr ".phl[1326]" 0;
	setAttr ".phl[1327]" 0;
	setAttr ".phl[1328]" 0;
	setAttr ".phl[1329]" 0;
	setAttr ".phl[1330]" 0;
	setAttr ".phl[1331]" 0;
	setAttr ".phl[1332]" 0;
	setAttr ".phl[1333]" 0;
	setAttr ".phl[1334]" 0;
	setAttr ".phl[1335]" 0;
	setAttr ".phl[1336]" 0;
	setAttr ".phl[1337]" 0;
	setAttr ".phl[1338]" 0;
	setAttr ".phl[1339]" 0;
	setAttr ".phl[1340]" 0;
	setAttr ".phl[1341]" 0;
	setAttr ".phl[1342]" 0;
	setAttr ".phl[1343]" 0;
	setAttr ".phl[1344]" 0;
	setAttr ".phl[1345]" 0;
	setAttr ".phl[1346]" 0;
	setAttr ".phl[1347]" 0;
	setAttr ".phl[1348]" 0;
	setAttr ".phl[1349]" 0;
	setAttr ".phl[1350]" 0;
	setAttr ".phl[1351]" 0;
	setAttr ".phl[1352]" 0;
	setAttr ".phl[1353]" 0;
	setAttr ".phl[1354]" 0;
	setAttr ".phl[1355]" 0;
	setAttr ".phl[1356]" 0;
	setAttr ".phl[1357]" 0;
	setAttr ".phl[1358]" 0;
	setAttr ".phl[1359]" 0;
	setAttr ".phl[1360]" 0;
	setAttr ".phl[1361]" 0;
	setAttr ".phl[1362]" 0;
	setAttr ".phl[1363]" 0;
	setAttr ".phl[1364]" 0;
	setAttr ".phl[1365]" 0;
	setAttr ".phl[1366]" 0;
	setAttr ".phl[1367]" 0;
	setAttr ".phl[1368]" 0;
	setAttr ".phl[1369]" 0;
	setAttr ".phl[1370]" 0;
	setAttr ".phl[1371]" 0;
	setAttr ".phl[1372]" 0;
	setAttr ".phl[1373]" 0;
	setAttr ".phl[1374]" 0;
	setAttr ".phl[1375]" 0;
	setAttr ".phl[1376]" 0;
	setAttr ".phl[1377]" 0;
	setAttr ".phl[1378]" 0;
	setAttr ".phl[1379]" 0;
	setAttr ".phl[1380]" 0;
	setAttr ".phl[1381]" 0;
	setAttr ".phl[1382]" 0;
	setAttr ".phl[1383]" 0;
	setAttr ".phl[1384]" 0;
	setAttr ".phl[1385]" 0;
	setAttr ".phl[1386]" 0;
	setAttr ".phl[1387]" 0;
	setAttr ".phl[1388]" 0;
	setAttr ".phl[1389]" 0;
	setAttr ".phl[1390]" 0;
	setAttr ".phl[1391]" 0;
	setAttr ".phl[1392]" 0;
	setAttr ".phl[1393]" 0;
	setAttr ".phl[1394]" 0;
	setAttr ".phl[1395]" 0;
	setAttr ".phl[1396]" 0;
	setAttr ".phl[1397]" 0;
	setAttr ".phl[1398]" 0;
	setAttr ".phl[1399]" 0;
	setAttr ".phl[1400]" 0;
	setAttr ".phl[1401]" 0;
	setAttr ".phl[1402]" 0;
	setAttr ".phl[1403]" 0;
	setAttr ".phl[1404]" 0;
	setAttr ".phl[1405]" 0;
	setAttr ".phl[1406]" 0;
	setAttr ".phl[1407]" 0;
	setAttr ".phl[1408]" 0;
	setAttr ".phl[1409]" 0;
	setAttr ".phl[1410]" 0;
	setAttr ".phl[1411]" 0;
	setAttr ".phl[1412]" 0;
	setAttr ".phl[1413]" 0;
	setAttr ".phl[1414]" 0;
	setAttr ".phl[1415]" 0;
	setAttr ".phl[1416]" 0;
	setAttr ".phl[1417]" 0;
	setAttr ".phl[1418]" 0;
	setAttr ".phl[1419]" 0;
	setAttr ".phl[1420]" 0;
	setAttr ".phl[1421]" 0;
	setAttr ".phl[1422]" 0;
	setAttr ".phl[1423]" 0;
	setAttr ".phl[1424]" 0;
	setAttr ".phl[1425]" 0;
	setAttr ".phl[1426]" 0;
	setAttr ".phl[1427]" 0;
	setAttr ".phl[1428]" 0;
	setAttr ".phl[1429]" 0;
	setAttr ".phl[1430]" 0;
	setAttr ".phl[1431]" 0;
	setAttr ".phl[1432]" 0;
	setAttr ".phl[1433]" 0;
	setAttr ".phl[1434]" 0;
	setAttr ".phl[1435]" 0;
	setAttr ".phl[1436]" 0;
	setAttr ".phl[1437]" 0;
	setAttr ".phl[1438]" 0;
	setAttr ".phl[1439]" 0;
	setAttr ".phl[1440]" 0;
	setAttr ".phl[1441]" 0;
	setAttr ".phl[1442]" 0;
	setAttr ".phl[1443]" 0;
	setAttr ".phl[1444]" 0;
	setAttr ".phl[1445]" 0;
	setAttr ".phl[1446]" 0;
	setAttr ".phl[1447]" 0;
	setAttr ".phl[1448]" 0;
	setAttr ".phl[1449]" 0;
	setAttr ".phl[1450]" 0;
	setAttr ".phl[1451]" 0;
	setAttr ".phl[1452]" 0;
	setAttr ".phl[1453]" 0;
	setAttr ".phl[1454]" 0;
	setAttr ".phl[1455]" 0;
	setAttr ".phl[1456]" 0;
	setAttr ".phl[1457]" 0;
	setAttr ".phl[1458]" 0;
	setAttr ".phl[1459]" 0;
	setAttr ".phl[1460]" 0;
	setAttr ".phl[1461]" 0;
	setAttr ".phl[1462]" 0;
	setAttr ".phl[1463]" 0;
	setAttr ".phl[1464]" 0;
	setAttr ".phl[1465]" 0;
	setAttr ".phl[1466]" 0;
	setAttr ".phl[1467]" 0;
	setAttr ".phl[1468]" 0;
	setAttr ".phl[1469]" 0;
	setAttr ".phl[1470]" 0;
	setAttr ".phl[1471]" 0;
	setAttr ".phl[1472]" 0;
	setAttr ".phl[1473]" 0;
	setAttr ".phl[1474]" 0;
	setAttr ".phl[1475]" 0;
	setAttr ".phl[1476]" 0;
	setAttr ".phl[1477]" 0;
	setAttr ".phl[1478]" 0;
	setAttr ".phl[1479]" 0;
	setAttr ".phl[1480]" 0;
	setAttr ".phl[1481]" 0;
	setAttr ".phl[1482]" 0;
	setAttr ".phl[1483]" 0;
	setAttr ".phl[1484]" 0;
	setAttr ".phl[1485]" 0;
	setAttr ".phl[1486]" 0;
	setAttr ".phl[1487]" 0;
	setAttr ".phl[1488]" 0;
	setAttr ".phl[1489]" 0;
	setAttr ".phl[1490]" 0;
	setAttr ".phl[1491]" 0;
	setAttr ".phl[1492]" 0;
	setAttr ".phl[1493]" 0;
	setAttr ".phl[1494]" 0;
	setAttr ".phl[1495]" 0;
	setAttr ".phl[1496]" 0;
	setAttr ".phl[1497]" 0;
	setAttr ".phl[1498]" 0;
	setAttr ".phl[1499]" 0;
	setAttr ".phl[1500]" 0;
	setAttr ".phl[1501]" 0;
	setAttr ".phl[1502]" 0;
	setAttr ".phl[1503]" 0;
	setAttr ".phl[1504]" 0;
	setAttr ".phl[1505]" 0;
	setAttr ".phl[1506]" 0;
	setAttr ".phl[1507]" 0;
	setAttr ".phl[1508]" 0;
	setAttr ".phl[1509]" 0;
	setAttr ".phl[1510]" 0;
	setAttr ".phl[1511]" 0;
	setAttr ".phl[1512]" 0;
	setAttr ".phl[1513]" 0;
	setAttr ".phl[1514]" 0;
	setAttr ".phl[1515]" 0;
	setAttr ".phl[1516]" 0;
	setAttr ".phl[1517]" 0;
	setAttr ".phl[1518]" 0;
	setAttr ".phl[1519]" 0;
	setAttr ".phl[1520]" 0;
	setAttr ".phl[1521]" 0;
	setAttr ".phl[1522]" 0;
	setAttr ".phl[1523]" 0;
	setAttr ".phl[1524]" 0;
	setAttr ".phl[1525]" 0;
	setAttr ".phl[1526]" 0;
	setAttr ".phl[1527]" 0;
	setAttr ".phl[1528]" 0;
	setAttr ".phl[1529]" 0;
	setAttr ".phl[1530]" 0;
	setAttr ".phl[1531]" 0;
	setAttr ".phl[1532]" 0;
	setAttr ".phl[1533]" 0;
	setAttr ".phl[1534]" 0;
	setAttr ".phl[1535]" 0;
	setAttr ".phl[1536]" 0;
	setAttr ".phl[1537]" 0;
	setAttr ".phl[1538]" 0;
	setAttr ".phl[1539]" 0;
	setAttr ".phl[1540]" 0;
	setAttr ".phl[1541]" 0;
	setAttr ".phl[1542]" 0;
	setAttr ".phl[1543]" 0;
	setAttr ".phl[1544]" 0;
	setAttr ".phl[1545]" 0;
	setAttr ".phl[1546]" 0;
	setAttr ".phl[1547]" 0;
	setAttr ".phl[1548]" 0;
	setAttr ".phl[1549]" 0;
	setAttr ".phl[1550]" 0;
	setAttr ".phl[1551]" 0;
	setAttr ".phl[1552]" 0;
	setAttr ".phl[1553]" 0;
	setAttr ".phl[1554]" 0;
	setAttr ".phl[1555]" 0;
	setAttr ".phl[1556]" 0;
	setAttr ".phl[1557]" 0;
	setAttr ".phl[1558]" 0;
	setAttr ".phl[1559]" 0;
	setAttr ".phl[1560]" 0;
	setAttr ".phl[1561]" 0;
	setAttr ".phl[1562]" 0;
	setAttr ".phl[1563]" 0;
	setAttr ".phl[1564]" 0;
	setAttr ".phl[1565]" 0;
	setAttr ".phl[1566]" 0;
	setAttr ".phl[1567]" 0;
	setAttr ".phl[1568]" 0;
	setAttr ".phl[1569]" 0;
	setAttr ".phl[1570]" 0;
	setAttr ".phl[1571]" 0;
	setAttr ".phl[1572]" 0;
	setAttr ".phl[1573]" 0;
	setAttr ".phl[1574]" 0;
	setAttr ".phl[1575]" 0;
	setAttr ".phl[1576]" 0;
	setAttr ".phl[1577]" 0;
	setAttr ".phl[1578]" 0;
	setAttr ".phl[1579]" 0;
	setAttr ".phl[1580]" 0;
	setAttr ".phl[1581]" 0;
	setAttr ".phl[1582]" 0;
	setAttr ".phl[1583]" 0;
	setAttr ".phl[1584]" 0;
	setAttr ".phl[1585]" 0;
	setAttr ".phl[1586]" 0;
	setAttr ".phl[1587]" 0;
	setAttr ".phl[1588]" 0;
	setAttr ".phl[1589]" 0;
	setAttr ".phl[1590]" 0;
	setAttr ".phl[1591]" 0;
	setAttr ".phl[1592]" 0;
	setAttr ".phl[1593]" 0;
	setAttr ".phl[1594]" 0;
	setAttr ".phl[1595]" 0;
	setAttr ".phl[1596]" 0;
	setAttr ".phl[1597]" 0;
	setAttr ".phl[1598]" 0;
	setAttr ".phl[1599]" 0;
	setAttr ".phl[1600]" 0;
	setAttr ".phl[1601]" 0;
	setAttr ".phl[1602]" 0;
	setAttr ".phl[1603]" 0;
	setAttr ".phl[1604]" 0;
	setAttr ".phl[1605]" 0;
	setAttr ".phl[1606]" 0;
	setAttr ".phl[1607]" 0;
	setAttr ".phl[1608]" 0;
	setAttr ".phl[1609]" 0;
	setAttr ".phl[1610]" 0;
	setAttr ".phl[1611]" 0;
	setAttr ".phl[1612]" 0;
	setAttr ".phl[1613]" 0;
	setAttr ".phl[1614]" 0;
	setAttr ".phl[1615]" 0;
	setAttr ".phl[1616]" 0;
	setAttr ".phl[1617]" 0;
	setAttr ".phl[1618]" 0;
	setAttr ".phl[1619]" 0;
	setAttr ".phl[1620]" 0;
	setAttr ".phl[1621]" 0;
	setAttr ".phl[1622]" 0;
	setAttr ".phl[1623]" 0;
	setAttr ".phl[1624]" 0;
	setAttr ".phl[1625]" 0;
	setAttr ".phl[1626]" 0;
	setAttr ".phl[1627]" 0;
	setAttr ".phl[1628]" 0;
	setAttr ".phl[1629]" 0;
	setAttr ".phl[1630]" 0;
	setAttr ".phl[1631]" 0;
	setAttr ".phl[1632]" 0;
	setAttr ".phl[1633]" 0;
	setAttr ".phl[1634]" 0;
	setAttr ".phl[1635]" 0;
	setAttr ".phl[1636]" 0;
	setAttr ".phl[1637]" 0;
	setAttr ".phl[1638]" 0;
	setAttr ".phl[1639]" 0;
	setAttr ".phl[1640]" 0;
	setAttr ".phl[1641]" 0;
	setAttr ".phl[1642]" 0;
	setAttr ".phl[1643]" 0;
	setAttr ".phl[1644]" 0;
	setAttr ".phl[1645]" 0;
	setAttr ".phl[1646]" 0;
	setAttr ".phl[1647]" 0;
	setAttr ".phl[1648]" 0;
	setAttr ".phl[1649]" 0;
	setAttr ".phl[1650]" 0;
	setAttr ".phl[1651]" 0;
	setAttr ".phl[1652]" 0;
	setAttr ".phl[1653]" 0;
	setAttr ".phl[1654]" 0;
	setAttr ".phl[1655]" 0;
	setAttr ".phl[1656]" 0;
	setAttr ".phl[1657]" 0;
	setAttr ".phl[1658]" 0;
	setAttr ".phl[1659]" 0;
	setAttr ".phl[1660]" 0;
	setAttr ".phl[1661]" 0;
	setAttr ".phl[1662]" 0;
	setAttr ".phl[1663]" 0;
	setAttr ".phl[1664]" 0;
	setAttr ".phl[1665]" 0;
	setAttr ".phl[1666]" 0;
	setAttr ".phl[1667]" 0;
	setAttr ".phl[1668]" 0;
	setAttr ".phl[1669]" 0;
	setAttr ".phl[1670]" 0;
	setAttr ".phl[1671]" 0;
	setAttr ".phl[1672]" 0;
	setAttr ".phl[1673]" 0;
	setAttr ".phl[1674]" 0;
	setAttr ".phl[1675]" 0;
	setAttr ".phl[1676]" 0;
	setAttr ".phl[1677]" 0;
	setAttr ".phl[1678]" 0;
	setAttr ".phl[1679]" 0;
	setAttr ".phl[1680]" 0;
	setAttr ".phl[1681]" 0;
	setAttr ".phl[1682]" 0;
	setAttr ".phl[1683]" 0;
	setAttr ".phl[1684]" 0;
	setAttr ".phl[1685]" 0;
	setAttr ".phl[1686]" 0;
	setAttr ".phl[1687]" 0;
	setAttr ".phl[1688]" 0;
	setAttr ".phl[1689]" 0;
	setAttr ".phl[1690]" 0;
	setAttr ".phl[1691]" 0;
	setAttr ".phl[1692]" 0;
	setAttr ".phl[1693]" 0;
	setAttr ".phl[1694]" 0;
	setAttr ".phl[1695]" 0;
	setAttr ".phl[1696]" 0;
	setAttr ".phl[1697]" 0;
	setAttr ".phl[1698]" 0;
	setAttr ".phl[1699]" 0;
	setAttr ".phl[1700]" 0;
	setAttr ".phl[1701]" 0;
	setAttr ".phl[1702]" 0;
	setAttr ".phl[1703]" 0;
	setAttr ".phl[1704]" 0;
	setAttr ".phl[1705]" 0;
	setAttr ".phl[1706]" 0;
	setAttr ".phl[1707]" 0;
	setAttr ".phl[1708]" 0;
	setAttr ".phl[1709]" 0;
	setAttr ".phl[1710]" 0;
	setAttr ".phl[1711]" 0;
	setAttr ".phl[1712]" 0;
	setAttr ".phl[1713]" 0;
	setAttr ".phl[1714]" 0;
	setAttr ".phl[1715]" 0;
	setAttr ".phl[1716]" 0;
	setAttr ".phl[1717]" 0;
	setAttr ".phl[1718]" 0;
	setAttr ".phl[1719]" 0;
	setAttr ".phl[1720]" 0;
	setAttr ".phl[1721]" 0;
	setAttr ".phl[1722]" 0;
	setAttr ".phl[1723]" 0;
	setAttr ".phl[1724]" 0;
	setAttr ".phl[1725]" 0;
	setAttr ".phl[1726]" 0;
	setAttr ".phl[1727]" 0;
	setAttr ".phl[1728]" 0;
	setAttr ".phl[1729]" 0;
	setAttr ".phl[1730]" 0;
	setAttr ".phl[1731]" 0;
	setAttr ".phl[1732]" 0;
	setAttr ".phl[1733]" 0;
	setAttr ".phl[1734]" 0;
	setAttr ".phl[1735]" 0;
	setAttr ".phl[1736]" 0;
	setAttr ".phl[1737]" 0;
	setAttr ".phl[1738]" 0;
	setAttr ".phl[1739]" 0;
	setAttr ".phl[1740]" 0;
	setAttr ".phl[1741]" 0;
	setAttr ".phl[1742]" 0;
	setAttr ".phl[1743]" 0;
	setAttr ".phl[1744]" 0;
	setAttr ".phl[1745]" 0;
	setAttr ".phl[1746]" 0;
	setAttr ".phl[1747]" 0;
	setAttr ".phl[1748]" 0;
	setAttr ".phl[1749]" 0;
	setAttr ".phl[1750]" 0;
	setAttr ".phl[1751]" 0;
	setAttr ".phl[1752]" 0;
	setAttr ".phl[1753]" 0;
	setAttr ".phl[1754]" 0;
	setAttr ".phl[1755]" 0;
	setAttr ".phl[1756]" 0;
	setAttr ".phl[1757]" 0;
	setAttr ".phl[1758]" 0;
	setAttr ".phl[1759]" 0;
	setAttr ".phl[1760]" 0;
	setAttr ".phl[1761]" 0;
	setAttr ".phl[1762]" 0;
	setAttr ".phl[1763]" 0;
	setAttr ".phl[1764]" 0;
	setAttr ".phl[1765]" 0;
	setAttr ".phl[1766]" 0;
	setAttr ".phl[1767]" 0;
	setAttr ".phl[1768]" 0;
	setAttr ".phl[1769]" 0;
	setAttr ".phl[1770]" 0;
	setAttr ".phl[1771]" 0;
	setAttr ".phl[1772]" 0;
	setAttr ".phl[1773]" 0;
	setAttr ".phl[1774]" 0;
	setAttr ".phl[1775]" 0;
	setAttr ".phl[1776]" 0;
	setAttr ".phl[1777]" 0;
	setAttr ".phl[1778]" 0;
	setAttr ".phl[1779]" 0;
	setAttr ".phl[1780]" 0;
	setAttr ".phl[1781]" 0;
	setAttr ".phl[1782]" 0;
	setAttr ".phl[1783]" 0;
	setAttr ".phl[1784]" 0;
	setAttr ".phl[1785]" 0;
	setAttr ".phl[1786]" 0;
	setAttr ".phl[1787]" 0;
	setAttr ".phl[1788]" 0;
	setAttr ".phl[1789]" 0;
	setAttr ".phl[1790]" 0;
	setAttr ".phl[1791]" 0;
	setAttr ".phl[1792]" 0;
	setAttr ".phl[1793]" 0;
	setAttr ".phl[1794]" 0;
	setAttr ".phl[1795]" 0;
	setAttr ".phl[1796]" 0;
	setAttr ".phl[1797]" 0;
	setAttr ".phl[1798]" 0;
	setAttr ".phl[1799]" 0;
	setAttr ".phl[1800]" 0;
	setAttr ".phl[1801]" 0;
	setAttr ".phl[1802]" 0;
	setAttr ".phl[1803]" 0;
	setAttr ".phl[1804]" 0;
	setAttr ".phl[1805]" 0;
	setAttr ".phl[1806]" 0;
	setAttr ".phl[1807]" 0;
	setAttr ".phl[1808]" 0;
	setAttr ".phl[1809]" 0;
	setAttr ".phl[1810]" 0;
	setAttr ".phl[1811]" 0;
	setAttr ".phl[1812]" 0;
	setAttr ".phl[1813]" 0;
	setAttr ".phl[1814]" 0;
	setAttr ".phl[1815]" 0;
	setAttr ".phl[1816]" 0;
	setAttr ".phl[1817]" 0;
	setAttr ".phl[1818]" 0;
	setAttr ".phl[1819]" 0;
	setAttr ".phl[1820]" 0;
	setAttr ".phl[1821]" 0;
	setAttr ".phl[1822]" 0;
	setAttr ".phl[1823]" 0;
	setAttr ".phl[1824]" 0;
	setAttr ".phl[1825]" 0;
	setAttr ".phl[1826]" 0;
	setAttr ".phl[1827]" 0;
	setAttr ".phl[1828]" 0;
	setAttr ".phl[1829]" 0;
	setAttr ".phl[1830]" 0;
	setAttr ".phl[1831]" 0;
	setAttr ".phl[1832]" 0;
	setAttr ".phl[1833]" 0;
	setAttr ".phl[1834]" 0;
	setAttr ".phl[1835]" 0;
	setAttr ".phl[1836]" 0;
	setAttr ".phl[1837]" 0;
	setAttr ".phl[1838]" 0;
	setAttr ".phl[1839]" 0;
	setAttr ".phl[1840]" 0;
	setAttr ".phl[1841]" 0;
	setAttr ".phl[1842]" 0;
	setAttr ".phl[1843]" 0;
	setAttr ".phl[1844]" 0;
	setAttr ".phl[1845]" 0;
	setAttr ".phl[1846]" 0;
	setAttr ".phl[1847]" 0;
	setAttr ".phl[1848]" 0;
	setAttr ".phl[1849]" 0;
	setAttr ".phl[1850]" 0;
	setAttr ".phl[1851]" 0;
	setAttr ".phl[1852]" 0;
	setAttr ".phl[1853]" 0;
	setAttr ".phl[1854]" 0;
	setAttr ".phl[1855]" 0;
	setAttr ".phl[1856]" 0;
	setAttr ".phl[1857]" 0;
	setAttr ".phl[1858]" 0;
	setAttr ".phl[1859]" 0;
	setAttr ".phl[1860]" 0;
	setAttr ".phl[1861]" 0;
	setAttr ".phl[1862]" 0;
	setAttr ".phl[1863]" 0;
	setAttr ".phl[1864]" 0;
	setAttr ".phl[1865]" 0;
	setAttr ".phl[1866]" 0;
	setAttr ".phl[1867]" 0;
	setAttr ".phl[1868]" 0;
	setAttr ".phl[1869]" 0;
	setAttr ".phl[1870]" 0;
	setAttr ".phl[1871]" 0;
	setAttr ".phl[1872]" 0;
	setAttr ".phl[1873]" 0;
	setAttr ".phl[1874]" 0;
	setAttr ".phl[1875]" 0;
	setAttr ".phl[1876]" 0;
	setAttr ".phl[1877]" 0;
	setAttr ".phl[1878]" 0;
	setAttr ".phl[1879]" 0;
	setAttr ".phl[1880]" 0;
	setAttr ".phl[1881]" 0;
	setAttr ".phl[1882]" 0;
	setAttr ".phl[1883]" 0;
	setAttr ".phl[1884]" 0;
	setAttr ".phl[1885]" 0;
	setAttr ".phl[1886]" 0;
	setAttr ".phl[1887]" 0;
	setAttr ".phl[1888]" 0;
	setAttr ".phl[1889]" 0;
	setAttr ".phl[1890]" 0;
	setAttr ".phl[1891]" 0;
	setAttr ".phl[1892]" 0;
	setAttr ".phl[1893]" 0;
	setAttr ".phl[1894]" 0;
	setAttr ".phl[1895]" 0;
	setAttr ".phl[1896]" 0;
	setAttr ".phl[1897]" 0;
	setAttr ".phl[1898]" 0;
	setAttr ".phl[1899]" 0;
	setAttr ".phl[1900]" 0;
	setAttr ".phl[1901]" 0;
	setAttr ".phl[1902]" 0;
	setAttr ".phl[1903]" 0;
	setAttr ".phl[1904]" 0;
	setAttr ".phl[1905]" 0;
	setAttr ".phl[1906]" 0;
	setAttr ".phl[1907]" 0;
	setAttr ".phl[1908]" 0;
	setAttr ".phl[1909]" 0;
	setAttr ".phl[1910]" 0;
	setAttr ".phl[1911]" 0;
	setAttr ".phl[1912]" 0;
	setAttr ".phl[1913]" 0;
	setAttr ".phl[1914]" 0;
	setAttr ".phl[1915]" 0;
	setAttr ".phl[1916]" 0;
	setAttr ".phl[1917]" 0;
	setAttr ".phl[1918]" 0;
	setAttr ".phl[1919]" 0;
	setAttr ".phl[1920]" 0;
	setAttr ".phl[1921]" 0;
	setAttr ".phl[1922]" 0;
	setAttr ".phl[1923]" 0;
	setAttr ".phl[1924]" 0;
	setAttr ".phl[1925]" 0;
	setAttr ".phl[1926]" 0;
	setAttr ".phl[1927]" 0;
	setAttr ".phl[1928]" 0;
	setAttr ".phl[1929]" 0;
	setAttr ".phl[1930]" 0;
	setAttr ".phl[1931]" 0;
	setAttr ".phl[1932]" 0;
	setAttr ".phl[1933]" 0;
	setAttr ".phl[1934]" 0;
	setAttr ".phl[1935]" 0;
	setAttr ".phl[1936]" 0;
	setAttr ".phl[1937]" 0;
	setAttr ".phl[1938]" 0;
	setAttr ".phl[1939]" 0;
	setAttr ".phl[1940]" 0;
	setAttr ".phl[1941]" 0;
	setAttr ".phl[1942]" 0;
	setAttr ".phl[1943]" 0;
	setAttr ".phl[1944]" 0;
	setAttr ".phl[1945]" 0;
	setAttr ".phl[1946]" 0;
	setAttr ".phl[1947]" 0;
	setAttr ".phl[1948]" 0;
	setAttr ".phl[1949]" 0;
	setAttr ".phl[1950]" 0;
	setAttr ".phl[1951]" 0;
	setAttr ".phl[1952]" 0;
	setAttr ".phl[1953]" 0;
	setAttr ".phl[1954]" 0;
	setAttr ".phl[1955]" 0;
	setAttr ".phl[1956]" 0;
	setAttr ".phl[1957]" 0;
	setAttr ".phl[1958]" 0;
	setAttr ".phl[1959]" 0;
	setAttr ".phl[1960]" 0;
	setAttr ".phl[1961]" 0;
	setAttr ".phl[1962]" 0;
	setAttr ".phl[1963]" 0;
	setAttr ".phl[1964]" 0;
	setAttr ".phl[1965]" 0;
	setAttr ".phl[1966]" 0;
	setAttr ".phl[1967]" 0;
	setAttr ".phl[1968]" 0;
	setAttr ".phl[1969]" 0;
	setAttr ".phl[1970]" 0;
	setAttr ".phl[1971]" 0;
	setAttr ".phl[1972]" 0;
	setAttr ".phl[1973]" 0;
	setAttr ".phl[1974]" 0;
	setAttr ".phl[1975]" 0;
	setAttr ".phl[1976]" 0;
	setAttr ".phl[1977]" 0;
	setAttr ".phl[1978]" 0;
	setAttr ".phl[1979]" 0;
	setAttr ".phl[1980]" 0;
	setAttr ".phl[1981]" 0;
	setAttr ".phl[1982]" 0;
	setAttr ".phl[1983]" 0;
	setAttr ".phl[1984]" 0;
	setAttr ".phl[1985]" 0;
	setAttr ".phl[1986]" 0;
	setAttr ".phl[1987]" 0;
	setAttr ".phl[1988]" 0;
	setAttr ".phl[1989]" 0;
	setAttr ".phl[1990]" 0;
	setAttr ".phl[1991]" 0;
	setAttr ".phl[1992]" 0;
	setAttr ".phl[1993]" 0;
	setAttr ".phl[1994]" 0;
	setAttr ".phl[1995]" 0;
	setAttr ".phl[1996]" 0;
	setAttr ".phl[1997]" 0;
	setAttr ".phl[1998]" 0;
	setAttr ".phl[1999]" 0;
	setAttr ".phl[2000]" 0;
	setAttr ".phl[2001]" 0;
	setAttr ".phl[2002]" 0;
	setAttr ".phl[2003]" 0;
	setAttr ".phl[2004]" 0;
	setAttr ".phl[2005]" 0;
	setAttr ".phl[2006]" 0;
	setAttr ".phl[2007]" 0;
	setAttr ".phl[2008]" 0;
	setAttr ".phl[2009]" 0;
	setAttr ".phl[2010]" 0;
	setAttr ".phl[2011]" 0;
	setAttr ".phl[2012]" 0;
	setAttr ".phl[2013]" 0;
	setAttr ".phl[2014]" 0;
	setAttr ".phl[2015]" 0;
	setAttr ".phl[2016]" 0;
	setAttr ".phl[2017]" 0;
	setAttr ".phl[2018]" 0;
	setAttr ".phl[2019]" 0;
	setAttr ".phl[2020]" 0;
	setAttr ".phl[2021]" 0;
	setAttr ".phl[2022]" 0;
	setAttr ".phl[2023]" 0;
	setAttr ".phl[2024]" 0;
	setAttr ".phl[2025]" 0;
	setAttr ".phl[2026]" 0;
	setAttr ".phl[2027]" 0;
	setAttr ".phl[2028]" 0;
	setAttr ".phl[2029]" 0;
	setAttr ".phl[2030]" 0;
	setAttr ".phl[2031]" 0;
	setAttr ".phl[2032]" 0;
	setAttr ".phl[2033]" 0;
	setAttr ".phl[2034]" 0;
	setAttr ".phl[2035]" 0;
	setAttr ".phl[2036]" 0;
	setAttr ".phl[2037]" 0;
	setAttr ".phl[2038]" 0;
	setAttr ".phl[2039]" 0;
	setAttr ".phl[2040]" 0;
	setAttr ".phl[2041]" 0;
	setAttr ".phl[2042]" 0;
	setAttr ".phl[2043]" 0;
	setAttr ".phl[2044]" 0;
	setAttr ".phl[2045]" 0;
	setAttr ".phl[2046]" 0;
	setAttr ".phl[2047]" 0;
	setAttr ".phl[2048]" 0;
	setAttr ".phl[2049]" 0;
	setAttr ".phl[2050]" 0;
	setAttr ".phl[2051]" 0;
	setAttr ".phl[2052]" 0;
	setAttr ".phl[2053]" 0;
	setAttr ".phl[2054]" 0;
	setAttr ".phl[2055]" 0;
	setAttr ".phl[2056]" 0;
	setAttr ".phl[2057]" 0;
	setAttr ".phl[2058]" 0;
	setAttr ".phl[2059]" 0;
	setAttr ".phl[2060]" 0;
	setAttr ".phl[2061]" 0;
	setAttr ".phl[2062]" 0;
	setAttr ".phl[2063]" 0;
	setAttr ".phl[2064]" 0;
	setAttr ".phl[2065]" 0;
	setAttr ".phl[2066]" 0;
	setAttr ".phl[2067]" 0;
	setAttr ".phl[2068]" 0;
	setAttr ".phl[2069]" 0;
	setAttr ".phl[2070]" 0;
	setAttr ".phl[2071]" 0;
	setAttr ".phl[2072]" 0;
	setAttr ".phl[2073]" 0;
	setAttr ".phl[2074]" 0;
	setAttr ".phl[2075]" 0;
	setAttr ".phl[2076]" 0;
	setAttr ".phl[2077]" 0;
	setAttr ".phl[2078]" 0;
	setAttr ".phl[2079]" 0;
	setAttr ".phl[2080]" 0;
	setAttr ".phl[2081]" 0;
	setAttr ".phl[2082]" 0;
	setAttr ".phl[2083]" 0;
	setAttr ".phl[2084]" 0;
	setAttr ".phl[2085]" 0;
	setAttr ".phl[2086]" 0;
	setAttr ".phl[2087]" 0;
	setAttr ".phl[2088]" 0;
	setAttr ".phl[2089]" 0;
	setAttr ".phl[2090]" 0;
	setAttr ".phl[2091]" 0;
	setAttr ".phl[2092]" 0;
	setAttr ".phl[2093]" 0;
	setAttr ".phl[2094]" 0;
	setAttr ".phl[2095]" 0;
	setAttr ".phl[2096]" 0;
	setAttr ".phl[2097]" 0;
	setAttr ".phl[2098]" 0;
	setAttr ".phl[2099]" 0;
	setAttr ".phl[2100]" 0;
	setAttr ".phl[2101]" 0;
	setAttr ".phl[2102]" 0;
	setAttr ".phl[2103]" 0;
	setAttr ".phl[2104]" 0;
	setAttr ".phl[2105]" 0;
	setAttr ".phl[2106]" 0;
	setAttr ".phl[2107]" 0;
	setAttr ".phl[2108]" 0;
	setAttr ".phl[2109]" 0;
	setAttr ".phl[2110]" 0;
	setAttr ".phl[2111]" 0;
	setAttr ".phl[2112]" 0;
	setAttr ".phl[2113]" 0;
	setAttr ".phl[2114]" 0;
	setAttr ".phl[2115]" 0;
	setAttr ".phl[2116]" 0;
	setAttr ".phl[2117]" 0;
	setAttr ".phl[2118]" 0;
	setAttr ".phl[2119]" 0;
	setAttr ".phl[2120]" 0;
	setAttr ".phl[2121]" 0;
	setAttr ".phl[2122]" 0;
	setAttr ".phl[2123]" 0;
	setAttr ".phl[2124]" 0;
	setAttr ".phl[2125]" 0;
	setAttr ".phl[2126]" 0;
	setAttr ".phl[2127]" 0;
	setAttr ".phl[2128]" 0;
	setAttr ".phl[2129]" 0;
	setAttr ".phl[2130]" 0;
	setAttr ".phl[2131]" 0;
	setAttr ".phl[2132]" 0;
	setAttr ".phl[2133]" 0;
	setAttr ".phl[2134]" 0;
	setAttr ".phl[2135]" 0;
	setAttr ".phl[2136]" 0;
	setAttr ".phl[2137]" 0;
	setAttr ".phl[2138]" 0;
	setAttr ".phl[2139]" 0;
	setAttr ".phl[2140]" 0;
	setAttr ".phl[2141]" 0;
	setAttr ".phl[2142]" 0;
	setAttr ".phl[2143]" 0;
	setAttr ".phl[2144]" 0;
	setAttr ".phl[2145]" 0;
	setAttr ".phl[2146]" 0;
	setAttr ".phl[2147]" 0;
	setAttr ".phl[2148]" 0;
	setAttr ".phl[2149]" 0;
	setAttr ".phl[2150]" 0;
	setAttr ".phl[2151]" 0;
	setAttr ".phl[2152]" 0;
	setAttr ".phl[2153]" 0;
	setAttr ".phl[2154]" 0;
	setAttr ".phl[2155]" 0;
	setAttr ".phl[2156]" 0;
	setAttr ".phl[2157]" 0;
	setAttr ".phl[2158]" 0;
	setAttr ".phl[2159]" 0;
	setAttr ".phl[2160]" 0;
	setAttr ".phl[2161]" 0;
	setAttr ".phl[2162]" 0;
	setAttr ".phl[2163]" 0;
	setAttr ".phl[2164]" 0;
	setAttr ".phl[2165]" 0;
	setAttr ".phl[2166]" 0;
	setAttr ".phl[2167]" 0;
	setAttr ".phl[2168]" 0;
	setAttr ".phl[2169]" 0;
	setAttr ".phl[2170]" 0;
	setAttr ".phl[2171]" 0;
	setAttr ".phl[2172]" 0;
	setAttr ".phl[2173]" 0;
	setAttr ".phl[2174]" 0;
	setAttr ".phl[2175]" 0;
	setAttr ".phl[2176]" 0;
	setAttr ".phl[2177]" 0;
	setAttr ".phl[2178]" 0;
	setAttr ".phl[2179]" 0;
	setAttr ".phl[2180]" 0;
	setAttr ".phl[2181]" 0;
	setAttr ".phl[2182]" 0;
	setAttr ".phl[2183]" 0;
	setAttr ".phl[2184]" 0;
	setAttr ".phl[2185]" 0;
	setAttr ".phl[2186]" 0;
	setAttr ".phl[2187]" 0;
	setAttr ".phl[2188]" 0;
	setAttr ".phl[2189]" 0;
	setAttr ".phl[2190]" 0;
	setAttr ".phl[2191]" 0;
	setAttr ".phl[2192]" 0;
	setAttr ".phl[2193]" 0;
	setAttr ".phl[2194]" 0;
	setAttr ".phl[2195]" 0;
	setAttr ".phl[2196]" 0;
	setAttr ".phl[2197]" 0;
	setAttr ".phl[2198]" 0;
	setAttr ".phl[2199]" 0;
	setAttr ".phl[2200]" 0;
	setAttr ".phl[2201]" 0;
	setAttr ".phl[2202]" 0;
	setAttr ".phl[2203]" 0;
	setAttr ".phl[2204]" 0;
	setAttr ".phl[2205]" 0;
	setAttr ".phl[2206]" 0;
	setAttr ".phl[2207]" 0;
	setAttr ".phl[2208]" 0;
	setAttr ".phl[2209]" 0;
	setAttr ".phl[2210]" 0;
	setAttr ".phl[2211]" 0;
	setAttr ".phl[2212]" 0;
	setAttr ".phl[2213]" 0;
	setAttr ".phl[2214]" 0;
	setAttr ".phl[2215]" 0;
	setAttr ".phl[2216]" 0;
	setAttr ".phl[2217]" 0;
	setAttr ".phl[2218]" 0;
	setAttr ".phl[2219]" 0;
	setAttr ".phl[2220]" 0;
	setAttr ".phl[2221]" 0;
	setAttr ".phl[2222]" 0;
	setAttr ".phl[2223]" 0;
	setAttr ".phl[2224]" 0;
	setAttr ".phl[2225]" 0;
	setAttr ".phl[2226]" 0;
	setAttr ".phl[2227]" 0;
	setAttr ".phl[2228]" 0;
	setAttr ".phl[2229]" 0;
	setAttr ".phl[2230]" 0;
	setAttr ".phl[2231]" 0;
	setAttr ".phl[2232]" 0;
	setAttr ".phl[2233]" 0;
	setAttr ".phl[2234]" 0;
	setAttr ".phl[2235]" 0;
	setAttr ".phl[2236]" 0;
	setAttr ".phl[2237]" 0;
	setAttr ".phl[2238]" 0;
	setAttr ".phl[2239]" 0;
	setAttr ".phl[2240]" 0;
	setAttr ".phl[2241]" 0;
	setAttr ".phl[2242]" 0;
	setAttr ".phl[2243]" 0;
	setAttr ".phl[2244]" 0;
	setAttr ".phl[2245]" 0;
	setAttr ".phl[2246]" 0;
	setAttr ".phl[2247]" 0;
	setAttr ".phl[2248]" 0;
	setAttr ".phl[2249]" 0;
	setAttr ".phl[2250]" 0;
	setAttr ".phl[2251]" 0;
	setAttr ".phl[2252]" 0;
	setAttr ".phl[2253]" 0;
	setAttr ".phl[2254]" 0;
	setAttr ".phl[2255]" 0;
	setAttr ".phl[2256]" 0;
	setAttr ".phl[2257]" 0;
	setAttr ".phl[2258]" 0;
	setAttr ".phl[2259]" 0;
	setAttr ".phl[2260]" 0;
	setAttr ".phl[2261]" 0;
	setAttr ".phl[2262]" 0;
	setAttr ".phl[2263]" 0;
	setAttr ".phl[2264]" 0;
	setAttr ".phl[2265]" 0;
	setAttr ".phl[2266]" 0;
	setAttr ".phl[2267]" 0;
	setAttr ".phl[2268]" 0;
	setAttr ".phl[2269]" 0;
	setAttr ".phl[2270]" 0;
	setAttr ".phl[2271]" 0;
	setAttr ".phl[2272]" 0;
	setAttr ".phl[2273]" 0;
	setAttr ".phl[2274]" 0;
	setAttr ".phl[2275]" 0;
	setAttr ".phl[2276]" 0;
	setAttr ".phl[2277]" 0;
	setAttr ".phl[2278]" 0;
	setAttr ".phl[2279]" 0;
	setAttr ".phl[2280]" 0;
	setAttr ".phl[2281]" 0;
	setAttr ".phl[2282]" 0;
	setAttr ".phl[2283]" 0;
	setAttr ".phl[2284]" 0;
	setAttr ".phl[2285]" 0;
	setAttr ".phl[2286]" 0;
	setAttr ".phl[2287]" 0;
	setAttr ".phl[2288]" 0;
	setAttr ".phl[2289]" 0;
	setAttr ".phl[2290]" 0;
	setAttr ".phl[2291]" 0;
	setAttr ".phl[2292]" 0;
	setAttr ".phl[2293]" 0;
	setAttr ".phl[2294]" 0;
	setAttr ".phl[2295]" 0;
	setAttr ".phl[2296]" 0;
	setAttr ".phl[2297]" 0;
	setAttr ".phl[2298]" 0;
	setAttr ".phl[2299]" 0;
	setAttr ".phl[2300]" 0;
	setAttr ".phl[2301]" 0;
	setAttr ".phl[2302]" 0;
	setAttr ".phl[2303]" 0;
	setAttr ".phl[2304]" 0;
	setAttr ".phl[2305]" 0;
	setAttr ".phl[2306]" 0;
	setAttr ".phl[2307]" 0;
	setAttr ".phl[2308]" 0;
	setAttr ".phl[2309]" 0;
	setAttr ".phl[2310]" 0;
	setAttr ".phl[2311]" 0;
	setAttr ".phl[2312]" 0;
	setAttr ".phl[2313]" 0;
	setAttr ".phl[2314]" 0;
	setAttr ".phl[2315]" 0;
	setAttr ".phl[2316]" 0;
	setAttr ".phl[2317]" 0;
	setAttr ".phl[2318]" 0;
	setAttr ".phl[2319]" 0;
	setAttr ".phl[2320]" 0;
	setAttr ".phl[2321]" 0;
	setAttr ".phl[2322]" 0;
	setAttr ".phl[2323]" 0;
	setAttr ".phl[2324]" 0;
	setAttr ".phl[2325]" 0;
	setAttr ".phl[2326]" 0;
	setAttr ".phl[2327]" 0;
	setAttr ".phl[2328]" 0;
	setAttr ".phl[2329]" 0;
	setAttr ".phl[2330]" 0;
	setAttr ".phl[2331]" 0;
	setAttr ".phl[2332]" 0;
	setAttr ".phl[2333]" 0;
	setAttr ".phl[2334]" 0;
	setAttr ".phl[2335]" 0;
	setAttr ".phl[2336]" 0;
	setAttr ".phl[2337]" 0;
	setAttr ".phl[2338]" 0;
	setAttr ".phl[2339]" 0;
	setAttr ".phl[2340]" 0;
	setAttr ".phl[2341]" 0;
	setAttr ".phl[2342]" 0;
	setAttr ".phl[2343]" 0;
	setAttr ".phl[2344]" 0;
	setAttr ".phl[2345]" 0;
	setAttr ".phl[2346]" 0;
	setAttr ".phl[2347]" 0;
	setAttr ".phl[2348]" 0;
	setAttr ".phl[2349]" 0;
	setAttr ".phl[2350]" 0;
	setAttr ".phl[2351]" 0;
	setAttr ".phl[2352]" 0;
	setAttr ".phl[2353]" 0;
	setAttr ".phl[2354]" 0;
	setAttr ".phl[2355]" 0;
	setAttr ".phl[2356]" 0;
	setAttr ".phl[2357]" 0;
	setAttr ".phl[2358]" 0;
	setAttr ".phl[2359]" 0;
	setAttr ".phl[2360]" 0;
	setAttr ".phl[2361]" 0;
	setAttr ".phl[2362]" 0;
	setAttr ".phl[2363]" 0;
	setAttr ".phl[2364]" 0;
	setAttr ".phl[2365]" 0;
	setAttr ".phl[2366]" 0;
	setAttr ".phl[2367]" 0;
	setAttr ".phl[2368]" 0;
	setAttr ".phl[2369]" 0;
	setAttr ".phl[2370]" 0;
	setAttr ".phl[2371]" 0;
	setAttr ".phl[2372]" 0;
	setAttr ".phl[2373]" 0;
	setAttr ".phl[2374]" 0;
	setAttr ".phl[2375]" 0;
	setAttr ".phl[2376]" 0;
	setAttr ".phl[2377]" 0;
	setAttr ".phl[2378]" 0;
	setAttr ".phl[2379]" 0;
	setAttr ".phl[2380]" 0;
	setAttr ".phl[2381]" 0;
	setAttr ".phl[2382]" 0;
	setAttr ".phl[2383]" 0;
	setAttr ".phl[2384]" 0;
	setAttr ".phl[2385]" 0;
	setAttr ".phl[2386]" 0;
	setAttr ".phl[2387]" 0;
	setAttr ".phl[2388]" 0;
	setAttr ".phl[2389]" 0;
	setAttr ".phl[2390]" 0;
	setAttr ".phl[2391]" 0;
	setAttr ".phl[2392]" 0;
	setAttr ".phl[2393]" 0;
	setAttr ".phl[2394]" 0;
	setAttr ".phl[2395]" 0;
	setAttr ".phl[2396]" 0;
	setAttr ".phl[2397]" 0;
	setAttr ".phl[2398]" 0;
	setAttr ".phl[2399]" 0;
	setAttr ".phl[2400]" 0;
	setAttr ".phl[2401]" 0;
	setAttr ".phl[2402]" 0;
	setAttr ".phl[2403]" 0;
	setAttr ".phl[2404]" 0;
	setAttr ".phl[2405]" 0;
	setAttr ".phl[2406]" 0;
	setAttr ".phl[2407]" 0;
	setAttr ".phl[2408]" 0;
	setAttr ".phl[2409]" 0;
	setAttr ".phl[2410]" 0;
	setAttr ".phl[2411]" 0;
	setAttr ".phl[2412]" 0;
	setAttr ".phl[2413]" 0;
	setAttr ".phl[2414]" 0;
	setAttr ".phl[2415]" 0;
	setAttr ".phl[2416]" 0;
	setAttr ".phl[2417]" 0;
	setAttr ".phl[2418]" 0;
	setAttr ".phl[2419]" 0;
	setAttr ".phl[2420]" 0;
	setAttr ".phl[2421]" 0;
	setAttr ".phl[2422]" 0;
	setAttr ".phl[2423]" 0;
	setAttr ".phl[2424]" 0;
	setAttr ".phl[2425]" 0;
	setAttr ".phl[2426]" 0;
	setAttr ".phl[2427]" 0;
	setAttr ".phl[2428]" 0;
	setAttr ".phl[2429]" 0;
	setAttr ".phl[2430]" 0;
	setAttr ".phl[2431]" 0;
	setAttr ".phl[2432]" 0;
	setAttr ".phl[2433]" 0;
	setAttr ".phl[2434]" 0;
	setAttr ".phl[2435]" 0;
	setAttr ".phl[2436]" 0;
	setAttr ".phl[2437]" 0;
	setAttr ".phl[2438]" 0;
	setAttr ".phl[2439]" 0;
	setAttr ".phl[2440]" 0;
	setAttr ".phl[2441]" 0;
	setAttr ".phl[2442]" 0;
	setAttr ".phl[2443]" 0;
	setAttr ".phl[2444]" 0;
	setAttr ".phl[2445]" 0;
	setAttr ".phl[2446]" 0;
	setAttr ".phl[2447]" 0;
	setAttr ".phl[2448]" 0;
	setAttr ".phl[2449]" 0;
	setAttr ".phl[2450]" 0;
	setAttr ".phl[2451]" 0;
	setAttr ".phl[2452]" 0;
	setAttr ".phl[2453]" 0;
	setAttr ".phl[2454]" 0;
	setAttr ".phl[2455]" 0;
	setAttr ".phl[2456]" 0;
	setAttr ".phl[2457]" 0;
	setAttr ".phl[2458]" 0;
	setAttr ".phl[2459]" 0;
	setAttr ".phl[2460]" 0;
	setAttr ".phl[2461]" 0;
	setAttr ".phl[2462]" 0;
	setAttr ".phl[2463]" 0;
	setAttr ".phl[2464]" 0;
	setAttr ".phl[2465]" 0;
	setAttr ".phl[2466]" 0;
	setAttr ".phl[2467]" 0;
	setAttr ".phl[2468]" 0;
	setAttr ".phl[2469]" 0;
	setAttr ".phl[2470]" 0;
	setAttr ".phl[2471]" 0;
	setAttr ".phl[2472]" 0;
	setAttr ".phl[2473]" 0;
	setAttr ".phl[2474]" 0;
	setAttr ".phl[2475]" 0;
	setAttr ".phl[2476]" 0;
	setAttr ".phl[2477]" 0;
	setAttr ".phl[2478]" 0;
	setAttr ".phl[2479]" 0;
	setAttr ".phl[2480]" 0;
	setAttr ".phl[2481]" 0;
	setAttr ".phl[2482]" 0;
	setAttr ".phl[2483]" 0;
	setAttr ".phl[2484]" 0;
	setAttr ".phl[2485]" 0;
	setAttr ".phl[2486]" 0;
	setAttr ".phl[2487]" 0;
	setAttr ".phl[2488]" 0;
	setAttr ".phl[2489]" 0;
	setAttr ".phl[2490]" 0;
	setAttr ".phl[2491]" 0;
	setAttr ".phl[2492]" 0;
	setAttr ".phl[2493]" 0;
	setAttr ".phl[2494]" 0;
	setAttr ".phl[2495]" 0;
	setAttr ".phl[2496]" 0;
	setAttr ".phl[2497]" 0;
	setAttr ".phl[2498]" 0;
	setAttr ".phl[2499]" 0;
	setAttr ".phl[2500]" 0;
	setAttr ".phl[2501]" 0;
	setAttr ".phl[2502]" 0;
	setAttr ".phl[2503]" 0;
	setAttr ".phl[2504]" 0;
	setAttr ".phl[2505]" 0;
	setAttr ".phl[2506]" 0;
	setAttr ".phl[2507]" 0;
	setAttr ".phl[2508]" 0;
	setAttr ".phl[2509]" 0;
	setAttr ".phl[2510]" 0;
	setAttr ".phl[2511]" 0;
	setAttr ".phl[2512]" 0;
	setAttr ".phl[2513]" 0;
	setAttr ".phl[2514]" 0;
	setAttr ".phl[2515]" 0;
	setAttr ".phl[2516]" 0;
	setAttr ".phl[2517]" 0;
	setAttr ".phl[2518]" 0;
	setAttr ".phl[2519]" 0;
	setAttr ".phl[2520]" 0;
	setAttr ".phl[2521]" 0;
	setAttr ".phl[2522]" 0;
	setAttr ".phl[2523]" 0;
	setAttr ".phl[2524]" 0;
	setAttr ".phl[2525]" 0;
	setAttr ".phl[2526]" 0;
	setAttr ".phl[2527]" 0;
	setAttr ".phl[2528]" 0;
	setAttr ".phl[2529]" 0;
	setAttr ".phl[2530]" 0;
	setAttr ".phl[2531]" 0;
	setAttr ".phl[2532]" 0;
	setAttr ".phl[2533]" 0;
	setAttr ".phl[2534]" 0;
	setAttr ".phl[2535]" 0;
	setAttr ".phl[2536]" 0;
	setAttr ".phl[2537]" 0;
	setAttr ".phl[2538]" 0;
	setAttr ".phl[2539]" 0;
	setAttr ".phl[2540]" 0;
	setAttr ".phl[2541]" 0;
	setAttr ".phl[2542]" 0;
	setAttr ".phl[2543]" 0;
	setAttr ".phl[2544]" 0;
	setAttr ".phl[2545]" 0;
	setAttr ".phl[2546]" 0;
	setAttr ".phl[2547]" 0;
	setAttr ".phl[2548]" 0;
	setAttr ".phl[2549]" 0;
	setAttr ".phl[2550]" 0;
	setAttr ".phl[2551]" 0;
	setAttr ".phl[2552]" 0;
	setAttr ".phl[2553]" 0;
	setAttr ".phl[2554]" 0;
	setAttr ".phl[2555]" 0;
	setAttr ".phl[2556]" 0;
	setAttr ".phl[2557]" 0;
	setAttr ".phl[2558]" 0;
	setAttr ".phl[2559]" 0;
	setAttr ".phl[2560]" 0;
	setAttr ".phl[2561]" 0;
	setAttr ".phl[2562]" 0;
	setAttr ".phl[2563]" 0;
	setAttr ".phl[2564]" 0;
	setAttr ".phl[2565]" 0;
	setAttr ".phl[2566]" 0;
	setAttr ".phl[2567]" 0;
	setAttr ".phl[2568]" 0;
	setAttr ".phl[2569]" 0;
	setAttr ".phl[2570]" 0;
	setAttr ".phl[2571]" 0;
	setAttr ".phl[2572]" 0;
	setAttr ".phl[2573]" 0;
	setAttr ".phl[2574]" 0;
	setAttr ".phl[2575]" 0;
	setAttr ".phl[2576]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"SER_116_kRN"
		"SER_116_kRN" 7
		2 "HIKproperties2" "rigAlign" " 1"
		2 "HIKSolverNode2" "nodeState" " 0"
		2 "HIKSolverNode2" "InputActive" " 1"
		2 "HIKSolverNode2" "InputStance" " 0"
		2 "HIKSolverNode2" "InputStanceMask" " 0"
		3 "HIKSolverNode2.OutputCharacterState" "HIKState2SK2.InputCharacterState" 
		""
		5 0 "SER_116_kRN" "HIKSolverNode2.OutputCharacterState" "HIKState2SK2.InputCharacterState" 
		"SER_116_kRN.placeHolderList[1285]" "SER_116_kRN.placeHolderList[1286]" "HIKState2SK2.InputCharacterState"
		
		"SER_116_kRN" 2096
		2 "|Character_Holder|Character_Reference" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Character_Holder|Character_Reference" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand" 
		"translate" " -type \"double3\" 25.50630789616934635 2.0507620888565725e-05 2.9673046526568214e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand" 
		"rotate" " -type \"double3\" -16.02952604408551807 0.66377064164222721 9.69368621793586627"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1" 
		"translate" " -type \"double3\" 1.7026720069038106 2.06649863704751624 2.14275214496854005"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1" 
		"rotate" " -type \"double3\" -0.20695591868381419 -6.51558786050586658 -14.12302314399888203"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2" 
		"translate" " -type \"double3\" 6.81599431270382183 -3.5952290147633903e-05 2.0197592334625369e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2" 
		"rotate" " -type \"double3\" -0.22567563358762111 1.67145051025400848 -15.37807887638458482"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3" 
		"translate" " -type \"double3\" 3.27757939490875572 3.108589157818642e-05 1.0124582445314445e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3" 
		"rotate" " -type \"double3\" -0.20842874731784156 0.86365834486662474 -8.08352764609227137"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1" 
		"translate" " -type \"double3\" 9.1713143788169873 2.89731617127006302 -0.13208114020073936"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1" 
		"rotate" " -type \"double3\" 0 0 12.34336263827884927"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2" 
		"translate" " -type \"double3\" 5.62647533674090994 -6.7390665776656533e-06 1.6732765061533428e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2" 
		"rotate" " -type \"double3\" 0 -26.04890454420294787 0"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3" 
		"translate" " -type \"double3\" 2.79693806733436645 1.8950961475638906e-06 -1.4258227224672737e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3" 
		"rotate" " -type \"double3\" -0.0001252870980194278 -10.12848683149617557 7.5266979855131896e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1" 
		"translate" " -type \"double3\" 9.30850337856600163 0.53003340441034652 -0.93784323341844811"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1" 
		"rotate" " -type \"double3\" -0.12565888500890793 -2.87726342031710436 2.50164759735482045"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2" 
		"translate" " -type \"double3\" 5.62048881762396491 -3.5404413949891023e-05 -4.1552106722519966e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2" 
		"rotate" " -type \"double3\" 0 -39.05830643313895223 0"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3" 
		"translate" " -type \"double3\" 3.34273193061335405 -1.9904781481727696e-05 1.6847382767082308e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3" 
		"rotate" " -type \"double3\" 0 -10.12827293604591183 6.3628951555868925e-05"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1" 
		"translate" " -type \"double3\" 9.06063613086951136 -1.77964431759914987 -0.88901089886712725"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1" 
		"rotate" " -type \"double3\" 1.67624884050799983 -16.71227160571416803 -5.81092769324451996"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2" 
		"translate" " -type \"double3\" 5.52861581009847036 -1.8268415942657157e-05 1.0286827546224231e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2" 
		"rotate" " -type \"double3\" -7.8723629366202517e-05 -30.10667935889697944 0"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3" 
		"translate" " -type \"double3\" 2.78044360811372826 3.9113755860853416e-06 3.8952121258262196e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3" 
		"rotate" " -type \"double3\" 0 -16.2482508007018609 0"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1" 
		"translate" " -type \"double3\" 8.41184845948873772 -3.84861581884052839 -0.048620073921938456"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1" 
		"rotate" " -type \"double3\" 6.77372362064120015 -18.5133450077791224 -20.50963455726956397"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2" 
		"translate" " -type \"double3\" 4.20631640933594042 -7.4278975716879359e-06 -3.6244909892957367e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2" 
		"rotate" " -type \"double3\" -0.00012502575041098668 -28.3687742780474963 0.00010158885008880286"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3" 
		"translate" " -type \"double3\" 2.12770256663588953 3.6806168168368458e-05 6.1452296222341829e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3" 
		"rotate" " -type \"double3\" 0 -16.24825171604143748 8.0059463222829019e-05"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Helper_Weapon2" 
		"translate" " -type \"double3\" 7.80533361434935102 -0.08665964752435773 2.18262791633608799"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand" 
		"translate" " -type \"double3\" -25.50631219751866752 -5.0676434398155834e-05 0.00024599452120810383"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand" 
		"rotate" " -type \"double3\" 0.16296467707231477 0.91666063865151415 20.15752623153497325"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1" 
		"translate" " -type \"double3\" -1.70263424983249934 -2.16371372947571672 -2.04485830643983491"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1" 
		"rotate" " -type \"double3\" -0.82738801125938555 -27.16141589091022723 3.42284238607660196"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2" 
		"translate" " -type \"double3\" -6.81591252796550684 2.0534244640657562e-05 0.00022200801890903676"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2" 
		"rotate" " -type \"double3\" 0.19084019859842197 -3.56076761907349715 -6.11447465484294472"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3" 
		"translate" " -type \"double3\" -3.27770391032686348 -0.00015234182149015396 -0.00031788486785444547"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3" 
		"rotate" " -type \"double3\" 1.79931641600827597 -23.94612561495706871 -10.70879207250240839"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1" 
		"translate" " -type \"double3\" -9.17130792676653073 -2.88802956074277972 0.26626312702506993"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1" 
		"rotate" " -type \"double3\" -0.040370072424979031 6.68765408118936655 -0.69011546283944591"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2" 
		"translate" " -type \"double3\" -5.62657134358804711 -0.00010297902315414831 -0.00034691136340825324"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2" 
		"rotate" " -type \"double3\" -1.03539668896534742 -23.05947699439049714 5.07072228827488658"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3" 
		"translate" " -type \"double3\" -2.79680559981534316 1.6520678741471784e-05 0.00022215803988956395"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3" 
		"rotate" " -type \"double3\" -0.1083899523098944 -5.3358274709520277 2.32281782865851083"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1" 
		"translate" " -type \"double3\" -9.30848390967813799 -0.48600284912095049 0.96164905945585133"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1" 
		"rotate" " -type \"double3\" -0.0011202592881988127 -1.07440604454951694 0.11035181433927713"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2" 
		"translate" " -type \"double3\" -5.62061283133463263 -6.2454723774862941e-05 -0.0006539980917068533"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2" 
		"rotate" " -type \"double3\" -1.97821201383154333 -30.91956030555444457 7.14357769260360964"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3" 
		"translate" " -type \"double3\" -3.34270431556964809 -1.2858116861025337e-05 -9.1947808982695278e-05"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3" 
		"rotate" " -type \"double3\" -0.21282170453114008 -7.46481522488869498 3.25956831292818006"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1" 
		"translate" " -type \"double3\" -9.06055571056970876 1.81898984527526864 0.80554571198922531"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1" 
		"rotate" " -type \"double3\" 0.0071797527972693965 -13.47734523163439846 2.70089223224675568"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2" 
		"translate" " -type \"double3\" -5.52867388845388064 -4.3995251189699047e-05 -0.00029349340866247076"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2" 
		"rotate" " -type \"double3\" -1.76973851770199819 -29.43737554300802017 6.72883510372152038"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3" 
		"translate" " -type \"double3\" -2.78035927319245957 4.7232289148269047e-05 0.00046219688124438107"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1" 
		"translate" " -type \"double3\" -8.41177459584013576 3.84675873771800525 -0.12951279620773448"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1" 
		"rotate" " -type \"double3\" -0.65064078606060682 -25.77435859222111603 2.84297331174120238"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2" 
		"translate" " -type \"double3\" -4.20658500469886576 -0.00012822793655686837 -0.00072968311332033409"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2" 
		"rotate" " -type \"double3\" -2.29630954530983455 -32.9862240682495127 7.74460815632324362"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3" 
		"translate" " -type \"double3\" -2.12751393819638679 0.00013842542125530599 0.00056484639560494543"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3" 
		"rotate" " -type \"double3\" -0.98166612202241188 -15.81256047677671539 7.05929148700299791"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"visibility" " -av 1"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"translate" " -type \"double3\" -7.80534692151582021 0.086657356286398368 -2.18293080409918616"
		
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"translateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"translateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"translateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"rotateX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"rotateY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"rotateZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"scaleX" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"scaleY" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"scaleZ" " -av"
		2 "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1" 
		"lockInfluenceWeights" " -av -k 1 0"
		2 "|Character1_Ctrl_Reference|y|x|z" "visibility" " 1"
		2 "|Character1_Ctrl_Reference|y|x|z" "translate" " -type \"double3\" -60.62093851358014973 364.13253333512642484 631.867726320672773"
		
		2 "|Character1_Ctrl_Reference|y|x|z" "translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z" "translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z" "translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z" "rotate" " -type \"double3\" 28.51289439498432898 0 0"
		
		2 "|Character1_Ctrl_Reference|y|x|z" "rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z" "rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z" "scale" " -type \"double3\" 1 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector" "translate" 
		" -type \"double3\" 4.9808653201921516e-06 125.6737681140893983 -3.120600854344957e-05"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector" "rotate" 
		" -type \"double3\" 593.34981660285927774 -19.17428167345642365 -61.18087016362328256"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "translate" 
		" -type \"double3\" -76.90211751669326645 149.12607833990716699 -4.57166024909355428"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "rotate" 
		" -type \"double3\" -250.90206056032698712 121.91116970251137275 -14.46391868999155506"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "pinning" 
		" 0"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "reachTranslation" 
		" 0"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector" "reachRotation" 
		" 0"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "translate" 
		" -type \"double3\" 3.90369415283203125 184.4477996826171875 194.5013275146484375"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "rotate" 
		" -type \"double3\" -29.79595542534798369 189.38401196345131439 224.16333087276302649"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "pinning" 
		" 0"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "reachTranslation" 
		" 0"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector" "reachRotation" 
		" 0"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector" "translate" 
		" -type \"double3\" 8.61573028564453125 289.45501708984375 158.939056396484375"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector" "rotate" 
		" -type \"double3\" 23.65628636397356743 10.9777069030413994 -202.46687652773886157"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector" "translate" 
		" -type \"double3\" -8.45256233215332031 226.078338623046875 93.68303680419921875"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector" "rotate" 
		" -type \"double3\" 49.93056402263118798 4.88984414384694954 -11.82616403931977445"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector" "translate" 
		" -type \"double3\" -44.29233052938858606 124.63383463800346362 -32.49477491570189613"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector" "rotate" 
		" -type \"double3\" -289.17678399885380713 41.28187710909492836 -131.25504359662110687"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector" "translate" 
		" -type \"double3\" -20.21218299865722656 180.0715484619140625 151.5799713134765625"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector" "rotate" 
		" -type \"double3\" -18.32121537719416793 209.20362880366226932 84.17824838274452759"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector" "translate" 
		" -type \"double3\" 30.2304534912109375 282.5826416015625 147.2708892822265625"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector" "rotate" 
		" -type \"double3\" 38.34082032228894832 15.63037179689167289 -210.7635751200344032"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector" "translate" 
		" -type \"double3\" 13.70965766906738281 234.0858612060546875 103.44464111328125"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector" "rotate" 
		" -type \"double3\" -47.50483824505784725 -18.29695940282948641 -26.17394009834021418"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector" 
		"translate" " -type \"double3\" 1.56190607339461707 128.42373900101574691 -4.99827031299872715"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector" 
		"rotate" " -type \"double3\" 236.35292671433001033 -17.70591800553317086 -55.22359015743304411"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector" "translate" 
		" -type \"double3\" 0.26187631875594519 151.30048068705787045 -26.78121161713266929"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector" "rotate" 
		" -type \"double3\" 305.0083837724660043 21.1000112256297534 -25.54796405215314437"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector" 
		"translate" " -type \"double3\" 12.87491226196289063 269.808197021484375 135.280853271484375"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector" 
		"rotate" " -type \"double3\" -28.02818605820135645 -31.19773129598901207 320.83451414960882175"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector" 
		"translate" " -type \"double3\" -1.24677419662475586 250.025909423828125 114.863128662109375"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector" 
		"rotate" " -type \"double3\" 32.79995036392791263 40.26830365195491623 -221.8871666871062871"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector" "translate" 
		" -type \"double3\" -6.77112340927124023 271.9671630859375 128.4220123291015625"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector" "rotate" 
		" -type \"double3\" -21.60382848056107719 29.98985767607117126 -16.73400025765560883"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector" "translate" 
		" -type \"double3\" -3.95935323446671106 131.03035812457778775 1.709869197183707"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector" "rotate" 
		" -type \"double3\" -247.33785575583289074 130.78628323786458054 -100.5923729400221589"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector" "visibility" 
		" -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector" "translate" 
		" -type \"double3\" 3.20290946960449219 227.6167449951171875 156.9476318359375"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector" "translateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector" "translateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector" "translateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector" "rotate" 
		" -type \"double3\" -202.69744017299359484 26.0783203739150693 6.44066379415351964"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector" "rotateZ" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector" "rotateY" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector" "rotateX" 
		" -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector" 
		"translate" " -type \"double3\" 44.40734100341796875 277.88909912109375 171.6845855712890625"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector" 
		"rotate" " -type \"double3\" 38.8594953917453978 17.75144678491787786 303.24660872803355005"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector" 
		"translate" " -type \"double3\" 49.43509674072265625 283.785552978515625 172.331024169921875"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector" 
		"rotate" " -type \"double3\" 176.61570709835612547 -63.08906210150569649 220.33559187704454985"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector" 
		"translate" " -type \"double3\" 51.07847213745117188 280.73052978515625 173.8144989013671875"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector" 
		"rotate" " -type \"double3\" 219.803517833753574 -64.89528104460266889 180.40590771528491132"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector" 
		"translate" " -type \"double3\" 51.5509185791015625 277.05108642578125 174.6242523193359375"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector" 
		"rotate" " -type \"double3\" 246.79229554164837168 -59.27426153084582694 156.42780168734731205"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector" 
		"translate" " -type \"double3\" 52.23904037475585938 273.040130615234375 173.785614013671875"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector" 
		"rotate" " -type \"double3\" 93.69592044115202611 -120.07103283464010701 316.24986455420855691"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector" 
		"translate" " -type \"double3\" -33.0492401123046875 224.6203460693359375 114.5641632080078125"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector" 
		"rotate" " -type \"double3\" -31.19235106216580178 -17.47835680413230719 10.64467530026684194"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector" 
		"translate" " -type \"double3\" -43.3228607177734375 227.896728515625 109.1426849365234375"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector" 
		"rotate" " -type \"double3\" -48.1219502073132972 39.20082862891103304 8.65534042534586234"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector" 
		"translate" " -type \"double3\" -43.47373580932617188 225.3945159912109375 108.7163848876953125"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector" 
		"rotate" " -type \"double3\" -34.13079958759469434 51.3214313157044657 28.14607855896635868"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector" 
		"translate" " -type \"double3\" -42.127105712890625 222.94384765625 108.2573394775390625"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector" 
		"rotate" " -type \"double3\" -30.50199932660233415 53.61660326672559052 31.44274622788657325"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector" 
		"translate" " -type \"double3\" -39.23014450073242188 220.5703582763671875 107.12967681884765625"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector" 
		"rotate" " -type \"double3\" 198.83860586765379708 123.13382538141782163 271.27704396656321251"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector" 
		"translate" " -type \"double3\" -19.62714385986328125 296.809814453125 262.417572021484375"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector" 
		"rotate" " -type \"double3\" 110.42540552781355245 153.74294550405721793 -93.89475610049412069"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector" 
		"translate" " -type \"double3\" -1.95062994956970215 139.906982421875 190.573333740234375"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector" 
		"translateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector" 
		"translateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector" 
		"translateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector" 
		"rotate" " -type \"double3\" 116.35963023569813402 -113.26461559633443699 -51.70413326206296745"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips" "visibility" " -k 0 -cb 1 1"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips" "translate" " -type \"double3\" 0.83815881997664832 127.14946448498233167 -2.68225844984033301"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips" "translateZ" " -av"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips" "translateY" " -av"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips" "translateX" " -av"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips" "rotate" " -type \"double3\" 233.34981660285930616 -15.31156038578163248 -61.18087016362328256"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips" "rotateZ" " -av"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips" "rotateY" " -av"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips" "rotateX" " -av"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg" 
		"rotate" " -type \"double3\" 65.58556509608520457 -10.52936429027094256 -106.96310714474719816"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg" 
		"rotate" " -type \"double3\" 0.3391208352656282 0.056270471652223118 85.56752608081740163"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot" 
		"rotate" " -type \"double3\" -0.10348466151937395 4.97734268773369948 11.90248186236866168"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot|Character1_Ctrl_LeftFootIndex1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot|Character1_Ctrl_LeftFootIndex1" 
		"rotate" " -type \"double3\" -10.2695564394688077 4.5655674759835728e-06 4.3534910593089635e-06"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot|Character1_Ctrl_LeftFootIndex1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot|Character1_Ctrl_LeftFootIndex1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot|Character1_Ctrl_LeftFootIndex1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg" 
		"rotate" " -type \"double3\" -7.14170286139626587 34.99416795963281857 -24.63162736347720028"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg" 
		"rotate" " -type \"double3\" 0.0002744523075564179 -0.0010145206199391728 69.6042796251536231"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot" 
		"rotate" " -type \"double3\" 0 0 39.44056707905041748"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot|Character1_Ctrl_RightFootIndex1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot|Character1_Ctrl_RightFootIndex1" 
		"rotate" " -type \"double3\" -14.34925228813408893 9.6357584984644783e-06 1.3360288154922785e-05"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot|Character1_Ctrl_RightFootIndex1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot|Character1_Ctrl_RightFootIndex1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot|Character1_Ctrl_RightFootIndex1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine" 
		"rotate" " -type \"double3\" 4.1859805708496598 -1.57294996815918409 -2.20186820084655865"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1" 
		"rotate" " -type \"double3\" 30.12906073649248739 -20.34420694756261838 14.29698059803300758"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2" 
		"rotate" " -type \"double3\" 30.12905177807163781 -20.3441039278348228 13.60186742541112892"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder" 
		"rotate" " -type \"double3\" -1.0569690026608801e-06 18.58131535780948695 0.73868355295041799"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm" 
		"rotate" " -type \"double3\" -5.0620039014063174 4.81786252410027949 -3.38261154870738467"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm" 
		"rotate" " -type \"double3\" -0.028524511927846889 0.0088227915958865675 96.62686347615863269"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand" 
		"rotate" " -type \"double3\" -16.04298941217458463 2.9906317655540379e-05 9.78699206385983089"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1" 
		"rotate" " -type \"double3\" -5.8580061888307519e-05 9.20408009639377589 12.55773141533011739"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2" 
		"rotate" " -type \"double3\" -3.0959641015258844e-06 -0.00016251925712488943 15.46646814908558198"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2|Character1_Ctrl_LeftHandThumb3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2|Character1_Ctrl_LeftHandThumb3" 
		"rotate" " -type \"double3\" 2.9456820202516006e-06 8.1714326021134037e-05 8.13055759599084737"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2|Character1_Ctrl_LeftHandThumb3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2|Character1_Ctrl_LeftHandThumb3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2|Character1_Ctrl_LeftHandThumb3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1" 
		"rotate" " -type \"double3\" -1.6391451441193563e-05 12.34340549708313439 1.8956073188199102e-05"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2" 
		"rotate" " -type \"double3\" -1.1512948019968183e-05 1.2686127197965128e-05 26.04875243248860528"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2|Character1_Ctrl_LeftHandIndex3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2|Character1_Ctrl_LeftHandIndex3" 
		"rotate" " -type \"double3\" 0.00010472023947071886 -8.6972428227032966e-06 10.12848694258592808"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2|Character1_Ctrl_LeftHandIndex3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2|Character1_Ctrl_LeftHandIndex3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2|Character1_Ctrl_LeftHandIndex3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1" 
		"rotate" " -type \"double3\" 6.5621339552362517e-06 2.49852619259920594 2.88000083373650551"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2" 
		"rotate" " -type \"double3\" -2.0807542120456161e-05 3.235998255542486e-05 39.05831230442317548"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2|Character1_Ctrl_LeftHandMiddle3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2|Character1_Ctrl_LeftHandMiddle3" 
		"rotate" " -type \"double3\" 3.0018382198012713e-05 -1.039490326772855e-05 10.12827338474869343"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2|Character1_Ctrl_LeftHandMiddle3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2|Character1_Ctrl_LeftHandMiddle3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2|Character1_Ctrl_LeftHandMiddle3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1" 
		"rotate" " -type \"double3\" -4.6052597327578546e-05 -5.56466376433493259 16.79374159666338784"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2" 
		"rotate" " -type \"double3\" -0.00010247017864675886 -5.5002852387363576e-06 30.10668914898277748"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2|Character1_Ctrl_LeftHandRing3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2|Character1_Ctrl_LeftHandRing3" 
		"rotate" " -type \"double3\" 1.0636415537405049e-05 -7.3876652711887489e-06 16.24824925414833388"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2|Character1_Ctrl_LeftHandRing3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2|Character1_Ctrl_LeftHandRing3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2|Character1_Ctrl_LeftHandRing3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1" 
		"rotate" " -type \"double3\" -1.2927798381355891e-05 -19.40434041130197684 19.67277726276542893"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2" 
		"rotate" " -type \"double3\" -3.1405587228998014e-05 7.2517360083729243e-05 28.3687756659813104"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2|Character1_Ctrl_LeftHandPinky3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2|Character1_Ctrl_LeftHandPinky3" 
		"rotate" " -type \"double3\" 7.7455739354735861e-07 -3.1775832054795784e-05 16.24825642178952023"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2|Character1_Ctrl_LeftHandPinky3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2|Character1_Ctrl_LeftHandPinky3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2|Character1_Ctrl_LeftHandPinky3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder" 
		"rotate" " -type \"double3\" -7.6362952307372443e-05 -17.68644910783962843 -3.77493504655227108"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm" 
		"rotate" " -type \"double3\" -4.45804087777989455 22.59720739366382602 42.16854543287954016"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm" 
		"rotate" " -type \"double3\" 6.8032024023339728e-06 1.2222484613307998e-05 91.51440998476759603"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand" 
		"rotate" " -type \"double3\" 0.0001510225509715272 2.9005396533639712e-05 20.1774753570094596"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1" 
		"rotate" " -type \"double3\" 0.00029310814672623168 27.35995743170525785 0.00020901102110195885"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2" 
		"rotate" " -type \"double3\" 0.000152469932460817 4.6192083981191895e-05 -7.07231451396865474"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2|Character1_Ctrl_RightHandThumb3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2|Character1_Ctrl_RightHandThumb3" 
		"rotate" " -type \"double3\" -1.8286149553951692e-05 -1.3231629648440094e-05 -26.10648063336168434"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2|Character1_Ctrl_RightHandThumb3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2|Character1_Ctrl_RightHandThumb3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2|Character1_Ctrl_RightHandThumb3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1" 
		"rotate" " -type \"double3\" 4.8742759009035136e-05 0 -6.72300579969275525"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2" 
		"rotate" " -type \"double3\" 0.00033680735474587325 -6.4462981125324966e-05 23.57417705250567863"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2|Character1_Ctrl_RightHandIndex3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2|Character1_Ctrl_RightHandIndex3" 
		"rotate" " -type \"double3\" -0.00014256375430990586 1.7599211800612858e-05 5.81815523444404814"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2|Character1_Ctrl_RightHandIndex3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2|Character1_Ctrl_RightHandIndex3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2|Character1_Ctrl_RightHandIndex3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1" 
		"rotate" " -type \"double3\" 8.5824753159865919e-05 -8.0531117274114402e-06 1.08005800603482061"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2" 
		"rotate" " -type \"double3\" 0.00012834862351426303 -7.8255341540889783e-05 31.64887503647194222"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2|Character1_Ctrl_RightHandMiddle3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2|Character1_Ctrl_RightHandMiddle3" 
		"rotate" " -type \"double3\" -0.00012001558752284532 2.4710848601503478e-05 8.14175466208974896"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2|Character1_Ctrl_RightHandMiddle3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2|Character1_Ctrl_RightHandMiddle3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2|Character1_Ctrl_RightHandMiddle3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1" 
		"rotate" " -type \"double3\" -0.47613878027197548 -1.24747248975708991 13.68473946648823691"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2" 
		"rotate" " -type \"double3\" 0.0001659156773110966 -0.00019733815038375899 30.11667494220127139"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2|Character1_Ctrl_RightHandRing3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2|Character1_Ctrl_RightHandRing3" 
		"rotate" " -type \"double3\" -3.4221064604922069e-05 5.6115228181103226e-06 3.40675378760303e-05"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2|Character1_Ctrl_RightHandRing3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2|Character1_Ctrl_RightHandRing3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2|Character1_Ctrl_RightHandRing3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1" 
		"rotate" " -type \"double3\" 8.9226395281767729e-05 -0.00011023518447647395 25.92002746655768064"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2" 
		"rotate" " -type \"double3\" -6.0195313210564047e-05 0.00013235235987589273 33.75714125654562281"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2|Character1_Ctrl_RightHandPinky3" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2|Character1_Ctrl_RightHandPinky3" 
		"rotate" " -type \"double3\" -2.2457006002388228e-05 -6.9492881528300326e-05 17.27996882429095393"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2|Character1_Ctrl_RightHandPinky3" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2|Character1_Ctrl_RightHandPinky3" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2|Character1_Ctrl_RightHandPinky3" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck" 
		"rotate" " -type \"double3\" 5.2236484374018955e-05 -0.1181139017511504 21.97579183776748835"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck" 
		"rotateX" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck|Character1_Ctrl_Head" 
		"visibility" " -k 0 -cb 1 1"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck|Character1_Ctrl_Head" 
		"rotate" " -type \"double3\" 34.8473329524674611 -0.78708645498665419 -9.62494562418125454"
		
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck|Character1_Ctrl_Head" 
		"rotateZ" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck|Character1_Ctrl_Head" 
		"rotateY" " -av"
		2 "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck|Character1_Ctrl_Head" 
		"rotateX" " -av"
		2 "HIKSolverNode1" "nodeState" " 0"
		2 "HIKSolverNode1" "InputActive" " 1"
		2 "HIKSolverNode1" "InputStance" " 0"
		2 "HIKSolverNode1" "InputStanceMask" " 0"
		3 "HIKState2SK1.LeftUpLegTx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.translateX" 
		""
		3 "HIKState2SK1.LeftUpLegTy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.translateY" 
		""
		3 "HIKState2SK1.LeftUpLegTz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.translateZ" 
		""
		3 "HIKState2SK1.LeftUpLegRx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.rotateX" 
		""
		3 "HIKState2SK1.LeftUpLegRy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.rotateY" 
		""
		3 "HIKState2SK1.LeftUpLegRz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.rotateZ" 
		""
		3 "HIKState2SK1.LeftUpLegSx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.scaleX" 
		""
		3 "HIKState2SK1.LeftUpLegSy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.scaleY" 
		""
		3 "HIKState2SK1.LeftUpLegSz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.scaleZ" 
		""
		3 "HIKState2SK1.LeftShoulderTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.translateX" 
		""
		3 "HIKState2SK1.LeftShoulderTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.translateY" 
		""
		3 "HIKState2SK1.LeftShoulderTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.translateZ" 
		""
		3 "HIKState2SK1.LeftShoulderRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.rotateX" 
		""
		3 "HIKState2SK1.LeftShoulderRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.rotateY" 
		""
		3 "HIKState2SK1.LeftShoulderRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.rotateZ" 
		""
		3 "HIKState2SK1.LeftShoulderSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.scaleX" 
		""
		3 "HIKState2SK1.LeftShoulderSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.scaleY" 
		""
		3 "HIKState2SK1.LeftShoulderSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandThumb3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.translateX" 
		""
		3 "HIKState2SK1.LeftHandThumb3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.translateY" 
		""
		3 "HIKState2SK1.LeftHandThumb3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.translateZ" 
		""
		3 "HIKState2SK1.LeftHandThumb3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.rotateX" 
		""
		3 "HIKState2SK1.LeftHandThumb3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.rotateY" 
		""
		3 "HIKState2SK1.LeftHandThumb3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandThumb3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.scaleX" 
		""
		3 "HIKState2SK1.LeftHandThumb3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.scaleY" 
		""
		3 "HIKState2SK1.LeftHandThumb3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.scaleZ" 
		""
		3 "HIKState2SK1.NeckTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.translateX" 
		""
		3 "HIKState2SK1.NeckTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.translateY" 
		""
		3 "HIKState2SK1.NeckTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.translateZ" 
		""
		3 "HIKState2SK1.NeckRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.rotateX" 
		""
		3 "HIKState2SK1.NeckRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.rotateY" 
		""
		3 "HIKState2SK1.NeckRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.rotateZ" 
		""
		3 "HIKState2SK1.NeckSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.scaleX" 
		""
		3 "HIKState2SK1.NeckSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.scaleY" 
		""
		3 "HIKState2SK1.NeckSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.scaleZ" 
		""
		3 "HIKState2SK1.RightUpLegTx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.translateX" 
		""
		3 "HIKState2SK1.RightUpLegTy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.translateY" 
		""
		3 "HIKState2SK1.RightUpLegTz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.translateZ" 
		""
		3 "HIKState2SK1.RightUpLegRx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.rotateX" 
		""
		3 "HIKState2SK1.RightUpLegRy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.rotateY" 
		""
		3 "HIKState2SK1.RightUpLegRz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.rotateZ" 
		""
		3 "HIKState2SK1.RightUpLegSx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.scaleX" 
		""
		3 "HIKState2SK1.RightUpLegSy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.scaleY" 
		""
		3 "HIKState2SK1.RightUpLegSz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.scaleZ" 
		""
		3 "HIKState2SK1.Spine2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.translateX" 
		""
		3 "HIKState2SK1.Spine2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.translateY" 
		""
		3 "HIKState2SK1.Spine2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.translateZ" 
		""
		3 "HIKState2SK1.Spine2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.rotateX" 
		""
		3 "HIKState2SK1.Spine2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.rotateY" 
		""
		3 "HIKState2SK1.Spine2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.rotateZ" 
		""
		3 "HIKState2SK1.Spine2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.scaleX" 
		""
		3 "HIKState2SK1.Spine2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.scaleY" 
		""
		3 "HIKState2SK1.Spine2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandRing3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.translateX" 
		""
		3 "HIKState2SK1.LeftHandRing3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.translateY" 
		""
		3 "HIKState2SK1.LeftHandRing3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.translateZ" 
		""
		3 "HIKState2SK1.LeftHandRing3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.rotateX" 
		""
		3 "HIKState2SK1.LeftHandRing3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.rotateY" 
		""
		3 "HIKState2SK1.LeftHandRing3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandRing3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.scaleX" 
		""
		3 "HIKState2SK1.LeftHandRing3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.scaleY" 
		""
		3 "HIKState2SK1.LeftHandRing3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandMiddle2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.translateX" 
		""
		3 "HIKState2SK1.LeftHandMiddle2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.translateY" 
		""
		3 "HIKState2SK1.LeftHandMiddle2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.translateZ" 
		""
		3 "HIKState2SK1.LeftHandMiddle2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.rotateX" 
		""
		3 "HIKState2SK1.LeftHandMiddle2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.rotateY" 
		""
		3 "HIKState2SK1.LeftHandMiddle2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandMiddle2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.scaleX" 
		""
		3 "HIKState2SK1.LeftHandMiddle2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.scaleY" 
		""
		3 "HIKState2SK1.LeftHandMiddle2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.scaleZ" 
		""
		3 "HIKState2SK1.LeftFootTx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.translateX" 
		""
		3 "HIKState2SK1.LeftFootTy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.translateY" 
		""
		3 "HIKState2SK1.LeftFootTz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.translateZ" 
		""
		3 "HIKState2SK1.LeftFootRx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.rotateX" 
		""
		3 "HIKState2SK1.LeftFootRy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.rotateY" 
		""
		3 "HIKState2SK1.LeftFootRz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.rotateZ" 
		""
		3 "HIKState2SK1.LeftFootSx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.scaleX" 
		""
		3 "HIKState2SK1.LeftFootSy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.scaleY" 
		""
		3 "HIKState2SK1.LeftFootSz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandPinky3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.translateX" 
		""
		3 "HIKState2SK1.LeftHandPinky3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.translateY" 
		""
		3 "HIKState2SK1.LeftHandPinky3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.translateZ" 
		""
		3 "HIKState2SK1.LeftHandPinky3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.rotateX" 
		""
		3 "HIKState2SK1.LeftHandPinky3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.rotateY" 
		""
		3 "HIKState2SK1.LeftHandPinky3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandPinky3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.scaleX" 
		""
		3 "HIKState2SK1.LeftHandPinky3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.scaleY" 
		""
		3 "HIKState2SK1.LeftHandPinky3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandThumb1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.translateX" 
		""
		3 "HIKState2SK1.LeftHandThumb1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.translateY" 
		""
		3 "HIKState2SK1.LeftHandThumb1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.translateZ" 
		""
		3 "HIKState2SK1.LeftHandThumb1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.rotateX" 
		""
		3 "HIKState2SK1.LeftHandThumb1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.rotateY" 
		""
		3 "HIKState2SK1.LeftHandThumb1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandThumb1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.scaleX" 
		""
		3 "HIKState2SK1.LeftHandThumb1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.scaleY" 
		""
		3 "HIKState2SK1.LeftHandThumb1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.scaleZ" 
		""
		3 "HIKState2SK1.RightHandIndex3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.translateX" 
		""
		3 "HIKState2SK1.RightHandIndex3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.translateY" 
		""
		3 "HIKState2SK1.RightHandIndex3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.translateZ" 
		""
		3 "HIKState2SK1.RightHandIndex3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.rotateX" 
		""
		3 "HIKState2SK1.RightHandIndex3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.rotateY" 
		""
		3 "HIKState2SK1.RightHandIndex3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.rotateZ" 
		""
		3 "HIKState2SK1.RightHandIndex3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.scaleX" 
		""
		3 "HIKState2SK1.RightHandIndex3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.scaleY" 
		""
		3 "HIKState2SK1.RightHandIndex3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandRing1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.translateX" 
		""
		3 "HIKState2SK1.LeftHandRing1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.translateY" 
		""
		3 "HIKState2SK1.LeftHandRing1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.translateZ" 
		""
		3 "HIKState2SK1.LeftHandRing1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.rotateX" 
		""
		3 "HIKState2SK1.LeftHandRing1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.rotateY" 
		""
		3 "HIKState2SK1.LeftHandRing1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandRing1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.scaleX" 
		""
		3 "HIKState2SK1.LeftHandRing1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.scaleY" 
		""
		3 "HIKState2SK1.LeftHandRing1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandPinky2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.translateX" 
		""
		3 "HIKState2SK1.LeftHandPinky2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.translateY" 
		""
		3 "HIKState2SK1.LeftHandPinky2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.translateZ" 
		""
		3 "HIKState2SK1.LeftHandPinky2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.rotateX" 
		""
		3 "HIKState2SK1.LeftHandPinky2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.rotateY" 
		""
		3 "HIKState2SK1.LeftHandPinky2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandPinky2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.scaleX" 
		""
		3 "HIKState2SK1.LeftHandPinky2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.scaleY" 
		""
		3 "HIKState2SK1.LeftHandPinky2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandIndex1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.translateX" 
		""
		3 "HIKState2SK1.LeftHandIndex1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.translateY" 
		""
		3 "HIKState2SK1.LeftHandIndex1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.translateZ" 
		""
		3 "HIKState2SK1.LeftHandIndex1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.rotateX" 
		""
		3 "HIKState2SK1.LeftHandIndex1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.rotateY" 
		""
		3 "HIKState2SK1.LeftHandIndex1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandIndex1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.scaleX" 
		""
		3 "HIKState2SK1.LeftHandIndex1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.scaleY" 
		""
		3 "HIKState2SK1.LeftHandIndex1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.scaleZ" 
		""
		3 "HIKState2SK1.LeftForeArmTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.translateX" 
		""
		3 "HIKState2SK1.LeftForeArmTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.translateY" 
		""
		3 "HIKState2SK1.LeftForeArmTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.translateZ" 
		""
		3 "HIKState2SK1.LeftForeArmRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.rotateX" 
		""
		3 "HIKState2SK1.LeftForeArmRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.rotateY" 
		""
		3 "HIKState2SK1.LeftForeArmRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.rotateZ" 
		""
		3 "HIKState2SK1.LeftForeArmSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.scaleX" 
		""
		3 "HIKState2SK1.LeftForeArmSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.scaleY" 
		""
		3 "HIKState2SK1.LeftForeArmSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.scaleZ" 
		""
		3 "HIKState2SK1.Spine1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.translateX" 
		""
		3 "HIKState2SK1.Spine1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.translateY" 
		""
		3 "HIKState2SK1.Spine1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.translateZ" 
		""
		3 "HIKState2SK1.Spine1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.rotateX" 
		""
		3 "HIKState2SK1.Spine1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.rotateY" 
		""
		3 "HIKState2SK1.Spine1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.rotateZ" 
		""
		3 "HIKState2SK1.Spine1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.scaleX" 
		""
		3 "HIKState2SK1.Spine1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.scaleY" 
		""
		3 "HIKState2SK1.Spine1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.scaleZ" 
		""
		3 "HIKState2SK1.RightHandPinky1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.translateX" 
		""
		3 "HIKState2SK1.RightHandPinky1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.translateY" 
		""
		3 "HIKState2SK1.RightHandPinky1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.translateZ" 
		""
		3 "HIKState2SK1.RightHandPinky1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.rotateX" 
		""
		3 "HIKState2SK1.RightHandPinky1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.rotateY" 
		""
		3 "HIKState2SK1.RightHandPinky1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.rotateZ" 
		""
		3 "HIKState2SK1.RightHandPinky1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.scaleX" 
		""
		3 "HIKState2SK1.RightHandPinky1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.scaleY" 
		""
		3 "HIKState2SK1.RightHandPinky1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.scaleZ" 
		""
		3 "HIKState2SK1.RightForeArmTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.translateX" 
		""
		3 "HIKState2SK1.RightForeArmTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.translateY" 
		""
		3 "HIKState2SK1.RightForeArmTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.translateZ" 
		""
		3 "HIKState2SK1.RightForeArmRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.rotateX" 
		""
		3 "HIKState2SK1.RightForeArmRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.rotateY" 
		""
		3 "HIKState2SK1.RightForeArmRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.rotateZ" 
		""
		3 "HIKState2SK1.RightForeArmSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.scaleX" 
		""
		3 "HIKState2SK1.RightForeArmSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.scaleY" 
		""
		3 "HIKState2SK1.RightForeArmSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.scaleZ" 
		""
		3 "HIKState2SK1.RightHandMiddle3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.translateX" 
		""
		3 "HIKState2SK1.RightHandMiddle3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.translateY" 
		""
		3 "HIKState2SK1.RightHandMiddle3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.translateZ" 
		""
		3 "HIKState2SK1.RightHandMiddle3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.rotateX" 
		""
		3 "HIKState2SK1.RightHandMiddle3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.rotateY" 
		""
		3 "HIKState2SK1.RightHandMiddle3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.rotateZ" 
		""
		3 "HIKState2SK1.RightHandMiddle3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.scaleX" 
		""
		3 "HIKState2SK1.RightHandMiddle3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.scaleY" 
		""
		3 "HIKState2SK1.RightHandMiddle3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.scaleZ" 
		""
		3 "HIKState2SK1.RightHandIndex1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.translateX" 
		""
		3 "HIKState2SK1.RightHandIndex1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.translateY" 
		""
		3 "HIKState2SK1.RightHandIndex1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.translateZ" 
		""
		3 "HIKState2SK1.RightHandIndex1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.rotateX" 
		""
		3 "HIKState2SK1.RightHandIndex1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.rotateY" 
		""
		3 "HIKState2SK1.RightHandIndex1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.rotateZ" 
		""
		3 "HIKState2SK1.RightHandIndex1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.scaleX" 
		""
		3 "HIKState2SK1.RightHandIndex1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.scaleY" 
		""
		3 "HIKState2SK1.RightHandIndex1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandMiddle1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.translateX" 
		""
		3 "HIKState2SK1.LeftHandMiddle1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.translateY" 
		""
		3 "HIKState2SK1.LeftHandMiddle1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.translateZ" 
		""
		3 "HIKState2SK1.LeftHandMiddle1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.rotateX" 
		""
		3 "HIKState2SK1.LeftHandMiddle1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.rotateY" 
		""
		3 "HIKState2SK1.LeftHandMiddle1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandMiddle1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.scaleX" 
		""
		3 "HIKState2SK1.LeftHandMiddle1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.scaleY" 
		""
		3 "HIKState2SK1.LeftHandMiddle1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandThumb2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.translateX" 
		""
		3 "HIKState2SK1.LeftHandThumb2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.translateY" 
		""
		3 "HIKState2SK1.LeftHandThumb2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.translateZ" 
		""
		3 "HIKState2SK1.LeftHandThumb2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.rotateX" 
		""
		3 "HIKState2SK1.LeftHandThumb2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.rotateY" 
		""
		3 "HIKState2SK1.LeftHandThumb2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandThumb2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.scaleX" 
		""
		3 "HIKState2SK1.LeftHandThumb2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.scaleY" 
		""
		3 "HIKState2SK1.LeftHandThumb2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.scaleZ" 
		""
		3 "HIKState2SK1.RightHandThumb1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.translateX" 
		""
		3 "HIKState2SK1.RightHandThumb1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.translateY" 
		""
		3 "HIKState2SK1.RightHandThumb1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.translateZ" 
		""
		3 "HIKState2SK1.RightHandThumb1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.rotateX" 
		""
		3 "HIKState2SK1.RightHandThumb1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.rotateY" 
		""
		3 "HIKState2SK1.RightHandThumb1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.rotateZ" 
		""
		3 "HIKState2SK1.RightHandThumb1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.scaleX" 
		""
		3 "HIKState2SK1.RightHandThumb1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.scaleY" 
		""
		3 "HIKState2SK1.RightHandThumb1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.scaleZ" 
		""
		3 "HIKState2SK1.RightShoulderTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.translateX" 
		""
		3 "HIKState2SK1.RightShoulderTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.translateY" 
		""
		3 "HIKState2SK1.RightShoulderTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.translateZ" 
		""
		3 "HIKState2SK1.RightShoulderRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.rotateX" 
		""
		3 "HIKState2SK1.RightShoulderRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.rotateY" 
		""
		3 "HIKState2SK1.RightShoulderRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.rotateZ" 
		""
		3 "HIKState2SK1.RightShoulderSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.scaleX" 
		""
		3 "HIKState2SK1.RightShoulderSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.scaleY" 
		""
		3 "HIKState2SK1.RightShoulderSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.scaleZ" 
		""
		3 "HIKState2SK1.LeftArmTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.translateX" 
		""
		3 "HIKState2SK1.LeftArmTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.translateY" 
		""
		3 "HIKState2SK1.LeftArmTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.translateZ" 
		""
		3 "HIKState2SK1.LeftArmRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.rotateX" 
		""
		3 "HIKState2SK1.LeftArmRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.rotateY" 
		""
		3 "HIKState2SK1.LeftArmRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.rotateZ" 
		""
		3 "HIKState2SK1.LeftArmSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.scaleX" 
		""
		3 "HIKState2SK1.LeftArmSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.scaleY" 
		""
		3 "HIKState2SK1.LeftArmSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.scaleZ" 
		""
		3 "HIKState2SK1.LeftFootIndex1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.translateX" 
		""
		3 "HIKState2SK1.LeftFootIndex1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.translateY" 
		""
		3 "HIKState2SK1.LeftFootIndex1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.translateZ" 
		""
		3 "HIKState2SK1.LeftFootIndex1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.rotateX" 
		""
		3 "HIKState2SK1.LeftFootIndex1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.rotateY" 
		""
		3 "HIKState2SK1.LeftFootIndex1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.rotateZ" 
		""
		3 "HIKState2SK1.LeftFootIndex1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.scaleX" 
		""
		3 "HIKState2SK1.LeftFootIndex1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.scaleY" 
		""
		3 "HIKState2SK1.LeftFootIndex1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.scaleZ" 
		""
		3 "HIKState2SK1.HeadTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.translateX" 
		""
		3 "HIKState2SK1.HeadTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.translateY" 
		""
		3 "HIKState2SK1.HeadTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.translateZ" 
		""
		3 "HIKState2SK1.HeadRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.rotateX" 
		""
		3 "HIKState2SK1.HeadRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.rotateY" 
		""
		3 "HIKState2SK1.HeadRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.rotateZ" 
		""
		3 "HIKState2SK1.HeadSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.scaleX" 
		""
		3 "HIKState2SK1.HeadSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.scaleY" 
		""
		3 "HIKState2SK1.HeadSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.scaleZ" 
		""
		3 "HIKState2SK1.RightHandRing1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.translateX" 
		""
		3 "HIKState2SK1.RightHandRing1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.translateY" 
		""
		3 "HIKState2SK1.RightHandRing1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.translateZ" 
		""
		3 "HIKState2SK1.RightHandRing1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.rotateX" 
		""
		3 "HIKState2SK1.RightHandRing1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.rotateY" 
		""
		3 "HIKState2SK1.RightHandRing1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.rotateZ" 
		""
		3 "HIKState2SK1.RightHandRing1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.scaleX" 
		""
		3 "HIKState2SK1.RightHandRing1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.scaleY" 
		""
		3 "HIKState2SK1.RightHandRing1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.translateX" 
		""
		3 "HIKState2SK1.LeftHandTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.translateY" 
		""
		3 "HIKState2SK1.LeftHandTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.translateZ" 
		""
		3 "HIKState2SK1.LeftHandRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.rotateX" 
		""
		3 "HIKState2SK1.LeftHandRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.rotateY" 
		""
		3 "HIKState2SK1.LeftHandRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.scaleX" 
		""
		3 "HIKState2SK1.LeftHandSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.scaleY" 
		""
		3 "HIKState2SK1.LeftHandSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.scaleZ" 
		""
		3 "HIKState2SK1.RightHandPinky3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.translateX" 
		""
		3 "HIKState2SK1.RightHandPinky3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.translateY" 
		""
		3 "HIKState2SK1.RightHandPinky3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.translateZ" 
		""
		3 "HIKState2SK1.RightHandPinky3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.rotateX" 
		""
		3 "HIKState2SK1.RightHandPinky3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.rotateY" 
		""
		3 "HIKState2SK1.RightHandPinky3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.rotateZ" 
		""
		3 "HIKState2SK1.RightHandPinky3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.scaleX" 
		""
		3 "HIKState2SK1.RightHandPinky3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.scaleY" 
		""
		3 "HIKState2SK1.RightHandPinky3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.scaleZ" 
		""
		3 "HIKState2SK1.RightHandThumb2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.translateX" 
		""
		3 "HIKState2SK1.RightHandThumb2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.translateY" 
		""
		3 "HIKState2SK1.RightHandThumb2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.translateZ" 
		""
		3 "HIKState2SK1.RightHandThumb2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.rotateX" 
		""
		3 "HIKState2SK1.RightHandThumb2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.rotateY" 
		""
		3 "HIKState2SK1.RightHandThumb2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.rotateZ" 
		""
		3 "HIKState2SK1.RightHandThumb2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.scaleX" 
		""
		3 "HIKState2SK1.RightHandThumb2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.scaleY" 
		""
		3 "HIKState2SK1.RightHandThumb2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.scaleZ" 
		""
		3 "HIKState2SK1.RightLegTx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.translateX" 
		""
		3 "HIKState2SK1.RightLegTy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.translateY" 
		""
		3 "HIKState2SK1.RightLegTz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.translateZ" 
		""
		3 "HIKState2SK1.RightLegRx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.rotateX" 
		""
		3 "HIKState2SK1.RightLegRy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.rotateY" 
		""
		3 "HIKState2SK1.RightLegRz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.rotateZ" 
		""
		3 "HIKState2SK1.RightLegSx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.scaleX" 
		""
		3 "HIKState2SK1.RightLegSy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.scaleY" 
		""
		3 "HIKState2SK1.RightLegSz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.scaleZ" 
		""
		3 "HIKState2SK1.SpineTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.translateX" 
		""
		3 "HIKState2SK1.SpineTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.translateY" 
		""
		3 "HIKState2SK1.SpineTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.translateZ" 
		""
		3 "HIKState2SK1.SpineRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.rotateX" 
		""
		3 "HIKState2SK1.SpineRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.rotateY" 
		""
		3 "HIKState2SK1.SpineRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.rotateZ" 
		""
		3 "HIKState2SK1.SpineSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.scaleX" 
		""
		3 "HIKState2SK1.SpineSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.scaleY" 
		""
		3 "HIKState2SK1.SpineSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandMiddle3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.translateX" 
		""
		3 "HIKState2SK1.LeftHandMiddle3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.translateY" 
		""
		3 "HIKState2SK1.LeftHandMiddle3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.translateZ" 
		""
		3 "HIKState2SK1.LeftHandMiddle3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.rotateX" 
		""
		3 "HIKState2SK1.LeftHandMiddle3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.rotateY" 
		""
		3 "HIKState2SK1.LeftHandMiddle3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandMiddle3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.scaleX" 
		""
		3 "HIKState2SK1.LeftHandMiddle3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.scaleY" 
		""
		3 "HIKState2SK1.LeftHandMiddle3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.scaleZ" 
		""
		3 "HIKState2SK1.RightFootIndex1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.translateX" 
		""
		3 "HIKState2SK1.RightFootIndex1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.translateY" 
		""
		3 "HIKState2SK1.RightFootIndex1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.translateZ" 
		""
		3 "HIKState2SK1.RightFootIndex1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.rotateX" 
		""
		3 "HIKState2SK1.RightFootIndex1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.rotateY" 
		""
		3 "HIKState2SK1.RightFootIndex1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.rotateZ" 
		""
		3 "HIKState2SK1.RightFootIndex1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.scaleX" 
		""
		3 "HIKState2SK1.RightFootIndex1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.scaleY" 
		""
		3 "HIKState2SK1.RightFootIndex1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.scaleZ" 
		""
		3 "HIKState2SK1.RightHandMiddle1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.translateX" 
		""
		3 "HIKState2SK1.RightHandMiddle1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.translateY" 
		""
		3 "HIKState2SK1.RightHandMiddle1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.translateZ" 
		""
		3 "HIKState2SK1.RightHandMiddle1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.rotateX" 
		""
		3 "HIKState2SK1.RightHandMiddle1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.rotateY" 
		""
		3 "HIKState2SK1.RightHandMiddle1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.rotateZ" 
		""
		3 "HIKState2SK1.RightHandMiddle1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.scaleX" 
		""
		3 "HIKState2SK1.RightHandMiddle1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.scaleY" 
		""
		3 "HIKState2SK1.RightHandMiddle1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandIndex2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.translateX" 
		""
		3 "HIKState2SK1.LeftHandIndex2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.translateY" 
		""
		3 "HIKState2SK1.LeftHandIndex2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.translateZ" 
		""
		3 "HIKState2SK1.LeftHandIndex2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.rotateX" 
		""
		3 "HIKState2SK1.LeftHandIndex2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.rotateY" 
		""
		3 "HIKState2SK1.LeftHandIndex2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandIndex2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.scaleX" 
		""
		3 "HIKState2SK1.LeftHandIndex2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.scaleY" 
		""
		3 "HIKState2SK1.LeftHandIndex2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.scaleZ" 
		""
		3 "HIKState2SK1.RightHandRing3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.translateX" 
		""
		3 "HIKState2SK1.RightHandRing3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.translateY" 
		""
		3 "HIKState2SK1.RightHandRing3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.translateZ" 
		""
		3 "HIKState2SK1.RightHandRing3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.rotateX" 
		""
		3 "HIKState2SK1.RightHandRing3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.rotateY" 
		""
		3 "HIKState2SK1.RightHandRing3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.rotateZ" 
		""
		3 "HIKState2SK1.RightHandRing3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.scaleX" 
		""
		3 "HIKState2SK1.RightHandRing3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.scaleY" 
		""
		3 "HIKState2SK1.RightHandRing3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.scaleZ" 
		""
		3 "HIKState2SK1.RightHandMiddle2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.translateX" 
		""
		3 "HIKState2SK1.RightHandMiddle2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.translateY" 
		""
		3 "HIKState2SK1.RightHandMiddle2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.translateZ" 
		""
		3 "HIKState2SK1.RightHandMiddle2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.rotateX" 
		""
		3 "HIKState2SK1.RightHandMiddle2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.rotateY" 
		""
		3 "HIKState2SK1.RightHandMiddle2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.rotateZ" 
		""
		3 "HIKState2SK1.RightHandMiddle2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.scaleX" 
		""
		3 "HIKState2SK1.RightHandMiddle2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.scaleY" 
		""
		3 "HIKState2SK1.RightHandMiddle2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.scaleZ" 
		""
		3 "HIKState2SK1.LeftLegTx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.translateX" 
		""
		3 "HIKState2SK1.LeftLegTy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.translateY" 
		""
		3 "HIKState2SK1.LeftLegTz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.translateZ" 
		""
		3 "HIKState2SK1.LeftLegRx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.rotateX" 
		""
		3 "HIKState2SK1.LeftLegRy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.rotateY" 
		""
		3 "HIKState2SK1.LeftLegRz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.rotateZ" 
		""
		3 "HIKState2SK1.LeftLegSx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.scaleX" 
		""
		3 "HIKState2SK1.LeftLegSy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.scaleY" 
		""
		3 "HIKState2SK1.LeftLegSz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.scaleZ" 
		""
		3 "HIKState2SK1.RightArmTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.translateX" 
		""
		3 "HIKState2SK1.RightArmTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.translateY" 
		""
		3 "HIKState2SK1.RightArmTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.translateZ" 
		""
		3 "HIKState2SK1.RightArmRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.rotateX" 
		""
		3 "HIKState2SK1.RightArmRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.rotateY" 
		""
		3 "HIKState2SK1.RightArmRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.rotateZ" 
		""
		3 "HIKState2SK1.RightArmSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.scaleX" 
		""
		3 "HIKState2SK1.RightArmSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.scaleY" 
		""
		3 "HIKState2SK1.RightArmSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.scaleZ" 
		""
		3 "HIKState2SK1.RightHandRing2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.translateX" 
		""
		3 "HIKState2SK1.RightHandRing2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.translateY" 
		""
		3 "HIKState2SK1.RightHandRing2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.translateZ" 
		""
		3 "HIKState2SK1.RightHandRing2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.rotateX" 
		""
		3 "HIKState2SK1.RightHandRing2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.rotateY" 
		""
		3 "HIKState2SK1.RightHandRing2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.rotateZ" 
		""
		3 "HIKState2SK1.RightHandRing2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.scaleX" 
		""
		3 "HIKState2SK1.RightHandRing2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.scaleY" 
		""
		3 "HIKState2SK1.RightHandRing2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.scaleZ" 
		""
		3 "HIKState2SK1.RightFootTx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.translateX" 
		""
		3 "HIKState2SK1.RightFootTy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.translateY" 
		""
		3 "HIKState2SK1.RightFootTz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.translateZ" 
		""
		3 "HIKState2SK1.RightFootRx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.rotateX" 
		""
		3 "HIKState2SK1.RightFootRy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.rotateY" 
		""
		3 "HIKState2SK1.RightFootRz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.rotateZ" 
		""
		3 "HIKState2SK1.RightFootSx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.scaleX" 
		""
		3 "HIKState2SK1.RightFootSy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.scaleY" 
		""
		3 "HIKState2SK1.RightFootSz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.scaleZ" 
		""
		3 "HIKState2SK1.HipsTx" "|Character_Holder|Character_Reference|Character_Hips.translateX" 
		""
		3 "HIKState2SK1.HipsTy" "|Character_Holder|Character_Reference|Character_Hips.translateY" 
		""
		3 "HIKState2SK1.HipsTz" "|Character_Holder|Character_Reference|Character_Hips.translateZ" 
		""
		3 "HIKState2SK1.HipsRx" "|Character_Holder|Character_Reference|Character_Hips.rotateX" 
		""
		3 "HIKState2SK1.HipsRy" "|Character_Holder|Character_Reference|Character_Hips.rotateY" 
		""
		3 "HIKState2SK1.HipsRz" "|Character_Holder|Character_Reference|Character_Hips.rotateZ" 
		""
		3 "HIKState2SK1.HipsSx" "|Character_Holder|Character_Reference|Character_Hips.scaleX" 
		""
		3 "HIKState2SK1.HipsSy" "|Character_Holder|Character_Reference|Character_Hips.scaleY" 
		""
		3 "HIKState2SK1.HipsSz" "|Character_Holder|Character_Reference|Character_Hips.scaleZ" 
		""
		3 "HIKState2SK1.RightHandTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.translateX" 
		""
		3 "HIKState2SK1.RightHandTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.translateY" 
		""
		3 "HIKState2SK1.RightHandTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.translateZ" 
		""
		3 "HIKState2SK1.RightHandRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.rotateX" 
		""
		3 "HIKState2SK1.RightHandRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.rotateY" 
		""
		3 "HIKState2SK1.RightHandRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.rotateZ" 
		""
		3 "HIKState2SK1.RightHandSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.scaleX" 
		""
		3 "HIKState2SK1.RightHandSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.scaleY" 
		""
		3 "HIKState2SK1.RightHandSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandRing2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.translateX" 
		""
		3 "HIKState2SK1.LeftHandRing2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.translateY" 
		""
		3 "HIKState2SK1.LeftHandRing2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.translateZ" 
		""
		3 "HIKState2SK1.LeftHandRing2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.rotateX" 
		""
		3 "HIKState2SK1.LeftHandRing2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.rotateY" 
		""
		3 "HIKState2SK1.LeftHandRing2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandRing2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.scaleX" 
		""
		3 "HIKState2SK1.LeftHandRing2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.scaleY" 
		""
		3 "HIKState2SK1.LeftHandRing2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.scaleZ" 
		""
		3 "HIKState2SK1.RightHandIndex2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.translateX" 
		""
		3 "HIKState2SK1.RightHandIndex2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.translateY" 
		""
		3 "HIKState2SK1.RightHandIndex2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.translateZ" 
		""
		3 "HIKState2SK1.RightHandIndex2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.rotateX" 
		""
		3 "HIKState2SK1.RightHandIndex2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.rotateY" 
		""
		3 "HIKState2SK1.RightHandIndex2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.rotateZ" 
		""
		3 "HIKState2SK1.RightHandIndex2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.scaleX" 
		""
		3 "HIKState2SK1.RightHandIndex2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.scaleY" 
		""
		3 "HIKState2SK1.RightHandIndex2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.scaleZ" 
		""
		3 "HIKState2SK1.RightHandThumb3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.translateX" 
		""
		3 "HIKState2SK1.RightHandThumb3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.translateY" 
		""
		3 "HIKState2SK1.RightHandThumb3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.translateZ" 
		""
		3 "HIKState2SK1.RightHandThumb3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.rotateX" 
		""
		3 "HIKState2SK1.RightHandThumb3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.rotateY" 
		""
		3 "HIKState2SK1.RightHandThumb3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.rotateZ" 
		""
		3 "HIKState2SK1.RightHandThumb3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.scaleX" 
		""
		3 "HIKState2SK1.RightHandThumb3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.scaleY" 
		""
		3 "HIKState2SK1.RightHandThumb3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandPinky1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.translateX" 
		""
		3 "HIKState2SK1.LeftHandPinky1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.translateY" 
		""
		3 "HIKState2SK1.LeftHandPinky1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.translateZ" 
		""
		3 "HIKState2SK1.LeftHandPinky1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.rotateX" 
		""
		3 "HIKState2SK1.LeftHandPinky1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.rotateY" 
		""
		3 "HIKState2SK1.LeftHandPinky1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandPinky1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.scaleX" 
		""
		3 "HIKState2SK1.LeftHandPinky1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.scaleY" 
		""
		3 "HIKState2SK1.LeftHandPinky1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.scaleZ" 
		""
		3 "HIKState2SK1.RightHandPinky2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.translateX" 
		""
		3 "HIKState2SK1.RightHandPinky2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.translateY" 
		""
		3 "HIKState2SK1.RightHandPinky2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.translateZ" 
		""
		3 "HIKState2SK1.RightHandPinky2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.rotateX" 
		""
		3 "HIKState2SK1.RightHandPinky2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.rotateY" 
		""
		3 "HIKState2SK1.RightHandPinky2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.rotateZ" 
		""
		3 "HIKState2SK1.RightHandPinky2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.scaleX" 
		""
		3 "HIKState2SK1.RightHandPinky2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.scaleY" 
		""
		3 "HIKState2SK1.RightHandPinky2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.scaleZ" 
		""
		3 "HIKState2SK1.LeftHandIndex3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.translateX" 
		""
		3 "HIKState2SK1.LeftHandIndex3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.translateY" 
		""
		3 "HIKState2SK1.LeftHandIndex3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.translateZ" 
		""
		3 "HIKState2SK1.LeftHandIndex3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.rotateX" 
		""
		3 "HIKState2SK1.LeftHandIndex3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.rotateY" 
		""
		3 "HIKState2SK1.LeftHandIndex3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.rotateZ" 
		""
		3 "HIKState2SK1.LeftHandIndex3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.scaleX" 
		""
		3 "HIKState2SK1.LeftHandIndex3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.scaleY" 
		""
		3 "HIKState2SK1.LeftHandIndex3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.scaleZ" 
		""
		5 0 "SER_116_kRN" "HIKState2SK1.HipsSx" "|Character_Holder|Character_Reference|Character_Hips.scaleX" 
		"SER_116_kRN.placeHolderList[1287]" "SER_116_kRN.placeHolderList[1288]" "Character_Hips.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HipsSy" "|Character_Holder|Character_Reference|Character_Hips.scaleY" 
		"SER_116_kRN.placeHolderList[1289]" "SER_116_kRN.placeHolderList[1290]" "Character_Hips.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HipsSz" "|Character_Holder|Character_Reference|Character_Hips.scaleZ" 
		"SER_116_kRN.placeHolderList[1291]" "SER_116_kRN.placeHolderList[1292]" "Character_Hips.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HipsTx" "|Character_Holder|Character_Reference|Character_Hips.translateX" 
		"SER_116_kRN.placeHolderList[1293]" "SER_116_kRN.placeHolderList[1294]" "Character_Hips.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HipsTy" "|Character_Holder|Character_Reference|Character_Hips.translateY" 
		"SER_116_kRN.placeHolderList[1295]" "SER_116_kRN.placeHolderList[1296]" "Character_Hips.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HipsTz" "|Character_Holder|Character_Reference|Character_Hips.translateZ" 
		"SER_116_kRN.placeHolderList[1297]" "SER_116_kRN.placeHolderList[1298]" "Character_Hips.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HipsRx" "|Character_Holder|Character_Reference|Character_Hips.rotateX" 
		"SER_116_kRN.placeHolderList[1299]" "SER_116_kRN.placeHolderList[1300]" "Character_Hips.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HipsRy" "|Character_Holder|Character_Reference|Character_Hips.rotateY" 
		"SER_116_kRN.placeHolderList[1301]" "SER_116_kRN.placeHolderList[1302]" "Character_Hips.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HipsRz" "|Character_Holder|Character_Reference|Character_Hips.rotateZ" 
		"SER_116_kRN.placeHolderList[1303]" "SER_116_kRN.placeHolderList[1304]" "Character_Hips.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.SpineSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.scaleX" 
		"SER_116_kRN.placeHolderList[1305]" "SER_116_kRN.placeHolderList[1306]" "Character_Spine.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.SpineSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.scaleY" 
		"SER_116_kRN.placeHolderList[1307]" "SER_116_kRN.placeHolderList[1308]" "Character_Spine.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.SpineSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.scaleZ" 
		"SER_116_kRN.placeHolderList[1309]" "SER_116_kRN.placeHolderList[1310]" "Character_Spine.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.SpineTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.translateX" 
		"SER_116_kRN.placeHolderList[1311]" "SER_116_kRN.placeHolderList[1312]" "Character_Spine.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.SpineTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.translateY" 
		"SER_116_kRN.placeHolderList[1313]" "SER_116_kRN.placeHolderList[1314]" "Character_Spine.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.SpineTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.translateZ" 
		"SER_116_kRN.placeHolderList[1315]" "SER_116_kRN.placeHolderList[1316]" "Character_Spine.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.SpineRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.rotateX" 
		"SER_116_kRN.placeHolderList[1317]" "SER_116_kRN.placeHolderList[1318]" "Character_Spine.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.SpineRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.rotateY" 
		"SER_116_kRN.placeHolderList[1319]" "SER_116_kRN.placeHolderList[1320]" "Character_Spine.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.SpineRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine.rotateZ" 
		"SER_116_kRN.placeHolderList[1321]" "SER_116_kRN.placeHolderList[1322]" "Character_Spine.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.scaleX" 
		"SER_116_kRN.placeHolderList[1323]" "SER_116_kRN.placeHolderList[1324]" "Character_Spine1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.scaleY" 
		"SER_116_kRN.placeHolderList[1325]" "SER_116_kRN.placeHolderList[1326]" "Character_Spine1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.scaleZ" 
		"SER_116_kRN.placeHolderList[1327]" "SER_116_kRN.placeHolderList[1328]" "Character_Spine1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.translateX" 
		"SER_116_kRN.placeHolderList[1329]" "SER_116_kRN.placeHolderList[1330]" "Character_Spine1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.translateY" 
		"SER_116_kRN.placeHolderList[1331]" "SER_116_kRN.placeHolderList[1332]" "Character_Spine1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.translateZ" 
		"SER_116_kRN.placeHolderList[1333]" "SER_116_kRN.placeHolderList[1334]" "Character_Spine1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.rotateX" 
		"SER_116_kRN.placeHolderList[1335]" "SER_116_kRN.placeHolderList[1336]" "Character_Spine1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.rotateY" 
		"SER_116_kRN.placeHolderList[1337]" "SER_116_kRN.placeHolderList[1338]" "Character_Spine1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1.rotateZ" 
		"SER_116_kRN.placeHolderList[1339]" "SER_116_kRN.placeHolderList[1340]" "Character_Spine1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.scaleX" 
		"SER_116_kRN.placeHolderList[1341]" "SER_116_kRN.placeHolderList[1342]" "Character_Spine2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.scaleY" 
		"SER_116_kRN.placeHolderList[1343]" "SER_116_kRN.placeHolderList[1344]" "Character_Spine2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.scaleZ" 
		"SER_116_kRN.placeHolderList[1345]" "SER_116_kRN.placeHolderList[1346]" "Character_Spine2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.translateX" 
		"SER_116_kRN.placeHolderList[1347]" "SER_116_kRN.placeHolderList[1348]" "Character_Spine2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.translateY" 
		"SER_116_kRN.placeHolderList[1349]" "SER_116_kRN.placeHolderList[1350]" "Character_Spine2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.translateZ" 
		"SER_116_kRN.placeHolderList[1351]" "SER_116_kRN.placeHolderList[1352]" "Character_Spine2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.rotateX" 
		"SER_116_kRN.placeHolderList[1353]" "SER_116_kRN.placeHolderList[1354]" "Character_Spine2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.rotateY" 
		"SER_116_kRN.placeHolderList[1355]" "SER_116_kRN.placeHolderList[1356]" "Character_Spine2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.Spine2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2.rotateZ" 
		"SER_116_kRN.placeHolderList[1357]" "SER_116_kRN.placeHolderList[1358]" "Character_Spine2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.NeckSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.scaleX" 
		"SER_116_kRN.placeHolderList[1359]" "SER_116_kRN.placeHolderList[1360]" "Character_neck.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.NeckSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.scaleY" 
		"SER_116_kRN.placeHolderList[1361]" "SER_116_kRN.placeHolderList[1362]" "Character_neck.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.NeckSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.scaleZ" 
		"SER_116_kRN.placeHolderList[1363]" "SER_116_kRN.placeHolderList[1364]" "Character_neck.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.NeckTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.translateX" 
		"SER_116_kRN.placeHolderList[1365]" "SER_116_kRN.placeHolderList[1366]" "Character_neck.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.NeckTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.translateY" 
		"SER_116_kRN.placeHolderList[1367]" "SER_116_kRN.placeHolderList[1368]" "Character_neck.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.NeckTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.translateZ" 
		"SER_116_kRN.placeHolderList[1369]" "SER_116_kRN.placeHolderList[1370]" "Character_neck.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.NeckRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.rotateX" 
		"SER_116_kRN.placeHolderList[1371]" "SER_116_kRN.placeHolderList[1372]" "Character_neck.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.NeckRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.rotateY" 
		"SER_116_kRN.placeHolderList[1373]" "SER_116_kRN.placeHolderList[1374]" "Character_neck.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.NeckRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck.rotateZ" 
		"SER_116_kRN.placeHolderList[1375]" "SER_116_kRN.placeHolderList[1376]" "Character_neck.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HeadSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.scaleX" 
		"SER_116_kRN.placeHolderList[1377]" "SER_116_kRN.placeHolderList[1378]" "Character_Head.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HeadSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.scaleY" 
		"SER_116_kRN.placeHolderList[1379]" "SER_116_kRN.placeHolderList[1380]" "Character_Head.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HeadSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.scaleZ" 
		"SER_116_kRN.placeHolderList[1381]" "SER_116_kRN.placeHolderList[1382]" "Character_Head.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HeadTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.translateX" 
		"SER_116_kRN.placeHolderList[1383]" "SER_116_kRN.placeHolderList[1384]" "Character_Head.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HeadTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.translateY" 
		"SER_116_kRN.placeHolderList[1385]" "SER_116_kRN.placeHolderList[1386]" "Character_Head.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HeadTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.translateZ" 
		"SER_116_kRN.placeHolderList[1387]" "SER_116_kRN.placeHolderList[1388]" "Character_Head.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HeadRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.rotateX" 
		"SER_116_kRN.placeHolderList[1389]" "SER_116_kRN.placeHolderList[1390]" "Character_Head.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HeadRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.rotateY" 
		"SER_116_kRN.placeHolderList[1391]" "SER_116_kRN.placeHolderList[1392]" "Character_Head.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.HeadRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_neck|Character_Head.rotateZ" 
		"SER_116_kRN.placeHolderList[1393]" "SER_116_kRN.placeHolderList[1394]" "Character_Head.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftShoulderSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.scaleX" 
		"SER_116_kRN.placeHolderList[1395]" "SER_116_kRN.placeHolderList[1396]" "Character_LeftShoulder.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftShoulderSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.scaleY" 
		"SER_116_kRN.placeHolderList[1397]" "SER_116_kRN.placeHolderList[1398]" "Character_LeftShoulder.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftShoulderSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.scaleZ" 
		"SER_116_kRN.placeHolderList[1399]" "SER_116_kRN.placeHolderList[1400]" "Character_LeftShoulder.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftShoulderTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.translateX" 
		"SER_116_kRN.placeHolderList[1401]" "SER_116_kRN.placeHolderList[1402]" "Character_LeftShoulder.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftShoulderTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.translateY" 
		"SER_116_kRN.placeHolderList[1403]" "SER_116_kRN.placeHolderList[1404]" "Character_LeftShoulder.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftShoulderTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.translateZ" 
		"SER_116_kRN.placeHolderList[1405]" "SER_116_kRN.placeHolderList[1406]" "Character_LeftShoulder.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftShoulderRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.rotateX" 
		"SER_116_kRN.placeHolderList[1407]" "SER_116_kRN.placeHolderList[1408]" "Character_LeftShoulder.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftShoulderRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.rotateY" 
		"SER_116_kRN.placeHolderList[1409]" "SER_116_kRN.placeHolderList[1410]" "Character_LeftShoulder.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftShoulderRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder.rotateZ" 
		"SER_116_kRN.placeHolderList[1411]" "SER_116_kRN.placeHolderList[1412]" "Character_LeftShoulder.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftArmSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.scaleX" 
		"SER_116_kRN.placeHolderList[1413]" "SER_116_kRN.placeHolderList[1414]" "Character_LeftArm.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftArmSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.scaleY" 
		"SER_116_kRN.placeHolderList[1415]" "SER_116_kRN.placeHolderList[1416]" "Character_LeftArm.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftArmSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.scaleZ" 
		"SER_116_kRN.placeHolderList[1417]" "SER_116_kRN.placeHolderList[1418]" "Character_LeftArm.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftArmTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.translateX" 
		"SER_116_kRN.placeHolderList[1419]" "SER_116_kRN.placeHolderList[1420]" "Character_LeftArm.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftArmTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.translateY" 
		"SER_116_kRN.placeHolderList[1421]" "SER_116_kRN.placeHolderList[1422]" "Character_LeftArm.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftArmTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.translateZ" 
		"SER_116_kRN.placeHolderList[1423]" "SER_116_kRN.placeHolderList[1424]" "Character_LeftArm.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftArmRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.rotateX" 
		"SER_116_kRN.placeHolderList[1425]" "SER_116_kRN.placeHolderList[1426]" "Character_LeftArm.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftArmRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.rotateY" 
		"SER_116_kRN.placeHolderList[1427]" "SER_116_kRN.placeHolderList[1428]" "Character_LeftArm.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftArmRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm.rotateZ" 
		"SER_116_kRN.placeHolderList[1429]" "SER_116_kRN.placeHolderList[1430]" "Character_LeftArm.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftForeArmSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.scaleX" 
		"SER_116_kRN.placeHolderList[1431]" "SER_116_kRN.placeHolderList[1432]" "Character_LeftForeArm.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftForeArmSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.scaleY" 
		"SER_116_kRN.placeHolderList[1433]" "SER_116_kRN.placeHolderList[1434]" "Character_LeftForeArm.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftForeArmSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.scaleZ" 
		"SER_116_kRN.placeHolderList[1435]" "SER_116_kRN.placeHolderList[1436]" "Character_LeftForeArm.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftForeArmTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.translateX" 
		"SER_116_kRN.placeHolderList[1437]" "SER_116_kRN.placeHolderList[1438]" "Character_LeftForeArm.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftForeArmTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.translateY" 
		"SER_116_kRN.placeHolderList[1439]" "SER_116_kRN.placeHolderList[1440]" "Character_LeftForeArm.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftForeArmTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.translateZ" 
		"SER_116_kRN.placeHolderList[1441]" "SER_116_kRN.placeHolderList[1442]" "Character_LeftForeArm.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftForeArmRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.rotateX" 
		"SER_116_kRN.placeHolderList[1443]" "SER_116_kRN.placeHolderList[1444]" "Character_LeftForeArm.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftForeArmRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.rotateY" 
		"SER_116_kRN.placeHolderList[1445]" "SER_116_kRN.placeHolderList[1446]" "Character_LeftForeArm.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftForeArmRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm.rotateZ" 
		"SER_116_kRN.placeHolderList[1447]" "SER_116_kRN.placeHolderList[1448]" "Character_LeftForeArm.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.scaleX" 
		"SER_116_kRN.placeHolderList[1449]" "SER_116_kRN.placeHolderList[1450]" "Character_LeftHand.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.scaleY" 
		"SER_116_kRN.placeHolderList[1451]" "SER_116_kRN.placeHolderList[1452]" "Character_LeftHand.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.scaleZ" 
		"SER_116_kRN.placeHolderList[1453]" "SER_116_kRN.placeHolderList[1454]" "Character_LeftHand.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.translateX" 
		"SER_116_kRN.placeHolderList[1455]" "SER_116_kRN.placeHolderList[1456]" "Character_LeftHand.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.translateY" 
		"SER_116_kRN.placeHolderList[1457]" "SER_116_kRN.placeHolderList[1458]" "Character_LeftHand.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.translateZ" 
		"SER_116_kRN.placeHolderList[1459]" "SER_116_kRN.placeHolderList[1460]" "Character_LeftHand.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.rotateX" 
		"SER_116_kRN.placeHolderList[1461]" "SER_116_kRN.placeHolderList[1462]" "Character_LeftHand.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.rotateY" 
		"SER_116_kRN.placeHolderList[1463]" "SER_116_kRN.placeHolderList[1464]" "Character_LeftHand.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand.rotateZ" 
		"SER_116_kRN.placeHolderList[1465]" "SER_116_kRN.placeHolderList[1466]" "Character_LeftHand.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.scaleX" 
		"SER_116_kRN.placeHolderList[1467]" "SER_116_kRN.placeHolderList[1468]" "Character_LeftHandThumb1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.scaleY" 
		"SER_116_kRN.placeHolderList[1469]" "SER_116_kRN.placeHolderList[1470]" "Character_LeftHandThumb1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.scaleZ" 
		"SER_116_kRN.placeHolderList[1471]" "SER_116_kRN.placeHolderList[1472]" "Character_LeftHandThumb1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.translateX" 
		"SER_116_kRN.placeHolderList[1473]" "SER_116_kRN.placeHolderList[1474]" "Character_LeftHandThumb1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.translateY" 
		"SER_116_kRN.placeHolderList[1475]" "SER_116_kRN.placeHolderList[1476]" "Character_LeftHandThumb1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.translateZ" 
		"SER_116_kRN.placeHolderList[1477]" "SER_116_kRN.placeHolderList[1478]" "Character_LeftHandThumb1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.rotateX" 
		"SER_116_kRN.placeHolderList[1479]" "SER_116_kRN.placeHolderList[1480]" "Character_LeftHandThumb1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.rotateY" 
		"SER_116_kRN.placeHolderList[1481]" "SER_116_kRN.placeHolderList[1482]" "Character_LeftHandThumb1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1.rotateZ" 
		"SER_116_kRN.placeHolderList[1483]" "SER_116_kRN.placeHolderList[1484]" "Character_LeftHandThumb1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.scaleX" 
		"SER_116_kRN.placeHolderList[1485]" "SER_116_kRN.placeHolderList[1486]" "Character_LeftHandThumb2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.scaleY" 
		"SER_116_kRN.placeHolderList[1487]" "SER_116_kRN.placeHolderList[1488]" "Character_LeftHandThumb2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.scaleZ" 
		"SER_116_kRN.placeHolderList[1489]" "SER_116_kRN.placeHolderList[1490]" "Character_LeftHandThumb2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.translateX" 
		"SER_116_kRN.placeHolderList[1491]" "SER_116_kRN.placeHolderList[1492]" "Character_LeftHandThumb2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.translateY" 
		"SER_116_kRN.placeHolderList[1493]" "SER_116_kRN.placeHolderList[1494]" "Character_LeftHandThumb2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.translateZ" 
		"SER_116_kRN.placeHolderList[1495]" "SER_116_kRN.placeHolderList[1496]" "Character_LeftHandThumb2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.rotateX" 
		"SER_116_kRN.placeHolderList[1497]" "SER_116_kRN.placeHolderList[1498]" "Character_LeftHandThumb2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.rotateY" 
		"SER_116_kRN.placeHolderList[1499]" "SER_116_kRN.placeHolderList[1500]" "Character_LeftHandThumb2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2.rotateZ" 
		"SER_116_kRN.placeHolderList[1501]" "SER_116_kRN.placeHolderList[1502]" "Character_LeftHandThumb2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.translateX" 
		"SER_116_kRN.placeHolderList[1503]" "SER_116_kRN.placeHolderList[1504]" "Character_LeftHandThumb3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.translateY" 
		"SER_116_kRN.placeHolderList[1505]" "SER_116_kRN.placeHolderList[1506]" "Character_LeftHandThumb3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.translateZ" 
		"SER_116_kRN.placeHolderList[1507]" "SER_116_kRN.placeHolderList[1508]" "Character_LeftHandThumb3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.rotateX" 
		"SER_116_kRN.placeHolderList[1509]" "SER_116_kRN.placeHolderList[1510]" "Character_LeftHandThumb3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.rotateY" 
		"SER_116_kRN.placeHolderList[1511]" "SER_116_kRN.placeHolderList[1512]" "Character_LeftHandThumb3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.rotateZ" 
		"SER_116_kRN.placeHolderList[1513]" "SER_116_kRN.placeHolderList[1514]" "Character_LeftHandThumb3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.scaleX" 
		"SER_116_kRN.placeHolderList[1515]" "SER_116_kRN.placeHolderList[1516]" "Character_LeftHandThumb3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.scaleY" 
		"SER_116_kRN.placeHolderList[1517]" "SER_116_kRN.placeHolderList[1518]" "Character_LeftHandThumb3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandThumb3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandThumb1|Character_LeftHandThumb2|Character_LeftHandThumb3.scaleZ" 
		"SER_116_kRN.placeHolderList[1519]" "SER_116_kRN.placeHolderList[1520]" "Character_LeftHandThumb3.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.scaleX" 
		"SER_116_kRN.placeHolderList[1521]" "SER_116_kRN.placeHolderList[1522]" "Character_LeftHandIndex1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.scaleY" 
		"SER_116_kRN.placeHolderList[1523]" "SER_116_kRN.placeHolderList[1524]" "Character_LeftHandIndex1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.scaleZ" 
		"SER_116_kRN.placeHolderList[1525]" "SER_116_kRN.placeHolderList[1526]" "Character_LeftHandIndex1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.translateX" 
		"SER_116_kRN.placeHolderList[1527]" "SER_116_kRN.placeHolderList[1528]" "Character_LeftHandIndex1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.translateY" 
		"SER_116_kRN.placeHolderList[1529]" "SER_116_kRN.placeHolderList[1530]" "Character_LeftHandIndex1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.translateZ" 
		"SER_116_kRN.placeHolderList[1531]" "SER_116_kRN.placeHolderList[1532]" "Character_LeftHandIndex1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.rotateX" 
		"SER_116_kRN.placeHolderList[1533]" "SER_116_kRN.placeHolderList[1534]" "Character_LeftHandIndex1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.rotateY" 
		"SER_116_kRN.placeHolderList[1535]" "SER_116_kRN.placeHolderList[1536]" "Character_LeftHandIndex1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1.rotateZ" 
		"SER_116_kRN.placeHolderList[1537]" "SER_116_kRN.placeHolderList[1538]" "Character_LeftHandIndex1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.scaleX" 
		"SER_116_kRN.placeHolderList[1539]" "SER_116_kRN.placeHolderList[1540]" "Character_LeftHandIndex2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.scaleY" 
		"SER_116_kRN.placeHolderList[1541]" "SER_116_kRN.placeHolderList[1542]" "Character_LeftHandIndex2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.scaleZ" 
		"SER_116_kRN.placeHolderList[1543]" "SER_116_kRN.placeHolderList[1544]" "Character_LeftHandIndex2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.translateX" 
		"SER_116_kRN.placeHolderList[1545]" "SER_116_kRN.placeHolderList[1546]" "Character_LeftHandIndex2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.translateY" 
		"SER_116_kRN.placeHolderList[1547]" "SER_116_kRN.placeHolderList[1548]" "Character_LeftHandIndex2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.translateZ" 
		"SER_116_kRN.placeHolderList[1549]" "SER_116_kRN.placeHolderList[1550]" "Character_LeftHandIndex2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.rotateX" 
		"SER_116_kRN.placeHolderList[1551]" "SER_116_kRN.placeHolderList[1552]" "Character_LeftHandIndex2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.rotateY" 
		"SER_116_kRN.placeHolderList[1553]" "SER_116_kRN.placeHolderList[1554]" "Character_LeftHandIndex2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2.rotateZ" 
		"SER_116_kRN.placeHolderList[1555]" "SER_116_kRN.placeHolderList[1556]" "Character_LeftHandIndex2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.translateX" 
		"SER_116_kRN.placeHolderList[1557]" "SER_116_kRN.placeHolderList[1558]" "Character_LeftHandIndex3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.translateY" 
		"SER_116_kRN.placeHolderList[1559]" "SER_116_kRN.placeHolderList[1560]" "Character_LeftHandIndex3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.translateZ" 
		"SER_116_kRN.placeHolderList[1561]" "SER_116_kRN.placeHolderList[1562]" "Character_LeftHandIndex3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.rotateX" 
		"SER_116_kRN.placeHolderList[1563]" "SER_116_kRN.placeHolderList[1564]" "Character_LeftHandIndex3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.rotateY" 
		"SER_116_kRN.placeHolderList[1565]" "SER_116_kRN.placeHolderList[1566]" "Character_LeftHandIndex3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.rotateZ" 
		"SER_116_kRN.placeHolderList[1567]" "SER_116_kRN.placeHolderList[1568]" "Character_LeftHandIndex3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.scaleX" 
		"SER_116_kRN.placeHolderList[1569]" "SER_116_kRN.placeHolderList[1570]" "Character_LeftHandIndex3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.scaleY" 
		"SER_116_kRN.placeHolderList[1571]" "SER_116_kRN.placeHolderList[1572]" "Character_LeftHandIndex3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandIndex3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandIndex1|Character_LeftHandIndex2|Character_LeftHandIndex3.scaleZ" 
		"SER_116_kRN.placeHolderList[1573]" "SER_116_kRN.placeHolderList[1574]" "Character_LeftHandIndex3.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.scaleX" 
		"SER_116_kRN.placeHolderList[1575]" "SER_116_kRN.placeHolderList[1576]" "Character_LeftHandMiddle1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.scaleY" 
		"SER_116_kRN.placeHolderList[1577]" "SER_116_kRN.placeHolderList[1578]" "Character_LeftHandMiddle1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.scaleZ" 
		"SER_116_kRN.placeHolderList[1579]" "SER_116_kRN.placeHolderList[1580]" "Character_LeftHandMiddle1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.translateX" 
		"SER_116_kRN.placeHolderList[1581]" "SER_116_kRN.placeHolderList[1582]" "Character_LeftHandMiddle1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.translateY" 
		"SER_116_kRN.placeHolderList[1583]" "SER_116_kRN.placeHolderList[1584]" "Character_LeftHandMiddle1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.translateZ" 
		"SER_116_kRN.placeHolderList[1585]" "SER_116_kRN.placeHolderList[1586]" "Character_LeftHandMiddle1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.rotateX" 
		"SER_116_kRN.placeHolderList[1587]" "SER_116_kRN.placeHolderList[1588]" "Character_LeftHandMiddle1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.rotateY" 
		"SER_116_kRN.placeHolderList[1589]" "SER_116_kRN.placeHolderList[1590]" "Character_LeftHandMiddle1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1.rotateZ" 
		"SER_116_kRN.placeHolderList[1591]" "SER_116_kRN.placeHolderList[1592]" "Character_LeftHandMiddle1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.scaleX" 
		"SER_116_kRN.placeHolderList[1593]" "SER_116_kRN.placeHolderList[1594]" "Character_LeftHandMiddle2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.scaleY" 
		"SER_116_kRN.placeHolderList[1595]" "SER_116_kRN.placeHolderList[1596]" "Character_LeftHandMiddle2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.scaleZ" 
		"SER_116_kRN.placeHolderList[1597]" "SER_116_kRN.placeHolderList[1598]" "Character_LeftHandMiddle2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.translateX" 
		"SER_116_kRN.placeHolderList[1599]" "SER_116_kRN.placeHolderList[1600]" "Character_LeftHandMiddle2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.translateY" 
		"SER_116_kRN.placeHolderList[1601]" "SER_116_kRN.placeHolderList[1602]" "Character_LeftHandMiddle2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.translateZ" 
		"SER_116_kRN.placeHolderList[1603]" "SER_116_kRN.placeHolderList[1604]" "Character_LeftHandMiddle2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.rotateX" 
		"SER_116_kRN.placeHolderList[1605]" "SER_116_kRN.placeHolderList[1606]" "Character_LeftHandMiddle2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.rotateY" 
		"SER_116_kRN.placeHolderList[1607]" "SER_116_kRN.placeHolderList[1608]" "Character_LeftHandMiddle2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2.rotateZ" 
		"SER_116_kRN.placeHolderList[1609]" "SER_116_kRN.placeHolderList[1610]" "Character_LeftHandMiddle2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.translateX" 
		"SER_116_kRN.placeHolderList[1611]" "SER_116_kRN.placeHolderList[1612]" "Character_LeftHandMiddle3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.translateY" 
		"SER_116_kRN.placeHolderList[1613]" "SER_116_kRN.placeHolderList[1614]" "Character_LeftHandMiddle3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.translateZ" 
		"SER_116_kRN.placeHolderList[1615]" "SER_116_kRN.placeHolderList[1616]" "Character_LeftHandMiddle3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.rotateX" 
		"SER_116_kRN.placeHolderList[1617]" "SER_116_kRN.placeHolderList[1618]" "Character_LeftHandMiddle3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.rotateY" 
		"SER_116_kRN.placeHolderList[1619]" "SER_116_kRN.placeHolderList[1620]" "Character_LeftHandMiddle3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.rotateZ" 
		"SER_116_kRN.placeHolderList[1621]" "SER_116_kRN.placeHolderList[1622]" "Character_LeftHandMiddle3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.scaleX" 
		"SER_116_kRN.placeHolderList[1623]" "SER_116_kRN.placeHolderList[1624]" "Character_LeftHandMiddle3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.scaleY" 
		"SER_116_kRN.placeHolderList[1625]" "SER_116_kRN.placeHolderList[1626]" "Character_LeftHandMiddle3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandMiddle3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandMiddle1|Character_LeftHandMiddle2|Character_LeftHandMiddle3.scaleZ" 
		"SER_116_kRN.placeHolderList[1627]" "SER_116_kRN.placeHolderList[1628]" "Character_LeftHandMiddle3.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.scaleX" 
		"SER_116_kRN.placeHolderList[1629]" "SER_116_kRN.placeHolderList[1630]" "Character_LeftHandRing1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.scaleY" 
		"SER_116_kRN.placeHolderList[1631]" "SER_116_kRN.placeHolderList[1632]" "Character_LeftHandRing1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.scaleZ" 
		"SER_116_kRN.placeHolderList[1633]" "SER_116_kRN.placeHolderList[1634]" "Character_LeftHandRing1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.translateX" 
		"SER_116_kRN.placeHolderList[1635]" "SER_116_kRN.placeHolderList[1636]" "Character_LeftHandRing1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.translateY" 
		"SER_116_kRN.placeHolderList[1637]" "SER_116_kRN.placeHolderList[1638]" "Character_LeftHandRing1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.translateZ" 
		"SER_116_kRN.placeHolderList[1639]" "SER_116_kRN.placeHolderList[1640]" "Character_LeftHandRing1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.rotateX" 
		"SER_116_kRN.placeHolderList[1641]" "SER_116_kRN.placeHolderList[1642]" "Character_LeftHandRing1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.rotateY" 
		"SER_116_kRN.placeHolderList[1643]" "SER_116_kRN.placeHolderList[1644]" "Character_LeftHandRing1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1.rotateZ" 
		"SER_116_kRN.placeHolderList[1645]" "SER_116_kRN.placeHolderList[1646]" "Character_LeftHandRing1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.scaleX" 
		"SER_116_kRN.placeHolderList[1647]" "SER_116_kRN.placeHolderList[1648]" "Character_LeftHandRing2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.scaleY" 
		"SER_116_kRN.placeHolderList[1649]" "SER_116_kRN.placeHolderList[1650]" "Character_LeftHandRing2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.scaleZ" 
		"SER_116_kRN.placeHolderList[1651]" "SER_116_kRN.placeHolderList[1652]" "Character_LeftHandRing2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.translateX" 
		"SER_116_kRN.placeHolderList[1653]" "SER_116_kRN.placeHolderList[1654]" "Character_LeftHandRing2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.translateY" 
		"SER_116_kRN.placeHolderList[1655]" "SER_116_kRN.placeHolderList[1656]" "Character_LeftHandRing2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.translateZ" 
		"SER_116_kRN.placeHolderList[1657]" "SER_116_kRN.placeHolderList[1658]" "Character_LeftHandRing2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.rotateX" 
		"SER_116_kRN.placeHolderList[1659]" "SER_116_kRN.placeHolderList[1660]" "Character_LeftHandRing2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.rotateY" 
		"SER_116_kRN.placeHolderList[1661]" "SER_116_kRN.placeHolderList[1662]" "Character_LeftHandRing2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2.rotateZ" 
		"SER_116_kRN.placeHolderList[1663]" "SER_116_kRN.placeHolderList[1664]" "Character_LeftHandRing2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.translateX" 
		"SER_116_kRN.placeHolderList[1665]" "SER_116_kRN.placeHolderList[1666]" "Character_LeftHandRing3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.translateY" 
		"SER_116_kRN.placeHolderList[1667]" "SER_116_kRN.placeHolderList[1668]" "Character_LeftHandRing3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.translateZ" 
		"SER_116_kRN.placeHolderList[1669]" "SER_116_kRN.placeHolderList[1670]" "Character_LeftHandRing3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.rotateX" 
		"SER_116_kRN.placeHolderList[1671]" "SER_116_kRN.placeHolderList[1672]" "Character_LeftHandRing3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.rotateY" 
		"SER_116_kRN.placeHolderList[1673]" "SER_116_kRN.placeHolderList[1674]" "Character_LeftHandRing3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.rotateZ" 
		"SER_116_kRN.placeHolderList[1675]" "SER_116_kRN.placeHolderList[1676]" "Character_LeftHandRing3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.scaleX" 
		"SER_116_kRN.placeHolderList[1677]" "SER_116_kRN.placeHolderList[1678]" "Character_LeftHandRing3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.scaleY" 
		"SER_116_kRN.placeHolderList[1679]" "SER_116_kRN.placeHolderList[1680]" "Character_LeftHandRing3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandRing3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandRing1|Character_LeftHandRing2|Character_LeftHandRing3.scaleZ" 
		"SER_116_kRN.placeHolderList[1681]" "SER_116_kRN.placeHolderList[1682]" "Character_LeftHandRing3.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.scaleX" 
		"SER_116_kRN.placeHolderList[1683]" "SER_116_kRN.placeHolderList[1684]" "Character_LeftHandPinky1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.scaleY" 
		"SER_116_kRN.placeHolderList[1685]" "SER_116_kRN.placeHolderList[1686]" "Character_LeftHandPinky1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.scaleZ" 
		"SER_116_kRN.placeHolderList[1687]" "SER_116_kRN.placeHolderList[1688]" "Character_LeftHandPinky1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.translateX" 
		"SER_116_kRN.placeHolderList[1689]" "SER_116_kRN.placeHolderList[1690]" "Character_LeftHandPinky1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.translateY" 
		"SER_116_kRN.placeHolderList[1691]" "SER_116_kRN.placeHolderList[1692]" "Character_LeftHandPinky1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.translateZ" 
		"SER_116_kRN.placeHolderList[1693]" "SER_116_kRN.placeHolderList[1694]" "Character_LeftHandPinky1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.rotateX" 
		"SER_116_kRN.placeHolderList[1695]" "SER_116_kRN.placeHolderList[1696]" "Character_LeftHandPinky1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.rotateY" 
		"SER_116_kRN.placeHolderList[1697]" "SER_116_kRN.placeHolderList[1698]" "Character_LeftHandPinky1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1.rotateZ" 
		"SER_116_kRN.placeHolderList[1699]" "SER_116_kRN.placeHolderList[1700]" "Character_LeftHandPinky1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.scaleX" 
		"SER_116_kRN.placeHolderList[1701]" "SER_116_kRN.placeHolderList[1702]" "Character_LeftHandPinky2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.scaleY" 
		"SER_116_kRN.placeHolderList[1703]" "SER_116_kRN.placeHolderList[1704]" "Character_LeftHandPinky2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.scaleZ" 
		"SER_116_kRN.placeHolderList[1705]" "SER_116_kRN.placeHolderList[1706]" "Character_LeftHandPinky2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.translateX" 
		"SER_116_kRN.placeHolderList[1707]" "SER_116_kRN.placeHolderList[1708]" "Character_LeftHandPinky2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.translateY" 
		"SER_116_kRN.placeHolderList[1709]" "SER_116_kRN.placeHolderList[1710]" "Character_LeftHandPinky2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.translateZ" 
		"SER_116_kRN.placeHolderList[1711]" "SER_116_kRN.placeHolderList[1712]" "Character_LeftHandPinky2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.rotateX" 
		"SER_116_kRN.placeHolderList[1713]" "SER_116_kRN.placeHolderList[1714]" "Character_LeftHandPinky2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.rotateY" 
		"SER_116_kRN.placeHolderList[1715]" "SER_116_kRN.placeHolderList[1716]" "Character_LeftHandPinky2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2.rotateZ" 
		"SER_116_kRN.placeHolderList[1717]" "SER_116_kRN.placeHolderList[1718]" "Character_LeftHandPinky2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.translateX" 
		"SER_116_kRN.placeHolderList[1719]" "SER_116_kRN.placeHolderList[1720]" "Character_LeftHandPinky3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.translateY" 
		"SER_116_kRN.placeHolderList[1721]" "SER_116_kRN.placeHolderList[1722]" "Character_LeftHandPinky3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.translateZ" 
		"SER_116_kRN.placeHolderList[1723]" "SER_116_kRN.placeHolderList[1724]" "Character_LeftHandPinky3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.rotateX" 
		"SER_116_kRN.placeHolderList[1725]" "SER_116_kRN.placeHolderList[1726]" "Character_LeftHandPinky3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.rotateY" 
		"SER_116_kRN.placeHolderList[1727]" "SER_116_kRN.placeHolderList[1728]" "Character_LeftHandPinky3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.rotateZ" 
		"SER_116_kRN.placeHolderList[1729]" "SER_116_kRN.placeHolderList[1730]" "Character_LeftHandPinky3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.scaleX" 
		"SER_116_kRN.placeHolderList[1731]" "SER_116_kRN.placeHolderList[1732]" "Character_LeftHandPinky3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.scaleY" 
		"SER_116_kRN.placeHolderList[1733]" "SER_116_kRN.placeHolderList[1734]" "Character_LeftHandPinky3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftHandPinky3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_LeftShoulder|Character_LeftArm|Character_LeftForeArm|Character_LeftHand|Character_LeftHandPinky1|Character_LeftHandPinky2|Character_LeftHandPinky3.scaleZ" 
		"SER_116_kRN.placeHolderList[1735]" "SER_116_kRN.placeHolderList[1736]" "Character_LeftHandPinky3.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightShoulderSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.scaleX" 
		"SER_116_kRN.placeHolderList[1737]" "SER_116_kRN.placeHolderList[1738]" "Character_RightShoulder.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightShoulderSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.scaleY" 
		"SER_116_kRN.placeHolderList[1739]" "SER_116_kRN.placeHolderList[1740]" "Character_RightShoulder.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightShoulderSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.scaleZ" 
		"SER_116_kRN.placeHolderList[1741]" "SER_116_kRN.placeHolderList[1742]" "Character_RightShoulder.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightShoulderTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.translateX" 
		"SER_116_kRN.placeHolderList[1743]" "SER_116_kRN.placeHolderList[1744]" "Character_RightShoulder.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightShoulderTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.translateY" 
		"SER_116_kRN.placeHolderList[1745]" "SER_116_kRN.placeHolderList[1746]" "Character_RightShoulder.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightShoulderTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.translateZ" 
		"SER_116_kRN.placeHolderList[1747]" "SER_116_kRN.placeHolderList[1748]" "Character_RightShoulder.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightShoulderRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.rotateX" 
		"SER_116_kRN.placeHolderList[1749]" "SER_116_kRN.placeHolderList[1750]" "Character_RightShoulder.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightShoulderRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.rotateY" 
		"SER_116_kRN.placeHolderList[1751]" "SER_116_kRN.placeHolderList[1752]" "Character_RightShoulder.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightShoulderRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder.rotateZ" 
		"SER_116_kRN.placeHolderList[1753]" "SER_116_kRN.placeHolderList[1754]" "Character_RightShoulder.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightArmSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.scaleX" 
		"SER_116_kRN.placeHolderList[1755]" "SER_116_kRN.placeHolderList[1756]" "Character_RightArm.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightArmSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.scaleY" 
		"SER_116_kRN.placeHolderList[1757]" "SER_116_kRN.placeHolderList[1758]" "Character_RightArm.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightArmSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.scaleZ" 
		"SER_116_kRN.placeHolderList[1759]" "SER_116_kRN.placeHolderList[1760]" "Character_RightArm.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightArmTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.translateX" 
		"SER_116_kRN.placeHolderList[1761]" "SER_116_kRN.placeHolderList[1762]" "Character_RightArm.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightArmTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.translateY" 
		"SER_116_kRN.placeHolderList[1763]" "SER_116_kRN.placeHolderList[1764]" "Character_RightArm.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightArmTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.translateZ" 
		"SER_116_kRN.placeHolderList[1765]" "SER_116_kRN.placeHolderList[1766]" "Character_RightArm.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightArmRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.rotateX" 
		"SER_116_kRN.placeHolderList[1767]" "SER_116_kRN.placeHolderList[1768]" "Character_RightArm.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightArmRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.rotateY" 
		"SER_116_kRN.placeHolderList[1769]" "SER_116_kRN.placeHolderList[1770]" "Character_RightArm.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightArmRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm.rotateZ" 
		"SER_116_kRN.placeHolderList[1771]" "SER_116_kRN.placeHolderList[1772]" "Character_RightArm.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightForeArmSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.scaleX" 
		"SER_116_kRN.placeHolderList[1773]" "SER_116_kRN.placeHolderList[1774]" "Character_RightForeArm.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightForeArmSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.scaleY" 
		"SER_116_kRN.placeHolderList[1775]" "SER_116_kRN.placeHolderList[1776]" "Character_RightForeArm.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightForeArmSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.scaleZ" 
		"SER_116_kRN.placeHolderList[1777]" "SER_116_kRN.placeHolderList[1778]" "Character_RightForeArm.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightForeArmTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.translateX" 
		"SER_116_kRN.placeHolderList[1779]" "SER_116_kRN.placeHolderList[1780]" "Character_RightForeArm.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightForeArmTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.translateY" 
		"SER_116_kRN.placeHolderList[1781]" "SER_116_kRN.placeHolderList[1782]" "Character_RightForeArm.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightForeArmTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.translateZ" 
		"SER_116_kRN.placeHolderList[1783]" "SER_116_kRN.placeHolderList[1784]" "Character_RightForeArm.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightForeArmRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.rotateX" 
		"SER_116_kRN.placeHolderList[1785]" "SER_116_kRN.placeHolderList[1786]" "Character_RightForeArm.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightForeArmRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.rotateY" 
		"SER_116_kRN.placeHolderList[1787]" "SER_116_kRN.placeHolderList[1788]" "Character_RightForeArm.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightForeArmRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm.rotateZ" 
		"SER_116_kRN.placeHolderList[1789]" "SER_116_kRN.placeHolderList[1790]" "Character_RightForeArm.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandSx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.scaleX" 
		"SER_116_kRN.placeHolderList[1791]" "SER_116_kRN.placeHolderList[1792]" "Character_RightHand.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandSy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.scaleY" 
		"SER_116_kRN.placeHolderList[1793]" "SER_116_kRN.placeHolderList[1794]" "Character_RightHand.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandSz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.scaleZ" 
		"SER_116_kRN.placeHolderList[1795]" "SER_116_kRN.placeHolderList[1796]" "Character_RightHand.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandTx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.translateX" 
		"SER_116_kRN.placeHolderList[1797]" "SER_116_kRN.placeHolderList[1798]" "Character_RightHand.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandTy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.translateY" 
		"SER_116_kRN.placeHolderList[1799]" "SER_116_kRN.placeHolderList[1800]" "Character_RightHand.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandTz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.translateZ" 
		"SER_116_kRN.placeHolderList[1801]" "SER_116_kRN.placeHolderList[1802]" "Character_RightHand.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.rotateX" 
		"SER_116_kRN.placeHolderList[1803]" "SER_116_kRN.placeHolderList[1804]" "Character_RightHand.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.rotateY" 
		"SER_116_kRN.placeHolderList[1805]" "SER_116_kRN.placeHolderList[1806]" "Character_RightHand.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand.rotateZ" 
		"SER_116_kRN.placeHolderList[1807]" "SER_116_kRN.placeHolderList[1808]" "Character_RightHand.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.scaleX" 
		"SER_116_kRN.placeHolderList[1809]" "SER_116_kRN.placeHolderList[1810]" "Character_RightHandThumb1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.scaleY" 
		"SER_116_kRN.placeHolderList[1811]" "SER_116_kRN.placeHolderList[1812]" "Character_RightHandThumb1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.scaleZ" 
		"SER_116_kRN.placeHolderList[1813]" "SER_116_kRN.placeHolderList[1814]" "Character_RightHandThumb1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.translateX" 
		"SER_116_kRN.placeHolderList[1815]" "SER_116_kRN.placeHolderList[1816]" "Character_RightHandThumb1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.translateY" 
		"SER_116_kRN.placeHolderList[1817]" "SER_116_kRN.placeHolderList[1818]" "Character_RightHandThumb1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.translateZ" 
		"SER_116_kRN.placeHolderList[1819]" "SER_116_kRN.placeHolderList[1820]" "Character_RightHandThumb1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.rotateX" 
		"SER_116_kRN.placeHolderList[1821]" "SER_116_kRN.placeHolderList[1822]" "Character_RightHandThumb1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.rotateY" 
		"SER_116_kRN.placeHolderList[1823]" "SER_116_kRN.placeHolderList[1824]" "Character_RightHandThumb1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1.rotateZ" 
		"SER_116_kRN.placeHolderList[1825]" "SER_116_kRN.placeHolderList[1826]" "Character_RightHandThumb1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.scaleX" 
		"SER_116_kRN.placeHolderList[1827]" "SER_116_kRN.placeHolderList[1828]" "Character_RightHandThumb2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.scaleY" 
		"SER_116_kRN.placeHolderList[1829]" "SER_116_kRN.placeHolderList[1830]" "Character_RightHandThumb2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.scaleZ" 
		"SER_116_kRN.placeHolderList[1831]" "SER_116_kRN.placeHolderList[1832]" "Character_RightHandThumb2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.translateX" 
		"SER_116_kRN.placeHolderList[1833]" "SER_116_kRN.placeHolderList[1834]" "Character_RightHandThumb2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.translateY" 
		"SER_116_kRN.placeHolderList[1835]" "SER_116_kRN.placeHolderList[1836]" "Character_RightHandThumb2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.translateZ" 
		"SER_116_kRN.placeHolderList[1837]" "SER_116_kRN.placeHolderList[1838]" "Character_RightHandThumb2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.rotateX" 
		"SER_116_kRN.placeHolderList[1839]" "SER_116_kRN.placeHolderList[1840]" "Character_RightHandThumb2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.rotateY" 
		"SER_116_kRN.placeHolderList[1841]" "SER_116_kRN.placeHolderList[1842]" "Character_RightHandThumb2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2.rotateZ" 
		"SER_116_kRN.placeHolderList[1843]" "SER_116_kRN.placeHolderList[1844]" "Character_RightHandThumb2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.translateX" 
		"SER_116_kRN.placeHolderList[1845]" "SER_116_kRN.placeHolderList[1846]" "Character_RightHandThumb3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.translateY" 
		"SER_116_kRN.placeHolderList[1847]" "SER_116_kRN.placeHolderList[1848]" "Character_RightHandThumb3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.translateZ" 
		"SER_116_kRN.placeHolderList[1849]" "SER_116_kRN.placeHolderList[1850]" "Character_RightHandThumb3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.rotateX" 
		"SER_116_kRN.placeHolderList[1851]" "SER_116_kRN.placeHolderList[1852]" "Character_RightHandThumb3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.rotateY" 
		"SER_116_kRN.placeHolderList[1853]" "SER_116_kRN.placeHolderList[1854]" "Character_RightHandThumb3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.rotateZ" 
		"SER_116_kRN.placeHolderList[1855]" "SER_116_kRN.placeHolderList[1856]" "Character_RightHandThumb3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.scaleX" 
		"SER_116_kRN.placeHolderList[1857]" "SER_116_kRN.placeHolderList[1858]" "Character_RightHandThumb3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.scaleY" 
		"SER_116_kRN.placeHolderList[1859]" "SER_116_kRN.placeHolderList[1860]" "Character_RightHandThumb3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandThumb3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandThumb1|Character_RightHandThumb2|Character_RightHandThumb3.scaleZ" 
		"SER_116_kRN.placeHolderList[1861]" "SER_116_kRN.placeHolderList[1862]" "Character_RightHandThumb3.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.scaleX" 
		"SER_116_kRN.placeHolderList[1863]" "SER_116_kRN.placeHolderList[1864]" "Character_RightHandIndex1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.scaleY" 
		"SER_116_kRN.placeHolderList[1865]" "SER_116_kRN.placeHolderList[1866]" "Character_RightHandIndex1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.scaleZ" 
		"SER_116_kRN.placeHolderList[1867]" "SER_116_kRN.placeHolderList[1868]" "Character_RightHandIndex1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.translateX" 
		"SER_116_kRN.placeHolderList[1869]" "SER_116_kRN.placeHolderList[1870]" "Character_RightHandIndex1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.translateY" 
		"SER_116_kRN.placeHolderList[1871]" "SER_116_kRN.placeHolderList[1872]" "Character_RightHandIndex1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.translateZ" 
		"SER_116_kRN.placeHolderList[1873]" "SER_116_kRN.placeHolderList[1874]" "Character_RightHandIndex1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.rotateX" 
		"SER_116_kRN.placeHolderList[1875]" "SER_116_kRN.placeHolderList[1876]" "Character_RightHandIndex1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.rotateY" 
		"SER_116_kRN.placeHolderList[1877]" "SER_116_kRN.placeHolderList[1878]" "Character_RightHandIndex1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1.rotateZ" 
		"SER_116_kRN.placeHolderList[1879]" "SER_116_kRN.placeHolderList[1880]" "Character_RightHandIndex1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.scaleX" 
		"SER_116_kRN.placeHolderList[1881]" "SER_116_kRN.placeHolderList[1882]" "Character_RightHandIndex2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.scaleY" 
		"SER_116_kRN.placeHolderList[1883]" "SER_116_kRN.placeHolderList[1884]" "Character_RightHandIndex2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.scaleZ" 
		"SER_116_kRN.placeHolderList[1885]" "SER_116_kRN.placeHolderList[1886]" "Character_RightHandIndex2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.translateX" 
		"SER_116_kRN.placeHolderList[1887]" "SER_116_kRN.placeHolderList[1888]" "Character_RightHandIndex2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.translateY" 
		"SER_116_kRN.placeHolderList[1889]" "SER_116_kRN.placeHolderList[1890]" "Character_RightHandIndex2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.translateZ" 
		"SER_116_kRN.placeHolderList[1891]" "SER_116_kRN.placeHolderList[1892]" "Character_RightHandIndex2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.rotateX" 
		"SER_116_kRN.placeHolderList[1893]" "SER_116_kRN.placeHolderList[1894]" "Character_RightHandIndex2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.rotateY" 
		"SER_116_kRN.placeHolderList[1895]" "SER_116_kRN.placeHolderList[1896]" "Character_RightHandIndex2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2.rotateZ" 
		"SER_116_kRN.placeHolderList[1897]" "SER_116_kRN.placeHolderList[1898]" "Character_RightHandIndex2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.translateX" 
		"SER_116_kRN.placeHolderList[1899]" "SER_116_kRN.placeHolderList[1900]" "Character_RightHandIndex3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.translateY" 
		"SER_116_kRN.placeHolderList[1901]" "SER_116_kRN.placeHolderList[1902]" "Character_RightHandIndex3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.translateZ" 
		"SER_116_kRN.placeHolderList[1903]" "SER_116_kRN.placeHolderList[1904]" "Character_RightHandIndex3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.rotateX" 
		"SER_116_kRN.placeHolderList[1905]" "SER_116_kRN.placeHolderList[1906]" "Character_RightHandIndex3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.rotateY" 
		"SER_116_kRN.placeHolderList[1907]" "SER_116_kRN.placeHolderList[1908]" "Character_RightHandIndex3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.rotateZ" 
		"SER_116_kRN.placeHolderList[1909]" "SER_116_kRN.placeHolderList[1910]" "Character_RightHandIndex3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.scaleX" 
		"SER_116_kRN.placeHolderList[1911]" "SER_116_kRN.placeHolderList[1912]" "Character_RightHandIndex3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.scaleY" 
		"SER_116_kRN.placeHolderList[1913]" "SER_116_kRN.placeHolderList[1914]" "Character_RightHandIndex3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandIndex3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandIndex1|Character_RightHandIndex2|Character_RightHandIndex3.scaleZ" 
		"SER_116_kRN.placeHolderList[1915]" "SER_116_kRN.placeHolderList[1916]" "Character_RightHandIndex3.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.scaleX" 
		"SER_116_kRN.placeHolderList[1917]" "SER_116_kRN.placeHolderList[1918]" "Character_RightHandMiddle1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.scaleY" 
		"SER_116_kRN.placeHolderList[1919]" "SER_116_kRN.placeHolderList[1920]" "Character_RightHandMiddle1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.scaleZ" 
		"SER_116_kRN.placeHolderList[1921]" "SER_116_kRN.placeHolderList[1922]" "Character_RightHandMiddle1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.translateX" 
		"SER_116_kRN.placeHolderList[1923]" "SER_116_kRN.placeHolderList[1924]" "Character_RightHandMiddle1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.translateY" 
		"SER_116_kRN.placeHolderList[1925]" "SER_116_kRN.placeHolderList[1926]" "Character_RightHandMiddle1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.translateZ" 
		"SER_116_kRN.placeHolderList[1927]" "SER_116_kRN.placeHolderList[1928]" "Character_RightHandMiddle1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.rotateX" 
		"SER_116_kRN.placeHolderList[1929]" "SER_116_kRN.placeHolderList[1930]" "Character_RightHandMiddle1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.rotateY" 
		"SER_116_kRN.placeHolderList[1931]" "SER_116_kRN.placeHolderList[1932]" "Character_RightHandMiddle1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1.rotateZ" 
		"SER_116_kRN.placeHolderList[1933]" "SER_116_kRN.placeHolderList[1934]" "Character_RightHandMiddle1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.scaleX" 
		"SER_116_kRN.placeHolderList[1935]" "SER_116_kRN.placeHolderList[1936]" "Character_RightHandMiddle2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.scaleY" 
		"SER_116_kRN.placeHolderList[1937]" "SER_116_kRN.placeHolderList[1938]" "Character_RightHandMiddle2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.scaleZ" 
		"SER_116_kRN.placeHolderList[1939]" "SER_116_kRN.placeHolderList[1940]" "Character_RightHandMiddle2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.translateX" 
		"SER_116_kRN.placeHolderList[1941]" "SER_116_kRN.placeHolderList[1942]" "Character_RightHandMiddle2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.translateY" 
		"SER_116_kRN.placeHolderList[1943]" "SER_116_kRN.placeHolderList[1944]" "Character_RightHandMiddle2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.translateZ" 
		"SER_116_kRN.placeHolderList[1945]" "SER_116_kRN.placeHolderList[1946]" "Character_RightHandMiddle2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.rotateX" 
		"SER_116_kRN.placeHolderList[1947]" "SER_116_kRN.placeHolderList[1948]" "Character_RightHandMiddle2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.rotateY" 
		"SER_116_kRN.placeHolderList[1949]" "SER_116_kRN.placeHolderList[1950]" "Character_RightHandMiddle2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2.rotateZ" 
		"SER_116_kRN.placeHolderList[1951]" "SER_116_kRN.placeHolderList[1952]" "Character_RightHandMiddle2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.translateX" 
		"SER_116_kRN.placeHolderList[1953]" "SER_116_kRN.placeHolderList[1954]" "Character_RightHandMiddle3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.translateY" 
		"SER_116_kRN.placeHolderList[1955]" "SER_116_kRN.placeHolderList[1956]" "Character_RightHandMiddle3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.translateZ" 
		"SER_116_kRN.placeHolderList[1957]" "SER_116_kRN.placeHolderList[1958]" "Character_RightHandMiddle3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.rotateX" 
		"SER_116_kRN.placeHolderList[1959]" "SER_116_kRN.placeHolderList[1960]" "Character_RightHandMiddle3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.rotateY" 
		"SER_116_kRN.placeHolderList[1961]" "SER_116_kRN.placeHolderList[1962]" "Character_RightHandMiddle3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.rotateZ" 
		"SER_116_kRN.placeHolderList[1963]" "SER_116_kRN.placeHolderList[1964]" "Character_RightHandMiddle3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.scaleX" 
		"SER_116_kRN.placeHolderList[1965]" "SER_116_kRN.placeHolderList[1966]" "Character_RightHandMiddle3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.scaleY" 
		"SER_116_kRN.placeHolderList[1967]" "SER_116_kRN.placeHolderList[1968]" "Character_RightHandMiddle3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandMiddle3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandMiddle1|Character_RightHandMiddle2|Character_RightHandMiddle3.scaleZ" 
		"SER_116_kRN.placeHolderList[1969]" "SER_116_kRN.placeHolderList[1970]" "Character_RightHandMiddle3.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.scaleX" 
		"SER_116_kRN.placeHolderList[1971]" "SER_116_kRN.placeHolderList[1972]" "Character_RightHandRing1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.scaleY" 
		"SER_116_kRN.placeHolderList[1973]" "SER_116_kRN.placeHolderList[1974]" "Character_RightHandRing1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.scaleZ" 
		"SER_116_kRN.placeHolderList[1975]" "SER_116_kRN.placeHolderList[1976]" "Character_RightHandRing1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.translateX" 
		"SER_116_kRN.placeHolderList[1977]" "SER_116_kRN.placeHolderList[1978]" "Character_RightHandRing1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.translateY" 
		"SER_116_kRN.placeHolderList[1979]" "SER_116_kRN.placeHolderList[1980]" "Character_RightHandRing1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.translateZ" 
		"SER_116_kRN.placeHolderList[1981]" "SER_116_kRN.placeHolderList[1982]" "Character_RightHandRing1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.rotateX" 
		"SER_116_kRN.placeHolderList[1983]" "SER_116_kRN.placeHolderList[1984]" "Character_RightHandRing1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.rotateY" 
		"SER_116_kRN.placeHolderList[1985]" "SER_116_kRN.placeHolderList[1986]" "Character_RightHandRing1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1.rotateZ" 
		"SER_116_kRN.placeHolderList[1987]" "SER_116_kRN.placeHolderList[1988]" "Character_RightHandRing1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.scaleX" 
		"SER_116_kRN.placeHolderList[1989]" "SER_116_kRN.placeHolderList[1990]" "Character_RightHandRing2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.scaleY" 
		"SER_116_kRN.placeHolderList[1991]" "SER_116_kRN.placeHolderList[1992]" "Character_RightHandRing2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.scaleZ" 
		"SER_116_kRN.placeHolderList[1993]" "SER_116_kRN.placeHolderList[1994]" "Character_RightHandRing2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.translateX" 
		"SER_116_kRN.placeHolderList[1995]" "SER_116_kRN.placeHolderList[1996]" "Character_RightHandRing2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.translateY" 
		"SER_116_kRN.placeHolderList[1997]" "SER_116_kRN.placeHolderList[1998]" "Character_RightHandRing2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.translateZ" 
		"SER_116_kRN.placeHolderList[1999]" "SER_116_kRN.placeHolderList[2000]" "Character_RightHandRing2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.rotateX" 
		"SER_116_kRN.placeHolderList[2001]" "SER_116_kRN.placeHolderList[2002]" "Character_RightHandRing2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.rotateY" 
		"SER_116_kRN.placeHolderList[2003]" "SER_116_kRN.placeHolderList[2004]" "Character_RightHandRing2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2.rotateZ" 
		"SER_116_kRN.placeHolderList[2005]" "SER_116_kRN.placeHolderList[2006]" "Character_RightHandRing2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.translateX" 
		"SER_116_kRN.placeHolderList[2007]" "SER_116_kRN.placeHolderList[2008]" "Character_RightHandRing3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.translateY" 
		"SER_116_kRN.placeHolderList[2009]" "SER_116_kRN.placeHolderList[2010]" "Character_RightHandRing3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.translateZ" 
		"SER_116_kRN.placeHolderList[2011]" "SER_116_kRN.placeHolderList[2012]" "Character_RightHandRing3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.rotateX" 
		"SER_116_kRN.placeHolderList[2013]" "SER_116_kRN.placeHolderList[2014]" "Character_RightHandRing3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.rotateY" 
		"SER_116_kRN.placeHolderList[2015]" "SER_116_kRN.placeHolderList[2016]" "Character_RightHandRing3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.rotateZ" 
		"SER_116_kRN.placeHolderList[2017]" "SER_116_kRN.placeHolderList[2018]" "Character_RightHandRing3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.scaleX" 
		"SER_116_kRN.placeHolderList[2019]" "SER_116_kRN.placeHolderList[2020]" "Character_RightHandRing3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.scaleY" 
		"SER_116_kRN.placeHolderList[2021]" "SER_116_kRN.placeHolderList[2022]" "Character_RightHandRing3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandRing3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandRing1|Character_RightHandRing2|Character_RightHandRing3.scaleZ" 
		"SER_116_kRN.placeHolderList[2023]" "SER_116_kRN.placeHolderList[2024]" "Character_RightHandRing3.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.scaleX" 
		"SER_116_kRN.placeHolderList[2025]" "SER_116_kRN.placeHolderList[2026]" "Character_RightHandPinky1.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.scaleY" 
		"SER_116_kRN.placeHolderList[2027]" "SER_116_kRN.placeHolderList[2028]" "Character_RightHandPinky1.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.scaleZ" 
		"SER_116_kRN.placeHolderList[2029]" "SER_116_kRN.placeHolderList[2030]" "Character_RightHandPinky1.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.translateX" 
		"SER_116_kRN.placeHolderList[2031]" "SER_116_kRN.placeHolderList[2032]" "Character_RightHandPinky1.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.translateY" 
		"SER_116_kRN.placeHolderList[2033]" "SER_116_kRN.placeHolderList[2034]" "Character_RightHandPinky1.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.translateZ" 
		"SER_116_kRN.placeHolderList[2035]" "SER_116_kRN.placeHolderList[2036]" "Character_RightHandPinky1.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.rotateX" 
		"SER_116_kRN.placeHolderList[2037]" "SER_116_kRN.placeHolderList[2038]" "Character_RightHandPinky1.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.rotateY" 
		"SER_116_kRN.placeHolderList[2039]" "SER_116_kRN.placeHolderList[2040]" "Character_RightHandPinky1.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1.rotateZ" 
		"SER_116_kRN.placeHolderList[2041]" "SER_116_kRN.placeHolderList[2042]" "Character_RightHandPinky1.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky2Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.scaleX" 
		"SER_116_kRN.placeHolderList[2043]" "SER_116_kRN.placeHolderList[2044]" "Character_RightHandPinky2.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky2Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.scaleY" 
		"SER_116_kRN.placeHolderList[2045]" "SER_116_kRN.placeHolderList[2046]" "Character_RightHandPinky2.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky2Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.scaleZ" 
		"SER_116_kRN.placeHolderList[2047]" "SER_116_kRN.placeHolderList[2048]" "Character_RightHandPinky2.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky2Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.translateX" 
		"SER_116_kRN.placeHolderList[2049]" "SER_116_kRN.placeHolderList[2050]" "Character_RightHandPinky2.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky2Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.translateY" 
		"SER_116_kRN.placeHolderList[2051]" "SER_116_kRN.placeHolderList[2052]" "Character_RightHandPinky2.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky2Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.translateZ" 
		"SER_116_kRN.placeHolderList[2053]" "SER_116_kRN.placeHolderList[2054]" "Character_RightHandPinky2.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky2Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.rotateX" 
		"SER_116_kRN.placeHolderList[2055]" "SER_116_kRN.placeHolderList[2056]" "Character_RightHandPinky2.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky2Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.rotateY" 
		"SER_116_kRN.placeHolderList[2057]" "SER_116_kRN.placeHolderList[2058]" "Character_RightHandPinky2.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky2Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2.rotateZ" 
		"SER_116_kRN.placeHolderList[2059]" "SER_116_kRN.placeHolderList[2060]" "Character_RightHandPinky2.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky3Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.translateX" 
		"SER_116_kRN.placeHolderList[2061]" "SER_116_kRN.placeHolderList[2062]" "Character_RightHandPinky3.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky3Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.translateY" 
		"SER_116_kRN.placeHolderList[2063]" "SER_116_kRN.placeHolderList[2064]" "Character_RightHandPinky3.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky3Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.translateZ" 
		"SER_116_kRN.placeHolderList[2065]" "SER_116_kRN.placeHolderList[2066]" "Character_RightHandPinky3.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky3Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.rotateX" 
		"SER_116_kRN.placeHolderList[2067]" "SER_116_kRN.placeHolderList[2068]" "Character_RightHandPinky3.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky3Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.rotateY" 
		"SER_116_kRN.placeHolderList[2069]" "SER_116_kRN.placeHolderList[2070]" "Character_RightHandPinky3.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky3Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.rotateZ" 
		"SER_116_kRN.placeHolderList[2071]" "SER_116_kRN.placeHolderList[2072]" "Character_RightHandPinky3.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky3Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.scaleX" 
		"SER_116_kRN.placeHolderList[2073]" "SER_116_kRN.placeHolderList[2074]" "Character_RightHandPinky3.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky3Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.scaleY" 
		"SER_116_kRN.placeHolderList[2075]" "SER_116_kRN.placeHolderList[2076]" "Character_RightHandPinky3.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightHandPinky3Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Character_RightHandPinky1|Character_RightHandPinky2|Character_RightHandPinky3.scaleZ" 
		"SER_116_kRN.placeHolderList[2077]" "SER_116_kRN.placeHolderList[2078]" "Character_RightHandPinky3.sz"
		
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.visibility" 
		"SER_116_kRN.placeHolderList[2079]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.translateX" 
		"SER_116_kRN.placeHolderList[2080]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.translateY" 
		"SER_116_kRN.placeHolderList[2081]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.translateZ" 
		"SER_116_kRN.placeHolderList[2082]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.rotateX" 
		"SER_116_kRN.placeHolderList[2083]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.rotateY" 
		"SER_116_kRN.placeHolderList[2084]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.rotateZ" 
		"SER_116_kRN.placeHolderList[2085]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.scaleX" 
		"SER_116_kRN.placeHolderList[2086]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.scaleY" 
		"SER_116_kRN.placeHolderList[2087]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.scaleZ" 
		"SER_116_kRN.placeHolderList[2088]" ""
		5 4 "SER_116_kRN" "|Character_Holder|Character_Reference|Character_Hips|Character_Spine|Character_Spine1|Character_Spine2|Character_RightShoulder|Character_RightArm|Character_RightForeArm|Character_RightHand|Helper_Weapon1.lockInfluenceWeights" 
		"SER_116_kRN.placeHolderList[2089]" ""
		5 0 "SER_116_kRN" "HIKState2SK1.LeftUpLegSx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.scaleX" 
		"SER_116_kRN.placeHolderList[2090]" "SER_116_kRN.placeHolderList[2091]" "Character_LeftUpLeg.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftUpLegSy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.scaleY" 
		"SER_116_kRN.placeHolderList[2092]" "SER_116_kRN.placeHolderList[2093]" "Character_LeftUpLeg.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftUpLegSz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.scaleZ" 
		"SER_116_kRN.placeHolderList[2094]" "SER_116_kRN.placeHolderList[2095]" "Character_LeftUpLeg.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftUpLegTx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.translateX" 
		"SER_116_kRN.placeHolderList[2096]" "SER_116_kRN.placeHolderList[2097]" "Character_LeftUpLeg.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftUpLegTy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.translateY" 
		"SER_116_kRN.placeHolderList[2098]" "SER_116_kRN.placeHolderList[2099]" "Character_LeftUpLeg.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftUpLegTz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.translateZ" 
		"SER_116_kRN.placeHolderList[2100]" "SER_116_kRN.placeHolderList[2101]" "Character_LeftUpLeg.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftUpLegRx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.rotateX" 
		"SER_116_kRN.placeHolderList[2102]" "SER_116_kRN.placeHolderList[2103]" "Character_LeftUpLeg.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftUpLegRy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.rotateY" 
		"SER_116_kRN.placeHolderList[2104]" "SER_116_kRN.placeHolderList[2105]" "Character_LeftUpLeg.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftUpLegRz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg.rotateZ" 
		"SER_116_kRN.placeHolderList[2106]" "SER_116_kRN.placeHolderList[2107]" "Character_LeftUpLeg.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftLegSx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.scaleX" 
		"SER_116_kRN.placeHolderList[2108]" "SER_116_kRN.placeHolderList[2109]" "Character_LeftLeg.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftLegSy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.scaleY" 
		"SER_116_kRN.placeHolderList[2110]" "SER_116_kRN.placeHolderList[2111]" "Character_LeftLeg.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftLegSz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.scaleZ" 
		"SER_116_kRN.placeHolderList[2112]" "SER_116_kRN.placeHolderList[2113]" "Character_LeftLeg.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftLegTx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.translateX" 
		"SER_116_kRN.placeHolderList[2114]" "SER_116_kRN.placeHolderList[2115]" "Character_LeftLeg.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftLegTy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.translateY" 
		"SER_116_kRN.placeHolderList[2116]" "SER_116_kRN.placeHolderList[2117]" "Character_LeftLeg.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftLegTz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.translateZ" 
		"SER_116_kRN.placeHolderList[2118]" "SER_116_kRN.placeHolderList[2119]" "Character_LeftLeg.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftLegRx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.rotateX" 
		"SER_116_kRN.placeHolderList[2120]" "SER_116_kRN.placeHolderList[2121]" "Character_LeftLeg.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftLegRy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.rotateY" 
		"SER_116_kRN.placeHolderList[2122]" "SER_116_kRN.placeHolderList[2123]" "Character_LeftLeg.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftLegRz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg.rotateZ" 
		"SER_116_kRN.placeHolderList[2124]" "SER_116_kRN.placeHolderList[2125]" "Character_LeftLeg.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootSx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.scaleX" 
		"SER_116_kRN.placeHolderList[2126]" "SER_116_kRN.placeHolderList[2127]" "Character_LeftFoot.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootSy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.scaleY" 
		"SER_116_kRN.placeHolderList[2128]" "SER_116_kRN.placeHolderList[2129]" "Character_LeftFoot.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootSz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.scaleZ" 
		"SER_116_kRN.placeHolderList[2130]" "SER_116_kRN.placeHolderList[2131]" "Character_LeftFoot.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootTx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.translateX" 
		"SER_116_kRN.placeHolderList[2132]" "SER_116_kRN.placeHolderList[2133]" "Character_LeftFoot.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootTy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.translateY" 
		"SER_116_kRN.placeHolderList[2134]" "SER_116_kRN.placeHolderList[2135]" "Character_LeftFoot.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootTz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.translateZ" 
		"SER_116_kRN.placeHolderList[2136]" "SER_116_kRN.placeHolderList[2137]" "Character_LeftFoot.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootRx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.rotateX" 
		"SER_116_kRN.placeHolderList[2138]" "SER_116_kRN.placeHolderList[2139]" "Character_LeftFoot.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootRy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.rotateY" 
		"SER_116_kRN.placeHolderList[2140]" "SER_116_kRN.placeHolderList[2141]" "Character_LeftFoot.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootRz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot.rotateZ" 
		"SER_116_kRN.placeHolderList[2142]" "SER_116_kRN.placeHolderList[2143]" "Character_LeftFoot.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootIndex1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.translateX" 
		"SER_116_kRN.placeHolderList[2144]" "SER_116_kRN.placeHolderList[2145]" "Character_LeftToeBase.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootIndex1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.translateY" 
		"SER_116_kRN.placeHolderList[2146]" "SER_116_kRN.placeHolderList[2147]" "Character_LeftToeBase.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootIndex1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.translateZ" 
		"SER_116_kRN.placeHolderList[2148]" "SER_116_kRN.placeHolderList[2149]" "Character_LeftToeBase.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootIndex1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.rotateX" 
		"SER_116_kRN.placeHolderList[2150]" "SER_116_kRN.placeHolderList[2151]" "Character_LeftToeBase.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootIndex1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.rotateY" 
		"SER_116_kRN.placeHolderList[2152]" "SER_116_kRN.placeHolderList[2153]" "Character_LeftToeBase.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootIndex1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.rotateZ" 
		"SER_116_kRN.placeHolderList[2154]" "SER_116_kRN.placeHolderList[2155]" "Character_LeftToeBase.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootIndex1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.scaleX" 
		"SER_116_kRN.placeHolderList[2156]" "SER_116_kRN.placeHolderList[2157]" "Character_LeftToeBase.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootIndex1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.scaleY" 
		"SER_116_kRN.placeHolderList[2158]" "SER_116_kRN.placeHolderList[2159]" "Character_LeftToeBase.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.LeftFootIndex1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_LeftUpLeg|Character_LeftLeg|Character_LeftFoot|Character_LeftToeBase.scaleZ" 
		"SER_116_kRN.placeHolderList[2160]" "SER_116_kRN.placeHolderList[2161]" "Character_LeftToeBase.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightUpLegSx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.scaleX" 
		"SER_116_kRN.placeHolderList[2162]" "SER_116_kRN.placeHolderList[2163]" "Character_RightUpLeg.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightUpLegSy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.scaleY" 
		"SER_116_kRN.placeHolderList[2164]" "SER_116_kRN.placeHolderList[2165]" "Character_RightUpLeg.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightUpLegSz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.scaleZ" 
		"SER_116_kRN.placeHolderList[2166]" "SER_116_kRN.placeHolderList[2167]" "Character_RightUpLeg.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightUpLegTx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.translateX" 
		"SER_116_kRN.placeHolderList[2168]" "SER_116_kRN.placeHolderList[2169]" "Character_RightUpLeg.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightUpLegTy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.translateY" 
		"SER_116_kRN.placeHolderList[2170]" "SER_116_kRN.placeHolderList[2171]" "Character_RightUpLeg.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightUpLegTz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.translateZ" 
		"SER_116_kRN.placeHolderList[2172]" "SER_116_kRN.placeHolderList[2173]" "Character_RightUpLeg.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightUpLegRx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.rotateX" 
		"SER_116_kRN.placeHolderList[2174]" "SER_116_kRN.placeHolderList[2175]" "Character_RightUpLeg.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightUpLegRy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.rotateY" 
		"SER_116_kRN.placeHolderList[2176]" "SER_116_kRN.placeHolderList[2177]" "Character_RightUpLeg.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightUpLegRz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg.rotateZ" 
		"SER_116_kRN.placeHolderList[2178]" "SER_116_kRN.placeHolderList[2179]" "Character_RightUpLeg.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightLegSx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.scaleX" 
		"SER_116_kRN.placeHolderList[2180]" "SER_116_kRN.placeHolderList[2181]" "Character_RightLeg.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightLegSy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.scaleY" 
		"SER_116_kRN.placeHolderList[2182]" "SER_116_kRN.placeHolderList[2183]" "Character_RightLeg.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightLegSz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.scaleZ" 
		"SER_116_kRN.placeHolderList[2184]" "SER_116_kRN.placeHolderList[2185]" "Character_RightLeg.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightLegTx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.translateX" 
		"SER_116_kRN.placeHolderList[2186]" "SER_116_kRN.placeHolderList[2187]" "Character_RightLeg.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightLegTy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.translateY" 
		"SER_116_kRN.placeHolderList[2188]" "SER_116_kRN.placeHolderList[2189]" "Character_RightLeg.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightLegTz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.translateZ" 
		"SER_116_kRN.placeHolderList[2190]" "SER_116_kRN.placeHolderList[2191]" "Character_RightLeg.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightLegRx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.rotateX" 
		"SER_116_kRN.placeHolderList[2192]" "SER_116_kRN.placeHolderList[2193]" "Character_RightLeg.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightLegRy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.rotateY" 
		"SER_116_kRN.placeHolderList[2194]" "SER_116_kRN.placeHolderList[2195]" "Character_RightLeg.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightLegRz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg.rotateZ" 
		"SER_116_kRN.placeHolderList[2196]" "SER_116_kRN.placeHolderList[2197]" "Character_RightLeg.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootSx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.scaleX" 
		"SER_116_kRN.placeHolderList[2198]" "SER_116_kRN.placeHolderList[2199]" "Character_RightFoot.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootSy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.scaleY" 
		"SER_116_kRN.placeHolderList[2200]" "SER_116_kRN.placeHolderList[2201]" "Character_RightFoot.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootSz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.scaleZ" 
		"SER_116_kRN.placeHolderList[2202]" "SER_116_kRN.placeHolderList[2203]" "Character_RightFoot.sz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootTx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.translateX" 
		"SER_116_kRN.placeHolderList[2204]" "SER_116_kRN.placeHolderList[2205]" "Character_RightFoot.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootTy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.translateY" 
		"SER_116_kRN.placeHolderList[2206]" "SER_116_kRN.placeHolderList[2207]" "Character_RightFoot.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootTz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.translateZ" 
		"SER_116_kRN.placeHolderList[2208]" "SER_116_kRN.placeHolderList[2209]" "Character_RightFoot.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootRx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.rotateX" 
		"SER_116_kRN.placeHolderList[2210]" "SER_116_kRN.placeHolderList[2211]" "Character_RightFoot.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootRy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.rotateY" 
		"SER_116_kRN.placeHolderList[2212]" "SER_116_kRN.placeHolderList[2213]" "Character_RightFoot.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootRz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot.rotateZ" 
		"SER_116_kRN.placeHolderList[2214]" "SER_116_kRN.placeHolderList[2215]" "Character_RightFoot.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootIndex1Tx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.translateX" 
		"SER_116_kRN.placeHolderList[2216]" "SER_116_kRN.placeHolderList[2217]" "Character_RightToeBase.tx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootIndex1Ty" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.translateY" 
		"SER_116_kRN.placeHolderList[2218]" "SER_116_kRN.placeHolderList[2219]" "Character_RightToeBase.ty"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootIndex1Tz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.translateZ" 
		"SER_116_kRN.placeHolderList[2220]" "SER_116_kRN.placeHolderList[2221]" "Character_RightToeBase.tz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootIndex1Rx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.rotateX" 
		"SER_116_kRN.placeHolderList[2222]" "SER_116_kRN.placeHolderList[2223]" "Character_RightToeBase.rx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootIndex1Ry" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.rotateY" 
		"SER_116_kRN.placeHolderList[2224]" "SER_116_kRN.placeHolderList[2225]" "Character_RightToeBase.ry"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootIndex1Rz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.rotateZ" 
		"SER_116_kRN.placeHolderList[2226]" "SER_116_kRN.placeHolderList[2227]" "Character_RightToeBase.rz"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootIndex1Sx" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.scaleX" 
		"SER_116_kRN.placeHolderList[2228]" "SER_116_kRN.placeHolderList[2229]" "Character_RightToeBase.sx"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootIndex1Sy" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.scaleY" 
		"SER_116_kRN.placeHolderList[2230]" "SER_116_kRN.placeHolderList[2231]" "Character_RightToeBase.sy"
		
		5 0 "SER_116_kRN" "HIKState2SK1.RightFootIndex1Sz" "|Character_Holder|Character_Reference|Character_Hips|Character_RightUpLeg|Character_RightLeg|Character_RightFoot|Character_RightToeBase.scaleZ" 
		"SER_116_kRN.placeHolderList[2232]" "SER_116_kRN.placeHolderList[2233]" "Character_RightToeBase.sz"
		
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.visibility" "SER_116_kRN.placeHolderList[2234]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.translateX" "SER_116_kRN.placeHolderList[2235]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.translateY" "SER_116_kRN.placeHolderList[2236]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.translateZ" "SER_116_kRN.placeHolderList[2237]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.rotateX" "SER_116_kRN.placeHolderList[2238]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.rotateY" "SER_116_kRN.placeHolderList[2239]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.rotateZ" "SER_116_kRN.placeHolderList[2240]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.scaleX" "SER_116_kRN.placeHolderList[2241]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.scaleY" "SER_116_kRN.placeHolderList[2242]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y.scaleZ" "SER_116_kRN.placeHolderList[2243]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z.translateX" "SER_116_kRN.placeHolderList[2244]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z.translateY" "SER_116_kRN.placeHolderList[2245]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z.translateZ" "SER_116_kRN.placeHolderList[2246]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z.rotateX" "SER_116_kRN.placeHolderList[2247]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z.rotateY" "SER_116_kRN.placeHolderList[2248]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z.rotateZ" "SER_116_kRN.placeHolderList[2249]" 
		""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2250]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2251]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2252]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2253]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector.translateY" 
		"SER_116_kRN.placeHolderList[2254]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HipsEffector.translateX" 
		"SER_116_kRN.placeHolderList[2255]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2256]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2257]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2258]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2259]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector.translateY" 
		"SER_116_kRN.placeHolderList[2260]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftAnkleEffector.translateX" 
		"SER_116_kRN.placeHolderList[2261]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2262]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2263]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2264]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2265]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector.translateY" 
		"SER_116_kRN.placeHolderList[2266]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightAnkleEffector.translateX" 
		"SER_116_kRN.placeHolderList[2267]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2268]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2269]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2270]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2271]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector.translateY" 
		"SER_116_kRN.placeHolderList[2272]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftWristEffector.translateX" 
		"SER_116_kRN.placeHolderList[2273]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2274]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2275]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2276]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2277]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector.translateY" 
		"SER_116_kRN.placeHolderList[2278]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightWristEffector.translateX" 
		"SER_116_kRN.placeHolderList[2279]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2280]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2281]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2282]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2283]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector.translateY" 
		"SER_116_kRN.placeHolderList[2284]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftKneeEffector.translateX" 
		"SER_116_kRN.placeHolderList[2285]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2286]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2287]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2288]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2289]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector.translateY" 
		"SER_116_kRN.placeHolderList[2290]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightKneeEffector.translateX" 
		"SER_116_kRN.placeHolderList[2291]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2292]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2293]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2294]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2295]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector.translateY" 
		"SER_116_kRN.placeHolderList[2296]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftElbowEffector.translateX" 
		"SER_116_kRN.placeHolderList[2297]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2298]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2299]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2300]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2301]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector.translateY" 
		"SER_116_kRN.placeHolderList[2302]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightElbowEffector.translateX" 
		"SER_116_kRN.placeHolderList[2303]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2304]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2305]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2306]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2307]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector.translateY" 
		"SER_116_kRN.placeHolderList[2308]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestOriginEffector.translateX" 
		"SER_116_kRN.placeHolderList[2309]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2310]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2311]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2312]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2313]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector.translateY" 
		"SER_116_kRN.placeHolderList[2314]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_ChestEndEffector.translateX" 
		"SER_116_kRN.placeHolderList[2315]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2316]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2317]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2318]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2319]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector.translateY" 
		"SER_116_kRN.placeHolderList[2320]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftShoulderEffector.translateX" 
		"SER_116_kRN.placeHolderList[2321]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2322]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2323]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2324]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2325]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector.translateY" 
		"SER_116_kRN.placeHolderList[2326]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightShoulderEffector.translateX" 
		"SER_116_kRN.placeHolderList[2327]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2328]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2329]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2330]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2331]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector.translateY" 
		"SER_116_kRN.placeHolderList[2332]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_HeadEffector.translateX" 
		"SER_116_kRN.placeHolderList[2333]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2334]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2335]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2336]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2337]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector.translateY" 
		"SER_116_kRN.placeHolderList[2338]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHipEffector.translateX" 
		"SER_116_kRN.placeHolderList[2339]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2340]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2341]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2342]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2343]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector.translateY" 
		"SER_116_kRN.placeHolderList[2344]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHipEffector.translateX" 
		"SER_116_kRN.placeHolderList[2345]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2346]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2347]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2348]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2349]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector.translateY" 
		"SER_116_kRN.placeHolderList[2350]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandThumbEffector.translateX" 
		"SER_116_kRN.placeHolderList[2351]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2352]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2353]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2354]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2355]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector.translateY" 
		"SER_116_kRN.placeHolderList[2356]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandIndexEffector.translateX" 
		"SER_116_kRN.placeHolderList[2357]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2358]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2359]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2360]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2361]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector.translateY" 
		"SER_116_kRN.placeHolderList[2362]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandMiddleEffector.translateX" 
		"SER_116_kRN.placeHolderList[2363]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2364]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2365]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2366]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2367]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector.translateY" 
		"SER_116_kRN.placeHolderList[2368]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandRingEffector.translateX" 
		"SER_116_kRN.placeHolderList[2369]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2370]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2371]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2372]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2373]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector.translateY" 
		"SER_116_kRN.placeHolderList[2374]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftHandPinkyEffector.translateX" 
		"SER_116_kRN.placeHolderList[2375]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2376]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2377]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2378]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2379]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector.translateY" 
		"SER_116_kRN.placeHolderList[2380]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandThumbEffector.translateX" 
		"SER_116_kRN.placeHolderList[2381]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2382]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2383]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2384]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2385]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector.translateY" 
		"SER_116_kRN.placeHolderList[2386]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandIndexEffector.translateX" 
		"SER_116_kRN.placeHolderList[2387]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2388]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2389]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2390]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2391]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector.translateY" 
		"SER_116_kRN.placeHolderList[2392]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandMiddleEffector.translateX" 
		"SER_116_kRN.placeHolderList[2393]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2394]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2395]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2396]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2397]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector.translateY" 
		"SER_116_kRN.placeHolderList[2398]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandRingEffector.translateX" 
		"SER_116_kRN.placeHolderList[2399]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2400]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2401]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2402]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2403]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector.translateY" 
		"SER_116_kRN.placeHolderList[2404]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightHandPinkyEffector.translateX" 
		"SER_116_kRN.placeHolderList[2405]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2406]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2407]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2408]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2409]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector.translateY" 
		"SER_116_kRN.placeHolderList[2410]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_LeftFootIndexEffector.translateX" 
		"SER_116_kRN.placeHolderList[2411]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector.rotateZ" 
		"SER_116_kRN.placeHolderList[2412]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector.rotateY" 
		"SER_116_kRN.placeHolderList[2413]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector.rotateX" 
		"SER_116_kRN.placeHolderList[2414]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector.translateZ" 
		"SER_116_kRN.placeHolderList[2415]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector.translateY" 
		"SER_116_kRN.placeHolderList[2416]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_RightFootIndexEffector.translateX" 
		"SER_116_kRN.placeHolderList[2417]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips.rotateZ" 
		"SER_116_kRN.placeHolderList[2418]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips.rotateY" 
		"SER_116_kRN.placeHolderList[2419]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips.rotateX" 
		"SER_116_kRN.placeHolderList[2420]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips.translateZ" 
		"SER_116_kRN.placeHolderList[2421]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips.translateY" 
		"SER_116_kRN.placeHolderList[2422]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips.translateX" 
		"SER_116_kRN.placeHolderList[2423]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg.rotateZ" 
		"SER_116_kRN.placeHolderList[2424]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg.rotateY" 
		"SER_116_kRN.placeHolderList[2425]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg.rotateX" 
		"SER_116_kRN.placeHolderList[2426]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg.rotateZ" 
		"SER_116_kRN.placeHolderList[2427]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg.rotateY" 
		"SER_116_kRN.placeHolderList[2428]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg.rotateX" 
		"SER_116_kRN.placeHolderList[2429]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot.rotateZ" 
		"SER_116_kRN.placeHolderList[2430]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot.rotateY" 
		"SER_116_kRN.placeHolderList[2431]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot.rotateX" 
		"SER_116_kRN.placeHolderList[2432]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot|Character1_Ctrl_LeftFootIndex1.rotateZ" 
		"SER_116_kRN.placeHolderList[2433]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot|Character1_Ctrl_LeftFootIndex1.rotateY" 
		"SER_116_kRN.placeHolderList[2434]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_LeftUpLeg|Character1_Ctrl_LeftLeg|Character1_Ctrl_LeftFoot|Character1_Ctrl_LeftFootIndex1.rotateX" 
		"SER_116_kRN.placeHolderList[2435]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg.rotateZ" 
		"SER_116_kRN.placeHolderList[2436]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg.rotateY" 
		"SER_116_kRN.placeHolderList[2437]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg.rotateX" 
		"SER_116_kRN.placeHolderList[2438]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg.rotateZ" 
		"SER_116_kRN.placeHolderList[2439]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg.rotateY" 
		"SER_116_kRN.placeHolderList[2440]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg.rotateX" 
		"SER_116_kRN.placeHolderList[2441]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot.rotateZ" 
		"SER_116_kRN.placeHolderList[2442]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot.rotateY" 
		"SER_116_kRN.placeHolderList[2443]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot.rotateX" 
		"SER_116_kRN.placeHolderList[2444]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot|Character1_Ctrl_RightFootIndex1.rotateZ" 
		"SER_116_kRN.placeHolderList[2445]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot|Character1_Ctrl_RightFootIndex1.rotateY" 
		"SER_116_kRN.placeHolderList[2446]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_RightUpLeg|Character1_Ctrl_RightLeg|Character1_Ctrl_RightFoot|Character1_Ctrl_RightFootIndex1.rotateX" 
		"SER_116_kRN.placeHolderList[2447]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine.rotateZ" 
		"SER_116_kRN.placeHolderList[2448]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine.rotateY" 
		"SER_116_kRN.placeHolderList[2449]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine.rotateX" 
		"SER_116_kRN.placeHolderList[2450]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1.rotateZ" 
		"SER_116_kRN.placeHolderList[2451]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1.rotateY" 
		"SER_116_kRN.placeHolderList[2452]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1.rotateX" 
		"SER_116_kRN.placeHolderList[2453]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2.rotateZ" 
		"SER_116_kRN.placeHolderList[2454]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2.rotateY" 
		"SER_116_kRN.placeHolderList[2455]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2.rotateX" 
		"SER_116_kRN.placeHolderList[2456]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder.rotateZ" 
		"SER_116_kRN.placeHolderList[2457]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder.rotateY" 
		"SER_116_kRN.placeHolderList[2458]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder.rotateX" 
		"SER_116_kRN.placeHolderList[2459]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm.rotateZ" 
		"SER_116_kRN.placeHolderList[2460]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm.rotateY" 
		"SER_116_kRN.placeHolderList[2461]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm.rotateX" 
		"SER_116_kRN.placeHolderList[2462]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm.rotateZ" 
		"SER_116_kRN.placeHolderList[2463]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm.rotateY" 
		"SER_116_kRN.placeHolderList[2464]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm.rotateX" 
		"SER_116_kRN.placeHolderList[2465]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand.rotateZ" 
		"SER_116_kRN.placeHolderList[2466]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand.rotateY" 
		"SER_116_kRN.placeHolderList[2467]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand.rotateX" 
		"SER_116_kRN.placeHolderList[2468]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1.rotateZ" 
		"SER_116_kRN.placeHolderList[2469]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1.rotateY" 
		"SER_116_kRN.placeHolderList[2470]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1.rotateX" 
		"SER_116_kRN.placeHolderList[2471]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2.rotateZ" 
		"SER_116_kRN.placeHolderList[2472]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2.rotateY" 
		"SER_116_kRN.placeHolderList[2473]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2.rotateX" 
		"SER_116_kRN.placeHolderList[2474]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2|Character1_Ctrl_LeftHandThumb3.rotateZ" 
		"SER_116_kRN.placeHolderList[2475]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2|Character1_Ctrl_LeftHandThumb3.rotateY" 
		"SER_116_kRN.placeHolderList[2476]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandThumb1|Character1_Ctrl_LeftHandThumb2|Character1_Ctrl_LeftHandThumb3.rotateX" 
		"SER_116_kRN.placeHolderList[2477]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1.rotateZ" 
		"SER_116_kRN.placeHolderList[2478]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1.rotateY" 
		"SER_116_kRN.placeHolderList[2479]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1.rotateX" 
		"SER_116_kRN.placeHolderList[2480]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2.rotateZ" 
		"SER_116_kRN.placeHolderList[2481]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2.rotateY" 
		"SER_116_kRN.placeHolderList[2482]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2.rotateX" 
		"SER_116_kRN.placeHolderList[2483]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2|Character1_Ctrl_LeftHandIndex3.rotateZ" 
		"SER_116_kRN.placeHolderList[2484]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2|Character1_Ctrl_LeftHandIndex3.rotateY" 
		"SER_116_kRN.placeHolderList[2485]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandIndex1|Character1_Ctrl_LeftHandIndex2|Character1_Ctrl_LeftHandIndex3.rotateX" 
		"SER_116_kRN.placeHolderList[2486]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1.rotateZ" 
		"SER_116_kRN.placeHolderList[2487]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1.rotateY" 
		"SER_116_kRN.placeHolderList[2488]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1.rotateX" 
		"SER_116_kRN.placeHolderList[2489]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2.rotateZ" 
		"SER_116_kRN.placeHolderList[2490]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2.rotateY" 
		"SER_116_kRN.placeHolderList[2491]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2.rotateX" 
		"SER_116_kRN.placeHolderList[2492]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2|Character1_Ctrl_LeftHandMiddle3.rotateZ" 
		"SER_116_kRN.placeHolderList[2493]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2|Character1_Ctrl_LeftHandMiddle3.rotateY" 
		"SER_116_kRN.placeHolderList[2494]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandMiddle1|Character1_Ctrl_LeftHandMiddle2|Character1_Ctrl_LeftHandMiddle3.rotateX" 
		"SER_116_kRN.placeHolderList[2495]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1.rotateZ" 
		"SER_116_kRN.placeHolderList[2496]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1.rotateY" 
		"SER_116_kRN.placeHolderList[2497]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1.rotateX" 
		"SER_116_kRN.placeHolderList[2498]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2.rotateZ" 
		"SER_116_kRN.placeHolderList[2499]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2.rotateY" 
		"SER_116_kRN.placeHolderList[2500]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2.rotateX" 
		"SER_116_kRN.placeHolderList[2501]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2|Character1_Ctrl_LeftHandRing3.rotateZ" 
		"SER_116_kRN.placeHolderList[2502]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2|Character1_Ctrl_LeftHandRing3.rotateY" 
		"SER_116_kRN.placeHolderList[2503]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandRing1|Character1_Ctrl_LeftHandRing2|Character1_Ctrl_LeftHandRing3.rotateX" 
		"SER_116_kRN.placeHolderList[2504]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1.rotateZ" 
		"SER_116_kRN.placeHolderList[2505]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1.rotateY" 
		"SER_116_kRN.placeHolderList[2506]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1.rotateX" 
		"SER_116_kRN.placeHolderList[2507]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2.rotateZ" 
		"SER_116_kRN.placeHolderList[2508]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2.rotateY" 
		"SER_116_kRN.placeHolderList[2509]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2.rotateX" 
		"SER_116_kRN.placeHolderList[2510]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2|Character1_Ctrl_LeftHandPinky3.rotateZ" 
		"SER_116_kRN.placeHolderList[2511]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2|Character1_Ctrl_LeftHandPinky3.rotateY" 
		"SER_116_kRN.placeHolderList[2512]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_LeftShoulder|Character1_Ctrl_LeftArm|Character1_Ctrl_LeftForeArm|Character1_Ctrl_LeftHand|Character1_Ctrl_LeftHandPinky1|Character1_Ctrl_LeftHandPinky2|Character1_Ctrl_LeftHandPinky3.rotateX" 
		"SER_116_kRN.placeHolderList[2513]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder.rotateZ" 
		"SER_116_kRN.placeHolderList[2514]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder.rotateY" 
		"SER_116_kRN.placeHolderList[2515]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder.rotateX" 
		"SER_116_kRN.placeHolderList[2516]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm.rotateZ" 
		"SER_116_kRN.placeHolderList[2517]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm.rotateY" 
		"SER_116_kRN.placeHolderList[2518]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm.rotateX" 
		"SER_116_kRN.placeHolderList[2519]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm.rotateZ" 
		"SER_116_kRN.placeHolderList[2520]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm.rotateY" 
		"SER_116_kRN.placeHolderList[2521]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm.rotateX" 
		"SER_116_kRN.placeHolderList[2522]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand.rotateZ" 
		"SER_116_kRN.placeHolderList[2523]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand.rotateY" 
		"SER_116_kRN.placeHolderList[2524]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand.rotateX" 
		"SER_116_kRN.placeHolderList[2525]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1.rotateZ" 
		"SER_116_kRN.placeHolderList[2526]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1.rotateY" 
		"SER_116_kRN.placeHolderList[2527]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1.rotateX" 
		"SER_116_kRN.placeHolderList[2528]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2.rotateZ" 
		"SER_116_kRN.placeHolderList[2529]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2.rotateY" 
		"SER_116_kRN.placeHolderList[2530]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2.rotateX" 
		"SER_116_kRN.placeHolderList[2531]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2|Character1_Ctrl_RightHandThumb3.rotateZ" 
		"SER_116_kRN.placeHolderList[2532]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2|Character1_Ctrl_RightHandThumb3.rotateY" 
		"SER_116_kRN.placeHolderList[2533]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandThumb1|Character1_Ctrl_RightHandThumb2|Character1_Ctrl_RightHandThumb3.rotateX" 
		"SER_116_kRN.placeHolderList[2534]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1.rotateZ" 
		"SER_116_kRN.placeHolderList[2535]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1.rotateY" 
		"SER_116_kRN.placeHolderList[2536]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1.rotateX" 
		"SER_116_kRN.placeHolderList[2537]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2.rotateZ" 
		"SER_116_kRN.placeHolderList[2538]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2.rotateY" 
		"SER_116_kRN.placeHolderList[2539]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2.rotateX" 
		"SER_116_kRN.placeHolderList[2540]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2|Character1_Ctrl_RightHandIndex3.rotateZ" 
		"SER_116_kRN.placeHolderList[2541]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2|Character1_Ctrl_RightHandIndex3.rotateY" 
		"SER_116_kRN.placeHolderList[2542]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandIndex1|Character1_Ctrl_RightHandIndex2|Character1_Ctrl_RightHandIndex3.rotateX" 
		"SER_116_kRN.placeHolderList[2543]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1.rotateZ" 
		"SER_116_kRN.placeHolderList[2544]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1.rotateY" 
		"SER_116_kRN.placeHolderList[2545]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1.rotateX" 
		"SER_116_kRN.placeHolderList[2546]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2.rotateZ" 
		"SER_116_kRN.placeHolderList[2547]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2.rotateY" 
		"SER_116_kRN.placeHolderList[2548]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2.rotateX" 
		"SER_116_kRN.placeHolderList[2549]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2|Character1_Ctrl_RightHandMiddle3.rotateZ" 
		"SER_116_kRN.placeHolderList[2550]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2|Character1_Ctrl_RightHandMiddle3.rotateY" 
		"SER_116_kRN.placeHolderList[2551]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandMiddle1|Character1_Ctrl_RightHandMiddle2|Character1_Ctrl_RightHandMiddle3.rotateX" 
		"SER_116_kRN.placeHolderList[2552]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1.rotateZ" 
		"SER_116_kRN.placeHolderList[2553]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1.rotateY" 
		"SER_116_kRN.placeHolderList[2554]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1.rotateX" 
		"SER_116_kRN.placeHolderList[2555]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2.rotateZ" 
		"SER_116_kRN.placeHolderList[2556]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2.rotateY" 
		"SER_116_kRN.placeHolderList[2557]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2.rotateX" 
		"SER_116_kRN.placeHolderList[2558]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2|Character1_Ctrl_RightHandRing3.rotateZ" 
		"SER_116_kRN.placeHolderList[2559]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2|Character1_Ctrl_RightHandRing3.rotateY" 
		"SER_116_kRN.placeHolderList[2560]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandRing1|Character1_Ctrl_RightHandRing2|Character1_Ctrl_RightHandRing3.rotateX" 
		"SER_116_kRN.placeHolderList[2561]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1.rotateZ" 
		"SER_116_kRN.placeHolderList[2562]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1.rotateY" 
		"SER_116_kRN.placeHolderList[2563]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1.rotateX" 
		"SER_116_kRN.placeHolderList[2564]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2.rotateZ" 
		"SER_116_kRN.placeHolderList[2565]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2.rotateY" 
		"SER_116_kRN.placeHolderList[2566]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2.rotateX" 
		"SER_116_kRN.placeHolderList[2567]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2|Character1_Ctrl_RightHandPinky3.rotateZ" 
		"SER_116_kRN.placeHolderList[2568]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2|Character1_Ctrl_RightHandPinky3.rotateY" 
		"SER_116_kRN.placeHolderList[2569]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_RightShoulder|Character1_Ctrl_RightArm|Character1_Ctrl_RightForeArm|Character1_Ctrl_RightHand|Character1_Ctrl_RightHandPinky1|Character1_Ctrl_RightHandPinky2|Character1_Ctrl_RightHandPinky3.rotateX" 
		"SER_116_kRN.placeHolderList[2570]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck.rotateZ" 
		"SER_116_kRN.placeHolderList[2571]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck.rotateY" 
		"SER_116_kRN.placeHolderList[2572]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck.rotateX" 
		"SER_116_kRN.placeHolderList[2573]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck|Character1_Ctrl_Head.rotateZ" 
		"SER_116_kRN.placeHolderList[2574]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck|Character1_Ctrl_Head.rotateY" 
		"SER_116_kRN.placeHolderList[2575]" ""
		5 4 "SER_116_kRN" "|Character1_Ctrl_Reference|y|x|z|Character1_Ctrl_Hips|Character1_Ctrl_Spine|Character1_Ctrl_Spine1|Character1_Ctrl_Spine2|Character1_Ctrl_Neck|Character1_Ctrl_Head.rotateX" 
		"SER_116_kRN.placeHolderList[2576]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6AEEF7C3-408C-5425-2D77-6CB650169C57";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"camera1\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 777\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 776\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 777\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 0\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n"
		+ "            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 776\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n"
		+ "            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 1\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n"
		+ "            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 777\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -camera \\\"camera1\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 777\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 776\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 0\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 776\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 776\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 776\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 777\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 777\\n    -height 336\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "15DC056D-4A7B-E58D-70BA-228B75C9B3B6";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 250 ";
	setAttr ".st" 6;
createNode reference -n "SkyDomeRN";
	rename -uid "078D7DDC-4B37-A6FD-66F7-7DB7CC194E61";
	setAttr ".ed" -type "dataReferenceEdits" 
		"SkyDomeRN"
		"SkyDomeRN" 0
		"SkyDomeRN" 1
		2 "tnk" "visibility" " 1";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTU -n "Helper_Weapon1_visibility";
	rename -uid "0496520D-47E7-AF24-B82E-419837D4EEC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 6 1 35 1 39 1 43 1 47 1 51 1 72 1 75 1
		 77 1 83 1;
	setAttr -s 11 ".kit[2:10]"  2 9 18 18 18 2 1 9 
		9;
	setAttr -s 11 ".kot[1:10]"  2 18 5 18 18 2 18 1 
		5 5;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 0 0;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Helper_Weapon1_translateX";
	rename -uid "BAA24838-4EB9-E59D-629C-D7AA1BB175F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.8053469215158202 6 -7.8053469215158202
		 35 -7.8053469215158202 39 -7.8053469215158202 43 -7.8053469215158202 47 -7.8053469215158202
		 51 -7.8053469215158202 72 -7.8053469215158202 75 -7.8053469215158202 77 -7.8053469215158202
		 83 -7.8053469215158202;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Helper_Weapon1_translateY";
	rename -uid "D0062797-464B-E6AB-E295-54830A34EBE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.086657356286398368 6 0.086657356286398368
		 35 0.086657356286398368 39 0.086657356286398368 43 0.086657356286398368 47 0.086657356286398368
		 51 0.086657356286398368 72 0.086657356286398368 75 0.086657356286398368 77 0.086657356286398368
		 83 0.086657356286398368;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Helper_Weapon1_translateZ";
	rename -uid "ACA68EAC-4518-E0BB-5485-EF90894B9D74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.1829308040991862 6 -2.1829308040991862
		 35 -2.1829308040991862 39 -2.1829308040991862 43 -2.1829308040991862 47 -2.1829308040991862
		 51 -2.1829308040991862 72 -2.1829308040991862 75 -2.1829308040991862 77 -2.1829308040991862
		 83 -2.1829308040991862;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Helper_Weapon1_rotateX";
	rename -uid "E5982292-4756-720B-C24B-4AA6CF931934";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 35 0 39 0 43 0 47 0 51 0 72 0 75 0
		 77 0 83 0;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Helper_Weapon1_rotateY";
	rename -uid "EEFC45D5-4ACA-1F02-C9C3-EE99AD067357";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 35 0 39 0 43 0 47 0 51 0 72 0 75 0
		 77 0 83 0;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Helper_Weapon1_rotateZ";
	rename -uid "BF48FFBE-4A5F-AC50-0331-0C974289EA03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 35 0 39 0 43 0 47 0 51 0 72 0 75 0
		 77 0 83 0;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "Helper_Weapon1_scaleX";
	rename -uid "F823BD2F-45C4-6EE3-9128-7FAEBC2B182A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 6 1 35 1 39 1 43 1 47 1 51 1 72 1 75 1
		 77 1 83 1;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "Helper_Weapon1_scaleY";
	rename -uid "309542CF-47E7-F3FC-D611-0DB8FEF47E6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 6 1 35 1 39 1 43 1 47 1 51 1 72 1 75 1
		 77 1 83 1;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "Helper_Weapon1_scaleZ";
	rename -uid "20745C67-499A-7D06-FE01-5EADCC885924";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 6 1 35 1 39 1 43 1 47 1 51 1 72 1 75 1
		 77 1 83 1;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "Helper_Weapon1_lockInfluenceWeights";
	rename -uid "E2196833-4E5E-E6C8-CD1D-D2A3823728BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 35 0 39 0 43 0 47 0 51 0 72 0 75 0
		 77 0 83 0;
	setAttr -s 11 ".kit[2:10]"  2 9 18 18 18 2 1 9 
		9;
	setAttr -s 11 ".kot[1:10]"  2 18 5 18 18 2 18 1 
		5 5;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 0 0;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animLayer -n "BaseAnimation";
	rename -uid "07D4AF0A-49B0-FF19-9DD8-F987EF3C7B2C";
	setAttr ".ovrd" yes;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotate_tempLayer_inputAX";
	rename -uid "1901D9A2-441E-49BE-BF91-CE869E8DD063";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.9871375001046725 6 25.910907278174427
		 35 25.910907278174427 39 188.54779534302372 43 251.77321868266256 47 113.15786918046457
		 51 233.34981660285931 72 241.73441265446101 75 262.72231912213607 77 345.77820251375658
		 83 704.99999544092236;
	setAttr -s 11 ".kit[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kot[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 0.067492602744656072 0.17552786131179798 
		0.17552786131179798 1 0.84717244786294688 0.17552786131179798 0.034525291377921999 
		1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0.9977197745733779 0.98447446381473314 
		0.98447446381473314 0 0.53131802489836777 0.98447446381473314 0.99940382441497067 
		0;
	setAttr -s 11 ".kox[1:10]"  1 1 0.067492602744656072 0.17552786131179793 
		0.17552786131179793 1 0.84717244786294688 0.17552786131179793 0.034525291377921999 
		1;
	setAttr -s 11 ".koy[1:10]"  0 0 0.9977197745733779 0.98447446381473303 
		0.98447446381473303 0 0.53131802489836777 0.98447446381473303 0.99940382441497078 
		0;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotate_tempLayer_inputAY";
	rename -uid "C571F93E-413F-EEAA-D76B-EEB4F960D349";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.833278829956775 6 -5.6433737727554272
		 35 -5.6433737727554272 39 1.65962537503538 43 1.659611416044485 47 1.6595970718546775
		 51 -15.311560385781632 72 -15.311552266989681 75 -4.4582673873728664 77 -2.277063659969742
		 83 6.0864351577000164;
	setAttr -s 11 ".kit[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kot[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 0.97051916876878896 0.97051916876878896 
		1 0.9999999999998157 0.97051916876878896 0.82302272351125694 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0.2410239470516137 0.2410239470516137 
		0 6.0728421791267273e-07 0.2410239470516137 0.56800844763446345 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 0.97051916876878885 0.97051916876878885 
		1 0.99999999999981559 0.97051916876878885 0.82302272351125694 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0.24102394705161367 0.24102394705161367 
		0 6.0728421791267262e-07 0.24102394705161367 0.56800844763446345 0;
createNode animCurveTA -n "Character1_Ctrl_Hips_rotate_tempLayer_inputAZ";
	rename -uid "3D139A97-4D6B-A06F-E285-5D862CB4026A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 33.835400904571472 6 30.956796688089678
		 35 30.956796688089678 39 -22.957623671095483 43 -30.791650955725661 47 -30.791634734531137
		 51 -61.180870163623283 72 -61.180870482275296 75 -64.693345173088559 77 -34.549602058656276
		 83 -34.573550943202328;
	setAttr -s 11 ".kit[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kot[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 0.30913221170353972 0.98809802890479548 
		0.98809802890479548 0.90160965917449176 0.99999999999999967 0.98809802890479548 1 
		1;
	setAttr -s 11 ".kiy[1:10]"  0 0 -0.95101907219954207 -0.15382550267903575 
		-0.15382550267903575 -0.43255060106680776 -2.3835114834217353e-08 -0.15382550267903575 
		0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 0.30913221170353972 0.98809802890479548 
		0.98809802890479548 0.90160965917449187 0.99999999999999978 0.98809802890479548 1 
		1;
	setAttr -s 11 ".koy[1:10]"  0 0 -0.95101907219954207 -0.15382550267903575 
		-0.15382550267903575 -0.43255060106680782 -2.383511483421736e-08 -0.15382550267903575 
		0 0;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateX_tempLayer_inputA";
	rename -uid "57393FF2-4789-A963-3AD0-5F9A9EA92BDF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.8075227737426758 6 0.312119834323763
		 35 0.312119834323763 39 -0.030078902840614319 43 -0.030083715915679932 47 -0.030082523822784424
		 51 0.83815881997664832 72 0.89998924732208252 75 0.308563232421875 77 4.5768232345581055
		 83 27.814191818237305;
	setAttr -s 11 ".kit[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kot[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 0.99999999413618434 0.039287891480641934 
		0.039287891480641934 1 1 0.039287891480641934 0.0096945297706110198 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 -0.00010829418834127071 0.99922793274758159 
		0.99922793274758159 0 0 0.99922793274758159 0.99995300694208955 0;
	setAttr -s 11 ".kox[1:10]"  1 1 0.99999999413618434 0.039287891480641934 
		0.039287891480641934 1 1 0.039287891480641934 0.009694529770611018 1;
	setAttr -s 11 ".koy[1:10]"  0 0 -0.00010829418834127071 0.99922793274758159 
		0.99922793274758159 0 0 0.99922793274758159 0.99995300694208955 0;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateY_tempLayer_inputA";
	rename -uid "C539DEDB-4C69-C75A-F4AF-C7930B47579C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 128.22061157226563 6 128.38246395046062
		 35 128.38246395046062 39 250.88392639160156 43 236.06353759765625 47 240.05880737304688
		 51 127.14946448498233 72 234.81381225585938 75 237.90522766113281 77 240.23390197753906
		 83 122.41997528076172;
	setAttr -s 11 ".kit[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kot[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 0.040554814390386239 0.040554814390386239 
		0.66831731843922959 0.010781920709607888 0.040554814390386239 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 -0.99917731510966634 -0.99917731510966634 
		-0.74387630818180883 0.99994187340355534 -0.99917731510966634 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 0.040554814390386232 0.040554814390386232 
		0.66831731843922959 0.010781920709607888 0.040554814390386232 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 -0.99917731510966634 -0.99917731510966634 
		-0.74387630818180883 0.99994187340355534 -0.99917731510966634 0 0;
createNode animCurveTL -n "Character1_Ctrl_Hips_translateZ_tempLayer_inputA";
	rename -uid "59AF1F4C-42BD-EB17-0D30-4BA1656A9653";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.2710418701171875 6 1.6247978716800162
		 35 1.6247978716800162 39 162.30979919433594 43 157.48977661132813 47 180.83071899414063
		 51 -2.682258449840333 72 156.43174743652344 75 166.87759399414063 77 171.22543334960938
		 83 71.558921813964844;
	setAttr -s 11 ".kit[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kot[0:10]"  18 1 1 18 1 1 1 18 
		1 18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 0.12263900818752797 0.12263900818752797 
		0.70617890333548106 0.0047180454832813469 0.12263900818752797 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0.99245134574485794 0.99245134574485794 
		-0.70803344305470306 0.99998886996146996 0.99245134574485794 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 0.12263900818752797 0.12263900818752797 
		0.70617890333548095 0.0047180454832813469 0.12263900818752797 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0.99245134574485783 0.99245134574485783 
		-0.70803344305470306 0.99998886996146996 0.99245134574485783 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotate_tempLayer_inputAX";
	rename -uid "E54051CE-4984-CB9A-94DA-B38B2F3FBEF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 13.166226791011947 6 -3.8850543614143391
		 35 -6.0118743780022603 39 9.7675759936973439 43 -28.751895301084733 47 -28.751895301084733
		 51 65.585565096085205 72 51.7019455448524 75 10.532255028781714 76 -25.074707309933494
		 77 -33.268815758196602 83 -39.953625829189058;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 18 18 
		1 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 18 
		18 1 18;
	setAttr -s 12 ".kix[10:11]"  0.61487824775226974 1;
	setAttr -s 12 ".kiy[10:11]"  -0.78862205170861055 0;
	setAttr -s 12 ".kox[10:11]"  0.61487823171111233 1;
	setAttr -s 12 ".koy[10:11]"  -0.78862206421568981 0;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotate_tempLayer_inputAY";
	rename -uid "1166A09F-496D-7A7D-47F3-AF8734093C7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -32.223273321627275 6 -41.509172789763213
		 35 -31.33643140822684 39 -6.9615197403969358 43 -23.506561597932269 47 -23.506561597932269
		 51 -10.529364290270943 72 -18.082505182170266 75 -47.602545986730405 76 -60.148424897216159
		 77 -60.280721558376086 83 -60.280721558376086;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.97908238699597849 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 -0.20346419703293464 0 0;
	setAttr -s 12 ".kox[8:11]"  1 0.9790823869959786 1 1;
	setAttr -s 12 ".koy[8:11]"  0 -0.20346419703293467 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftUpLeg_rotate_tempLayer_inputAZ";
	rename -uid "D365BDD3-4687-76F1-8114-E385E541991D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -96.465935793860126 6 -27.675144019800168
		 35 -3.9380385023839004 39 -39.458499234821417 43 -49.302231810523296 47 -62.301566864934586
		 51 -106.9631071447472 72 -83.649947782489491 75 -15.318993709620745 76 18.628094292805294
		 77 25.929524484842666 83 33.130184844009605;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 18 18 
		1 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 18 
		18 1 18;
	setAttr -s 12 ".kix[10:11]"  0.37231293107919627 1;
	setAttr -s 12 ".kiy[10:11]"  0.92810725746069755 0;
	setAttr -s 12 ".kox[10:11]"  0.37231295394075092 1;
	setAttr -s 12 ".koy[10:11]"  0.92810724828971802 0;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotate_tempLayer_inputAX";
	rename -uid "13AA83F3-4E08-44C2-20FC-D6B4648F2B1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -15.954353556709188 6 -0.00014281908071407413
		 35 -0.00026647746159791 39 0.011677857201786997 43 0.010883063186444024 47 0.010883063186444024
		 51 0.3391208352656282 72 0.36912549049977134 75 0.010635126449796256 76 0.010140081061980902
		 77 0.0090213531586955699 83 0.00023623004599996808;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.99999991075328354 0.99999972560310824 
		1;
	setAttr -s 12 ".kiy[8:11]"  0 -0.00042248482195139019 -0.000740806120392988 
		0;
	setAttr -s 12 ".kox[8:11]"  1 0.99999991075328354 0.99999972560310835 
		1;
	setAttr -s 12 ".koy[8:11]"  0 -0.00042248482195139019 -0.00074080612039298811 
		0;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotate_tempLayer_inputAY";
	rename -uid "FAD01562-41D6-2378-1CF1-7EA8AADD0E70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 7.4142344881927822e-05 6 -6.4411569765568727e-05
		 35 -0.00019843034784083844 39 0.0041242512380721573 43 0.0040790721842196981 47 0.0040790721842196981
		 51 0.056270471652223118 72 0.1341126553004276 75 0.0031022937410229018 76 0.004093088000725463
		 77 0.0037297734339166383 83 0.00059480088276641437;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 0.99999996576407646 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 -0.0002616712555635368 0;
	setAttr -s 12 ".kox[8:11]"  1 1 0.99999996576407635 1;
	setAttr -s 12 ".koy[8:11]"  0 0 -0.00026167125556353675 0;
createNode animCurveTA -n "Character1_Ctrl_LeftLeg_rotate_tempLayer_inputAZ";
	rename -uid "BC8E28DF-4D4B-3C71-8C00-1381FE0ABBF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 130.51332410322831 6 50.10988193028718
		 35 71.115568128554628 39 85.12383537233579 43 85.127246357273009 47 85.127246357273009
		 51 85.567526080817402 72 20.939155483874703 75 0.0013967360960292054 76 12.568259071217589
		 77 56.10052228068578 83 100.87692274163022;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		1 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 1 18;
	setAttr -s 12 ".kix[8:11]"  1 0.067931451911473331 0.10095973336496961 
		1;
	setAttr -s 12 ".kiy[8:11]"  0 0.99768999084946186 0.99489051268914741 
		0;
	setAttr -s 12 ".kox[8:11]"  1 0.067931451911473331 0.10095973949686604 
		1;
	setAttr -s 12 ".koy[8:11]"  0 0.99768999084946186 0.99489051206689316 
		0;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotate_tempLayer_inputAX";
	rename -uid "FDCE8EF9-4AEC-EBE5-7592-AF99498ED815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -8.6605746546237496e-05 6 -9.5710697023980651e-05
		 35 -6.8508272753631315e-05 39 -0.10339325549243139 43 -0.10336207211391732 47 -0.10336207211391732
		 51 -0.10348466151937395 72 -0.1035010319213903 75 -0.10342753819212303 76 -0.098645279237541031
		 77 -0.087292842783505784 83 0.00015849744421135654;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.99999107880590299 0.99997269133502953 
		1;
	setAttr -s 12 ".kiy[8:11]"  0 0.0042240156967016454 0.0073903033887482003 
		0;
	setAttr -s 12 ".kox[8:11]"  1 0.99999107880590321 0.99997269133502953 
		1;
	setAttr -s 12 ".koy[8:11]"  0 0.0042240156967016463 0.0073903033887482011 
		0;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotate_tempLayer_inputAY";
	rename -uid "84A86635-449F-4AAA-AACB-E2B0EF1BA92E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -5.8711382121827542e-05 6 6.1127096453042924e-06
		 35 4.0114833576045628e-05 39 4.9775422421080426 43 4.9775648834467523 47 4.9775648834467523
		 51 4.9773426877336995 72 4.9774194351767163 75 4.9774302256206981 76 4.7441643270107265
		 77 4.1997445004958491 83 -6.4020143291075986e-05;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.97989687006262416 0.94241920884932917 
		1;
	setAttr -s 12 ".kiy[8:11]"  0 -0.19950469679050808 -0.33443390197736306 
		0;
	setAttr -s 12 ".kox[8:11]"  1 0.97989687006262427 0.94241920884932917 
		1;
	setAttr -s 12 ".koy[8:11]"  0 -0.19950469679050808 -0.33443390197736306 
		0;
createNode animCurveTA -n "Character1_Ctrl_LeftFoot_rotate_tempLayer_inputAZ";
	rename -uid "D3F7A007-47A0-CC9A-109E-C8BC95A4215E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 35.580366751714628 6 35.580538824933356
		 35 35.58053945884653 39 34.254564715495327 43 34.254664657721229 47 34.254664657721229
		 51 5.6941299901504081 72 11.902294137331705 75 11.903204270292946 76 14.25822470269167
		 77 19.753367868110708 83 30.03742372016541;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		1 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 1 18;
	setAttr -s 12 ".kix[8:11]"  1 0.43753241898365225 0.36758432066271074 
		1;
	setAttr -s 12 ".kiy[8:11]"  0 0.89920263697250891 0.92999019736926991 
		0;
	setAttr -s 12 ".kox[8:11]"  1 0.4375324189836523 0.36758433894594505 
		1;
	setAttr -s 12 ".koy[8:11]"  0 0.89920263697250891 0.92999019014270934 
		0;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotate_tempLayer_inputAX";
	rename -uid "F3CE34BF-4762-72CF-074E-32ADA22C2248";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.01317574058832 6 42.664648282595614
		 35 42.664648282595614 39 21.379661205413313 43 29.271051931652785 47 29.271083416163162
		 51 -7.1417028613962659 72 -7.1417028613962659 75 -34.292385836919671 77 -0.53683760005778181
		 83 47.893947346624671;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.18277372175366616 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.98315500641369546 0;
	setAttr -s 11 ".kox[8:10]"  1 0.1827737217536661 1;
	setAttr -s 11 ".koy[8:10]"  0 0.98315500641369535 0;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotate_tempLayer_inputAY";
	rename -uid "71B15996-4858-35E4-2885-4594FF870642";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.059614324010781 6 -5.4900016578217778
		 35 -5.4900016578217778 39 42.914467156800477 43 32.039123260550419 47 32.039150435184567
		 51 34.994167959632819 72 34.994167959632819 75 27.791116335961497 77 18.008620031065721
		 83 18.643940562278281;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightUpLeg_rotate_tempLayer_inputAZ";
	rename -uid "D37CA5F4-4418-DEFA-5DC5-E5905725E0B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 22.830403478817058 6 27.62715847239317
		 35 16.419931220091655 39 -14.651565182656453 43 -4.4401453867614675 47 -14.517198454512648
		 51 -24.6316273634772 72 -24.6316273634772 75 -23.317211551829171 77 6.474437459406956
		 83 35.325940120167559;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotate_tempLayer_inputAX";
	rename -uid "456AF82E-4D8C-9BDB-8AA7-1FB11F7E2544";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.2497668879364317e-05 6 -0.0031338068034290783
		 35 -0.0031338068034290783 39 0.0002898199515255764 43 -8.8434799065934968e-07 47 -2.9148253477249477e-05
		 51 0.0002744523075564179 72 0.0002744523075564179 75 -0.0018937649048995327 77 -2.1501776894639333
		 83 -13.752124095191625;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.7433124521622142 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.66894439115713944 0;
	setAttr -s 11 ".kox[8:10]"  1 0.74331245216221409 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.66894439115713933 0;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotate_tempLayer_inputAY";
	rename -uid "4BA535E4-446C-A7C8-3503-22BB7217CFAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00015761090280468399 6 -0.0024922599657051206
		 35 -0.0024922599657051206 39 8.2254072859332231e-05 43 0.00011646918512826801 47 8.8426735413329555e-05
		 51 -0.0010145206199391728 72 -0.0010145206199391728 75 -0.00011889342444311501 77 0.37465435987522167
		 83 2.3980605227005563;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.9879047407251641 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.1550619980934923 0;
	setAttr -s 11 ".kox[8:10]"  1 0.98790474072516399 1;
	setAttr -s 11 ".koy[8:10]"  0 0.15506199809349228 0;
createNode animCurveTA -n "Character1_Ctrl_RightLeg_rotate_tempLayer_inputAZ";
	rename -uid "9915BC2F-4775-BE48-9723-00BD69BB65B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 22.070010205280948 6 48.389504138773347
		 35 60.130951304148439 39 86.128453124933685 43 58.842702195749695 47 58.249486946474555
		 51 69.604279625153623 72 69.604279625153623 75 51.382184970486847 77 31.406351808233794
		 83 15.142123603281961;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotate_tempLayer_inputAX";
	rename -uid "1C21EB55-4AEB-2B0D-15AA-4D80EBB3CA80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 9.2896041088181685e-05 35 9.2896041088181685e-05
		 39 0 43 0 47 0 51 0 72 0 75 0 77 0 83 5.2342401216841571e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotate_tempLayer_inputAY";
	rename -uid "043B593F-487A-5D61-2D51-08A3C991F62B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 5.0833647293927462e-05 35 5.0833647293927462e-05
		 39 0 43 0 47 0 51 0 72 0 75 0 77 0 83 -2.4817311658723876e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightFoot_rotate_tempLayer_inputAZ";
	rename -uid "2130B94C-48F2-38F6-8C7B-4E8C30E81387";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 40.430931760901572 6 40.430782275921636
		 35 40.430782275921636 39 39.440385201794307 43 39.440460489887329 47 39.44047167973725
		 51 39.440567079050417 72 39.440567079050417 75 39.440587370908041 77 38.369133805041074
		 83 32.583430453159664;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.91233079004446749 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.40945394067811552 0;
	setAttr -s 11 ".kox[8:10]"  1 0.91233079004446749 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.40945394067811558 0;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotate_tempLayer_inputAX";
	rename -uid "3CCAA856-407C-269B-44CA-9C9F79281E2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.4805226840629925e-05 6 1.9588246549414615e-05
		 35 1.9588246549414615e-05 39 6.8530462461837823e-05 43 0.00015100027187016162 47 3.53519064717328e-05
		 51 4.1859805708496598 72 4.752361047516872e-05 75 4.7523610475170204e-05 77 -5.4925142557359736e-05
		 83 -0.00044825496393300788;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999947354323 1;
	setAttr -s 11 ".kiy[8:10]"  0 -3.2448631798916222e-05 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999947354312 1;
	setAttr -s 11 ".koy[8:10]"  0 -3.2448631798916215e-05 0;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotate_tempLayer_inputAY";
	rename -uid "65B6C606-4F7D-ED56-1459-688DD0449503";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8000304903917652 6 -1.8003878843176389
		 35 -1.8003878843176389 39 -1.5729129326396658 43 -1.5729165184961413 47 -1.5729077556562632
		 51 -1.5729499681591841 72 -1.5730723653302765 75 -1.5731568090511507 77 -1.3271988059564568
		 83 4.2262760239332434e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99474081996084096 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.1024241236410339 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99474081996084085 1;
	setAttr -s 11 ".koy[8:10]"  0 0.10242412364103391 0;
createNode animCurveTA -n "Character1_Ctrl_Spine_rotate_tempLayer_inputAZ";
	rename -uid "418BF33C-4444-BFF2-2AC0-B684B9D65291";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.5199807141318189 6 3.7441175070839909
		 35 3.7441175070839909 39 -2.2016576652233004 43 -2.2020813126476004 47 -2.20195846567271
		 51 -2.2018682008465587 72 -2.2018593994365787 75 -0.93187113024172652 77 -1.8578592136126901
		 83 -1.416339014593265e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotate_tempLayer_inputAX";
	rename -uid "7995F414-4E49-8B90-13E6-F9ADDABCA1CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.1534241997514556 6 -28.160787597354744
		 35 -35.115730974429674 39 -7.658346295286119 43 1.1373580367332492 47 -7.4857117037757046
		 51 -5.0620039014063174 72 -5.0620042745931269 75 -28.895817181460728 77 15.291515695814535
		 83 -10.973871335428159;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotate_tempLayer_inputAY";
	rename -uid "3BF2E797-4605-1DA0-DFA1-AF828AC0B5B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 32.877992409475496 6 -31.306882740623625
		 35 -33.178676989572445 39 1.4519274297340279 43 9.0924674052841592 47 9.6142156350592778
		 51 4.8178625241002795 72 4.8179283593161903 75 45.236232385997326 77 20.431834306773982
		 83 47.011091144489043;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_LeftArm_rotate_tempLayer_inputAZ";
	rename -uid "E3FB2675-4903-086B-CEE8-23A360F3428D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 33.802840000674337 6 -35.992880146369849
		 35 -40.066846350677082 39 -14.673692218971663 43 23.840535882973228 47 16.635456662294576
		 51 -3.3826115487073847 72 14.25733981344886 75 32.124009622074567 77 49.883474377516009
		 83 34.861424516805073;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotate_tempLayer_inputAX";
	rename -uid "75B967EF-434D-C4A3-4A14-E9914E235C53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00027106634320554405 6 0.00036968522733493313
		 35 0.00030065706991684512 39 -0.0003924491382274628 43 0.0012291094379245065 47 0.0011668850646605769
		 51 -0.028524511927846889 72 -0.028455121705118366 75 2.9859245037408106e-05 77 0.0020517599248957028
		 83 0.0045174091682545258;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999995686738063 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.00029370944298563219 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999995686738052 1;
	setAttr -s 11 ".koy[8:10]"  0 0.00029370944298563219 0;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotate_tempLayer_inputAY";
	rename -uid "39806DF1-42F9-F3E4-6DC5-6584F735813A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.0020922148263671707 6 0.001735122797135339
		 35 0.0017310404346713804 39 0.00053786903809666239 43 0.0027224749905751505 47 0.0027001162985486283
		 51 0.0088227915958865675 72 0.0088476921621295987 75 0.0019388962985843429 77 0.0042202116836292476
		 83 0.0091106909543809955;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999988983518839 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.00046939281086661762 0;
	setAttr -s 11 ".kox[8:10]"  1 0.9999998898351885 1;
	setAttr -s 11 ".koy[8:10]"  0 0.00046939281086661767 0;
createNode animCurveTA -n "Character1_Ctrl_LeftForeArm_rotate_tempLayer_inputAZ";
	rename -uid "B7145A1A-4002-DF2B-4674-9EA2A03F3B0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.066893925018938 6 100.64467448623827
		 35 100.64474239282947 39 44.56299644859795 43 93.088406338863138 47 105.76659367543645
		 51 96.626863476158633 72 55.58685762786267 75 49.608464556839678 77 17.955959791468182
		 83 80.01033902907848;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotate_tempLayer_inputAX";
	rename -uid "5FB53877-4DE7-287F-8CF2-3E8A0691BC59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -18.359954701434599 6 -57.959993027978875
		 35 -11.811210217565325 39 -16.042954526922625 43 -16.04298321091272 47 -16.04288864955733
		 51 -16.042989412174585 72 -16.042984665365974 75 -16.042907697543196 77 -13.536206113735483
		 83 -0.00014799771211616386;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.68965649256557993 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.72413667374477175 0;
	setAttr -s 11 ".kox[8:10]"  1 0.68965649256557993 1;
	setAttr -s 11 ".koy[8:10]"  0 0.72413667374477175 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotate_tempLayer_inputAY";
	rename -uid "C78BDD23-417F-D14C-F98F-4C84D3F34B39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.1505145297342346e-05 6 30.763662478633172
		 35 25.098909062908273 39 7.4310490828926004e-06 43 -2.3190868362106498e-05 47 -1.1798892204716469e-05
		 51 2.9906317655540379e-05 72 3.4997175243274567e-05 75 -3.3619654716236844e-05 77 2.3143554667126187
		 83 14.811597526129244;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.7180001330196718 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.69604296489780981 0;
	setAttr -s 11 ".kox[8:10]"  1 0.7180001330196718 1;
	setAttr -s 11 ".koy[8:10]"  0 0.6960429648978097 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHand_rotate_tempLayer_inputAZ";
	rename -uid "60902D67-41FC-CA60-E678-7683405E7E7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.200398857672129 6 -22.286946885319583
		 35 -12.893976274241401 39 9.7869186230000054 43 9.7868422701504763 47 9.7869044228596174
		 51 9.7869920638598309 72 9.7869011582337304 75 9.7869286369192512 77 10.170040178153952
		 83 12.239670649549334;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.98735861641025857 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.15850224793491113 0;
	setAttr -s 11 ".kox[8:10]"  1 0.98735861641025835 1;
	setAttr -s 11 ".koy[8:10]"  0 0.15850224793491108 0;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotate_tempLayer_inputAX";
	rename -uid "7A29BF36-4EAA-2FE6-5C59-9F89B784D928";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 24.435473075466181 6 -7.7167585948454773
		 35 32.334240439935861 39 -7.0682651093107181 43 -4.4580176926975907 47 -4.4579991896354967
		 51 -4.4580408777798946 72 -4.4580408777798946 75 -4.4579991896354967 77 14.598866354360446
		 83 0.0026375146899117268;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotate_tempLayer_inputAY";
	rename -uid "785A2BD7-4C01-E1FD-41A5-29A705AD2843";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 30.307822408794575 6 55.488610548488467
		 35 36.898882349308451 39 15.27063860598904 43 32.55086112006699 47 32.550864000565753
		 51 22.597207393663826 72 22.597207393663826 75 32.550864000565753 77 31.362355677005091
		 83 14.200481604053886;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.73101190361530766 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.68236470950124917 0;
	setAttr -s 11 ".kox[8:10]"  1 0.73101190361530777 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.68236470950124917 0;
createNode animCurveTA -n "Character1_Ctrl_RightArm_rotate_tempLayer_inputAZ";
	rename -uid "500E2457-4683-C0A4-0F29-8483FA934EDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 55.063267996732954 6 34.356660791552706
		 35 103.3586521215632 39 -4.7501321464697632 43 42.168633675704712 47 42.168632691716276
		 51 42.16854543287954 72 42.16854543287954 75 42.168632691716276 77 49.444167900203468
		 83 40.349254491135426;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotate_tempLayer_inputAX";
	rename -uid "A76906EA-4789-4ED5-C0A1-66A711BFFAB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00011161915044289048 6 -5.4890726583050729e-05
		 35 0.00058904815030467095 39 -0.00030508210473211597 43 2.3212123176583192e-05 47 -1.3089888099032004e-05
		 51 6.8032024023339728e-06 72 6.8032024023339728e-06 75 -1.3089888099032004e-05 77 -3.6319143230067681e-05
		 83 -0.00010974133430938263;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.999999999979992 1;
	setAttr -s 11 ".kiy[8:10]"  0 -6.3258223618164895e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.999999999979992 1;
	setAttr -s 11 ".koy[8:10]"  0 -6.3258223618164887e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotate_tempLayer_inputAY";
	rename -uid "CA9AADD2-46DC-2D94-83D5-66BF783CA65F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.2952637073917336e-05 6 -0.00019451065802299743
		 35 6.2123509474481633e-05 39 -0.00037550598410695445 43 -8.316172436381177e-05 47 -2.2711016699139362e-05
		 51 1.2222484613307998e-05 72 1.2222484613307998e-05 75 -2.2711016699139362e-05 77 -2.2859085597640117e-06
		 83 -0.00048963028340456014;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightForeArm_rotate_tempLayer_inputAZ";
	rename -uid "B1B6CF04-44B6-9C7A-FC66-3A9EA5E598DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 30.754096458126646 6 33.399811418736981
		 35 69.087651696540149 39 60.37144371769012 43 46.908962598996226 47 91.514488342878082
		 51 91.514409984767596 72 91.514409984767596 75 91.514488342878082 77 37.685578774692544
		 83 23.49031928067766;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.25984141257774762 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.96565130368554919 0;
	setAttr -s 11 ".kox[8:10]"  1 0.25984141257774762 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.96565130368554919 0;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotate_tempLayer_inputAX";
	rename -uid "A4929652-4DB6-79FB-F7D1-19824A69F04B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00011754067926280478 6 111.26426359345216
		 35 111.26416543094527 39 0.00011242712200447866 43 0.00015614689939467548 47 0.00013330557644294694
		 51 0.0001510225509715272 72 0.0001510225509715272 75 0.00013330557644294694 77 4.3566470113564962e-06
		 83 2.3022477223542605e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotate_tempLayer_inputAY";
	rename -uid "FCDB0E03-473A-97B3-4167-02BC2594D5B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8513598998578088e-05 6 1.3336513423364732e-05
		 35 2.4260785725754494e-05 39 3.5746718629754445e-05 43 -3.413799082021023e-06 47 2.250824039095702e-05
		 51 2.9005396533639712e-05 72 2.9005396533639712e-05 75 2.250824039095702e-05 77 -2.2499698040391758
		 83 -14.400017590820889;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.72772623011165238 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.68586772340407032 0;
	setAttr -s 11 ".kox[8:10]"  1 0.72772623011165238 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.68586772340407032 0;
createNode animCurveTA -n "Character1_Ctrl_RightHand_rotate_tempLayer_inputAZ";
	rename -uid "A95C0537-497F-EA31-C363-9F87F8279D45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.2799593590998999 6 -18.964258145983308
		 35 -7.085656983469752 39 20.177435458197756 43 20.177458241848605 47 20.177460728833982
		 51 20.17747535700946 72 20.17747535700946 75 20.177460728833982 77 18.580001887475358
		 83 9.9536753797548645;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.83109835210015881 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.5561254616868393 0;
	setAttr -s 11 ".kox[8:10]"  1 0.83109835210015892 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.55612546168683941 0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotate_tempLayer_inputAX";
	rename -uid "042477C0-4032-C5C4-44A6-48B8680D3BB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.9103220985834804e-15 6 -8.2480700314165034
		 35 -15.112351325970263 39 -1.3560140358955688e-06 43 -1.3560140358955688e-06 47 -1.3560140358955688e-06
		 51 34.847332952467461 72 56.109454411124048 75 39.239996100890501 77 42.205948860661437
		 83 20.285604830238906;
	setAttr -s 11 ".kit[1:10]"  1 1 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 1 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 0.99999999999997691 0.99999999999997691 
		0.64806946679106903 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 2.1459416513799319e-07 2.1459416513799319e-07 
		0.76158122758714286 0 0 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 0.99999999999997691 0.99999999999997691 
		0.64806946679106892 1 1 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 2.1459416513799322e-07 2.1459416513799322e-07 
		0.76158122758714286 0 0 0 0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotate_tempLayer_inputAY";
	rename -uid "2F73A07C-442F-27A5-A91A-B796E8056E59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.5376496033179117e-15 6 16.465878668158282
		 35 4.2485683772070111 39 1.7219778043253365e-05 43 1.7219778043253365e-05 47 1.7219778043253365e-05
		 51 -0.78708645498665419 72 -6.4672415581957008 75 -0.80559200698955058 77 6.5976144073988641
		 83 -4.8032715259672805e-06;
	setAttr -s 11 ".kit[1:10]"  1 1 18 1 1 18 18 1 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 1 18 1 1 18 18 1 
		18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 0.99095098137959758 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 -0.13422426197529458 0 0 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 0.99095098137959747 1 1 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 -0.13422426197529458 0 0 0 0;
createNode animCurveTA -n "Character1_Ctrl_Head_rotate_tempLayer_inputAZ";
	rename -uid "70B4B5B7-47BA-DD95-2F64-D5BD8202335F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -23.836386433492056 6 -43.441360944102279
		 35 -46.293650034172082 39 -20.828250348500625 43 -20.828250348500625 47 -20.828250348500625
		 51 -9.6249456241812545 72 9.0753928843654847 75 -9.3490033139616564 77 -11.644958714800966
		 83 -1.2989826845456709e-05;
	setAttr -s 11 ".kit[1:10]"  1 1 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 1 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 0.94483041915020671 0.94483041915020671 
		0.84750259626284041 1 0.48497589319726991 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0.32755988620166016 0.32755988620166016 
		0.53079124835263158 0 -0.87452751987430921 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 0.94483041915020671 0.94483041915020671 
		0.84750259626284041 1 0.48497589319726991 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0.32755988620166016 0.32755988620166016 
		0.53079124835263158 0 -0.87452751987430921 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotate_tempLayer_inputAX";
	rename -uid "FECD4483-4FC0-8FD6-45F3-F6B48E76D825";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.4681740714108724e-05 6 -15.480186568612412
		 35 -14.842768366866716 39 -0.00019095230294994254 43 -0.00010180831472570051 47 -0.00017140602732280345
		 51 -1.0569690026608801e-06 72 -4.7569988549875555e-06 75 -8.959288900613011e-05 77 0.00030755422401282633
		 83 -5.2964453816233341e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotate_tempLayer_inputAY";
	rename -uid "38E59523-4B14-3207-00C3-E8902729380A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 24.269700393595869 6 -23.238399026044835
		 35 -30.162095624625223 39 15.650748020443555 43 21.173608570235725 47 -10.866344933762791
		 51 18.581315357809487 72 18.58132713722916 75 21.173617988756394 77 40.790392596144187
		 83 -3.7157826750827674;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulder_rotate_tempLayer_inputAZ";
	rename -uid "1C4846D0-49F3-40D4-8D32-6C89117A9362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.604284673636414 6 26.447853881478341
		 35 23.412640911107985 39 -2.5290446220808116 43 -2.5290688310693521 47 -2.5289635408923199
		 51 0.73868355295041799 72 0.73867926833342479 75 -2.5290405786726016 77 10.043761182010931
		 83 3.7477300119144776;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotate_tempLayer_inputAX";
	rename -uid "F34D67E8-4ACC-643D-E2C9-798933B8478C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.1944450409719984e-05 6 -0.00018695784885972748
		 35 -0.00027658505288251725 39 -0.00014362477523353917 43 -9.7077483553298428e-05
		 47 -0.00010346316633268116 51 -7.6362952307372443e-05 72 -7.6362952307372443e-05
		 75 -0.00010346316633268116 77 -9.6545598470621115e-05 83 -9.2236652568259734e-07;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999998524103 1;
	setAttr -s 11 ".kiy[8:10]"  0 5.4330450939589746e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999998524103 1;
	setAttr -s 11 ".koy[8:10]"  0 5.4330450939589746e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotate_tempLayer_inputAY";
	rename -uid "D5E212BA-45C3-4C60-9BDC-D79C616BCC44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -26.293126168568932 6 -17.624769922205736
		 35 -24.464842905443504 39 -11.974096234719118 43 -12.593791339723161 47 -14.581070948200622
		 51 -17.686449107839628 72 -17.686449107839628 75 7.5135932095015274 77 20.459930453354602
		 83 9.7302427415807706;
	setAttr -s 11 ".kit[2:10]"  2 18 18 1 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 1 2 18 1 
		18 18;
	setAttr -s 11 ".kix[5:10]"  0.93497059540141658 1 1 1 1 1;
	setAttr -s 11 ".kiy[5:10]"  -0.35472522568140058 0 0 0 0 0;
	setAttr -s 11 ".kox[5:10]"  0.93497059108781999 1 1 1 1 1;
	setAttr -s 11 ".koy[5:10]"  -0.35472523705100589 0 0 0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulder_rotate_tempLayer_inputAZ";
	rename -uid "34D690B2-409E-56C6-8F4F-6FBCDB676DC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.7388186666779593 6 -20.578668281247001
		 35 -20.578583409802345 39 -3.7749386320408771 43 -3.7749494071950376 47 -3.7749508100186735
		 51 -3.7749350465522711 72 -3.7749350465522711 75 -3.7749508100186735 77 -2.7323488236297746
		 83 2.8978926005104375;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.91641405226752504 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.40023153899538405 0;
	setAttr -s 11 ".kox[8:10]"  1 0.91641405226752515 1;
	setAttr -s 11 ".koy[8:10]"  0 0.40023153899538405 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotate_tempLayer_inputAX";
	rename -uid "511909EB-46DA-05D5-6972-87A101D33153";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.5419490751768092e-06 6 4.4429561776369148e-05
		 35 -0.032744970248355675 39 5.2847541187200574e-05 43 5.2847541187200574e-05 47 5.2847541187200574e-05
		 51 5.2236484374018955e-05 72 0.00039243831607083373 75 7.7644855618063698e-06 77 4.6445560061720647e-05
		 83 5.519623615795205e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotate_tempLayer_inputAY";
	rename -uid "E649D7B8-4023-22C1-2499-CE93AF6AFC37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.1913957719832895e-05 6 1.1668565683345
		 35 1.1661731117162648 39 -9.12224382365625 43 -9.12224382365625 47 -9.12224382365625
		 51 -0.1181139017511504 72 -0.11818100117136299 75 -5.0720464906168035 77 -8.7594164057849717
		 83 -3.3894305164518292;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  0.67067324879671464 1 1;
	setAttr -s 11 ".kiy[8:10]"  -0.74175291933935805 0 0;
	setAttr -s 11 ".kox[8:10]"  0.67067320866830948 1 1;
	setAttr -s 11 ".koy[8:10]"  -0.74175295562239196 0 0;
createNode animCurveTA -n "Character1_Ctrl_Neck_rotate_tempLayer_inputAZ";
	rename -uid "C682C9B6-49A6-4A21-78DB-1DB5FC966B86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.362624626428582 6 -7.9386368444123736
		 35 -9.5489532565858539 39 11.676275831482215 43 11.676275831482215 47 11.676275831482215
		 51 21.975791837767488 72 5.2593259984600271 75 19.221010959100546 77 15.492161358627907
		 83 -0.00015862260235543414;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotate_tempLayer_inputAX";
	rename -uid "1D970795-4C63-94A5-CEB7-A8ADDA46FEC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.5953647802095113e-07 6 -26.961258161435516
		 35 -16.622576817897258 39 -17.439179274350206 43 -37.523028465326853 47 -10.166226723914688
		 51 30.129060736492487 72 12.055656213657727 75 7.9296667063231654 77 -16.760014929785214
		 83 -1.0647231372203418;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotate_tempLayer_inputAY";
	rename -uid "FDC65579-42B6-0255-E62A-02830F0A7D53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -10.080000247655306 6 10.36990441720172
		 35 5.6759669731751892 39 3.8672551992741711 43 -2.1990038366736964 47 -11.803421861939526
		 51 -20.344206947562618 72 -15.873314995630805 75 -12.18834386419776 77 -8.4063678090052019
		 83 -1.7155769346833714;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_Spine1_rotate_tempLayer_inputAZ";
	rename -uid "A026F240-4EE5-B22F-83B7-FBB3F9EFDD55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.964241402314284 6 -8.1076628957808445
		 35 -2.8587939059845171 39 16.551946131274835 43 2.9851888985642092 47 2.9851953251309382
		 51 14.296980598033008 72 14.296981190914808 75 6.1872588716257537 77 7.0825496670954946
		 83 17.018779607158795;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotate_tempLayer_inputAX";
	rename -uid "54D6238E-4E59-9C7D-99A9-D9A4DA7271ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.6636636989714514e-07 6 -26.961285097883103
		 35 -16.622603754344841 39 -17.439140672812229 43 -37.52299827873891 47 -10.166200170628226
		 51 30.129051778071638 72 12.055634390305769 75 7.9297090185643038 77 -16.760012406868722
		 83 -1.0646161090172057;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotate_tempLayer_inputAY";
	rename -uid "E8F46E16-4259-ADF7-F357-128681763978";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -10.080002433447483 6 12.448255886827395
		 35 7.7543184428008587 39 6.7532792838039972 43 4.9777993887398386 47 -11.803403783901343
		 51 -20.344103927834823 72 -15.873243589050356 75 -12.188319734857171 77 -8.4063187450320296
		 83 -1.7155123768221856;
	setAttr -s 11 ".kit[2:10]"  2 18 1 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 1 18 2 18 18 
		18 18;
	setAttr -s 11 ".kix[4:10]"  0.77892541378994051 0.51662569590854568 
		1 0.99384417532899183 0.78776268657136228 0.82483295801939327 1;
	setAttr -s 11 ".kiy[4:10]"  -0.6271165758869478 -0.85621135844311869 
		0 0.11078698102501104 0.61597885486911763 0.56537650407934159 0;
	setAttr -s 11 ".kox[4:10]"  0.77892544008828657 0.51662569590854568 
		0.99384417532899183 0.9845363968402755 0.78776268657136228 0.82483295801939327 1;
	setAttr -s 11 ".koy[4:10]"  -0.62711654322244537 -0.85621135844311869 
		0.11078698102501104 0.1751801452698554 0.61597885486911763 0.56537650407934159 0;
createNode animCurveTA -n "Character1_Ctrl_Spine2_rotate_tempLayer_inputAZ";
	rename -uid "1962BCC4-4A26-FB12-C802-C19AABE33257";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.3639850527370116 6 -7.8072661810997381
		 35 -2.5583971913034125 39 13.81008199206642 43 2.2900589324291989 47 2.2900511275551678
		 51 13.601867425411129 72 13.601865900339565 75 5.4921057102640072 77 6.3873965057337481
		 83 12.899082655643195;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotate_tempLayer_inputAX";
	rename -uid "0744EABA-4F21-0762-89C4-48BDC1B7886B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.2518526227352574e-05 6 -3.8813724774427455e-05
		 35 -3.8813724774427455e-05 39 -5.60328732329652e-05 43 -5.60328732329652e-05 47 -5.60328732329652e-05
		 51 -5.8580061888307519e-05 72 -5.8580061888307519e-05 75 -5.60328732329652e-05 77 -3.9482242093851909e-05
		 83 -5.586267058103888e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotate_tempLayer_inputAY";
	rename -uid "B26505CE-4321-74B9-92B4-16AA498A54B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.204085196214379 6 17.844088835000839
		 35 17.844088835000839 39 9.2040775034615727 43 9.2040775034615727 47 9.2040775034615727
		 51 9.2040800963937759 72 9.2040800963937759 75 9.2040775034615727 77 12.700731772510382
		 83 31.582640637202452;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.56385980059883234 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.82587052572945407 0;
	setAttr -s 11 ".kox[8:10]"  1 0.56385980059883245 1;
	setAttr -s 11 ".koy[8:10]"  0 0.82587052572945419 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb1_rotate_tempLayer_inputAZ";
	rename -uid "237C59AD-4C89-6BC3-49EC-30B20F18FF83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.557726060496503 6 -19.641670108746982
		 35 -19.641670108746982 39 12.557731317392582 43 12.557731317392582 47 12.557731317392582
		 51 12.557731415330117 72 12.557731415330117 75 12.557731317392582 77 8.7327379293145082
		 83 -11.922293445058546;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.52947201330181048 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.84832740562245623 0;
	setAttr -s 11 ".kox[8:10]"  1 0.52947201330181048 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.84832740562245634 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotate_tempLayer_inputAX";
	rename -uid "C5B09A3D-4655-72C9-CE58-9C993D5472AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.7882398559929163e-05 6 -5.2212341896715428e-05
		 35 -5.2212341896715428e-05 39 -1.677379936129555e-05 43 -1.677379936129555e-05 47 -1.677379936129555e-05
		 51 -3.0959641015258844e-06 72 -3.0959641015258844e-06 75 -1.677379936129555e-05 77 -2.8269175865115317e-05
		 83 -4.3629246041227944e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999845524 1;
	setAttr -s 11 ".kiy[8:10]"  0 -1.7576848749670354e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999845512 1;
	setAttr -s 11 ".koy[8:10]"  0 -1.7576848749670352e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotate_tempLayer_inputAY";
	rename -uid "811C43CA-427A-DC46-BE30-F4BD602801A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.0001536766711468206 6 -0.00015387462097420183
		 35 -0.00015387462097420183 39 -0.00016327655030840446 43 -0.00016327655030840446
		 47 -0.00016327655030840446 51 -0.00016251925712488943 72 -0.00016251925712488943
		 75 -0.00016327655030840446 77 -0.00016304228569235854 83 -0.00016713174721419646;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb2_rotate_tempLayer_inputAZ";
	rename -uid "1D00DFE3-4CE4-C0D4-DF20-A68CE3EED57D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.466461799875995 6 15.466473555332238
		 35 15.466473555332238 39 15.466463570007612 43 15.466463570007612 47 15.466463570007612
		 51 15.466468149085582 72 15.466468149085582 75 15.466463570007612 77 15.466465598543618
		 83 15.466469539003862;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999992362 1;
	setAttr -s 11 ".kiy[8:10]"  0 3.9066989102051558e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999992373 1;
	setAttr -s 11 ".koy[8:10]"  0 3.9066989102051558e-07 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotate_tempLayer_inputAX";
	rename -uid "3E4CF50B-46C6-3304-5F74-69A95DD9977D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.6086157754567723e-06 6 -5.2337804526549294e-05
		 35 -5.2337804526549294e-05 39 -3.8313164891426065e-06 43 -3.8313164891426065e-06
		 47 -3.8313164891426065e-06 51 2.9456820202516006e-06 72 2.9456820202516006e-06 75 -3.8313164891426065e-06
		 77 -2.4781785135648284e-05 83 -2.3805667655381261e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotate_tempLayer_inputAY";
	rename -uid "2422A3D4-4775-038A-74AC-BA8C89DC87E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.3922025018670689e-05 6 -1.2148305750023443e-05
		 35 -1.2148305750023443e-05 39 7.9015438450236514e-05 43 7.9015438450236514e-05 47 7.9015438450236514e-05
		 51 8.1714326021134037e-05 72 8.1714326021134037e-05 75 7.9015438450236514e-05 77 8.1041847436781974e-05
		 83 6.9286882939183626e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumb3_rotate_tempLayer_inputAZ";
	rename -uid "3915ED4F-4AF8-E7ED-26D2-CEA5884C68C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.1305649010108638 6 54.668475184143233
		 35 54.668475184143233 39 8.1305657037792702 43 8.1305657037792702 47 8.1305657037792702
		 51 8.1305575959908474 72 8.1305575959908474 75 8.1305657037792702 77 8.1305743605954284
		 83 8.1305360726079119;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotate_tempLayer_inputAX";
	rename -uid "B73BA4E1-4A40-E02A-7C23-50AA1C131621";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.1972534076366791e-06 6 16.200098981814271
		 35 16.200098981814271 39 -1.6261099139936463e-05 43 -1.6261099139936463e-05 47 -1.6261099139936463e-05
		 51 -1.6391451441193563e-05 72 -1.6391451441193563e-05 75 -1.6261099139936463e-05
		 77 -5.4375278077943126e-06 83 1.8219992613894528e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999745348 1;
	setAttr -s 11 ".kiy[8:10]"  0 2.2567821779440671e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999745348 1;
	setAttr -s 11 ".koy[8:10]"  0 2.2567821779440671e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotate_tempLayer_inputAY";
	rename -uid "5F366FD7-4328-7C3B-13B7-20B38F231A2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.343407935978497 6 19.677658212631329
		 35 19.677658212631329 39 12.343409513042474 43 12.343409513042474 47 12.343409513042474
		 51 12.343405497083134 72 12.343405497083134 75 12.343409513042474 77 12.343408093647977
		 83 12.343404226788854;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999994027 1;
	setAttr -s 11 ".kiy[8:10]"  0 -3.4598449043241769e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999994005 1;
	setAttr -s 11 ".koy[8:10]"  0 -3.4598449043241759e-07 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex1_rotate_tempLayer_inputAZ";
	rename -uid "6F5AE7AC-4927-CFF7-D50A-DBA336807AA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.1781589126643763e-05 6 -35.27431663314934
		 35 -35.27431663314934 39 1.8684911116396189e-05 43 1.8684911116396189e-05 47 1.8684911116396189e-05
		 51 1.8956073188199102e-05 72 1.8956073188199102e-05 75 1.8684911116396189e-05 77 -3.1192961745035981
		 83 -19.963585417276267;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.60776604728948302 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.79411613241522672 0;
	setAttr -s 11 ".kox[8:10]"  1 0.60776604728948302 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.79411613241522661 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotate_tempLayer_inputAX";
	rename -uid "8EA58278-498E-AD37-B56E-469F6DD73066";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.9933703019744521e-05 6 -3.9784598084691077e-05
		 35 -3.9784598084691077e-05 39 -2.11768151836633e-05 43 -2.11768151836633e-05 47 -2.11768151836633e-05
		 51 -1.1512948019968183e-05 72 -1.1512948019968183e-05 75 -2.11768151836633e-05 77 -1.3681648668402133e-05
		 83 -3.3333620088239857e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotate_tempLayer_inputAY";
	rename -uid "82233D44-4D7F-0A1B-CD8D-47BFE4FFD2C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.2847382932982428e-05 6 0.00019744646259393578
		 35 0.00019744646259393578 39 4.3879364611091859e-06 43 4.3879364611091859e-06 47 4.3879364611091859e-06
		 51 1.2686127197965128e-05 72 1.2686127197965128e-05 75 4.3879364611091859e-06 77 7.7014987254224113e-06
		 83 5.2644036097804236e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.9999999999966136 1;
	setAttr -s 11 ".kiy[8:10]"  0 2.6024657166858763e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.9999999999966136 1;
	setAttr -s 11 ".koy[8:10]"  0 2.6024657166858758e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex2_rotate_tempLayer_inputAZ";
	rename -uid "3BD8BE62-4A19-C06F-0680-62AC3E7FED48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 26.048746766148863 6 32.160653996700702
		 35 32.160653996700702 39 26.048746501667935 43 26.048746501667935 47 26.048746501667935
		 51 26.048752432488605 72 26.048752432488605 75 26.048746501667935 77 23.236240121178785
		 83 8.0487204633659672;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.64712827234296655 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.76238113770895921 0;
	setAttr -s 11 ".kox[8:10]"  1 0.64712827234296666 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.76238113770895932 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotate_tempLayer_inputAX";
	rename -uid "01D487DE-46EE-70AA-2BE9-9AADDF24C0AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00011029935858596339 6 0.00013327778642240959
		 35 0.00013327778642240959 39 0.00010442636151421974 43 0.00010442636151421974 47 0.00010442636151421974
		 51 0.00010472023947071886 72 0.00010472023947071886 75 0.00010442636151421974 77 9.5788360055792051e-05
		 83 9.355593472454872e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999982936 1;
	setAttr -s 11 ".kiy[8:10]"  0 -5.8444758502671849e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999982914 1;
	setAttr -s 11 ".koy[8:10]"  0 -5.8444758502671838e-07 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotate_tempLayer_inputAY";
	rename -uid "343A3549-4B50-348F-4B15-B6ACE474DFBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.9226326245666952e-06 6 -3.6761209954695017e-05
		 35 -3.6761209954695017e-05 39 -1.5979322610206704e-05 43 -1.5979322610206704e-05
		 47 -1.5979322610206704e-05 51 -8.6972428227032966e-06 72 -8.6972428227032966e-06
		 75 -1.5979322610206704e-05 77 -2.4220531233350226e-05 83 -3.6971775136330369e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.9999999999990562 1;
	setAttr -s 11 ".kiy[8:10]"  0 -1.3739528049341748e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999905609 1;
	setAttr -s 11 ".koy[8:10]"  0 -1.3739528049341744e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndex3_rotate_tempLayer_inputAZ";
	rename -uid "DB612EFF-4652-5F5C-5674-F6AF3641B352";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.128493195421678 6 65.028355806898077
		 35 65.028355806898077 39 10.12849053801267 43 10.12849053801267 47 10.12849053801267
		 51 10.128486942585928 72 10.128486942585928 75 10.12849053801267 77 10.128498959558128
		 83 10.128491137967519;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotate_tempLayer_inputAX";
	rename -uid "345CBBA6-47E0-07B6-777C-C5BD20B1075F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.0308264312790661e-06 6 16.216143391028332
		 35 16.216143391028332 39 2.5174081652675007e-06 43 2.5174081652675007e-06 47 2.5174081652675007e-06
		 51 6.5621339552362517e-06 72 6.5621339552362517e-06 75 2.5174081652675007e-06 77 1.1441545025369201e-05
		 83 3.5632105229672612e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999765121 1;
	setAttr -s 11 ".kiy[8:10]"  0 2.167351854648797e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999765121 1;
	setAttr -s 11 ".koy[8:10]"  0 2.167351854648797e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotate_tempLayer_inputAY";
	rename -uid "3AB8DE9C-4B4F-828C-564F-F7B5C26E0D2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.4985347386222494 6 7.5896832400448107
		 35 7.5896832400448107 39 2.4985317142192565 43 2.4985317142192565 47 2.4985317142192565
		 51 2.4985261925992059 72 2.4985261925992059 75 2.4985317142192565 77 2.4985326954506681
		 83 2.4985274866840523;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle1_rotate_tempLayer_inputAZ";
	rename -uid "B7C027AC-4121-E245-99C9-449A69909847";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.8800061367789307 6 -53.994342754945762
		 35 -53.994342754945762 39 2.8800024599287428 43 2.8800024599287428 47 2.8800024599287428
		 51 2.8800008337365055 72 2.8800008337365055 75 2.8800024599287428 77 -0.23932016244639165
		 83 -17.083615970885784;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.60776577220254702 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.79411634294921918 0;
	setAttr -s 11 ".kox[8:10]"  1 0.60776577220254691 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.79411634294921907 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotate_tempLayer_inputAX";
	rename -uid "AE46F9F7-4E81-4A6E-E928-039B157FF65C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.8676406491277047e-05 6 -0.00012497937446257352
		 35 -0.00012497937446257352 39 -3.220216559046361e-05 43 -3.220216559046361e-05 47 -3.220216559046361e-05
		 51 -2.0807542120456161e-05 72 -2.0807542120456161e-05 75 -3.220216559046361e-05 77 -9.7269036607661618e-06
		 83 1.6175325384144935e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999755007 1;
	setAttr -s 11 ".kiy[8:10]"  0 2.2134940664176587e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999755018 1;
	setAttr -s 11 ".koy[8:10]"  0 2.2134940664176592e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotate_tempLayer_inputAY";
	rename -uid "AA8329F6-4BD9-E720-921C-0BBEA385808F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.1912706260136449e-05 6 8.9265022881802498e-05
		 35 8.9265022881802498e-05 39 3.4032912108205698e-05 43 3.4032912108205698e-05 47 3.4032912108205698e-05
		 51 3.235998255542486e-05 72 3.235998255542486e-05 75 3.4032912108205698e-05 77 2.5397206282960383e-05
		 83 5.8296579711336402e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle2_rotate_tempLayer_inputAZ";
	rename -uid "CF4166EE-4C8F-C3E2-2A7A-2697E77878AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 39.058290428487986 6 45.1700209872483
		 35 45.1700209872483 39 39.058299876807141 43 39.058299876807141 47 39.058299876807141
		 51 39.058312304423175 72 39.058312304423175 75 39.058299876807141 77 36.245790434596543
		 83 21.058248924612794;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.64712775174449744 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.76238157960571951 0;
	setAttr -s 11 ".kox[8:10]"  1 0.64712775174449744 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.76238157960571951 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotate_tempLayer_inputAX";
	rename -uid "643D38A8-4E52-4E64-8474-64B6F11C571D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.1369712630443787e-05 6 7.2773065752898138e-05
		 35 7.2773065752898138e-05 39 2.3843927681344051e-05 43 2.3843927681344051e-05 47 2.3843927681344051e-05
		 51 3.0018382198012713e-05 72 3.0018382198012713e-05 75 2.3843927681344051e-05 77 3.4816297432098211e-05
		 83 1.8573631631524471e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotate_tempLayer_inputAY";
	rename -uid "B06D7A70-4D07-8183-7964-9DB1711D77BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.7389211416722795e-05 6 -0.00011909358284025457
		 35 -0.00011909358284025457 39 -1.3654677664197591e-05 43 -1.3654677664197591e-05
		 47 -1.3654677664197591e-05 51 -1.039490326772855e-05 72 -1.039490326772855e-05 75 -1.3654677664197591e-05
		 77 -2.4599377907955613e-05 83 -7.6073432713355351e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddle3_rotate_tempLayer_inputAZ";
	rename -uid "BD28F734-4270-E237-5292-A3BD25C87132";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.128281960839084 6 65.02815794993947
		 35 65.02815794993947 39 10.128277256081329 43 10.128277256081329 47 10.128277256081329
		 51 10.128273384748693 72 10.128273384748693 75 10.128277256081329 77 10.128274330287145
		 83 10.128306191609132;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotate_tempLayer_inputAX";
	rename -uid "3E32DB8D-4410-3230-E9AE-B3B068A67AAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.6712944072977268e-05 6 -5.7612700821767993
		 35 -5.7612700821767993 39 -4.3791427023401666e-05 43 -4.3791427023401666e-05 47 -4.3791427023401666e-05
		 51 -4.6052597327578546e-05 72 -4.6052597327578546e-05 75 -4.3791427023401666e-05
		 77 -3.5342191236583252e-05 83 -2.5345319616371871e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999927125 1;
	setAttr -s 11 ".kiy[8:10]"  0 1.2072949066085595e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999927114 1;
	setAttr -s 11 ".koy[8:10]"  0 1.2072949066085595e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotate_tempLayer_inputAY";
	rename -uid "81AE1928-4304-9EC7-35FE-158B6D875ACA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.5646663176511213 6 -11.419641056468466
		 35 -11.419641056468466 39 -5.5646670235869786 43 -5.5646670235869786 47 -5.5646670235869786
		 51 -5.5646637643349326 72 -5.5646637643349326 75 -5.5646670235869786 77 -5.5646651614090361
		 83 -5.5646398394371603;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999893041 1;
	setAttr -s 11 ".kiy[8:10]"  0 1.4625511364480948e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999893041 1;
	setAttr -s 11 ".koy[8:10]"  0 1.4625511364480948e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing1_rotate_tempLayer_inputAZ";
	rename -uid "9500FE75-4ACA-9F18-3B28-048ADB13B7E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.793739822099045 6 -35.040613968173496
		 35 -35.040613968173496 39 16.793742069804999 43 16.793742069804999 47 16.793742069804999
		 51 16.793741596663388 72 16.793741596663388 75 16.793742069804999 77 13.674423573583843
		 83 -3.1698888049923575;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.60776553329793814 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.79411652579144376 0;
	setAttr -s 11 ".kox[8:10]"  1 0.60776553329793814 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.79411652579144365 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotate_tempLayer_inputAX";
	rename -uid "0405C63A-4F1F-702A-1AE2-EFB0DE5F4E24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.00010633530899697359 6 -5.7543171257324105e-05
		 35 -5.7543171257324105e-05 39 -0.00010639376423335315 43 -0.00010639376423335315
		 47 -0.00010639376423335315 51 -0.00010247017864675886 72 -0.00010247017864675886
		 75 -0.00010639376423335315 77 -0.00011489654746858618 83 -0.0001399144926895045;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999759337 1;
	setAttr -s 11 ".kiy[8:10]"  0 -2.1939265470952083e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999759337 1;
	setAttr -s 11 ".koy[8:10]"  0 -2.1939265470952083e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotate_tempLayer_inputAY";
	rename -uid "64022538-4861-6DFA-36DE-98B5532E4182";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.5773770937094154e-06 6 0.0001774393525620162
		 35 0.0001774393525620162 39 -2.7958358588058408e-07 43 -2.7958358588058408e-07 47 -2.7958358588058408e-07
		 51 -5.5002852387363576e-06 72 -5.5002852387363576e-06 75 -2.7958358588058408e-07
		 77 1.007259553166212e-05 83 2.2090047408699803e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999892819 1;
	setAttr -s 11 ".kiy[8:10]"  0 1.464088924916937e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999892819 1;
	setAttr -s 11 ".koy[8:10]"  0 1.4640889249169368e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing2_rotate_tempLayer_inputAZ";
	rename -uid "AF650E9F-470F-3FAA-DBC0-FFBD2C32BD8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 30.106700498875711 6 53.498498565299741
		 35 53.498498565299741 39 30.106692153647192 43 30.106692153647192 47 30.106692153647192
		 51 30.106689148982777 72 30.106689148982777 75 30.106692153647192 77 27.294199612675897
		 83 12.106706133488291;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.64712910855963057 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.76238042790644733 0;
	setAttr -s 11 ".kox[8:10]"  1 0.64712910855963057 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.76238042790644733 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotate_tempLayer_inputAX";
	rename -uid "5F2D6C44-4830-9B87-5657-CF93DB367DA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.7564933126852008e-07 6 5.7061737735274652e-05
		 35 5.7061737735274652e-05 39 3.8492711196206614e-06 43 3.8492711196206614e-06 47 3.8492711196206614e-06
		 51 1.0636415537405049e-05 72 1.0636415537405049e-05 75 3.8492711196206614e-06 77 -1.3916647536448092e-06
		 83 3.619607707961176e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotate_tempLayer_inputAY";
	rename -uid "DE13E79F-4109-3C54-B4AF-7FBABE6DD51C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.5660856185952261e-05 6 -0.00013825233624881851
		 35 -0.00013825233624881851 39 -1.4968799584855356e-05 43 -1.4968799584855356e-05
		 47 -1.4968799584855356e-05 51 -7.3876652711887489e-06 72 -7.3876652711887489e-06
		 75 -1.4968799584855356e-05 77 -1.1742373683774847e-05 83 -2.6588582969270307e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRing3_rotate_tempLayer_inputAZ";
	rename -uid "49D0E918-44B6-320A-6B82-B4AA78953CBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.248237369865414 6 71.148132001504777
		 35 71.148132001504777 39 16.248245022651773 43 16.248245022651773 47 16.248245022651773
		 51 16.248249254148334 72 16.248249254148334 75 16.248245022651773 77 16.2482466790904
		 83 16.2482761355867;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999915357 1;
	setAttr -s 11 ".kiy[8:10]"  0 1.3009638566419174e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999915379 1;
	setAttr -s 11 ".koy[8:10]"  0 1.3009638566419177e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotate_tempLayer_inputAX";
	rename -uid "363D68F0-4475-8D8A-7633-8F9C543E3021";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.8293187372979632e-06 6 -16.559987801132834
		 35 -16.559987801132834 39 -1.3336585100344914e-05 43 -1.3336585100344914e-05 47 -1.3336585100344914e-05
		 51 -1.2927798381355891e-05 72 -1.2927798381355891e-05 75 -1.3336585100344914e-05
		 77 -1.5222695449996952e-05 83 -2.0399073842071776e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.9999999999998932 1;
	setAttr -s 11 ".kiy[8:10]"  0 -4.6223880723057015e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.9999999999998932 1;
	setAttr -s 11 ".koy[8:10]"  0 -4.622388072305701e-07 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotate_tempLayer_inputAY";
	rename -uid "34C34C58-4992-9F7B-87CC-51BD05C08D1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.404330418595446 6 -28.420219749366037
		 35 -28.420219749366037 39 -19.404332321230072 43 -19.404332321230072 47 -19.404332321230072
		 51 -19.404340411301977 72 -19.404340411301977 75 -19.404332321230072 77 -19.404330792257817
		 83 -19.404328187706621;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999996336 1;
	setAttr -s 11 ".kiy[8:10]"  0 2.7053847724555339e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999996336 1;
	setAttr -s 11 ".koy[8:10]"  0 2.7053847724555339e-07 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky1_rotate_tempLayer_inputAZ";
	rename -uid "F955A8DF-41CF-D1E3-BEC9-CA967356381B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 19.672778041538201 6 -11.641620451971022
		 35 -11.641620451971022 39 19.672776657587658 43 19.672776657587658 47 19.672776657587658
		 51 19.672777262765429 72 19.672777262765429 75 19.672776657587658 77 16.553458341373059
		 83 -0.29085027466898133;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.60776560898841303 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.79411646786283407 0;
	setAttr -s 11 ".kox[8:10]"  1 0.60776560898841292 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.79411646786283396 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotate_tempLayer_inputAX";
	rename -uid "3E4F624A-45D3-2499-FAB3-D08A2FF532DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.5016642403483095e-05 6 1.7022440814273027e-05
		 35 1.7022440814273027e-05 39 -3.7969103071632272e-05 43 -3.7969103071632272e-05 47 -3.7969103071632272e-05
		 51 -3.1405587228998014e-05 72 -3.1405587228998014e-05 75 -3.7969103071632272e-05
		 77 -4.0430128042839655e-05 83 -6.230569979269026e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999873146 1;
	setAttr -s 11 ".kiy[8:10]"  0 -1.5928265306699219e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999873146 1;
	setAttr -s 11 ".koy[8:10]"  0 -1.5928265306699219e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotate_tempLayer_inputAY";
	rename -uid "3B2CF4F2-4B00-8C10-BFD1-DEA2C8C767B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.6667703243514789e-05 6 0.00019777522639044304
		 35 0.00019777522639044304 39 7.4057746761539215e-05 43 7.4057746761539215e-05 47 7.4057746761539215e-05
		 51 7.2517360083729243e-05 72 7.2517360083729243e-05 75 7.4057746761539215e-05 77 7.712179165591073e-05
		 83 9.3030184800950769e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999922895 1;
	setAttr -s 11 ".kiy[8:10]"  0 1.241743165942853e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999922895 1;
	setAttr -s 11 ".koy[8:10]"  0 1.241743165942853e-06 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky2_rotate_tempLayer_inputAZ";
	rename -uid "EE6A72BE-4CAE-EE04-9E77-C7BAA1465F28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 28.368761498877028 6 58.600646761090722
		 35 58.600646761090722 39 28.368773961903059 43 28.368773961903059 47 28.368773961903059
		 51 28.36877566598131 72 28.36877566598131 75 28.368773961903059 77 25.556277430161476
		 83 10.368755217728051;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.64712842476049326 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.7623810083331054 0;
	setAttr -s 11 ".kox[8:10]"  1 0.64712842476049326 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.76238100833310529 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotate_tempLayer_inputAX";
	rename -uid "321998E8-4795-E870-4ADB-CF94564AE5F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.7720181656740127e-06 6 2.2183351003516014e-05
		 35 2.2183351003516014e-05 39 1.0803824780685057e-05 43 1.0803824780685057e-05 47 1.0803824780685057e-05
		 51 7.7455739354735861e-07 72 7.7455739354735861e-07 75 1.0803824780685057e-05 77 7.9665878951916055e-06
		 83 2.1866275640823636e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotate_tempLayer_inputAY";
	rename -uid "D77A3AA8-4C6D-0F33-2878-3B8DAF5ADFD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.425510049330735e-05 6 -0.00018415142115641518
		 35 -0.00018415142115641518 39 -3.5382266993762773e-05 43 -3.5382266993762773e-05
		 47 -3.5382266993762773e-05 51 -3.1775832054795784e-05 72 -3.1775832054795784e-05
		 75 -3.5382266993762773e-05 77 -3.821276845016556e-05 83 -2.6013463428505738e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinky3_rotate_tempLayer_inputAZ";
	rename -uid "18E6ED64-42D3-91E0-1BDF-CF8B8F79ADD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.248274944071326 6 71.148206151690459
		 35 71.148206151690459 39 16.248260295726954 43 16.248260295726954 47 16.248260295726954
		 51 16.24825642178952 72 16.24825642178952 75 16.248260295726954 77 16.248250020818851
		 83 16.248263115220489;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotate_tempLayer_inputAX";
	rename -uid "B6882DC7-4DF0-50D1-A0F5-9E825503F4DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00029821699427284062 6 0.00019161373297630802
		 35 0.00019161373297630802 39 0.00030190379492651362 43 0.00030190379492651362 47 0.00030190379492651362
		 51 0.00029310814672623168 72 0.00029310814672623168 75 0.00030190379492651362 77 0.00030414984633488117
		 83 0.00028360690904507662;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotate_tempLayer_inputAY";
	rename -uid "84E3B177-4E66-D080-716A-ABA232178151";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.35995895800842 6 19.809736981615277
		 35 19.809736981615277 39 27.359960907550587 43 27.359960907550587 47 27.359960907550587
		 51 27.359957431705258 72 27.359957431705258 75 27.359960907550587 77 27.35995410800157
		 83 27.359960764861793;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb1_rotate_tempLayer_inputAZ";
	rename -uid "CD0EE016-4A0F-8512-2F67-6ABE6A17CB27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00020403242629753158 6 35.640140213734043
		 35 35.640140213734043 39 0.00021031251166368683 43 0.00021031251166368683 47 0.00021031251166368683
		 51 0.00020901102110195885 72 0.00020901102110195885 75 0.00021031251166368683 77 0.00021367240014083958
		 83 0.00017594672183722702;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotate_tempLayer_inputAX";
	rename -uid "A52E43AB-461D-90E9-D359-1FAEFA0A1442";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00014101589120045401 6 0.00017364361385186847
		 35 0.00017364361385186847 39 0.00014314329852328813 43 0.00014314329852328813 47 0.00014314329852328813
		 51 0.000152469932460817 72 0.000152469932460817 75 0.00014314329852328813 77 0.00013346935851338057
		 83 0.00014067503613272422;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotate_tempLayer_inputAY";
	rename -uid "44DEDD42-4054-19EB-02B3-378A47E0F2DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.1437879998385877e-05 6 6.5037314510482688e-05
		 35 6.5037314510482688e-05 39 3.8839718336036926e-05 43 3.8839718336036926e-05 47 3.8839718336036926e-05
		 51 4.6192083981191895e-05 72 4.6192083981191895e-05 75 3.8839718336036926e-05 77 3.1054317449399014e-05
		 83 6.7247312748540065e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999779099 1;
	setAttr -s 11 ".kiy[8:10]"  0 -2.1019209879441806e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999779099 1;
	setAttr -s 11 ".koy[8:10]"  0 -2.1019209879441806e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb2_rotate_tempLayer_inputAZ";
	rename -uid "9ABFF772-4477-FFD7-4C2F-B499B962EFF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.0723068353070353 6 -7.0723083897358192
		 35 -7.0723083897358192 39 -7.0723135835435853 43 -7.0723135835435853 47 -7.0723135835435853
		 51 -7.0723145139686547 72 -7.0723145139686547 75 -7.0723135835435853 77 -7.0723082785917217
		 83 -7.0722855936742652;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999832201 1;
	setAttr -s 11 ".kiy[8:10]"  0 1.8319326631665925e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.9999999999983219 1;
	setAttr -s 11 ".koy[8:10]"  0 1.8319326631665925e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotate_tempLayer_inputAX";
	rename -uid "9F1BB32A-448B-BCA6-2D35-62BE1AEAED96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.9064265768158212e-05 6 -5.0630890046242066e-05
		 35 -5.0630890046242066e-05 39 -9.5198861981563905e-06 43 -9.5198861981563905e-06
		 47 -9.5198861981563905e-06 51 -1.8286149553951692e-05 72 -1.8286149553951692e-05
		 75 -9.5198861981563905e-06 77 -1.1260194138681233e-05 83 -1.5028612977329271e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999993505 1;
	setAttr -s 11 ".kiy[8:10]"  0 -3.6054532458503672e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999993505 1;
	setAttr -s 11 ".koy[8:10]"  0 -3.6054532458503672e-07 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotate_tempLayer_inputAY";
	rename -uid "6261E0A9-4745-23B7-763B-E781AE6F2757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.6825215114942548e-06 6 -7.292936118129717e-05
		 35 -7.292936118129717e-05 39 -1.3699558133140888e-05 43 -1.3699558133140888e-05 47 -1.3699558133140888e-05
		 51 -1.3231629648440094e-05 72 -1.3231629648440094e-05 75 -1.3699558133140888e-05
		 77 -2.1231162623881935e-05 83 -3.7126571387405059e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.9999999999988245 1;
	setAttr -s 11 ".kiy[8:10]"  0 -1.5332944319804275e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999882438 1;
	setAttr -s 11 ".koy[8:10]"  0 -1.5332944319804273e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumb3_rotate_tempLayer_inputAZ";
	rename -uid "7DC72D16-4A32-8C25-5E2C-719F2075E69D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -26.10648377644252 6 -64.266447920871897
		 35 -64.266447920871897 39 -26.106489087110635 43 -26.106489087110635 47 -26.106489087110635
		 51 -26.106480633361684 72 -26.106480633361684 75 -26.106489087110635 77 -26.106491444711065
		 83 -26.10649613913861;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999989342 1;
	setAttr -s 11 ".kiy[8:10]"  0 -4.6155415156507545e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999989342 1;
	setAttr -s 11 ".koy[8:10]"  0 -4.6155415156507534e-07 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotate_tempLayer_inputAX";
	rename -uid "F926110D-483B-FCC4-45DC-78952DA290E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.9438011964322711e-05 6 -12.240019492755343
		 35 -12.240019492755343 39 4.8389827401852037e-05 43 4.8389827401852037e-05 47 4.8389827401852037e-05
		 51 4.8742759009035136e-05 72 4.8742759009035136e-05 75 4.8389827401852037e-05 77 5.7173635919601451e-05
		 83 4.3691637666441919e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotate_tempLayer_inputAY";
	rename -uid "B925615B-4C22-D5AB-6988-EA87EFDB2FFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.7541521674688387e-06 6 -18.359893954840569
		 35 -18.359893954840569 39 1.4412818139676266e-06 43 1.4412818139676266e-06 47 1.4412818139676266e-06
		 51 0 72 0 75 1.4412818139676266e-06 77 -4.920231994771501e-06 83 1.2698160123610617e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex1_rotate_tempLayer_inputAZ";
	rename -uid "61C1FD69-4285-B2D4-EC64-E3B0F1EDDE38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.7230062773526305 6 -18.242964959440862
		 35 -18.242964959440862 39 -6.7230053608862566 43 -6.7230053608862566 47 -6.7230053608862566
		 51 -6.7230057996927552 72 -6.7230057996927552 75 -6.7230053608862566 77 -6.7230043957387462
		 83 -6.7230050038099645;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotate_tempLayer_inputAX";
	rename -uid "B53843A7-4F93-01B9-3539-96AB42FE0022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00033068652080841854 6 0.00018400674127164835
		 35 0.00018400674127164835 39 0.00033161737076680027 43 0.00033161737076680027 47 0.00033161737076680027
		 51 0.00033680735474587325 72 0.00033680735474587325 75 0.00033161737076680027 77 0.000327791092964023
		 83 0.0003110463465034642;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999909361 1;
	setAttr -s 11 ".kiy[8:10]"  0 -1.3463703896344874e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.9999999999990935 1;
	setAttr -s 11 ".koy[8:10]"  0 -1.3463703896344872e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotate_tempLayer_inputAY";
	rename -uid "C420E142-4356-4E26-2B89-A19A0EA48A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.611567259732522e-05 6 -6.8452807857788655e-05
		 35 -6.8452807857788655e-05 39 -6.3259396807510514e-05 43 -6.3259396807510514e-05
		 47 -6.3259396807510514e-05 51 -6.4462981125324966e-05 72 -6.4462981125324966e-05
		 75 -6.3259396807510514e-05 77 -6.5626224101406836e-05 83 -5.3675445458841103e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex2_rotate_tempLayer_inputAZ";
	rename -uid "5A0EC357-45B7-C3E0-1BCF-CF8108C82C1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 23.574173598190477 6 67.494054200619487
		 35 67.494054200619487 39 23.574174989872635 43 23.574174989872635 47 23.574174989872635
		 51 23.574177052505679 72 23.574177052505679 75 23.574174989872635 77 23.574171704485146
		 83 23.574174937465475;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotate_tempLayer_inputAX";
	rename -uid "15B78579-491D-8AFC-62A1-B0B57A065C52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.00014937151717040259 6 -9.9099945104186787e-05
		 35 -9.9099945104186787e-05 39 -0.00015123305593810137 43 -0.00015123305593810137
		 47 -0.00015123305593810137 51 -0.00014256375430990586 72 -0.00014256375430990586
		 75 -0.00015123305593810137 77 -0.00016352541540624269 83 -0.0001835639514589769;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999776112 1;
	setAttr -s 11 ".kiy[8:10]"  0 -2.1160521635861313e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999776112 1;
	setAttr -s 11 ".koy[8:10]"  0 -2.1160521635861313e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotate_tempLayer_inputAY";
	rename -uid "974994D4-4742-A51F-34E8-7685CFB28A53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.9314062498707024e-05 6 6.9921123179005418e-05
		 35 6.9921123179005418e-05 39 1.8082104763082419e-05 43 1.8082104763082419e-05 47 1.8082104763082419e-05
		 51 1.7599211800612858e-05 72 1.7599211800612858e-05 75 1.8082104763082419e-05 77 1.4176649135812261e-05
		 83 2.0094346848820787e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndex3_rotate_tempLayer_inputAZ";
	rename -uid "C866AB8D-44BF-D689-BD65-BAB3F31659DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.8181757004276706 6 43.492822950189947
		 35 43.492822950189947 39 5.8181625238896499 43 5.8181625238896499 47 5.8181625238896499
		 51 5.8181552344440481 72 5.8181552344440481 75 5.8181625238896499 77 5.8181596715307542
		 83 5.8181397310594249;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999888733 1;
	setAttr -s 11 ".kiy[8:10]"  0 -1.4917872497699549e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999888733 1;
	setAttr -s 11 ".koy[8:10]"  0 -1.4917872497699549e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotate_tempLayer_inputAX";
	rename -uid "1A659B29-4E68-FFD0-0925-B2B4707EAAB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.8187757903432832e-05 6 3.5033298461097106e-05
		 35 3.5033298461097106e-05 39 7.7677983293612191e-05 43 7.7677983293612191e-05 47 7.7677983293612191e-05
		 51 8.5824753159865919e-05 72 8.5824753159865919e-05 75 7.7677983293612191e-05 77 8.2938190772107975e-05
		 83 9.4240305739823913e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999941258 1;
	setAttr -s 11 ".kiy[8:10]"  0 1.084001469236948e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999941247 1;
	setAttr -s 11 ".koy[8:10]"  0 1.0840014692369478e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotate_tempLayer_inputAY";
	rename -uid "3E7F648F-4471-20BD-1538-BFA01A5B4D8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.4420720490981888e-06 6 -5.1517886801996911
		 35 -5.1517886801996911 39 -5.5725164833858313e-06 43 -5.5725164833858313e-06 47 -5.5725164833858313e-06
		 51 -8.0531117274114402e-06 72 -8.0531117274114402e-06 75 -5.5725164833858313e-06
		 77 -4.537489332680447e-06 83 -7.0351986204021709e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle1_rotate_tempLayer_inputAZ";
	rename -uid "A846FED7-458F-0672-42BC-A88A9740A0FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0800529569517172 6 -42.840036970829686
		 35 -42.840036970829686 39 1.0800573045126456 43 1.0800573045126456 47 1.0800573045126456
		 51 1.0800580060348206 72 1.0800580060348206 75 1.0800573045126456 77 1.080059552815531
		 83 1.080081435475718;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999875266 1;
	setAttr -s 11 ".kiy[8:10]"  0 1.5793678398415012e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999875278 1;
	setAttr -s 11 ".koy[8:10]"  0 1.5793678398415014e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotate_tempLayer_inputAX";
	rename -uid "8E17200E-4E73-2232-3A85-F18A69A90023";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00012384041392907242 6 -7.7878626258433148e-05
		 35 -7.7878626258433148e-05 39 0.00012701716090416537 43 0.00012701716090416537 47 0.00012701716090416537
		 51 0.00012834862351426303 72 0.00012834862351426303 75 0.00012701716090416537 77 0.00012922201040377595
		 83 0.0001338075459733094;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.9999999999999013 1;
	setAttr -s 11 ".kiy[8:10]"  0 4.4442966350555358e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999990119 1;
	setAttr -s 11 ".koy[8:10]"  0 4.4442966350555353e-07 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotate_tempLayer_inputAY";
	rename -uid "8B50DBED-4C32-88F3-9A81-0EBD18463FB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.3992585954569064e-05 6 -0.00021715900034209769
		 35 -0.00021715900034209769 39 -7.9642191222585693e-05 43 -7.9642191222585693e-05
		 47 -7.9642191222585693e-05 51 -7.8255341540889783e-05 72 -7.8255341540889783e-05
		 75 -7.9642191222585693e-05 77 -9.0827000866877848e-05 83 -5.3300744227596658e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle2_rotate_tempLayer_inputAZ";
	rename -uid "4F5B1C27-493E-D614-5A92-A590ED377F49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 31.648878338489272 6 75.569002758387754
		 35 75.569002758387754 39 31.64887967199002 43 31.64887967199002 47 31.64887967199002
		 51 31.648875036471942 72 31.648875036471942 75 31.64887967199002 77 31.64887334829584
		 83 31.648873436299528;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotate_tempLayer_inputAX";
	rename -uid "74C32AE0-442A-6D50-CF33-AD87C3FBEAC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.00011412122720332176 6 -2.8701715728497518e-05
		 35 -2.8701715728497518e-05 39 -0.00011658979263131169 43 -0.00011658979263131169
		 47 -0.00011658979263131169 51 -0.00012001558752284532 72 -0.00012001558752284532
		 75 -0.00011658979263131169 77 -0.00012670887564569181 83 -0.00011260293407635044;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotate_tempLayer_inputAY";
	rename -uid "BC65803E-4831-9225-C366-DBAA93F53E48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.1403666361649086e-05 6 7.1175832637466159e-05
		 35 7.1175832637466159e-05 39 2.5064506992373488e-05 43 2.5064506992373488e-05 47 2.5064506992373488e-05
		 51 2.4710848601503478e-05 72 2.4710848601503478e-05 75 2.5064506992373488e-05 77 2.3729511988041277e-05
		 83 2.3520522666700151e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999999856 1;
	setAttr -s 11 ".kiy[8:10]"  0 -5.4713276383665701e-08 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999999845 1;
	setAttr -s 11 ".koy[8:10]"  0 -5.4713276383665695e-08 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddle3_rotate_tempLayer_inputAZ";
	rename -uid "BD00C400-4E1B-AA73-EF12-95B33770AEA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.1417518692235902 6 45.816428006437512
		 35 45.816428006437512 39 8.1417532790959726 43 8.1417532790959726 47 8.1417532790959726
		 51 8.141754662089749 72 8.141754662089749 75 8.1417532790959726 77 8.1417610172903228
		 83 8.1417407349002371;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotate_tempLayer_inputAX";
	rename -uid "262E31C0-4DE6-4BEF-4509-BD82DECF7C40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.47613105544924372 6 -0.47620069598183995
		 35 -0.47620069598183995 39 -0.47613096397842458 43 -0.47613096397842458 47 -0.47613096397842458
		 51 -0.47613878027197548 72 -0.47613878027197548 75 -0.47613096397842458 77 -0.47613281139616775
		 83 -0.47612663610155287;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotate_tempLayer_inputAY";
	rename -uid "878F4E8C-4678-B96C-5D29-EBAED668DFE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.2474734480552672 6 5.6395237661003081
		 35 5.6395237661003081 39 -1.2474752423289743 43 -1.2474752423289743 47 -1.2474752423289743
		 51 -1.2474724897570899 72 -1.2474724897570899 75 -1.2474752423289743 77 -1.2474732385634615
		 83 -1.2474612597666168;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999958133 1;
	setAttr -s 11 ".kiy[8:10]"  0 9.1515656625674186e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999958122 1;
	setAttr -s 11 ".koy[8:10]"  0 9.1515656625674165e-07 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing1_rotate_tempLayer_inputAZ";
	rename -uid "627CE678-45C5-047F-C50D-9FA1EF188F8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.684739257817865 6 -33.949696056257729
		 35 -33.949696056257729 39 13.684743707631556 43 13.684743707631556 47 13.684743707631556
		 51 13.684739466488237 72 13.684739466488237 75 13.684743707631556 77 13.684731021035825
		 83 13.684702795853747;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.9999999999964152 1;
	setAttr -s 11 ".kiy[8:10]"  0 -2.6776695959380752e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999641498 1;
	setAttr -s 11 ".koy[8:10]"  0 -2.6776695959380747e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotate_tempLayer_inputAX";
	rename -uid "51FDFCF6-48B1-9B17-A42C-389EF4B4011F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00016422486283100324 6 4.4959337228924813e-05
		 35 4.4959337228924813e-05 39 0.0001644055437767943 43 0.0001644055437767943 47 0.0001644055437767943
		 51 0.0001659156773110966 72 0.0001659156773110966 75 0.0001644055437767943 77 0.00016508175581365724
		 83 0.00017504852304950325;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999985911 1;
	setAttr -s 11 ".kiy[8:10]"  0 5.3109569181931901e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999985889 1;
	setAttr -s 11 ".koy[8:10]"  0 5.310956918193189e-07 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotate_tempLayer_inputAY";
	rename -uid "5D4EEDE1-4B00-1556-0900-2A9973C7ECF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.00018714067902854422 6 -0.00033249666427709058
		 35 -0.00033249666427709058 39 -0.00019181746316734299 43 -0.00019181746316734299
		 47 -0.00019181746316734299 51 -0.00019733815038375899 72 -0.00019733815038375899
		 75 -0.00019181746316734299 77 -0.00019945349786741235 83 -0.0001785273631900382;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing2_rotate_tempLayer_inputAZ";
	rename -uid "8543A9E1-440F-1960-122C-B69DD5004BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 30.116681603312049 6 74.036824728546037
		 35 74.036824728546037 39 30.116680466770184 43 30.116680466770184 47 30.116680466770184
		 51 30.116674942201271 72 30.116674942201271 75 30.116680466770184 77 30.116682712686583
		 83 30.116677794064692;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotate_tempLayer_inputAX";
	rename -uid "2D023C9F-49CD-753D-CBA8-6B9908C7D71C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.6663811437681544e-05 6 -5.8305975016842246e-05
		 35 -5.8305975016842246e-05 39 -3.6811063355206312e-05 43 -3.6811063355206312e-05
		 47 -3.6811063355206312e-05 51 -3.4221064604922069e-05 72 -3.4221064604922069e-05
		 75 -3.6811063355206312e-05 77 -4.2451273971883609e-05 83 -2.2250970226548278e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotate_tempLayer_inputAY";
	rename -uid "71DCA65B-414A-E4FF-3985-A9A283008AD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.3667333100478474e-06 6 8.3975018255322989e-05
		 35 8.3975018255322989e-05 39 3.3394252298314396e-06 43 3.3394252298314396e-06 47 3.3394252298314396e-06
		 51 5.6115228181103226e-06 72 5.6115228181103226e-06 75 3.3394252298314396e-06 77 7.7818534505215126e-06
		 83 7.5933536541258274e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRing3_rotate_tempLayer_inputAZ";
	rename -uid "D8D44FB4-4DA2-E976-9E3A-A1908704D4B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.3624711363459263e-05 6 37.674659639445274
		 35 37.674659639445274 39 3.2527062436891658e-05 43 3.2527062436891658e-05 47 3.2527062436891658e-05
		 51 3.40675378760303e-05 72 3.40675378760303e-05 75 3.2527062436891658e-05 77 3.462160471859589e-05
		 83 3.0570329207007426e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotate_tempLayer_inputAX";
	rename -uid "FB4C169B-4BF2-285D-C066-7B88CCC922F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.7370609949502037e-05 6 12.922408854052323
		 35 12.922408854052323 39 9.9854857365549117e-05 43 9.9854857365549117e-05 47 9.9854857365549117e-05
		 51 8.9226395281767729e-05 72 8.9226395281767729e-05 75 9.9854857365549117e-05 77 0.00010133350996254066
		 83 0.00010626990464945345;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999991196 1;
	setAttr -s 11 ".kiy[8:10]"  0 4.1986386290715078e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999991185 1;
	setAttr -s 11 ".koy[8:10]"  0 4.1986386290715078e-07 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotate_tempLayer_inputAY";
	rename -uid "CE204B1F-449C-2920-CED6-DCADFC56CC69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.00011949465850379936 6 18.216476142182717
		 35 18.216476142182717 39 -0.00011917865433631577 43 -0.00011917865433631577 47 -0.00011917865433631577
		 51 -0.00011023518447647395 72 -0.00011023518447647395 75 -0.00011917865433631577
		 77 -0.00011979643286130811 83 -8.5289077497102136e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky1_rotate_tempLayer_inputAZ";
	rename -uid "D7CCA6F5-4C9A-9434-FD9C-F992AC34ADFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 25.920032068143058 6 6.5248643288211952
		 35 6.5248643288211952 39 25.920034511264546 43 25.920034511264546 47 25.920034511264546
		 51 25.920027466557681 72 25.920027466557681 75 25.920034511264546 77 25.920025222786663
		 83 25.920016825722943;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999933009 1;
	setAttr -s 11 ".kiy[8:10]"  0 -1.1575159911811924e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999932998 1;
	setAttr -s 11 ".koy[8:10]"  0 -1.1575159911811924e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotate_tempLayer_inputAX";
	rename -uid "7E313978-49A2-ABEC-9D37-CDBA5FE4A1C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.8160109278252692e-05 6 -0.00022523190579324304
		 35 -0.00022523190579324304 39 -5.8545473290090377e-05 43 -5.8545473290090377e-05
		 47 -5.8545473290090377e-05 51 -6.0195313210564047e-05 72 -6.0195313210564047e-05
		 75 -5.8545473290090377e-05 77 -5.1226141256013939e-05 83 -8.3576877498113561e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotate_tempLayer_inputAY";
	rename -uid "F26559A0-4983-D514-BF2F-64879AA8711E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00013901235611889424 6 -3.6809184335238926e-05
		 35 -3.6809184335238926e-05 39 0.0001402505065475652 43 0.0001402505065475652 47 0.0001402505065475652
		 51 0.00013235235987589273 72 0.00013235235987589273 75 0.0001402505065475652 77 0.00013590518414556546
		 83 0.0001293444324047321;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.9999999999997452 1;
	setAttr -s 11 ".kiy[8:10]"  0 -7.1380088347127947e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.9999999999997452 1;
	setAttr -s 11 ".koy[8:10]"  0 -7.1380088347127958e-07 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky2_rotate_tempLayer_inputAZ";
	rename -uid "1BD903FE-4B2F-77BE-BF62-D6BB0D40C7B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 33.757142167074925 6 77.677239660189485
		 35 77.677239660189485 39 33.757144720300936 43 33.757144720300936 47 33.757144720300936
		 51 33.757141256545623 72 33.757141256545623 75 33.757144720300936 77 33.757146291549077
		 83 33.757123476943399;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotate_tempLayer_inputAX";
	rename -uid "C5514736-4D34-0D87-A211-FD90246A828D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.2098306163381012e-05 6 7.442478260841471e-05
		 35 7.442478260841471e-05 39 -2.3569800580035256e-05 43 -2.3569800580035256e-05 47 -2.3569800580035256e-05
		 51 -2.2457006002388228e-05 72 -2.2457006002388228e-05 75 -2.3569800580035256e-05
		 77 -2.0932968703787994e-05 83 -5.2734703408996814e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotate_tempLayer_inputAY";
	rename -uid "1230347C-4BF4-BD6D-9C03-F6AD8655836F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.6098928795639618e-05 6 -3.9687128592773524e-06
		 35 -3.9687128592773524e-06 39 -6.7758089802872032e-05 43 -6.7758089802872032e-05
		 47 -6.7758089802872032e-05 51 -6.9492881528300326e-05 72 -6.9492881528300326e-05
		 75 -6.7758089802872032e-05 77 -7.8517365304772306e-05 83 -8.7589086375275928e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999915778 1;
	setAttr -s 11 ".kiy[8:10]"  0 -1.2979356905245001e-06 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999915767 1;
	setAttr -s 11 ".koy[8:10]"  0 -1.2979356905244997e-06 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinky3_rotate_tempLayer_inputAZ";
	rename -uid "9D0637D6-4BD2-81E3-C15B-0A919CBA015F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.279974500839646 6 54.954564460660848
		 35 54.954564460660848 39 17.279975405583954 43 17.279975405583954 47 17.279975405583954
		 51 17.279968824290954 72 17.279968824290954 75 17.279975405583954 77 17.279971279174301
		 83 17.280004985430736;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftFootIndex1_rotate_tempLayer_inputAX";
	rename -uid "CB9D3F48-4584-ED19-D650-97838C4EC374";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -11.752768765045946 6 -11.752768765045946
		 35 -11.752768765045946 39 -10.269561155353003 43 -10.269561155353003 47 -10.269561155353003
		 51 -10.269556439468808 72 -10.269556439468808 75 -10.269561155353003 77 -8.6649418118381725
		 83 -1.5560533936409768e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.82994735108468354 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.55784172883311367 0;
	setAttr -s 11 ".kox[8:10]"  1 0.82994735108468354 1;
	setAttr -s 11 ".koy[8:10]"  0 0.55784172883311367 0;
createNode animCurveTA -n "Character1_Ctrl_LeftFootIndex1_rotate_tempLayer_inputAY";
	rename -uid "F4DE6A53-42F8-8824-93F4-DA9527218239";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.2254948488690698e-06 6 7.2254948488690698e-06
		 35 7.2254948488690698e-06 39 1.4833544481327958e-05 43 1.4833544481327958e-05 47 1.4833544481327958e-05
		 51 4.5655674759835728e-06 72 4.5655674759835728e-06 75 1.4833544481327958e-05 77 1.5128387151103096e-06
		 83 2.671312917630945e-05;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftFootIndex1_rotate_tempLayer_inputAZ";
	rename -uid "C1C5B01E-4F64-0D90-17CD-14A7779EA11A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.4787915988670075e-23 6 0 35 0 39 0 43 0
		 47 0 51 4.3534910593089635e-06 72 4.3534910593089635e-06 75 0 77 6.4514070631267615e-06
		 83 5.9466725371169142e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightFootIndex1_rotate_tempLayer_inputAX";
	rename -uid "E07AF80A-48F1-DB42-A876-75BA14668C69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -16.421684315058627 6 -16.421684315058627
		 35 -16.421684315058627 39 -14.349263139851942 43 -14.349263139851942 47 -14.349263139851942
		 51 -14.349252288134089 72 -14.349252288134089 75 -14.349263139851942 77 -12.107190421758629
		 83 7.3643776986619177e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.7289340513414162 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.68458392385082312 0;
	setAttr -s 11 ".kox[8:10]"  1 0.7289340513414162 1;
	setAttr -s 11 ".koy[8:10]"  0 0.68458392385082312 0;
createNode animCurveTA -n "Character1_Ctrl_RightFootIndex1_rotate_tempLayer_inputAY";
	rename -uid "94BE3EBF-4E32-A465-0D56-77BF71BD5AE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.4598839048791463e-05 6 1.4598839048791463e-05
		 35 1.4598839048791463e-05 39 7.9637001544005856e-06 43 7.9637001544005856e-06 47 7.9637001544005856e-06
		 51 9.6357584984644783e-06 72 9.6357584984644783e-06 75 7.9637001544005856e-06 77 4.4592982780502076e-06
		 83 -4.2236656075680078e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999968192 1;
	setAttr -s 11 ".kiy[8:10]"  0 -7.9766122384166938e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999968181 1;
	setAttr -s 11 ".koy[8:10]"  0 -7.9766122384166927e-07 0;
createNode animCurveTA -n "Character1_Ctrl_RightFootIndex1_rotate_tempLayer_inputAZ";
	rename -uid "D0FDE7EE-4BD4-7526-1BAF-23AEE60D2D7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.1356427184072162e-06 6 -4.1356427184072162e-06
		 35 -4.1356427184072162e-06 39 -5.5894252428675151e-06 43 -5.5894252428675151e-06
		 47 -5.5894252428675151e-06 51 1.3360288154922785e-05 72 1.3360288154922785e-05 75 -5.5894252428675151e-06
		 77 -2.753467294146295e-06 83 7.3062753022130189e-06;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.99999999999964384 1;
	setAttr -s 11 ".kiy[8:10]"  0 8.4402162698551e-07 0;
	setAttr -s 11 ".kox[8:10]"  1 0.99999999999964373 1;
	setAttr -s 11 ".koy[8:10]"  0 8.4402162698551e-07 0;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateX_tempLayer_inputA";
	rename -uid "3C71ED16-492E-4E3F-33E1-AB8F305D06ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 1.3040503255012936e-06 35 1.3040503255012936e-06
		 39 0 43 0 47 0 51 4.9808653201921516e-06 72 0 75 0 77 0 83 0;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateY_tempLayer_inputA";
	rename -uid "0E8CD527-4FF7-AAEA-5271-5BBD43FE0092";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 125.67380177643859 6 125.6737804279006
		 35 125.6737804279006 39 125.67380177643859 43 125.67380177643859 47 125.67380177643859
		 51 125.6737681140894 72 125.67380177643859 75 125.67380177643859 77 125.67380177643859
		 83 125.67380177643859;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTL -n "Character1_Ctrl_HipsEffector_translateZ_tempLayer_inputA";
	rename -uid "C75D7E8C-4088-4F57-A253-28B551C1DFB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 3.3323423224373983e-05 35 3.3323423224373983e-05
		 39 0 43 0 47 0 51 -3.120600854344957e-05 72 0 75 0 77 0 83 0;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 18 
		18 18;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotate_tempLayer_inputAX";
	rename -uid "E018AB6E-407E-DF3C-7290-649FEC104476";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.9871375001046725 6 25.910907259283888
		 35 41.863143671237872 39 180.7731639670603 43 338.89261052705808 47 484.82250251925069
		 51 593.34981660285928 72 618.38061628562571 75 639.36852275330068 77 705.77820251375658
		 83 704.99999544092236;
	setAttr -s 11 ".kit[2:10]"  2 2 18 1 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 1 2 18 18 
		18 18;
	setAttr -s 11 ".kix[5:10]"  0.050761249583174295 0.47111643293972116 
		0.84834134692485141 0.1086162785380036 1 1;
	setAttr -s 11 ".kiy[5:10]"  0.9987108167736819 0.88207103263521425 
		0.52944967569895551 0.99408375101726454 0 0;
	setAttr -s 11 ".kox[5:10]"  0.050761245211492168 0.84834134692485141 
		0.705703714467391 0.10861627853800362 1 1;
	setAttr -s 11 ".koy[5:10]"  0.99871081699588038 0.52944967569895551 
		0.70850706939798924 0.99408375101726465 0 0;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotate_tempLayer_inputAY";
	rename -uid "FB8E03F3-4604-64FF-7DA9-2BAD7DAB6DC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.833278829956775 6 -5.6433738656277388
		 35 -5.6433738656277388 39 1.6595974570535861 43 2.1156232884974324 47 -5.3634275649667895
		 51 -19.174281673456424 72 -21.244033066038746 75 3.7504627076132668 77 10.043822447102656
		 83 6.0864351577000164;
	setAttr -s 11 ".kit[2:10]"  2 1 1 1 18 2 18 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 1 1 1 2 18 18 
		18 18;
	setAttr -s 11 ".kix[3:10]"  0.89019845987533541 0.90925600008595597 
		0.54248824537260121 0.98822705722985382 0.99867108060091103 0.29191428705229194 1 
		1;
	setAttr -s 11 ".kiy[3:10]"  0.45557293821690176 -0.41623734372072857 
		-0.84006339262733998 -0.1529943899586628 -0.05153710092165488 0.95644448297575113 
		0 0;
	setAttr -s 11 ".kox[3:10]"  0.8901984513214467 0.90925604145644889 
		0.54248830141302684 0.99867108060091103 1 0.29191428705229189 1 1;
	setAttr -s 11 ".koy[3:10]"  0.45557295493136774 -0.41623725334831396 
		-0.84006335643807784 -0.05153710092165488 0 0.95644448297575124 0 0;
createNode animCurveTA -n "Character1_Ctrl_HipsEffector_rotate_tempLayer_inputAZ";
	rename -uid "CBF4616D-4B0D-B63B-0D29-A2B829A67350";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 21.557916087684355 6 30.956796880191114
		 35 30.956796880191114 39 -30.289325284988024 43 -30.791650849219717 47 -30.791634734531137
		 51 -61.180870163623283 72 -61.180870482275296 75 -64.693345173088559 77 -34.549602058656284
		 83 -34.573550943202328;
	setAttr -s 11 ".kit[2:10]"  2 18 1 1 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 1 1 2 18 1 
		18 18;
	setAttr -s 11 ".kix[4:10]"  1 1 0.99999999999999956 1 1 1 1;
	setAttr -s 11 ".kiy[4:10]"  0 0 -2.3835114834217353e-08 -7.9450382780724544e-09 
		0 0 0;
	setAttr -s 11 ".kox[4:10]"  1 1 1 0.99999999999999978 1 1 1;
	setAttr -s 11 ".koy[4:10]"  0 0 -7.9450382780724544e-09 -2.383511483421736e-08 
		0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftAnkleEffector_translateX_tempLayer_inputA";
	rename -uid "D5D70DC0-40D5-0CD9-710A-FDBC2AEA8202";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 28.573936462402344 6 37.762036673923376
		 35 6.1707080558122449 39 -19.74896240234375 43 0.15833282470703125 47 0.15833282470703125
		 51 -76.902117516693266 72 -98.728566440153628 75 -0.20576486197529675 76 87.290084838867188
		 77 64.865852355957031 83 72.849655151367188;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
	setAttr -s 12 ".kox[8:11]"  1 1 1 1;
	setAttr -s 12 ".koy[8:11]"  0 0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftAnkleEffector_translateY_tempLayer_inputA";
	rename -uid "079E70B7-4848-F24E-A9AB-BD8E4392AFF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 92.861137390136719 6 51.879161010390021
		 35 87.567952173623695 39 180.22187805175781 43 92.100326538085938 47 92.100326538085938
		 51 149.12607833990717 72 158.01531972076771 75 173.52935280404608 76 298.1217041015625
		 77 164.01446533203125 83 62.621967315673828;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 0.00099080033798718881 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 -0.99999950915722469 0;
	setAttr -s 12 ".kox[8:11]"  1 1 0.0009908003379871886 1;
	setAttr -s 12 ".koy[8:11]"  0 0 -0.99999950915722458 0;
createNode animCurveTL -n "Character1_Ctrl_LeftAnkleEffector_translateZ_tempLayer_inputA";
	rename -uid "38212DDB-4408-E1DC-ED52-CFBA57A6E0D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.6060371398925781 6 -50.807206266465187
		 35 -88.181110321001142 39 195.23353576660156 43 100.18629455566406 47 100.18629455566406
		 51 -4.5716602490935543 72 7.5781400503193481 75 96.677760038046529 76 367.03756713867188
		 77 126.66796875 83 151.25070190429688;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
	setAttr -s 12 ".kox[8:11]"  1 1 1 1;
	setAttr -s 12 ".koy[8:11]"  0 0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftAnkleEffector_rotate_tempLayer_inputAX";
	rename -uid "A223D0FB-4004-7853-EF16-C6B141A62711";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -37.315850178337158 6 -12.236282603913502
		 35 -50.322483018535458 39 -183.81851237967939 43 -287.73436635927845 47 -287.73436635927845
		 51 -250.90206056032699 72 -258.27372738819565 75 -266.7377302687878 76 -308.91488475991071
		 77 -212.65105923196526 83 26.780551404912654;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 0.039793290671111502 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0.99920793332397251 0;
	setAttr -s 12 ".kox[8:11]"  1 1 0.039793290671111502 1;
	setAttr -s 12 ".koy[8:11]"  0 0 0.99920793332397251 0;
createNode animCurveTA -n "Character1_Ctrl_LeftAnkleEffector_rotate_tempLayer_inputAY";
	rename -uid "B7AD2847-4E9F-205D-44F3-FC99A8352686";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -43.416298755723929 6 -28.743737075379794
		 35 -23.256612584642351 39 5.8644370217341848 43 10.491515891487159 47 10.491515891487159
		 51 121.91116970251137 72 148.49094171363819 75 78.84763341143811 76 -32.386835101858331
		 77 230.3240689912522 83 -353.6333820160317;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
	setAttr -s 12 ".kox[8:11]"  1 1 1 1;
	setAttr -s 12 ".koy[8:11]"  0 0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftAnkleEffector_rotate_tempLayer_inputAZ";
	rename -uid "E6AEA531-40BD-0ECE-3AC4-A2A7B3A89FA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 126.86589217837694 6 94.927519728689134
		 35 136.85677893938029 39 77.401829576338343 43 62.31631324412632 47 62.31631324412632
		 51 -14.463918689991555 72 -21.714651617127469 75 -19.632153644425969 76 -9.0466958250684222
		 77 -91.304526346654256 83 -25.073679421692429;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
	setAttr -s 12 ".kox[8:11]"  1 1 1 1;
	setAttr -s 12 ".koy[8:11]"  0 0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateX_tempLayer_inputA";
	rename -uid "E767C059-433F-8A0E-801F-BB965ADB750A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.7663450241088867 6 -24.548979408840307
		 35 -24.548979408840307 39 38.368759155273438 43 3.0753688812255859 47 13.453401565551758
		 51 3.9036941528320313 72 3.9036941528320313 75 11.002370834350586 77 -13.219221115112305
		 83 22.63569450378418;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateY_tempLayer_inputA";
	rename -uid "8CC33297-4885-C293-FC2C-9CBBDE5031B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 99.367156982421875 6 122.55289102740991
		 35 122.55289102740991 39 200.45559692382813 43 180.45333862304688 47 100.00869750976563
		 51 184.44779968261719 72 184.44779968261719 75 150.47381591796875 77 122.20123291015625
		 83 16.805885314941406;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0019949896343769203 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99999801000619937 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0019949896343769203 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99999801000619937 0;
createNode animCurveTL -n "Character1_Ctrl_RightAnkleEffector_translateZ_tempLayer_inputA";
	rename -uid "7083A9BA-4032-804B-F27F-AC97E42FB6A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -91.0753173828125 6 -88.950791868662861
		 35 -88.950791868662861 39 211.59054565429688 43 204.18830871582031 47 107.40216827392578
		 51 194.50132751464844 72 194.50132751464844 75 158.83273315429688 77 146.25700378417969
		 83 58.771011352539063;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0026650123033184077 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99999644884840633 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0026650123033184073 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99999644884840633 0;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotate_tempLayer_inputAX";
	rename -uid "BABDA1CC-4D1E-6F14-905C-DA8112EA6A88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.061489528089332 6 3.0773191380326343
		 35 3.0773191380326343 39 39.286749496289723 43 -103.11969422982486 47 62.930774617586636
		 51 -29.795955425347984 72 -29.795955425347984 75 -74.987429014574431 77 -155.81123056066468
		 83 -148.27123029386723;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotate_tempLayer_inputAY";
	rename -uid "E1548D6D-4C81-159A-5F6E-A8B234BD5542";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.920214830537885 6 13.840169955985768
		 35 13.840169955985768 39 211.68198008123372 43 165.05254632731388 47 191.74485491253918
		 51 189.38401196345131 72 189.38401196345131 75 178.56796835171994 77 158.73179058787719
		 83 149.84862941712328;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.46967599903955282 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.8828388618123908 0;
	setAttr -s 11 ".kox[8:10]"  1 0.46967599903955287 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.88283886181239091 0;
createNode animCurveTA -n "Character1_Ctrl_RightAnkleEffector_rotate_tempLayer_inputAZ";
	rename -uid "03D52B60-455A-4ED7-2B69-FD93BFEB8697";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 132.3159955637845 6 153.80206615005858
		 35 153.80206615005858 39 226.03976059580486 43 268.7854325533491 47 228.2276139036457
		 51 224.16333087276303 72 224.16333087276303 75 272.95747277435572 77 242.49315982481374
		 83 237.53555100939494;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.61033028919621113 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.79214704322472185 0;
	setAttr -s 11 ".kox[8:10]"  1 0.61033028919621102 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.79214704322472174 0;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateX_tempLayer_inputA";
	rename -uid "62211B4D-4FF1-F49D-532A-B986945AF5DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 40.376674652099609 6 -22.689879067043424
		 35 -9.7463165566145094 39 -41.781669616699219 43 -15.28734016418457 47 6.3223342895507813
		 51 8.6157302856445313 72 26.463469234895207 75 -43.239662170410156 77 57.773891448974609
		 83 71.620254516601563;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0048146862558633256 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99998840933095701 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0048146862558633256 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99998840933095701 0;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateY_tempLayer_inputA";
	rename -uid "E3D0C012-45E5-8B63-1E9C-D4BB9AAFB136";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 170.43026733398438 6 166.55019865772741
		 35 164.46948792194036 39 264.28369140625 43 328.44317626953125 47 284.36822509765625
		 51 289.45501708984375 72 179.86970623325556 75 171.40531921386719 77 322.52340698242188
		 83 154.04067993164063;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftWristEffector_translateZ_tempLayer_inputA";
	rename -uid "FE17FA35-4ED0-CDB8-7341-56910946C4A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.4437351226806641 6 38.029003104170215
		 35 46.733280402839284 39 108.85810852050781 43 226.17776489257813 47 192.83763122558594
		 51 158.93905639648438 72 22.699690991461296 75 30.598533630371094 77 297.79904174804688
		 83 75.874931335449219;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotate_tempLayer_inputAX";
	rename -uid "225C60B8-440D-AD42-25E7-CFB650DB9A8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.190294786078828 6 -40.035930120131347
		 35 -5.3045911426039982 39 -1.9885847022104219 43 5.5302126770004714 47 101.04575004124102
		 51 23.656286363973567 72 -6.0889068405738698 75 -35.321807873290432 77 -48.956507051268225
		 83 -39.977918712987275;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotate_tempLayer_inputAY";
	rename -uid "C56ACAA0-496C-2BF2-C3F6-AF9C5703BC55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.9264511140071248 6 21.088655000119211
		 35 15.373748162478259 39 -38.163479608614772 43 6.0837295444335053 47 162.89627216547683
		 51 10.977706903041399 72 22.880191962288801 75 -17.110468720723468 77 -27.081371432888808
		 83 33.212189333038438;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftWristEffector_rotate_tempLayer_inputAZ";
	rename -uid "0EF93229-4AC0-F7D0-83B3-C4B5BAA53A6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -29.255072941952722 6 -158.54417193951033
		 35 -181.40017608402943 39 -102.218852781347 43 -185.09350346929395 47 -191.81279591599204
		 51 -202.46687652773886 72 -248.71102446918121 75 -139.45364891457169 77 5.2703087708793328
		 83 55.591002091298222;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.078096017311394414 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99694584209980952 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0780960173113944 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99694584209980952 0;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateX_tempLayer_inputA";
	rename -uid "11D7406D-432B-84A1-03F1-05B5C9888053";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -44.793689727783203 6 -34.873861916164515
		 35 -29.786744718235603 39 63.125679016113281 43 31.736286163330078 47 46.001441955566406
		 51 -8.4525623321533203 72 -8.4525623321533203 75 46.001441955566406 77 -19.730415344238281
		 83 -30.798854827880859;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.006023022263224008 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99998186143690471 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0060230222632240071 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.9999818614369046 0;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateY_tempLayer_inputA";
	rename -uid "2F0613D4-40C6-3DD8-C15A-9AAE2ABAE352";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 173.27775573730469 6 150.36706232546484
		 35 151.00924030221921 39 272.65890502929688 43 268.2860107421875 47 198.351318359375
		 51 226.07833862304688 72 226.07833862304688 75 198.351318359375 77 199.0948486328125
		 83 132.85249328613281;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightWristEffector_translateZ_tempLayer_inputA";
	rename -uid "22405240-47E4-D55C-10C7-BF94BB811A02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.5000953674316406 6 -30.113507742780996
		 35 -16.290553512936526 39 161.41085815429688 43 152.20124816894531 47 75.617179870605469
		 51 93.683036804199219 72 93.683036804199219 75 75.617179870605469 77 96.751136779785156
		 83 31.580680847167969;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotate_tempLayer_inputAX";
	rename -uid "9E3F2FAD-4859-8B39-C389-41BA5B73264C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -30.254559192218025 6 84.490213228930315
		 35 80.613912327487895 39 -28.493008211111615 43 28.515110826213061 47 -5.9816009072427478
		 51 49.930564022631188 72 49.930564022631188 75 -5.9816009072427478 77 64.12553308136448
		 83 8.73472716051395;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotate_tempLayer_inputAY";
	rename -uid "81955088-4770-C2B4-44F5-368932926474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.6357660267101366 6 23.397429099309953
		 35 18.758956978288314 39 40.699441953827275 43 39.65053401419329 47 13.864011383319738
		 51 4.8898441438469495 72 4.8898441438469495 75 13.864011383319738 77 34.319962031807798
		 83 9.970582246609526;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightWristEffector_rotate_tempLayer_inputAZ";
	rename -uid "2B6F0687-4C6B-D5F4-7415-43A7D3579230";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -37.645830458124806 6 -78.290981725946438
		 35 -66.583046203164074 39 -163.30955170789869 43 -80.139041911954038 47 -159.80401030545841
		 51 -11.826164039319774 72 -11.826164039319774 75 -159.80401030545841 77 0.42463086951307816
		 83 349.38036346824703;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.029993066286885747 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99955010678540313 0;
	setAttr -s 11 ".kox[8:10]"  1 0.029993066286885743 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99955010678540301 0;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateX_tempLayer_inputA";
	rename -uid "4A83477B-418A-67F7-FE4D-66BC313C0065";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 26.509313583374023 6 31.40215813388431
		 35 23.240179415065175 39 -17.154144287109375 43 -33.797069549560547 47 -33.797069549560547
		 51 -44.292330529388586 72 -53.218426974821597 75 0.4303816834348595 76 44.394184112548828
		 77 57.812000274658203 83 54.515754699707031;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.0011618114530376825 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0.99999932509684608 0 0;
	setAttr -s 12 ".kox[8:11]"  1 0.0011618114530376822 1 1;
	setAttr -s 12 ".koy[8:11]"  0 0.99999932509684608 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateY_tempLayer_inputA";
	rename -uid "74CEBFE6-4BA0-FD43-23C7-038C62CC3CB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 103.79281616210938 6 77.708440999036014
		 35 95.262858037759912 39 198.22662353515625 43 127.30895233154297 47 127.30895233154297
		 51 124.63383463800346 72 142.08496667642112 75 153.46564463443565 76 321.01715087890625
		 77 197.73028564453125 83 90.571182250976563;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 0.0010125289460004986 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 -0.99999948739243516 0;
	setAttr -s 12 ".kox[8:11]"  1 1 0.0010125289460004988 1;
	setAttr -s 12 ".koy[8:11]"  0 0 -0.99999948739243538 0;
createNode animCurveTL -n "Character1_Ctrl_LeftKneeEffector_translateZ_tempLayer_inputA";
	rename -uid "B0109221-4935-8ADF-8303-2782B50DBFDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 50.764228820800781 6 -9.1493632481285658
		 35 -42.438414966970583 39 149.27626037597656 43 93.089675903320313 47 93.089675903320313
		 51 -32.494774915701896 72 -3.2856477098410437 75 51.511302019180619 76 358.16571044921875
		 77 162.11456298828125 83 114.84077453613281;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 0.0014102233512154063 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 -0.99999900563455546 0;
	setAttr -s 12 ".kox[8:11]"  1 1 0.0014102233512154061 1;
	setAttr -s 12 ".koy[8:11]"  0 0 -0.99999900563455535 0;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotate_tempLayer_inputAX";
	rename -uid "54016410-44B9-DE6A-B7B0-07B40C78D571";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -54.675970989524636 6 -30.226312220331543
		 35 -51.314485227649058 39 -191.06190720536108 43 -295.47019681178278 47 -295.47019681178278
		 51 -289.17678399885381 72 -304.23319199165229 75 -274.23335232773218 76 -373.42553777443902
		 77 -240.97225733328062 83 -522.82208609815393;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
	setAttr -s 12 ".kox[8:11]"  1 1 1 1;
	setAttr -s 12 ".koy[8:11]"  0 0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotate_tempLayer_inputAY";
	rename -uid "4337B65F-43C2-F407-6629-0B85D6FC731F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -2.3940655155582036 6 -7.3929555245931544
		 35 20.203211653209856 39 3.0093301117002542 43 -43.392125796482624 47 -43.392125796482624
		 51 41.281877109094928 72 67.038239062682209 75 0.7374401688941804 76 -60.21249912098412
		 77 -171.79508694964042 83 -158.22681716785294;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.022133698162007946 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 -0.99975501969516167 0 0;
	setAttr -s 12 ".kox[8:11]"  1 0.022133698162007946 1 1;
	setAttr -s 12 ".koy[8:11]"  0 -0.99975501969516156 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftKneeEffector_rotate_tempLayer_inputAZ";
	rename -uid "6E05FDA6-4A89-9E0D-6D22-ECA106489443";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 77.210841018669257 6 58.199658304889766
		 35 80.450999016452485 39 -68.606211024105207 43 -11.395821088404986 47 -11.395821088404986
		 51 -131.25504359662111 72 -145.7078437552849 75 -113.9516415529329 76 -21.181032566334874
		 77 -133.5664975472188 83 127.51082573958699;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 1 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 0 0;
	setAttr -s 12 ".kox[8:11]"  1 1 1 1;
	setAttr -s 12 ".koy[8:11]"  0 0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateX_tempLayer_inputA";
	rename -uid "BF42F72C-4CB3-511E-5DBE-8C9657781B2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -9.9238452911376953 6 -18.842161781887174
		 35 -18.842161781887174 39 42.340129852294922 43 -24.77570915222168 47 40.293891906738281
		 51 -20.212182998657227 72 -20.212182998657227 75 -25.226909637451172 77 -16.645048141479492
		 83 17.066473007202148;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0063050375607923339 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.999980123053132 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0063050375607923339 1;
	setAttr -s 11 ".koy[8:10]"  0 0.999980123053132 0;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateY_tempLayer_inputA";
	rename -uid "B6826173-4B3C-2F9E-AE21-01BA2D6E5B19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 102.70773315429688 6 102.79714182574051
		 35 102.79714182574051 39 208.013427734375 43 220.46800231933594 47 116.23903656005859
		 51 180.07154846191406 72 180.07154846191406 75 183.14433288574219 77 168.93218994140625
		 83 64.521217346191406;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0022480103616074726 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99999747322151478 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0022480103616074726 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99999747322151478 0;
createNode animCurveTL -n "Character1_Ctrl_RightKneeEffector_translateZ_tempLayer_inputA";
	rename -uid "53140FB1-4E92-E9DA-A449-66B91266F5C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -42.441314697265625 6 -44.005154817820141
		 35 -44.005154817820141 39 162.90711975097656 43 212.3193359375 47 69.203521728515625
		 51 151.57997131347656 72 151.57997131347656 75 150.89253234863281 77 161.987548828125
		 83 70.398483276367188;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotate_tempLayer_inputAX";
	rename -uid "89225CAD-467C-C142-44C7-8E83A51E7035";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 22.133674886682591 6 12.553080100402509
		 35 12.553080100402509 39 42.470177995227978 43 68.22489959239941 47 51.553988331703451
		 51 -18.321215377194168 72 -18.321215377194168 75 -74.164429637214454 77 -153.6654164046285
		 83 -317.74702796241382;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.062602606409085923 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99803853315931113 0;
	setAttr -s 11 ".kox[8:10]"  1 0.062602606409085909 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99803853315931101 0;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotate_tempLayer_inputAY";
	rename -uid "5A9E79A4-40CA-9E39-4FD4-0F83A7291B27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -9.4997404519801165 6 6.6302129334524649
		 35 6.6302129334524649 39 175.39135119266848 43 325.70278622088972 47 147.1092416359206
		 51 209.20362880366227 72 209.20362880366227 75 227.13803703977996 77 183.97444048277555
		 83 -6.4696481908826806;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.065264547742104426 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99786799668494153 0;
	setAttr -s 11 ".kox[8:10]"  1 0.065264547742104426 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99786799668494164 0;
createNode animCurveTA -n "Character1_Ctrl_RightKneeEffector_rotate_tempLayer_inputAZ";
	rename -uid "C38179A7-41E1-325D-7950-CDBC850324C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 86.070620077732002 6 113.72775467194131
		 35 113.72775467194131 39 98.82440356071784 43 11.486164185607382 47 113.02029034061172
		 51 84.178248382744528 72 84.178248382744528 75 166.3397727439519 77 198.60421730238588
		 83 13.695127226535337;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateX_tempLayer_inputA";
	rename -uid "92FA58B7-40D5-CE67-3F7D-6E932682C402";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.114755630493164 6 -2.8961511922875687
		 35 14.814300890284901 39 -34.360176086425781 43 9.36773681640625 47 -17.876396179199219
		 51 30.230453491210938 72 31.836107937287782 75 -23.099905014038086 77 36.465003967285156
		 83 58.393398284912109;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0032722349959852168 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.999994646224734 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0032722349959852172 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99999464622473411 0;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateY_tempLayer_inputA";
	rename -uid "12F60326-4FD3-17BF-CA60-1CA6F7C50752";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 167.04728698730469 6 172.96755598701955
		 35 169.2960474084316 39 279.28775024414063 43 324.56399536132813 47 279.71865844726563
		 51 282.5826416015625 72 169.51309591058407 75 179.882080078125 77 336.5389404296875
		 83 147.19422912597656;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftElbowEffector_translateZ_tempLayer_inputA";
	rename -uid "DFB68ED6-49D4-4952-0B6A-D2BB4086CF08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.562644958496094 6 52.780142636906533
		 35 51.637475239575451 39 128.1031494140625 43 220.91938781738281 47 199.42356872558594
		 51 147.27088928222656 72 0.018240125787883699 75 43.755508422851563 77 298.060546875
		 83 55.168685913085938;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotate_tempLayer_inputAX";
	rename -uid "006521B6-42DE-AF95-EF25-3289C46F08C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 31.861296410774152 6 11.948187194310011
		 35 3.5921919868494969 39 19.411309318603998 43 20.675451279735512 47 116.27276329935057
		 51 38.340820322288948 72 6.7854461666287182 75 -16.960125630226628 77 -32.25135183205191
		 83 -37.926987249441382;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.58893401409317458 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.80818112267244924 0;
	setAttr -s 11 ".kox[8:10]"  1 0.58893401409317447 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.80818112267244924 0;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotate_tempLayer_inputAY";
	rename -uid "4EC8F0E4-4B49-1596-93D3-0F913332D4D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.6221774354981733 6 -14.572577526922592
		 35 -10.908390854558077 39 -36.033023938528522 43 8.7473828309704782 47 169.49629464342732
		 51 15.630371796891673 72 23.956291210731994 75 -19.41130823549608 77 -33.331697241468412
		 83 15.570688461855866;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftElbowEffector_rotate_tempLayer_inputAZ";
	rename -uid "2B66B9F8-4D88-33A0-CEDE-69B15CFC091D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -39.131695789632772 6 -145.70714554175188
		 35 -171.11015528521546 39 -113.49017754057041 43 -194.44182037943884 47 -197.6272601412079
		 51 -210.7635751200344 72 -259.07586656762732 75 -149.24632218792806 77 -3.1054248213080275
		 83 55.027896375669251;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.074587556177088593 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99721446863928409 0;
	setAttr -s 11 ".kox[8:10]"  1 0.074587556177088593 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99721446863928398 0;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateX_tempLayer_inputA";
	rename -uid "B3DE1BC2-4399-BB72-D953-EC95C112B3DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -26.188449859619141 6 -16.659361488918424
		 35 -8.468244199436775 39 41.2015380859375 43 27.791807174682617 47 21.014127731323242
		 51 13.709657669067383 72 13.709657669067383 75 21.014127731323242 77 -3.3400363922119141
		 83 -8.6700143814086914;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.012506890745264249 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99992178578321111 0;
	setAttr -s 11 ".kox[8:10]"  1 0.012506890745264249 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99992178578321123 0;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateY_tempLayer_inputA";
	rename -uid "2C3B1931-403A-DB05-7A04-95B1B444C268";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 170.35543823242188 6 157.21753611364099
		 35 157.16362972161073 39 285.68112182617188 43 286.64682006835938 47 203.38349914550781
		 51 234.08586120605469 72 234.08586120605469 75 203.38349914550781 77 218.52308654785156
		 83 143.715576171875;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightElbowEffector_translateZ_tempLayer_inputA";
	rename -uid "CC816327-4ED2-E827-FCC7-8D96891CA107";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.701051712036133 6 -13.624855888293951
		 35 -3.7120903966275591 39 160.83998107910156 43 169.46087646484375 47 76.557174682617188
		 51 103.44464111328125 72 103.44464111328125 75 76.557174682617188 77 98.865699768066406
		 83 38.129043579101563;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotate_tempLayer_inputAX";
	rename -uid "668F2705-4334-E99B-40AE-92B2FFA97C0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 29.799455230804035 6 -18.723450151284581
		 35 -12.875529245844017 39 39.202552196182786 43 -12.92141998863303 47 9.9561784303588361
		 51 -47.504838245057847 72 -47.504838245057847 75 9.9561784303588361 77 121.44513407492848
		 83 -5.9898807876955749;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotate_tempLayer_inputAY";
	rename -uid "C9745C53-4D20-7832-701E-2E886DF1C7F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.578937596226818 6 -15.579771361577633
		 35 -13.96254915781121 39 -30.700385851431481 43 -46.042321452203097 47 -11.378641612253334
		 51 -18.296959402829486 72 -18.296959402829486 75 -11.378641612253334 77 -130.38546089216726
		 83 -25.207490677829401;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightElbowEffector_rotate_tempLayer_inputAZ";
	rename -uid "564B0C5C-45F2-097E-93E0-4893DEBA34D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -45.156691279322558 6 -44.555261628126679
		 35 -32.944041760404062 39 -183.89385880670986 43 -105.2754915818596 47 -180.24792090701922
		 51 -26.173940098340214 72 -26.173940098340214 75 -180.24792090701922 77 -189.75359572363087
		 83 341.1131529338719;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateX_tempLayer_inputA";
	rename -uid "DC75B874-400A-2D13-08EB-44B8BC29AA97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.5091719627380371 6 0.5816358255347005
		 35 0.5816358255347005 39 0.417580246925354 43 -0.15650597214698792 47 2.1011700630187988
		 51 1.5619060733946171 72 0.92462417263934782 75 -0.32503730058670044 77 4.6857185363769531
		 83 27.523597717285156;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0095751350752777149 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99995415734337045 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0095751350752777149 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99995415734337045 0;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateY_tempLayer_inputA";
	rename -uid "FC5F975E-4F0C-3E04-1E8E-368EDB82BFD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 129.86483764648438 6 130.72143661244652
		 35 130.72143661244652 39 253.39897155761719 43 276.95346069335938 47 160.72007751464844
		 51 128.42373900101575 72 128.48993203794839 75 317.31008911132813 77 222.86662292480469
		 83 129.13139343261719;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0014170913341262691 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.9999989959255714 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0014170913341262689 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99999899592557118 0;
createNode animCurveTL -n "Character1_Ctrl_ChestOriginEffector_translateZ_tempLayer_inputA";
	rename -uid "FEE4AB74-4334-F389-19F6-92A78A943F28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.450024604797363 6 3.0277772279391684
		 35 3.0277772279391684 39 161.24441528320313 43 205.56234741210938 47 56.663589477539063
		 51 -4.9982703129987271 72 -5.1184955939337442 75 305.50393676757813 77 142.54656982421875
		 83 68.669235229492188;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0011259604099253327 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99999936610637674 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0011259604099253327 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99999936610637663 0;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotate_tempLayer_inputAX";
	rename -uid "FFE4BAC4-4B63-69FA-EDD2-71846C67558E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.1388961573181362 6 25.844433494346195
		 35 25.844433494346195 39 188.2619290403843 43 321.66805716398841 47 95.853176453594614
		 51 236.35292671433001 72 252.10039699358552 75 279.36915972598712 77 336.56570727669146
		 83 407.57004292236542;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.11834168750119364 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99297293266199838 0;
	setAttr -s 11 ".kox[8:10]"  1 0.11834168750119364 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99297293266199849 0;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotate_tempLayer_inputAY";
	rename -uid "E5E61797-43A1-76CC-4EED-13A2C55DD316";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.755669785318625 6 -8.024305349019043
		 35 -8.024305349019043 39 -2.5063758280341752 43 -1.7228991300513519 47 -15.831473214322626
		 51 -17.705918005533171 72 -12.782033951592911 75 0.60175027763325428 77 -5.0330314790985016
		 83 7.56466511534527;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_ChestOriginEffector_rotate_tempLayer_inputAZ";
	rename -uid "6A883471-47B2-4E74-8BB2-189B110767BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 40.305865172039518 6 33.745726901016027
		 35 33.745726901016027 39 -16.565673639221568 43 -31.114340212238563 47 -10.54236721638387
		 51 -55.223590157433044 72 -56.733645112950903 75 -61.618120425425033 77 -35.563785596818953
		 83 -52.091446097913888;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateX_tempLayer_inputA";
	rename -uid "725C8D1D-4B25-6C71-74B7-7FA973191E5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.307126522064209 6 -2.7095972372094437
		 35 -2.7095972372094437 39 2.9433412551879883 43 0.27520895004272461 47 10.875820159912109
		 51 0.26187631875594519 72 -1.3162434421067459 75 -1.8448665142059326 77 6.6070289611816406
		 83 30.56268310546875;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0082282567616302101 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99996614732233047 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0082282567616302101 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99996614732233047 0;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateY_tempLayer_inputA";
	rename -uid "F0736725-4C55-7054-88C0-52BA0DAD4084";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 151.55599975585938 6 159.82278071732841
		 35 159.82278071732841 39 280.16485595703125 43 305.669189453125 47 189.4532470703125
		 51 151.30048068705787 72 152.27500538328047 75 338.41415405273438 77 247.69503784179688
		 83 151.83663940429688;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0014292525806263807 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99999897861800879 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0014292525806263805 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99999897861800868 0;
createNode animCurveTL -n "Character1_Ctrl_ChestEndEffector_translateZ_tempLayer_inputA";
	rename -uid "4DA10BC4-444D-FFB3-5972-F48AD05425D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 36.074249267578125 6 18.020391352099864
		 35 18.020391352099864 39 142.82717895507813 43 188.51669311523438 47 43.035835266113281
		 51 -26.781211617132669 72 -25.791471348357277 75 280.376708984375 77 120.25299072265625
		 83 45.334857940673828;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0011345489914056841 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99999935639908599 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0011345489914056841 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99999935639908599 0;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotate_tempLayer_inputAX";
	rename -uid "6BB86123-4127-48C4-9890-668BFBB78772";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.3583967678869968 6 -27.299436654758306
		 35 -27.299436654758306 39 219.09596399828501 43 351.09937297111105 47 133.2522822330987
		 51 305.008383772466 72 301.49372404355904 75 311.90564619612701 77 303.6419306540314
		 83 422.44564680119225;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotate_tempLayer_inputAY";
	rename -uid "B39FDF26-4EAD-4F74-CB45-04A156D83CE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.57367153807885 6 18.609437914352608
		 35 18.609437914352608 39 -4.2795995778547953 43 4.0236285440791368 47 -15.621227639173002
		 51 21.100011225629753 72 20.031658142345247 75 5.6926935648034114 77 -0.63063907957005494
		 83 -19.693329156806282;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.51566812299385356 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.85678841432876285 0;
	setAttr -s 11 ".kox[8:10]"  1 0.51566812299385356 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.85678841432876285 0;
createNode animCurveTA -n "Character1_Ctrl_ChestEndEffector_rotate_tempLayer_inputAZ";
	rename -uid "FA27D2D4-4637-E53C-519E-2D8F11AC097B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 59.471880649559601 6 23.53445316263662
		 35 23.53445316263662 39 -52.742700090551565 43 -27.083275962875557 47 -38.929055755302926
		 51 -25.547964052153144 72 -20.021356989331661 75 -35.213434861143526 77 -44.19144642485309
		 83 -36.980838313229505;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateX_tempLayer_inputA";
	rename -uid "14876232-4421-B777-AC0E-AF8D9EAF6F21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.5154948234558105 6 6.0514920877417282
		 35 12.512163515406968 39 -11.553300857543945 43 -0.7936854362487793 47 -9.7924118041992188
		 51 12.874912261962891 72 12.85206863064716 75 -3.2701396942138672 77 20.926414489746094
		 83 39.154258728027344;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0062855670027485207 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99998024562860932 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0062855670027485216 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99998024562860943 0;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateY_tempLayer_inputA";
	rename -uid "6EC17B01-4361-CF84-B9C3-CF857BC765F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 158.99578857421875 6 166.38273983730684
		 35 166.4398268026905 39 283.13314819335938 43 316.7415771484375 47 301.51211547851563
		 51 269.80819702148438 72 162.52115436118675 75 190.06182861328125 77 353.45953369140625
		 83 161.42306518554688;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftShoulderEffector_translateZ_tempLayer_inputA";
	rename -uid "1E452224-4AAA-F0AE-9B4F-D482DBA9C75C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 36.173728942871094 6 30.763281750980298
		 35 27.250914541934947 39 136.66007995605469 43 199.85479736328125 47 207.66111755371094
		 51 135.28085327148438 72 -14.084216291419693 75 33.204910278320313 77 307.027587890625
		 83 61.131801605224609;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotate_tempLayer_inputAX";
	rename -uid "A2D1FC60-4D5A-F384-C0AD-279675E10DD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.048760985396729 6 10.726826145045393
		 35 9.3770258902281416 39 39.45306709774102 43 -12.82075509019511 47 21.568528875082865
		 51 -28.028186058201356 72 -18.864966885779573 75 7.9245192125975494 77 -13.774824027512004
		 83 -21.513907007533447;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.46066180168810955 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.88757574576227838 0;
	setAttr -s 11 ".kox[8:10]"  1 0.46066180168810955 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.88757574576227849 0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotate_tempLayer_inputAY";
	rename -uid "CDFC5F5A-479E-4242-AD57-F8B5DE5F120D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.055147422410307 6 -15.487175721529697
		 35 -6.6508089651878448 39 8.968906773973174 43 -18.493285598768409 47 62.094185748585545
		 51 -31.197731295989012 72 -16.469931328847515 75 24.377521213386011 77 43.325329428389146
		 83 35.239266419068159;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftShoulderEffector_rotate_tempLayer_inputAZ";
	rename -uid "BC87A977-408E-B443-F9FA-D0ADB11C300B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 52.753487195079501 6 -116.64384979070503
		 35 -89.134230930181644 39 154.90706211670491 43 291.22542017715904 47 129.93503431547273
		 51 320.83451414960882 72 318.86567069930754 75 203.49021002973743 77 25.461533526213231
		 83 12.694045187142082;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.28662304426055168 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.95804343873271935 0;
	setAttr -s 11 ".kox[8:10]"  1 0.28662304426055168 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.95804343873271947 0;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateX_tempLayer_inputA";
	rename -uid "4ED98051-4AAC-E112-46B4-CB9620453770";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -21.463314056396484 6 -14.398321755031706
		 35 -16.4506965920149 39 20.237071990966797 43 7.3372673988342285 47 22.827030181884766
		 51 -1.2467741966247559 72 -1.2467741966247559 75 22.827030181884766 77 -4.3784408569335938
		 83 5.7241487503051758;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateY_tempLayer_inputA";
	rename -uid "B17BDD80-4734-22AE-C806-69B2E36139AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 160.67684936523438 6 167.20168364559063
		 35 163.77655353540513 39 286.55548095703125 43 300.21218872070313 47 198.534423828125
		 51 250.02590942382813 72 250.02590942382813 75 198.534423828125 77 241.46875 83 153.95147705078125;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightShoulderEffector_translateZ_tempLayer_inputA";
	rename -uid "E7CC6BFC-48D9-6866-8EDF-9B9553EFF998";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 36.885738372802734 6 8.8109759629285804
		 35 18.664520685013258 39 147.88278198242188 43 171.85972595214844 47 52.445728302001953
		 51 114.86312866210938 72 114.86312866210938 75 52.445728302001953 77 107.84233093261719
		 83 55.339405059814453;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotate_tempLayer_inputAX";
	rename -uid "AA407245-48FA-B996-FB7A-8F941398A274";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.404221764441452 6 -3.8817361820275664
		 35 10.882678096349677 39 48.184775991319491 43 35.891562561335974 47 10.000303843373892
		 51 32.799950363927913 72 32.799950363927913 75 10.000303843373892 77 22.713887919649821
		 83 8.4840715516511231;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotate_tempLayer_inputAY";
	rename -uid "0D87039A-49E7-F853-87C4-A9A87F6BD8F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -23.108057413775636 6 23.882202994981441
		 35 15.554455280072045 39 2.0316428481975981 43 33.372055545775972 47 -11.339986457411067
		 51 40.268303651954916 72 40.268303651954916 75 -11.339986457411067 77 68.504346909120969
		 83 24.523461126234356;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightShoulderEffector_rotate_tempLayer_inputAZ";
	rename -uid "B5FC125B-4224-AC31-66F8-39A598630757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 73.448975457713601 6 79.717908075072984
		 35 105.10570839787368 39 -152.80883632899429 43 -191.21605653743293 47 -90.227333976744418
		 51 -221.88716668710629 72 -221.88716668710629 75 -90.227333976744418 77 -267.92836962962849
		 83 -314.43525725321274;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.081856694189462176 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99664410980869844 0;
	setAttr -s 11 ".kox[8:10]"  1 0.081856694189462176 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99664410980869844 0;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateX_tempLayer_inputA";
	rename -uid "DF8B9CDC-4FF8-AF8D-0F33-EC82DB5C3353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.5730643272399902 6 -7.3297067953149089
		 35 -4.6866508766828687 39 15.308830261230469 43 15.308830261230469 47 15.308830261230469
		 51 -6.7711234092712402 72 0.74667617459247282 75 -9.4623966217041016 77 5.7821660041809082
		 83 17.631828308105469;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0098417191284612786 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99995156910952265 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0098417191284612786 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99995156910952265 0;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateY_tempLayer_inputA";
	rename -uid "C98688DC-49EF-40CA-AB23-6FB0AE661750";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 157.76547241210938 6 174.03217842702881
		 35 172.1991338569091 39 199.68331909179688 43 199.68331909179688 47 199.68331909179688
		 51 271.9671630859375 72 164.43461291052927 75 269.59197998046875 77 365.7333984375
		 83 164.44540405273438;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_HeadEffector_translateZ_tempLayer_inputA";
	rename -uid "C8508C36-4991-A468-4F67-47BF07C1DC56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 50.337806701660156 6 22.94249969844185
		 35 27.904672008726777 39 32.081710815429688 43 32.081710815429688 47 32.081710815429688
		 51 128.42201232910156 72 -34.761005184453325 75 123.21659088134766 77 302.8345947265625
		 83 41.341297149658203;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotate_tempLayer_inputAX";
	rename -uid "01AA3B45-49FA-8B02-241F-E89F0FB799E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.13543941541734891 6 -40.652745623641955
		 35 -21.062959742991403 39 135.79335208478616 43 135.79335208478616 47 135.79335208478616
		 51 -21.603828480561077 72 -16.344553393692603 75 -21.397555514482367 77 -3.6399791358596789
		 83 348.33812895443532;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.07151759799072345 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99743933809412055 0;
	setAttr -s 11 ".kox[8:10]"  1 0.071517597990723436 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99743933809412055 0;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotate_tempLayer_inputAY";
	rename -uid "1777590E-4CB8-0FC3-D689-1F91E7F40C7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.7105102251946604 6 6.5699958770015146
		 35 19.978931009260165 39 -2.9636422430388887 43 -2.9636422430388887 47 -2.9636422430388887
		 51 29.989857676071171 72 24.263579109126965 75 19.792022180620158 77 -1.5629218917519525
		 83 12.498782721315285;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_HeadEffector_rotate_tempLayer_inputAZ";
	rename -uid "479B6B58-43BF-B868-8770-E88A3787CBE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 48.928086822664348 6 -30.255578500072858
		 35 -23.607666350875121 39 -38.774229203875514 43 -38.774229203875514 47 -38.774229203875514
		 51 -16.734000257655609 72 -19.254786998825587 75 -32.186707396336701 77 -12.332899344306869
		 83 -17.068598844235431;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHipEffector_translateX_tempLayer_inputA";
	rename -uid "E478A84C-4F15-277B-0140-6698D84206E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 2.6438369750976563 6 6.601731650730013
		 35 5.096777315455796 39 -6.7359137535095215 43 -2.0882492065429688 47 -2.0882492065429688
		 51 -3.9593532344667111 72 -1.3218396029954178 75 1.1170653382200157 76 6.3947296142578125
		 77 11.111695289611816 83 34.755966186523438;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.0066701002404777315 0.0082269133914431511 
		1;
	setAttr -s 12 ".kiy[8:11]"  0 0.99997775463396288 0.99996615837539704 
		0;
	setAttr -s 12 ".kox[8:11]"  1 0.0066701002404777315 0.0082269133914431528 
		1;
	setAttr -s 12 ".koy[8:11]"  0 0.99997775463396288 0.99996615837539704 
		0;
createNode animCurveTL -n "Character1_Ctrl_LeftHipEffector_translateY_tempLayer_inputA";
	rename -uid "C177284F-41EC-F192-BBDB-A699038B91DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 126.71765899658203 6 124.18022830403217
		 35 127.6026244752901 39 248.17988586425781 43 158.28762817382813 47 158.28762817382813
		 51 131.03035812457779 72 131.77506633791154 75 131.83923837262807 76 319.4542236328125
		 77 218.73887634277344 83 120.69305419921875;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 0.0011739374104936175 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 -0.99999931093524064 0;
	setAttr -s 12 ".kox[8:11]"  1 1 0.0011739374104936177 1;
	setAttr -s 12 ".koy[8:11]"  0 0 -0.99999931093524075 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHipEffector_translateZ_tempLayer_inputA";
	rename -uid "AE0CE7AC-4A50-F6EB-72D6-3EBFE7FD994A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 9.0207958221435547 6 -1.2163521770408465
		 35 -4.1946683221192984 39 164.56532287597656 43 63.551673889160156 47 63.551673889160156
		 51 1.709869197183707 72 2.884608951014684 75 2.834258696971915 76 320.86663818359375
		 77 147.44004821777344 83 75.599868774414063;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 1 0.00095134464528334837 1;
	setAttr -s 12 ".kiy[8:11]"  0 0 -0.99999954747158049 0;
	setAttr -s 12 ".kox[8:11]"  1 1 0.00095134464528334847 1;
	setAttr -s 12 ".koy[8:11]"  0 0 -0.99999954747158049 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHipEffector_rotate_tempLayer_inputAX";
	rename -uid "5D085DE4-4C73-2857-3448-A28C9DC0EFFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 29.318228463990373 6 -14.489821540934969
		 35 -51.398980801520437 39 -177.89188641415731 43 -292.89212640204175 47 -292.89212640204175
		 51 -247.33785575583289 72 -187.37911995556499 75 -274.24399780098014 76 -313.58105946312116
		 77 -363.59702595232324 83 -522.82208509701695;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.042709612953698746 0.063762879505369505 
		1;
	setAttr -s 12 ".kiy[8:11]"  0 -0.99908752817825996 -0.99796507714307503 
		0;
	setAttr -s 12 ".kox[8:11]"  1 0.042709612953698746 0.063762879505369505 
		1;
	setAttr -s 12 ".koy[8:11]"  0 -0.99908752817825985 -0.99796507714307514 
		0;
createNode animCurveTA -n "Character1_Ctrl_LeftHipEffector_rotate_tempLayer_inputAY";
	rename -uid "293F6226-4134-FE16-D52F-749C5619E7D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -26.616456652563539 6 -27.746957632624419
		 35 -19.913300947977675 39 11.278519295768469 43 36.530902732227979 47 36.530902732227979
		 51 130.78628323786458 72 103.03584299096048 75 0.73862701335763836 76 -45.507809744614192
		 77 -61.244828035771391 83 -158.22633197965186;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.06150812840760489 0.11777978555524726 
		1;
	setAttr -s 12 ".kiy[8:11]"  0 -0.99810658255508633 -0.99303973843676574 
		0;
	setAttr -s 12 ".kox[8:11]"  1 0.06150812840760489 0.11777978555524725 
		1;
	setAttr -s 12 ".koy[8:11]"  0 -0.99810658255508633 -0.99303973843676552 
		0;
createNode animCurveTA -n "Character1_Ctrl_LeftHipEffector_rotate_tempLayer_inputAZ";
	rename -uid "267959C5-4D45-1038-FF46-A7BA0173D6EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -61.225151033668389 6 9.6873669951380172
		 35 49.78139385695728 39 17.017202197778328 43 -43.636129210492335 47 -43.636129210492335
		 51 -100.59237294002216 72 -30.899529078231424 75 -113.95483216076231 76 -92.399504448004151
		 77 -34.934326698639261 83 127.51026346707107;
	setAttr -s 12 ".kit[2:11]"  2 18 18 18 18 2 1 18 
		18 18;
	setAttr -s 12 ".kot[1:11]"  2 18 18 18 18 2 18 1 
		18 18 18;
	setAttr -s 12 ".kix[8:11]"  1 0.048281947229757399 0.060681155433830708 
		1;
	setAttr -s 12 ".kiy[8:11]"  0 0.99883374671248615 0.9981572007330386 
		0;
	setAttr -s 12 ".kox[8:11]"  1 0.048281947229757399 0.060681155433830708 
		1;
	setAttr -s 12 ".koy[8:11]"  0 0.99883374671248615 0.9981572007330386 
		0;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateX_tempLayer_inputA";
	rename -uid "7F258B95-4581-0CB7-0321-0CB60B97F29D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -10.633740425109863 6 -6.1557070089379557
		 35 -6.1557070089379557 39 6.8596053123474121 43 -5.3338818550109863 47 6.6546545028686523
		 51 3.2029094696044922 72 3.2029094696044922 75 2.2115788459777832 77 -1.8470096588134766
		 83 21.545497894287109;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateY_tempLayer_inputA";
	rename -uid "84477418-4A57-F73C-5575-C19DE5A1943C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 124.62640380859375 6 124.64963040358336
		 35 124.64963040358336 39 247.74522399902344 43 269.5244140625 47 156.35903930664063
		 51 227.61674499511719 72 227.61674499511719 75 228.65602111816406 77 216.64486694335938
		 83 117.51313781738281;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0023993070108442702 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99999712165879151 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0023993070108442698 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99999712165879151 0;
createNode animCurveTL -n "Character1_Ctrl_RightHipEffector_translateZ_tempLayer_inputA";
	rename -uid "18C6CB3C-44D4-4D26-1992-18A9B2357089";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.1044607162475586 6 2.8899389970819698
		 35 2.8899389970819698 39 162.52928161621094 43 205.03150939941406 47 59.384548187255859
		 51 156.9476318359375 72 156.9476318359375 75 154.5587158203125 77 143.49029541015625
		 83 73.468086242675781;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0032884838380000604 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99999459292240533 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0032884838380000609 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99999459292240545 0;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotate_tempLayer_inputAX";
	rename -uid "948E8493-4F67-A3DD-507B-459F775DC049";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 23.980348317053558 6 3.366971097262986
		 35 3.366971097262986 39 9.6947763474459432 43 -109.21831552276625 47 -132.32680840362065
		 51 -202.69744017299359 72 -202.69744017299359 75 -257.4915728508729 77 -335.820246443889
		 83 -303.52585452512437;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotate_tempLayer_inputAY";
	rename -uid "18CD09E7-4CDA-DB17-5E26-A89FB79DA07F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.76357291638137759 6 13.77780140600367
		 35 13.77780140600367 39 221.76357993982089 43 158.59414790792454 47 -39.160393067682833
		 51 26.078320373915069 72 26.078320373915069 75 31.003712421955871 77 16.128711791418944
		 83 4.8232534735005412;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.50404183982438555 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.86367923658407364 0;
	setAttr -s 11 ".kox[8:10]"  1 0.50404183982438566 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.86367923658407375 0;
createNode animCurveTA -n "Character1_Ctrl_RightHipEffector_rotate_tempLayer_inputAZ";
	rename -uid "B49A2FB4-414A-BF7F-97F6-2C82FC0C1C73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 65.70058363213343 6 65.015201292542699
		 35 65.015201292542699 39 179.4551758425653 43 171.54990744489862 47 -13.752319737501924
		 51 6.4406637941535196 72 6.4406637941535196 75 4.6053233036468413 77 -21.190319006377621
		 83 3.3152347943484934;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateX_tempLayer_inputA";
	rename -uid "9FF66A1D-4436-6D20-61FB-CBB5AFAD59DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 42.657943725585938 6 -16.514849312404753
		 35 -16.514849312404753 39 -45.558807373046875 43 -45.558807373046875 47 -45.558807373046875
		 51 44.407341003417969 72 44.407341003417969 75 -45.558807373046875 77 49.249771118164063
		 83 57.468936920166016;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0081108564263253947 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99996710646302334 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0081108564263253965 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99996710646302345 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateY_tempLayer_inputA";
	rename -uid "793E36D4-47D4-0134-468F-3C980B5FF647";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 102.97599792480469 6 166.09850067293232
		 35 166.09850067293232 39 164.74092102050781 43 164.74092102050781 47 164.74092102050781
		 51 277.88909912109375 72 277.88909912109375 75 164.74092102050781 77 260.48016357421875
		 83 156.26638793945313;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandThumbEffector_translateZ_tempLayer_inputA";
	rename -uid "11FA9D14-4A1F-E1FE-E2C7-EABE42364B53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.883550643920898 6 16.391309221593872
		 35 16.391309221593872 39 20.119911193847656 43 20.119911193847656 47 20.119911193847656
		 51 171.68458557128906 72 171.68458557128906 75 20.119911193847656 77 158.37234497070313
		 83 68.329940795898438;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotate_tempLayer_inputAX";
	rename -uid "AE7EFA12-43B4-311C-11FD-9F927B13BAD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 46.187819050331555 6 176.7259646119785
		 35 176.7259646119785 39 37.548511067179064 43 37.548511067179064 47 37.548511067179064
		 51 38.859495391745398 72 38.859495391745398 75 37.548511067179064 77 32.396098462320019
		 83 -36.737269375409944;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.23989892387988732 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.9707978709913162 0;
	setAttr -s 11 ".kox[8:10]"  1 0.23989892387988732 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.9707978709913162 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotate_tempLayer_inputAY";
	rename -uid "295B11B6-4411-5B3A-F08C-6684DD2E3D9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -55.678273797089005 6 -149.69597507236557
		 35 -149.69597507236557 39 -70.964204878441166 43 -70.964204878441166 47 -70.964204878441166
		 51 17.751446784917878 72 17.751446784917878 75 -70.964204878441166 77 17.361956551342935
		 83 -0.23061444823134211;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandThumbEffector_rotate_tempLayer_inputAZ";
	rename -uid "FD0FB65A-4B44-5194-C6B4-EC872FA41207";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -15.646265950177588 6 -1.8469597148934771
		 35 -1.8469597148934771 39 144.94597986444742 43 144.94597986444742 47 144.94597986444742
		 51 303.24660872803355 72 303.24660872803355 75 144.94597986444742 77 302.81632866935399
		 83 -65.249748958802527;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateX_tempLayer_inputA";
	rename -uid "6DCD4EB0-4D2C-FBC6-DD85-2BA299B799AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 49.742275238037109 6 -24.310278542141081
		 35 -24.310278542141081 39 -51.625827789306641 43 -51.625827789306641 47 -51.625827789306641
		 51 49.435096740722656 72 49.435096740722656 75 -51.625827789306641 77 55.370738983154297
		 83 60.402500152587891;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.013248008766860388 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99991224128106027 0;
	setAttr -s 11 ".kox[8:10]"  1 0.013248008766860386 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99991224128106015 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateY_tempLayer_inputA";
	rename -uid "F88D1300-4886-9B93-1E13-4284643D7CA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 100.09187316894531 6 177.54434288260521
		 35 177.54434288260521 39 167.09535217285156 43 167.09535217285156 47 167.09535217285156
		 51 283.78555297851563 72 283.78555297851563 75 167.09535217285156 77 266.795654296875
		 83 170.86302185058594;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandIndexEffector_translateZ_tempLayer_inputA";
	rename -uid "727A7D7F-43DD-00F1-08D4-F390CCF7C661";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.51722240447998 6 16.790372538418751
		 35 16.790372538418751 39 15.864030838012695 43 15.864030838012695 47 15.864030838012695
		 51 172.33102416992188 72 172.33102416992188 75 15.864030838012695 77 158.63705444335938
		 83 70.191818237304688;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotate_tempLayer_inputAX";
	rename -uid "F4BC790F-4AF0-BE03-7AB0-F086A870A54D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.682363905326149 6 132.59710444627888
		 35 132.59710444627888 39 147.18208826915642 43 147.18208826915642 47 147.18208826915642
		 51 176.61570709835613 72 176.61570709835613 75 147.18208826915642 77 158.72070654620373
		 83 105.8904503771352;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotate_tempLayer_inputAY";
	rename -uid "19AB22FE-410B-B223-F78B-C7963B70E33E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -40.298893504303912 6 33.548431308207739
		 35 33.548431308207739 39 47.231716022949691 43 47.231716022949691 47 47.231716022949691
		 51 -63.089062101505696 72 -63.089062101505696 75 47.231716022949691 77 -66.227306057772296
		 83 -62.273648163156572;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandIndexEffector_rotate_tempLayer_inputAZ";
	rename -uid "25B94DD7-475A-4364-5A0E-3E9CC8BE50F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 84.203135509010551 6 107.40106512139405
		 35 107.40106512139405 39 74.656501344319025 43 74.656501344319025 47 74.656501344319025
		 51 220.33559187704455 72 220.33559187704455 75 74.656501344319025 77 236.18082468720098
		 83 -115.57555438918297;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateX_tempLayer_inputA";
	rename -uid "9F1EB058-4FE2-2E42-1007-958FD888A385";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 48.638767242431641 6 -27.715235359768034
		 35 -27.715235359768034 39 -52.919124603271484 43 -52.919124603271484 47 -52.919124603271484
		 51 51.078472137451172 72 51.078472137451172 75 -52.919124603271484 77 57.287796020507813
		 83 64.175056457519531;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0096792540765976258 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99995315492302983 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0096792540765976258 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99995315492302961 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateY_tempLayer_inputA";
	rename -uid "D8C85BCB-416B-BF3D-05DC-61AAC79D0A62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 98.581893920898438 6 178.2540830733117
		 35 178.2540830733117 39 164.62850952148438 43 164.62850952148438 47 164.62850952148438
		 51 280.73052978515625 72 280.73052978515625 75 164.62850952148438 77 263.81048583984375
		 83 170.39923095703125;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandMiddleEffector_translateZ_tempLayer_inputA";
	rename -uid "745B570C-445C-26CD-667B-93A4D4B357DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.010066032409668 6 20.484441424695945
		 35 20.484441424695945 39 18.408945083618164 43 18.408945083618164 47 18.408945083618164
		 51 173.81449890136719 72 173.81449890136719 75 18.408945083618164 77 159.96238708496094
		 83 70.992355346679688;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotate_tempLayer_inputAX";
	rename -uid "88DF3C29-42DB-32BB-73DD-188F439E6017";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.27583821856793528 6 150.53276669836552
		 35 150.53276669836552 39 146.27534026810525 43 146.27534026810525 47 146.27534026810525
		 51 219.80351783375357 72 219.80351783375357 75 146.27534026810525 77 210.71623762219087
		 83 92.230623968580844;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotate_tempLayer_inputAY";
	rename -uid "15D415C0-48E6-ADC8-5150-9BA61C34D502";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -42.17940683797724 6 34.022012140360772
		 35 34.022012140360772 39 32.628877045412644 43 32.628877045412644 47 32.628877045412644
		 51 -64.895281044602669 72 -64.895281044602669 75 32.628877045412644 77 -72.780973662749844
		 83 -79.526375760683777;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.49275125844753059 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.87017021168181519 0;
	setAttr -s 11 ".kox[8:10]"  1 0.49275125844753054 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.87017021168181508 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandMiddleEffector_rotate_tempLayer_inputAZ";
	rename -uid "18451C69-4317-F84E-C8D7-1693C5DB0299";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 105.23995600339536 6 108.85471901943212
		 35 108.85471901943212 39 62.431388286585104 43 62.431388286585104 47 62.431388286585104
		 51 180.40590771528491 72 180.40590771528491 75 62.431388286585104 77 188.19636405924348
		 83 -96.590657632499628;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateX_tempLayer_inputA";
	rename -uid "8C8915E7-4EC9-03CC-03B2-C78B653A4EB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 46.433982849121094 6 -30.415377266506315
		 35 -30.415377266506315 39 -52.841499328613281 43 -52.841499328613281 47 -52.841499328613281
		 51 51.550918579101563 72 51.550918579101563 75 -52.841499328613281 77 57.926116943359375
		 83 67.311241149902344;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0071032607881573694 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.9999747715248497 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0071032607881573694 1;
	setAttr -s 11 ".koy[8:10]"  0 0.9999747715248497 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateY_tempLayer_inputA";
	rename -uid "BC81F882-4CD4-EBC7-7842-59851B235DC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 97.741867065429688 6 174.17352946483092
		 35 174.17352946483092 39 162.39958190917969 43 162.39958190917969 47 162.39958190917969
		 51 277.05108642578125 72 277.05108642578125 75 162.39958190917969 77 260.11331176757813
		 83 168.07113647460938;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandRingEffector_translateZ_tempLayer_inputA";
	rename -uid "34ABF53E-4C5A-89DC-6541-E39BE1A44C63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.487715721130371 6 21.075146849279918
		 35 21.075146849279918 39 21.481912612915039 43 21.481912612915039 47 21.481912612915039
		 51 174.62425231933594 72 174.62425231933594 75 21.481912612915039 77 160.66624450683594
		 83 71.027755737304688;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotate_tempLayer_inputAX";
	rename -uid "45AF40E5-4A9A-861B-00BA-F6B3C3293A30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -10.142392002297234 6 126.80953076310466
		 35 126.80953076310466 39 148.71969771177626 43 148.71969771177626 47 148.71969771177626
		 51 246.79229554164837 72 246.79229554164837 75 148.71969771177626 77 249.37191048274772
		 83 -3.773040413086834;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotate_tempLayer_inputAY";
	rename -uid "10BF9628-4D88-07F7-85E4-039F76F1EBD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -41.166413596030935 6 30.75480168176496
		 35 30.75480168176496 39 21.881065424790954 43 21.881065424790954 47 21.881065424790954
		 51 -59.274261530845827 72 -59.274261530845827 75 21.881065424790954 77 -67.869953920868383
		 83 -83.60347407764732;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.23592272351540142 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.9717718191679956 0;
	setAttr -s 11 ".kox[8:10]"  1 0.23592272351540136 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.97177181916799549 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandRingEffector_rotate_tempLayer_inputAZ";
	rename -uid "72D7B8C5-4CA7-8C5A-6261-EA9A52A71382";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 120.03315224139497 6 56.319866751558187
		 35 56.319866751558187 39 55.342805740428588 43 55.342805740428588 47 55.342805740428588
		 51 156.42780168734731 72 156.42780168734731 75 55.342805740428588 77 153.0569138465905
		 83 3.6647036845200187;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateX_tempLayer_inputA";
	rename -uid "B74F1EB2-4B9F-43BD-7FA0-259B356255BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 44.477394104003906 6 -30.55768073330319
		 35 -30.55768073330319 39 -52.604366302490234 43 -52.604366302490234 47 -52.604366302490234
		 51 52.239040374755859 72 52.239040374755859 75 -52.604366302490234 77 58.593387603759766
		 83 70.20989990234375;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.005738862674607919 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99998353259201334 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0057388626746079181 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99998353259201311 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateY_tempLayer_inputA";
	rename -uid "57AF9272-4568-C748-0FE6-C0B41232678E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 98.100639343261719 6 169.05493387986618
		 35 169.05493387986618 39 161.54067993164063 43 161.54067993164063 47 161.54067993164063
		 51 273.04013061523438 72 273.04013061523438 75 161.54067993164063 77 256.0867919921875
		 83 165.34808349609375;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftHandPinkyEffector_translateZ_tempLayer_inputA";
	rename -uid "352943B4-4C50-8AA6-49E0-96A194C47B99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.201638221740723 6 22.793183031534568
		 35 22.793183031534568 39 25.540319442749023 43 25.540319442749023 47 25.540319442749023
		 51 173.78561401367188 72 173.78561401367188 75 25.540319442749023 77 159.64547729492188
		 83 69.025413513183594;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotate_tempLayer_inputAX";
	rename -uid "E22AA396-4DD8-09E6-9AB7-48A150E634D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -11.119741238966961 6 -50.779611039687325
		 35 -50.779611039687325 39 -20.757967163209738 43 -20.757967163209738 47 -20.757967163209738
		 51 93.695920441152026 72 93.695920441152026 75 -20.757967163209738 77 104.40941448834282
		 83 -0.61910939839308043;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotate_tempLayer_inputAY";
	rename -uid "0FA72153-4742-6864-E13C-9F9D1C5FBF7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -40.955689990579351 6 -201.0862514316826
		 35 -201.0862514316826 39 -192.29449266485327 43 -192.29449266485327 47 -192.29449266485327
		 51 -120.07103283464011 72 -120.07103283464011 75 -192.29449266485327 77 -112.65687901220734
		 83 -71.01117720902036;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.1249888314607127 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99215814868905128 0;
	setAttr -s 11 ".kox[8:10]"  1 0.12498883146071268 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99215814868905117 0;
createNode animCurveTA -n "Character1_Ctrl_LeftHandPinkyEffector_rotate_tempLayer_inputAZ";
	rename -uid "0752DE4D-4822-1B5D-DB0C-60BFDBD2221E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 121.52074459361144 6 207.51705374575408
		 35 207.51705374575408 39 238.96669405873956 43 238.96669405873956 47 238.96669405873956
		 51 316.24986455420856 72 316.24986455420856 75 238.96669405873956 77 304.91806606670855
		 83 6.4173925556851668;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateX_tempLayer_inputA";
	rename -uid "79A78678-4019-03EE-3C31-AEAE6DE45B30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -52.988979339599609 6 -30.231199867824674
		 35 -30.231199867824674 39 49.681167602539063 43 49.681167602539063 47 49.681167602539063
		 51 -33.049240112304688 72 -33.049240112304688 75 49.681167602539063 77 -35.134033203125
		 83 -7.489769458770752;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateY_tempLayer_inputA";
	rename -uid "BB01C728-4C9F-066B-99B7-73A0F1876F62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 110.46863555908203 6 166.80839109367739
		 35 166.80839109367739 39 186.80722045898438 43 186.80722045898438 47 186.80722045898438
		 51 224.62034606933594 72 224.62034606933594 75 186.80722045898438 77 210.39414978027344
		 83 103.93087768554688;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandThumbEffector_translateZ_tempLayer_inputA";
	rename -uid "7C3AF2B7-4061-7B86-3381-CEB8F7868AE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.9440925121307373 6 -45.226594192222365
		 35 -45.226594192222365 39 70.54193115234375 43 70.54193115234375 47 70.54193115234375
		 51 114.56416320800781 72 114.56416320800781 75 70.54193115234375 77 101.99497985839844
		 83 1.415363073348999;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotate_tempLayer_inputAX";
	rename -uid "F7D8DC19-4E31-51C1-3F83-29B097952A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -45.433929701556004 6 -97.560218177485368
		 35 -97.560218177485368 39 -100.95008011073092 43 -100.95008011073092 47 -100.95008011073092
		 51 -31.192351062165802 72 -31.192351062165802 75 -100.95008011073092 77 -27.862556148634042
		 83 171.43963556957456;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.056003931873316572 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99843054821791621 0;
	setAttr -s 11 ".kox[8:10]"  1 0.056003931873316579 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99843054821791632 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotate_tempLayer_inputAY";
	rename -uid "D73AA308-46DD-E1FF-4847-9D8B22CE8C42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -49.783832183362954 6 -33.095019420435428
		 35 -33.095019420435428 39 -121.96573588892957 43 -121.96573588892957 47 -121.96573588892957
		 51 -17.478356804132307 72 -17.478356804132307 75 -121.96573588892957 77 -22.04854573887453
		 83 -124.03765046193479;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandThumbEffector_rotate_tempLayer_inputAZ";
	rename -uid "41B7BA98-4493-030F-D9F9-2A950296FCFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.0583696428744 6 -64.749489948226923
		 35 -64.749489948226923 39 -55.289601943442285 43 -55.289601943442285 47 -55.289601943442285
		 51 10.644675300266842 72 10.644675300266842 75 -55.289601943442285 77 7.4175519714475362
		 83 124.69399623994879;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.084586139021106094 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99641617062626109 0;
	setAttr -s 11 ".kox[8:10]"  1 0.084586139021106094 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99641617062626098 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateX_tempLayer_inputA";
	rename -uid "487E607F-45C9-4AB5-801A-36AE853B0C1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -63.514011383056641 6 -23.824194557766081
		 35 -23.824194557766081 39 59.991550445556641 43 59.991550445556641 47 59.991550445556641
		 51 -43.322860717773438 72 -43.322860717773438 75 59.991550445556641 77 -45.513881683349609
		 83 -12.995572090148926;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateY_tempLayer_inputA";
	rename -uid "CD965480-4003-B825-3988-E6ABCE5F3784";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 108.05770874023438 6 158.99102385062807
		 35 158.99102385062807 39 192.12039184570313 43 192.12039184570313 47 192.12039184570313
		 51 227.896728515625 72 227.896728515625 75 192.12039184570313 77 213.68099975585938
		 83 106.6898193359375;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandIndexEffector_translateZ_tempLayer_inputA";
	rename -uid "B721BAB8-461C-EB85-E9D6-14A37CB0514E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.4489998817443848 6 -54.046934070194652
		 35 -54.046934070194652 39 67.204208374023438 43 67.204208374023438 47 67.204208374023438
		 51 109.14268493652344 72 109.14268493652344 75 67.204208374023438 77 96.786376953125
		 83 -8.9648456573486328;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotate_tempLayer_inputAX";
	rename -uid "8A73A3C8-4CCB-B19D-DE56-69B4772E9B66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -42.210519373890513 6 -91.722754430067582
		 35 -91.722754430067582 39 -159.71928433360395 43 -159.71928433360395 47 -159.71928433360395
		 51 -48.121950207313297 72 -48.121950207313297 75 -159.71928433360395 77 -42.319845485934238
		 83 487.78854184579495;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.023589865821060652 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99972172039550311 0;
	setAttr -s 11 ".kox[8:10]"  1 0.023589865821060658 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99972172039550311 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotate_tempLayer_inputAY";
	rename -uid "D7487AA7-4F52-FB23-55AF-A1820422BD58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 35.050698253790266 6 15.482168899162099
		 35 15.482168899162099 39 -9.6294088630894272 43 -9.6294088630894272 47 -9.6294088630894272
		 51 39.200828628911033 72 39.200828628911033 75 -9.6294088630894272 77 36.539018980493246
		 83 194.66188035997621;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.074581358281256865 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99721493219712809 0;
	setAttr -s 11 ".kox[8:10]"  1 0.074581358281256865 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99721493219712798 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandIndexEffector_rotate_tempLayer_inputAZ";
	rename -uid "F203021C-48D4-FE86-1F6D-4E8E4C7A1E16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 45.965987880620673 6 -0.99444072832252661
		 35 -0.99444072832252661 39 116.77155731072456 43 116.77155731072456 47 116.77155731072456
		 51 8.6553404253458623 72 8.6553404253458623 75 116.77155731072456 77 14.877798720995919
		 83 226.45194374733038;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateX_tempLayer_inputA";
	rename -uid "CD9B5648-40AC-01DE-67DB-11BAE045400C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -62.266448974609375 6 -20.79815924892819
		 35 -20.79815924892819 39 60.681278228759766 43 60.681278228759766 47 60.681278228759766
		 51 -43.473735809326172 72 -43.473735809326172 75 60.681278228759766 77 -45.545032501220703
		 83 -11.149059295654297;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateY_tempLayer_inputA";
	rename -uid "D2E43C11-4EAB-8A86-2295-B1BF9C3DDA01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 105.95197296142578 6 155.50562343237263
		 35 155.50562343237263 39 191.443115234375 43 191.443115234375 47 191.443115234375
		 51 225.39451599121094 72 225.39451599121094 75 191.443115234375 77 211.22439575195313
		 83 105.22327423095703;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandMiddleEffector_translateZ_tempLayer_inputA";
	rename -uid "7DFB88EE-4897-5DD6-EAD0-9B908A85ED2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.1381926536560059 6 -53.577715150589199
		 35 -53.577715150589199 39 69.556037902832031 43 69.556037902832031 47 69.556037902832031
		 51 108.71638488769531 72 108.71638488769531 75 69.556037902832031 77 96.130889892578125
		 83 -9.9162349700927734;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotate_tempLayer_inputAX";
	rename -uid "C5E1E861-4D6C-24FD-9175-98B2C122D52B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -29.499900245948051 6 -104.2771453870749
		 35 -104.2771453870749 39 -157.82690840660382 43 -157.82690840660382 47 -157.82690840660382
		 51 -34.130799587594694 72 -34.130799587594694 75 -157.82690840660382 77 -28.893490100867087
		 83 306.35586773026637;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.032897826401404422 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99945872001702152 0;
	setAttr -s 11 ".kox[8:10]"  1 0.032897826401404422 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99945872001702152 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotate_tempLayer_inputAY";
	rename -uid "0DCCFA42-4F43-B107-3BB7-F5A3AA17F550";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 45.839043175262283 6 1.4693360170159604
		 35 1.4693360170159604 39 -2.9885495174946102 43 -2.9885495174946102 47 -2.9885495174946102
		 51 51.321431315704466 72 51.321431315704466 75 -2.9885495174946102 77 47.2705320496217
		 83 -0.091124985447209261;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandMiddleEffector_rotate_tempLayer_inputAZ";
	rename -uid "95BC63A5-44F6-A62A-B135-12B5915FEA59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 65.361844087153003 6 -12.289586320019566
		 35 -12.289586320019566 39 99.703674577069236 43 99.703674577069236 47 99.703674577069236
		 51 28.146078558966359 72 28.146078558966359 75 99.703674577069236 77 34.777935428242962
		 83 57.484943903456191;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateX_tempLayer_inputA";
	rename -uid "287E8528-4F44-C241-8A42-92B44C4CD2A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -59.802364349365234 6 -21.591654427150846
		 35 -21.591654427150846 39 59.922592163085938 43 59.922592163085938 47 59.922592163085938
		 51 -42.127105712890625 72 -42.127105712890625 75 59.922592163085938 77 -44.082542419433594
		 83 -8.4902248382568359;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateY_tempLayer_inputA";
	rename -uid "D07F038E-46C5-45BD-4E79-69B1A760E5BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 104.72130584716797 6 152.34431101693511
		 35 152.34431101693511 39 190.95634460449219 43 190.95634460449219 47 190.95634460449219
		 51 222.94384765625 72 222.94384765625 75 190.95634460449219 77 208.89077758789063
		 83 104.26415252685547;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandRingEffector_translateZ_tempLayer_inputA";
	rename -uid "E1D41C33-437A-07E8-9321-6ABC86DD15BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.8042523860931396 6 -51.944992644324259
		 35 -51.944992644324259 39 72.2425537109375 43 72.2425537109375 47 72.2425537109375
		 51 108.25733947753906 72 108.25733947753906 75 72.2425537109375 77 95.463653564453125
		 83 -9.7148799896240234;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotate_tempLayer_inputAX";
	rename -uid "2032E71A-46F1-2D3E-3FD5-88975D555437";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -26.153243872611615 6 -114.1304419383961
		 35 -114.1304419383961 39 -156.66108324085732 43 -156.66108324085732 47 -156.66108324085732
		 51 -30.501999326602334 72 -30.501999326602334 75 -156.66108324085732 77 -25.399778882251859
		 83 307.39704199275707;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.032906653536772502 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99945842942716268 0;
	setAttr -s 11 ".kox[8:10]"  1 0.032906653536772502 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99945842942716268 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotate_tempLayer_inputAY";
	rename -uid "8CC75889-4EB3-F85B-9442-7DA83CE14562";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 47.970000689235846 6 -0.61683734795215317
		 35 -0.61683734795215317 39 -2.6572836638539741 43 -2.6572836638539741 47 -2.6572836638539741
		 51 53.616603266725591 72 53.616603266725591 75 -2.6572836638539741 77 49.375519288099781
		 83 2.7662600359382781;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandRingEffector_rotate_tempLayer_inputAZ";
	rename -uid "E7B3A2FE-4B7F-697D-6EDA-50A4A1586A65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 68.555558274305952 6 -16.144470985733591
		 35 -16.144470985733591 39 96.673773603892855 43 96.673773603892855 47 96.673773603892855
		 51 31.442746227886573 72 31.442746227886573 75 96.673773603892855 77 38.097180475872293
		 83 58.548864258612191;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateX_tempLayer_inputA";
	rename -uid "A2EAFCF3-4C04-B4B7-B993-409ABB726143";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -56.110988616943359 6 -25.69464362392819
		 35 -25.69464362392819 39 57.777797698974609 43 57.777797698974609 47 57.777797698974609
		 51 -39.230144500732422 72 -39.230144500732422 75 57.777797698974609 77 -41.070693969726563
		 83 -4.7163419723510742;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateY_tempLayer_inputA";
	rename -uid "3D43520E-443D-D709-D5D1-2C9DC5BAB838";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 104.4830322265625 6 151.30080030190376
		 35 151.30080030190376 39 191.25015258789063 43 191.25015258789063 47 191.25015258789063
		 51 220.57035827636719 72 220.57035827636719 75 191.25015258789063 77 206.7666015625
		 83 104.26998901367188;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightHandPinkyEffector_translateZ_tempLayer_inputA";
	rename -uid "C893BDC1-4E2C-D130-7131-AD8566BA30D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.0748381614685059 6 -47.671449003617795
		 35 -47.671449003617795 39 75.5 43 75.5 47 75.5 51 107.12967681884766 72 107.12967681884766
		 75 75.5 77 94.1544189453125 83 -8.6876373291015625;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotate_tempLayer_inputAX";
	rename -uid "85486F00-404D-0870-8283-8EAB35CB3A43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.480523435755423 6 34.625355929275194
		 35 34.625355929275194 39 19.92804406113785 43 19.92804406113785 47 19.92804406113785
		 51 198.8386058676538 72 198.8386058676538 75 19.92804406113785 77 195.76907567991577
		 83 312.28916698215068;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.052189062194938643 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99863722231209318 0;
	setAttr -s 11 ".kox[8:10]"  1 0.052189062194938643 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99863722231209318 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotate_tempLayer_inputAY";
	rename -uid "9F64378E-4DC7-3616-3C65-1583A9935C45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 51.424499516305531 6 140.8878563811671
		 35 140.8878563811671 39 169.63663810927773 43 169.63663810927773 47 169.63663810927773
		 51 123.13382538141782 72 123.13382538141782 75 169.63663810927773 77 128.12018762034859
		 83 28.235823205526255;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.10742832794843102 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99421283151758022 0;
	setAttr -s 11 ".kox[8:10]"  1 0.10742832794843102 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99421283151758022 0;
createNode animCurveTA -n "Character1_Ctrl_RightHandPinkyEffector_rotate_tempLayer_inputAZ";
	rename -uid "FACC68D4-4946-32BE-13D6-DF8D48ABFE6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 120.66662368247916 6 114.44597768066242
		 35 114.44597768066242 39 246.02187711136798 43 246.02187711136798 47 246.02187711136798
		 51 271.27704396656321 72 271.27704396656321 75 246.02187711136798 77 271.43731750057833
		 83 80.832737945908235;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftFootIndexEffector_translateX_tempLayer_inputA";
	rename -uid "B8D7824C-4E9F-1C9E-5927-3FA1AB2E513E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 29.093807220458984 6 29.093807220458984
		 35 29.093807220458984 39 -27.541458129882813 43 -27.541458129882813 47 -27.541458129882813
		 51 -19.627143859863281 72 -19.627143859863281 75 -27.541458129882813 77 7.645075798034668
		 83 43.880645751953125;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0037336453770716619 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99999302992180805 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0037336453770716619 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99999302992180805 0;
createNode animCurveTL -n "Character1_Ctrl_LeftFootIndexEffector_translateY_tempLayer_inputA";
	rename -uid "FDADA481-4BAE-1135-553C-479FF14B4AE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.94541072845458984 6 0.94541072845458984
		 35 0.94541072845458984 39 58.234443664550781 43 58.234443664550781 47 58.234443664550781
		 51 296.809814453125 72 296.809814453125 75 58.234443664550781 77 264.609375 83 184.13064575195313;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_LeftFootIndexEffector_translateZ_tempLayer_inputA";
	rename -uid "4BAA77C3-43B0-9522-0B59-C588E30F5DB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.7672491073608398 6 6.7672491073608398
		 35 6.7672491073608398 39 -1.5321855545043945 43 -1.5321855545043945 47 -1.5321855545043945
		 51 262.41757202148438 72 262.41757202148438 75 -1.5321855545043945 77 258.96585083007813
		 83 177.25152587890625;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftFootIndexEffector_rotate_tempLayer_inputAX";
	rename -uid "CBB68E0F-4CBA-9FCC-C1DE-F9BFF44176F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.2157854554132095 6 1.2157854554132095
		 35 1.2157854554132095 39 6.9798556828921745 43 6.9798556828921745 47 6.9798556828921745
		 51 110.42540552781355 72 110.42540552781355 75 6.9798556828921745 77 118.10336847436118
		 83 304.94533560972064;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.051210050235585017 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.99868790458023915 0;
	setAttr -s 11 ".kox[8:10]"  1 0.051210050235585024 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99868790458023926 0;
createNode animCurveTA -n "Character1_Ctrl_LeftFootIndexEffector_rotate_tempLayer_inputAY";
	rename -uid "EFB38703-4876-667F-589A-22AC439FEF7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.385188029866573 6 17.385188029866573
		 35 17.385188029866573 39 133.24383928677958 43 133.24383928677958 47 133.24383928677958
		 51 153.74294550405722 72 153.74294550405722 75 133.24383928677958 77 161.9291718474681
		 83 27.139553194923934;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_LeftFootIndexEffector_rotate_tempLayer_inputAZ";
	rename -uid "8464FF58-4E0F-7FF7-4C3E-49847BB9545A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.9362853886398272 6 3.9362853886398272
		 35 3.9362853886398272 39 -43.032026554450724 43 -43.032026554450724 47 -43.032026554450724
		 51 -93.894756100494121 72 -93.894756100494121 75 -43.032026554450724 77 -100.09150184628299
		 83 -267.67522036694351;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.067857196760677058 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99769504401283993 0;
	setAttr -s 11 ".kox[8:10]"  1 0.067857196760677072 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99769504401284004 0;
createNode animCurveTL -n "Character1_Ctrl_RightFootIndexEffector_translateX_tempLayer_inputA";
	rename -uid "34567964-4F95-6101-19FF-02831E6A17F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -27.478313446044922 6 -27.478313446044922
		 35 -27.478313446044922 39 -77.699974060058594 43 -77.699974060058594 47 -77.699974060058594
		 51 -1.9506299495697021 72 -1.9506299495697021 75 -77.699974060058594 77 -4.1472406387329102
		 83 53.324783325195313;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.0020352345594610364 1;
	setAttr -s 11 ".kiy[8:10]"  0 0.9999979289079991 0;
	setAttr -s 11 ".kox[8:10]"  1 0.0020352345594610364 1;
	setAttr -s 11 ".koy[8:10]"  0 0.99999792890799921 0;
createNode animCurveTL -n "Character1_Ctrl_RightFootIndexEffector_translateY_tempLayer_inputA";
	rename -uid "F7E0CC0A-48FC-077E-E534-BD9BB041CFEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.075164794921875 6 3.075164794921875
		 35 3.075164794921875 39 116.33804321289063 43 116.33804321289063 47 116.33804321289063
		 51 139.906982421875 72 139.906982421875 75 116.33804321289063 77 122.74649810791016
		 83 16.917581558227539;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "Character1_Ctrl_RightFootIndexEffector_translateZ_tempLayer_inputA";
	rename -uid "AF3C90D0-4988-916D-1E8A-FBBAE81F4156";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.42462158203125 6 -19.42462158203125
		 35 -19.42462158203125 39 78.641136169433594 43 78.641136169433594 47 78.641136169433594
		 51 190.57333374023438 72 190.57333374023438 75 78.641136169433594 77 186.28077697753906
		 83 64.921615600585938;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightFootIndexEffector_rotate_tempLayer_inputAX";
	rename -uid "02D525ED-44F3-3F11-22B5-C2B7FE2104BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.9696674099281335 6 9.9696674099281335
		 35 9.9696674099281335 39 56.09834181046174 43 56.09834181046174 47 56.09834181046174
		 51 116.35963023569813 72 116.35963023569813 75 56.09834181046174 77 149.69752183693657
		 83 -305.75416848881099;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightFootIndexEffector_rotate_tempLayer_inputAY";
	rename -uid "38779914-4CD6-DB9E-D011-F69D87407AE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -32.808359741406257 6 -32.808359741406257
		 35 -32.808359741406257 39 15.01168522774025 43 15.01168522774025 47 15.01168522774025
		 51 -113.26461559633444 72 -113.26461559633444 75 15.01168522774025 77 -114.73273449555745
		 83 -77.981053397811721;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTA -n "Character1_Ctrl_RightFootIndexEffector_rotate_tempLayer_inputAZ";
	rename -uid "A4ED77D2-468E-A34B-5748-A8938FBAE0FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -15.048953490792936 6 -15.048953490792936
		 35 -15.048953490792936 39 -69.023477230884666 43 -69.023477230884666 47 -69.023477230884666
		 51 -51.704133262062967 72 -51.704133262062967 75 -69.023477230884666 77 -94.185432965326939
		 83 -337.09609530741608;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		18;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 18;
	setAttr -s 11 ".kix[8:10]"  1 0.056902933694863531 1;
	setAttr -s 11 ".kiy[8:10]"  0 -0.99837971540737847 0;
	setAttr -s 11 ".kox[8:10]"  1 0.056902933694863524 1;
	setAttr -s 11 ".koy[8:10]"  0 -0.99837971540737847 0;
createNode animCurveTL -n "camera1_translateX";
	rename -uid "DB7A1BF7-4DB9-8BA5-159E-BE9CA92F51FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -126.26108071574124 6 -68.903926827452977
		 35 -74.706591638275512 43 -81.643167442841872 51 -76.817819078974978 72 -80.581188873204027
		 74 -80.149956403318967 75 -79.839452804405099 77 -79.358504103088919;
	setAttr -s 9 ".kit[2:8]"  2 18 18 2 18 18 18;
	setAttr -s 9 ".kot[1:8]"  2 18 18 2 18 18 18 18;
createNode animCurveTL -n "camera1_translateY";
	rename -uid "80BEA9EA-4142-CD22-158A-76A3A69B8F80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 473.39276897491061 6 350.25509608738844
		 35 366.53326339143399 43 474.93144150478793 51 490.47875161304376 72 492.54993766716376
		 74 492.62189128295284 75 492.00160272850604 77 492.36952026592786;
	setAttr -s 9 ".kit[2:8]"  1 1 1 2 18 18 18;
	setAttr -s 9 ".kot[1:8]"  2 1 1 1 18 18 18 18;
	setAttr -s 9 ".kix[2:8]"  0.062656697053986438 0.0036902524749364554 
		0.043349614968664407 0.32017885511487149 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0.99803513881740913 0.99999319099515438 
		0.99905996360682403 0.94735711362575947 0 0 0;
	setAttr -s 9 ".kox[2:8]"  0.020922103047210403 0.0036902523314246978 
		0.12908218507642677 0.33682715899817217 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0.99978110884537219 0.99999319099568396 
		0.99163389892434339 0.94156649524142477 0 0 0;
createNode animCurveTL -n "camera1_translateZ";
	rename -uid "EB0ECC4B-4B6D-045C-3134-7E8A0CDF2FB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 518.15980859604656 6 430.63503677004348
		 35 471.8154821196423 43 557.39674932384344 51 753.49831443747576 72 785.97349746346379
		 74 786.82347951538634 75 789.96704877281888 77 786.9822710591859;
	setAttr -s 9 ".kit[0:8]"  1 18 2 18 18 2 18 18 
		18;
	setAttr -s 9 ".kot[0:8]"  1 2 18 18 2 18 18 18 
		18;
	setAttr -s 9 ".kix[0:8]"  1 1 0.023467459850492648 0.0018933790638740668 
		0.0071847881687924844 0.021549915237380441 0.026135412297750051 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.99972460124184481 0.99999820755625379 
		0.9999741890763828 0.99976777361208313 0.9996584117707541 0 0;
	setAttr -s 9 ".kox[0:8]"  1 0.023467459850492648 0.0097290809386582841 
		0.0018933790638740668 0.021549915237380441 0.026135412297750051 0.026135412297750054 
		1 1;
	setAttr -s 9 ".koy[0:8]"  0 0.99972460124184481 0.99995267137204502 
		0.99999820755625379 0.99976777361208313 0.9996584117707541 0.9996584117707541 0 0;
createNode animCurveTU -n "camera1_visibility";
	rename -uid "E44D9DC0-4D9F-6375-5EA4-82B676E0E63A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1 35 1 51 1 72 1 74 1 75 1;
	setAttr -s 7 ".kit[0:6]"  18 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  18 5 5 5 5 5 5;
createNode animCurveTA -n "camera1_rotateX";
	rename -uid "059AFB61-4A49-1C79-83A5-EEA01B48D219";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -41.481542707178463 6 -10.312023952161265
		 35 -9.080650647318814 43 19.966525857768392 51 11.440656256875689 72 10.140035765275845
		 74 10.140035765275845 75 10.140035765275845;
	setAttr -s 8 ".kit[2:7]"  2 18 18 2 18 18;
	setAttr -s 8 ".kot[1:7]"  2 18 18 2 18 18 18;
createNode animCurveTA -n "camera1_rotateY";
	rename -uid "27C751E8-4449-6682-2637-C38D6C4E73E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -26.985720040443066 6 -26.985720040443066
		 35 -26.985720040443066 43 -29.618453612867473 51 -1.1356280515518586 72 -0.064105989618038567
		 74 -0.064105989618038567 75 -0.064105989618038567;
	setAttr -s 8 ".kit[2:7]"  2 18 18 2 18 18;
	setAttr -s 8 ".kot[1:7]"  2 18 18 2 18 18 18;
createNode animCurveTA -n "camera1_rotateZ";
	rename -uid "3FC08A0A-412D-BAFF-2DD4-FA85DBCFA219";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.5 6 -8.5 35 -11.777429467084627 51 12.000000000000002
		 72 12.000000000000002 74 12.000000000000002 75 12.000000000000002;
	setAttr -s 7 ".kit[2:6]"  2 18 2 18 18;
	setAttr -s 7 ".kot[1:6]"  2 18 2 18 18 18;
createNode animCurveTU -n "camera1_scaleX";
	rename -uid "4758E149-438E-8CBD-D6C8-24A4ACB6A435";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16 6 16 35 16 51 16 72 16 74 16 75 16;
	setAttr -s 7 ".kit[2:6]"  2 18 2 18 18;
	setAttr -s 7 ".kot[1:6]"  2 18 2 18 18 18;
createNode animCurveTU -n "camera1_scaleY";
	rename -uid "3A79F5C6-451A-32EA-04DA-0196F5EFBA90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16 6 16 35 16 51 16 72 16 74 16 75 16;
	setAttr -s 7 ".kit[2:6]"  2 18 2 18 18;
	setAttr -s 7 ".kot[1:6]"  2 18 2 18 18 18;
createNode animCurveTU -n "camera1_scaleZ";
	rename -uid "00A58750-4950-1DB4-B10C-A6B8A6670A69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16 6 16 35 16 51 16 72 16 74 16 75 16;
	setAttr -s 7 ".kit[2:6]"  2 18 2 18 18;
	setAttr -s 7 ".kot[1:6]"  2 18 2 18 18 18;
createNode animCurveTU -n "cameraShape1_focalLength";
	rename -uid "A8ED75F1-4180-2D11-A5E5-828CD4D65384";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 24;
createNode animCurveTU -n "y_visibility";
	rename -uid "F827881C-4080-A396-2FA1-46A3BA43E537";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "y_translateX";
	rename -uid "386BEA57-458B-7EB5-2D40-809EA47E06F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "y_translateY";
	rename -uid "81964A1A-4739-77F8-A0FF-F5B2F0DD414F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 10 0 16 0 22 0 51 0 56 0 72 0 75 0;
	setAttr -s 9 ".ktl[8]" no;
createNode animCurveTL -n "y_translateZ";
	rename -uid "48270C24-46DC-F56A-CCD8-F7974B89E947";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "y_rotateX";
	rename -uid "6256B393-4947-9923-0048-038D8EDD0CD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "y_rotateY";
	rename -uid "0E2894C8-4055-4C2B-01F2-939C225B0DF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "y_rotateZ";
	rename -uid "C1440B94-440E-CA89-A5BE-59BDBF8C239F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "y_scaleX";
	rename -uid "79678629-4A88-D700-0FD1-5DB994FFCE7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "y_scaleY";
	rename -uid "2ECAB38B-48D2-F211-38B2-BB8CE154DF22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "y_scaleZ";
	rename -uid "B3655F74-416B-81D8-13CD-079D106DD374";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode polyPlane -n "polyPlane3";
	rename -uid "5BF4BFBA-4ED1-2A92-4DEC-3BA8BF9C5B45";
	setAttr ".cuv" 2;
createNode lambert -n "white";
	rename -uid "9E2F81F2-41C4-7AB7-BF7A-D68488BD02A6";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "698466F4-4E9B-9D9A-C8A3-DA99252D649F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo33";
	rename -uid "A5665727-4ABB-49D7-FECE-F4802757A8B4";
createNode animCurveTL -n "white_fadeouit_translateX";
	rename -uid "C1AF6979-4C8B-6398-008F-A69BEB1D7684";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 0 75 -110.01869580557405 76 -76.028525907295204;
createNode animCurveTL -n "white_fadeouit_translateY";
	rename -uid "E2B67051-4A3F-0C32-CBEA-00BBFF1F1DD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 -82.215793506292314 75 501.36286422564558
		 76 503.57945080418779;
createNode animCurveTL -n "white_fadeouit_translateZ";
	rename -uid "E9F77F3F-4F4C-A76B-BD3C-40B239E1608D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 1154.1107074586521 75 771.29485516630609
		 76 778.31668725138991;
createNode animCurveTL -n "polyPlane3_axisX";
	rename -uid "95090A41-4778-1CE3-93E8-CFBF1C1822C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 0 75 0 76 0;
createNode animCurveTL -n "polyPlane3_axisY";
	rename -uid "9FB79672-49CD-2A9E-17DD-C4925FAA1755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 1 75 1 76 1;
createNode animCurveTL -n "polyPlane3_axisZ";
	rename -uid "A0F0C243-43A4-2A71-E89A-81B9052DE669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 0 75 0 76 0;
createNode animCurveTL -n "polyPlane3_width";
	rename -uid "EEB7C281-4FF2-51B9-270F-0993021BE12B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 50 75 50 76 50;
createNode animCurveTL -n "polyPlane3_height";
	rename -uid "D0B2B410-4351-8408-219B-6EA819EE0D15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 50 75 50 76 50;
createNode animCurveTU -n "polyPlane3_subdivisionsWidth";
	rename -uid "E5DD8229-40F3-B664-8D20-A3B9AAD243FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 2 75 2 76 2;
createNode animCurveTU -n "polyPlane3_subdivisionsHeight";
	rename -uid "DFC070D9-4B2B-D4AE-53F0-EB8D892F470D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 2 75 2 76 2;
createNode animCurveTU -n "white_fadeouit_visibility";
	rename -uid "9E41F3D8-46DB-E01A-5ABB-03BF7B4DB2CA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 1 75 1 76 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "white_fadeouit_rotateX";
	rename -uid "35B6BD36-4C39-8E48-CA1C-2391B803B8D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 0 75 90 76 90;
createNode animCurveTA -n "white_fadeouit_rotateY";
	rename -uid "8E4FF43C-4469-0330-ED26-B5B42EB078A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 0 75 0 76 0;
createNode animCurveTA -n "white_fadeouit_rotateZ";
	rename -uid "C21E6BBF-4145-F8B8-A6BC-27996ABCBE92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 0 75 31.14729543915989 76 0;
createNode animCurveTU -n "white_fadeouit_scaleX";
	rename -uid "597C58FA-45BE-7B48-DCCE-CAA799A94E64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 1 75 1 76 1;
createNode animCurveTU -n "white_fadeouit_scaleY";
	rename -uid "711E0D8A-4069-1392-83B3-F0968143231E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 1 75 1 76 1;
createNode animCurveTU -n "white_fadeouit_scaleZ";
	rename -uid "C4C95B23-494A-0AC5-2964-B08DA8D560F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  74 1 75 1 76 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo1";
	rename -uid "DD5751A6-41C2-B2C6-21DB-F3AF2ED76B4C";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -330.95236780151544 -323.80951094248991 ;
	setAttr ".tgi[0].vh" -type "double2" 317.85713022663526 338.09522466054096 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 54.285713195800781;
	setAttr ".tgi[0].ni[0].y" 145.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -252.85714721679688;
	setAttr ".tgi[0].ni[1].y" 145.71427917480469;
	setAttr ".tgi[0].ni[1].nvs" 1923;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "104F3DA8-463E-DFD5-925B-C4B921EF6764";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "9596B073-40F9-EEB0-7C27-1C8F5C44C582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -93.815144444450084;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "72F34E67-47A0-53E4-0A12-838693C68324";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 238.83168852857145;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "39223BB3-4D4D-D5C7-AEF6-7996CC9D0789";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 161.9657909137467;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "C5DEBD55-4AAD-FF8A-99D8-9B84BB13AA21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "A951B2F1-4439-3786-8100-5CB1E3BB293F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "BDA34C8C-420D-3F6A-BBBE-02BE59AB4AB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "6C25629A-4F18-13A7-D977-DEB2B574EDE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4;
createNode reference -n "sharedReferenceNode";
	rename -uid "4559229E-4A0E-9561-C885-F3992C5D62A3";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "DFEE883A-4FAF-1B9E-6A97-0B99489B1E66";
	setAttr ".version" -type "string" "2.0.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "844DAC2D-4216-AAEE-2398-11BC2319B24D";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "1DBA0B11-4471-F164-975D-4EAC5C9A50A9";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "D100A163-4A89-4AEE-8A7D-AE84F1125C93";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "C6C37C30-45C2-9B9F-AC6E-1E81FA7C59CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "08391189-4123-8D7C-767D-DD907F4687F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "0FF52B01-43DB-EE53-6CC7-69A73C2AC4EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "z_rotateZ";
	rename -uid "4D9BED69-43B0-AFCB-F60A-66B273A0D8CF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 35 0 51 0 72 0 77 0;
	setAttr -s 5 ".kit[4]"  18;
	setAttr -s 5 ".kot[3:4]"  18 18;
	setAttr -s 5 ".kix[0:4]"  0 1.1666666666666665 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.53333333333333344 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "z_rotateY";
	rename -uid "50A0F3DA-401D-F472-881B-1C9BC66D4CE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 35 0 51 0 72 0 77 0;
	setAttr -s 5 ".kit[0:4]"  1 1 18 18 18;
	setAttr -s 5 ".kot[0:4]"  1 1 18 18 18;
	setAttr -s 5 ".kix[0:4]"  0 1.1666666666666665 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.53333333333333344 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "z_rotateX";
	rename -uid "DC24ABE2-4408-EA0C-57CD-0180AD87158A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 6 -7.5751341692003846 35 -7.5751341692003846
		 51 28.512894394984329 72 28.512894394984329 77 28.512894394984329;
	setAttr -s 6 ".kit[5]"  18;
	setAttr -s 6 ".kot[4:5]"  18 18;
	setAttr -s 6 ".kix[0:5]"  0 0.19999999999999996 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0.96666666666666679 0.53333333333333344 
		1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "z_translateZ";
	rename -uid "F6216490-499C-152C-AFD7-9D923820B29A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.5626273155212402 6 319.83340091851608
		 35 361.21485262603932 39 448.30309236068291 43 531.17825748219957 47 596.66006755430669
		 51 631.86772632067277 72 644.88989188099117 75 659.76403686635035 77 672.91866214295646
		 83 713.87007387068684;
	setAttr -s 11 ".kit[2:10]"  2 18 18 18 18 2 1 18 
		2;
	setAttr -s 11 ".kot[1:10]"  2 18 18 18 18 2 18 1 
		18 2;
	setAttr -s 11 ".kix[8:10]"  0.0050114833365626429 0.0049285337216561174 
		0.0048837782732976259;
	setAttr -s 11 ".kiy[8:10]"  0.99998744243853754 0.99998785470392315 
		0.99998807428377723;
	setAttr -s 11 ".kox[8:10]"  0.0050114830362104961 0.0049285337216561174 
		1;
	setAttr -s 11 ".koy[8:10]"  0.99998744244004267 0.99998785470392315 
		0;
createNode animCurveTL -n "z_translateY";
	rename -uid "C8B4D63A-4E45-D4F4-43DD-07A6B40FC316";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.5304249396657781 6 180.46416846536198
		 35 199.17519767470557 39 271.90985493123435 43 324.51931845979641 47 354.16028982787361
		 51 364.13253333512642 72 368.5663559901073 75 371.63525488777822 77 373.09892396115544
		 83 373.66865927730731;
	setAttr -s 11 ".kit[2:10]"  2 18 1 18 18 2 1 18 
		1;
	setAttr -s 11 ".kot[1:10]"  2 18 18 1 18 2 18 1 
		18 1;
	setAttr -s 11 ".kix[4:10]"  0.0037547873565534893 0.0067316077601471142 
		0.057749463310530491 0.15594577987588185 0.026808568354067506 0.1300295696617465 
		0.16809821727256638;
	setAttr -s 11 ".kiy[4:10]"  0.99999295076110772 0.99997734247180003 
		0.99833110714198703 0.98776561680335018 0.99964058574209824 0.99151011644540532 0.98577025180808986;
	setAttr -s 11 ".kox[4:10]"  0.0037547877156485854 0.0067316077601471142 
		0.15594577987588185 0.10602693975644019 0.02680856857875592 0.13002956966174647 0.16809820462833158;
	setAttr -s 11 ".koy[4:10]"  0.99999295075975947 0.99997734247180003 
		0.98776561680335018 0.9943632575904463 0.99964058573607251 0.99151011644540521 0.98577025396424478;
createNode animCurveTL -n "z_translateX";
	rename -uid "E8B51907-49DB-B062-EDF6-BDB277141BA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.061838150024414063 6 -25.876870505710485
		 35 -32.70317303689135 51 -60.62093851358015 72 -62.308085171174504 75 -64.400772003259092
		 77 -67.914080048839338 83 -78.401526270191908;
	setAttr -s 8 ".kit[2:7]"  2 18 2 1 1 18;
	setAttr -s 8 ".kot[1:7]"  2 18 2 18 1 1 18;
	setAttr -s 8 ".kix[5:7]"  0.023521916320072569 0.017490724919253527 
		1;
	setAttr -s 8 ".kiy[5:7]"  -0.99972332145080589 -0.99984702557031135 
		0;
	setAttr -s 8 ".kox[5:7]"  0.023521919131534699 0.017490729363176818 
		1;
	setAttr -s 8 ".koy[5:7]"  -0.99972332138465658 -0.99984702549257198 
		0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 51;
	setAttr -av -k on ".unw" 51;
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
	setAttr -s 6 ".st";
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
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".tx";
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
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr" 30;
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
	setAttr -k on ".hwfr" 30;
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "SER_116_kRN.phl[1287]" "SER_116_kRN.phl[1288]";
connectAttr "SER_116_kRN.phl[1289]" "SER_116_kRN.phl[1290]";
connectAttr "SER_116_kRN.phl[1291]" "SER_116_kRN.phl[1292]";
connectAttr "SER_116_kRN.phl[1293]" "SER_116_kRN.phl[1294]";
connectAttr "SER_116_kRN.phl[1295]" "SER_116_kRN.phl[1296]";
connectAttr "SER_116_kRN.phl[1297]" "SER_116_kRN.phl[1298]";
connectAttr "SER_116_kRN.phl[1299]" "SER_116_kRN.phl[1300]";
connectAttr "SER_116_kRN.phl[1301]" "SER_116_kRN.phl[1302]";
connectAttr "SER_116_kRN.phl[1303]" "SER_116_kRN.phl[1304]";
connectAttr "SER_116_kRN.phl[1305]" "SER_116_kRN.phl[1306]";
connectAttr "SER_116_kRN.phl[1307]" "SER_116_kRN.phl[1308]";
connectAttr "SER_116_kRN.phl[1309]" "SER_116_kRN.phl[1310]";
connectAttr "SER_116_kRN.phl[1311]" "SER_116_kRN.phl[1312]";
connectAttr "SER_116_kRN.phl[1313]" "SER_116_kRN.phl[1314]";
connectAttr "SER_116_kRN.phl[1315]" "SER_116_kRN.phl[1316]";
connectAttr "SER_116_kRN.phl[1317]" "SER_116_kRN.phl[1318]";
connectAttr "SER_116_kRN.phl[1319]" "SER_116_kRN.phl[1320]";
connectAttr "SER_116_kRN.phl[1321]" "SER_116_kRN.phl[1322]";
connectAttr "SER_116_kRN.phl[1323]" "SER_116_kRN.phl[1324]";
connectAttr "SER_116_kRN.phl[1325]" "SER_116_kRN.phl[1326]";
connectAttr "SER_116_kRN.phl[1327]" "SER_116_kRN.phl[1328]";
connectAttr "SER_116_kRN.phl[1329]" "SER_116_kRN.phl[1330]";
connectAttr "SER_116_kRN.phl[1331]" "SER_116_kRN.phl[1332]";
connectAttr "SER_116_kRN.phl[1333]" "SER_116_kRN.phl[1334]";
connectAttr "SER_116_kRN.phl[1335]" "SER_116_kRN.phl[1336]";
connectAttr "SER_116_kRN.phl[1337]" "SER_116_kRN.phl[1338]";
connectAttr "SER_116_kRN.phl[1339]" "SER_116_kRN.phl[1340]";
connectAttr "SER_116_kRN.phl[1341]" "SER_116_kRN.phl[1342]";
connectAttr "SER_116_kRN.phl[1343]" "SER_116_kRN.phl[1344]";
connectAttr "SER_116_kRN.phl[1345]" "SER_116_kRN.phl[1346]";
connectAttr "SER_116_kRN.phl[1347]" "SER_116_kRN.phl[1348]";
connectAttr "SER_116_kRN.phl[1349]" "SER_116_kRN.phl[1350]";
connectAttr "SER_116_kRN.phl[1351]" "SER_116_kRN.phl[1352]";
connectAttr "SER_116_kRN.phl[1353]" "SER_116_kRN.phl[1354]";
connectAttr "SER_116_kRN.phl[1355]" "SER_116_kRN.phl[1356]";
connectAttr "SER_116_kRN.phl[1357]" "SER_116_kRN.phl[1358]";
connectAttr "SER_116_kRN.phl[1359]" "SER_116_kRN.phl[1360]";
connectAttr "SER_116_kRN.phl[1361]" "SER_116_kRN.phl[1362]";
connectAttr "SER_116_kRN.phl[1363]" "SER_116_kRN.phl[1364]";
connectAttr "SER_116_kRN.phl[1365]" "SER_116_kRN.phl[1366]";
connectAttr "SER_116_kRN.phl[1367]" "SER_116_kRN.phl[1368]";
connectAttr "SER_116_kRN.phl[1369]" "SER_116_kRN.phl[1370]";
connectAttr "SER_116_kRN.phl[1371]" "SER_116_kRN.phl[1372]";
connectAttr "SER_116_kRN.phl[1373]" "SER_116_kRN.phl[1374]";
connectAttr "SER_116_kRN.phl[1375]" "SER_116_kRN.phl[1376]";
connectAttr "SER_116_kRN.phl[1377]" "SER_116_kRN.phl[1378]";
connectAttr "SER_116_kRN.phl[1379]" "SER_116_kRN.phl[1380]";
connectAttr "SER_116_kRN.phl[1381]" "SER_116_kRN.phl[1382]";
connectAttr "SER_116_kRN.phl[1383]" "SER_116_kRN.phl[1384]";
connectAttr "SER_116_kRN.phl[1385]" "SER_116_kRN.phl[1386]";
connectAttr "SER_116_kRN.phl[1387]" "SER_116_kRN.phl[1388]";
connectAttr "SER_116_kRN.phl[1389]" "SER_116_kRN.phl[1390]";
connectAttr "SER_116_kRN.phl[1391]" "SER_116_kRN.phl[1392]";
connectAttr "SER_116_kRN.phl[1393]" "SER_116_kRN.phl[1394]";
connectAttr "SER_116_kRN.phl[1395]" "SER_116_kRN.phl[1396]";
connectAttr "SER_116_kRN.phl[1397]" "SER_116_kRN.phl[1398]";
connectAttr "SER_116_kRN.phl[1399]" "SER_116_kRN.phl[1400]";
connectAttr "SER_116_kRN.phl[1401]" "SER_116_kRN.phl[1402]";
connectAttr "SER_116_kRN.phl[1403]" "SER_116_kRN.phl[1404]";
connectAttr "SER_116_kRN.phl[1405]" "SER_116_kRN.phl[1406]";
connectAttr "SER_116_kRN.phl[1407]" "SER_116_kRN.phl[1408]";
connectAttr "SER_116_kRN.phl[1409]" "SER_116_kRN.phl[1410]";
connectAttr "SER_116_kRN.phl[1411]" "SER_116_kRN.phl[1412]";
connectAttr "SER_116_kRN.phl[1413]" "SER_116_kRN.phl[1414]";
connectAttr "SER_116_kRN.phl[1415]" "SER_116_kRN.phl[1416]";
connectAttr "SER_116_kRN.phl[1417]" "SER_116_kRN.phl[1418]";
connectAttr "SER_116_kRN.phl[1419]" "SER_116_kRN.phl[1420]";
connectAttr "SER_116_kRN.phl[1421]" "SER_116_kRN.phl[1422]";
connectAttr "SER_116_kRN.phl[1423]" "SER_116_kRN.phl[1424]";
connectAttr "SER_116_kRN.phl[1425]" "SER_116_kRN.phl[1426]";
connectAttr "SER_116_kRN.phl[1427]" "SER_116_kRN.phl[1428]";
connectAttr "SER_116_kRN.phl[1429]" "SER_116_kRN.phl[1430]";
connectAttr "SER_116_kRN.phl[1431]" "SER_116_kRN.phl[1432]";
connectAttr "SER_116_kRN.phl[1433]" "SER_116_kRN.phl[1434]";
connectAttr "SER_116_kRN.phl[1435]" "SER_116_kRN.phl[1436]";
connectAttr "SER_116_kRN.phl[1437]" "SER_116_kRN.phl[1438]";
connectAttr "SER_116_kRN.phl[1439]" "SER_116_kRN.phl[1440]";
connectAttr "SER_116_kRN.phl[1441]" "SER_116_kRN.phl[1442]";
connectAttr "SER_116_kRN.phl[1443]" "SER_116_kRN.phl[1444]";
connectAttr "SER_116_kRN.phl[1445]" "SER_116_kRN.phl[1446]";
connectAttr "SER_116_kRN.phl[1447]" "SER_116_kRN.phl[1448]";
connectAttr "SER_116_kRN.phl[1449]" "SER_116_kRN.phl[1450]";
connectAttr "SER_116_kRN.phl[1451]" "SER_116_kRN.phl[1452]";
connectAttr "SER_116_kRN.phl[1453]" "SER_116_kRN.phl[1454]";
connectAttr "SER_116_kRN.phl[1455]" "SER_116_kRN.phl[1456]";
connectAttr "SER_116_kRN.phl[1457]" "SER_116_kRN.phl[1458]";
connectAttr "SER_116_kRN.phl[1459]" "SER_116_kRN.phl[1460]";
connectAttr "SER_116_kRN.phl[1461]" "SER_116_kRN.phl[1462]";
connectAttr "SER_116_kRN.phl[1463]" "SER_116_kRN.phl[1464]";
connectAttr "SER_116_kRN.phl[1465]" "SER_116_kRN.phl[1466]";
connectAttr "SER_116_kRN.phl[1467]" "SER_116_kRN.phl[1468]";
connectAttr "SER_116_kRN.phl[1469]" "SER_116_kRN.phl[1470]";
connectAttr "SER_116_kRN.phl[1471]" "SER_116_kRN.phl[1472]";
connectAttr "SER_116_kRN.phl[1473]" "SER_116_kRN.phl[1474]";
connectAttr "SER_116_kRN.phl[1475]" "SER_116_kRN.phl[1476]";
connectAttr "SER_116_kRN.phl[1477]" "SER_116_kRN.phl[1478]";
connectAttr "SER_116_kRN.phl[1479]" "SER_116_kRN.phl[1480]";
connectAttr "SER_116_kRN.phl[1481]" "SER_116_kRN.phl[1482]";
connectAttr "SER_116_kRN.phl[1483]" "SER_116_kRN.phl[1484]";
connectAttr "SER_116_kRN.phl[1485]" "SER_116_kRN.phl[1486]";
connectAttr "SER_116_kRN.phl[1487]" "SER_116_kRN.phl[1488]";
connectAttr "SER_116_kRN.phl[1489]" "SER_116_kRN.phl[1490]";
connectAttr "SER_116_kRN.phl[1491]" "SER_116_kRN.phl[1492]";
connectAttr "SER_116_kRN.phl[1493]" "SER_116_kRN.phl[1494]";
connectAttr "SER_116_kRN.phl[1495]" "SER_116_kRN.phl[1496]";
connectAttr "SER_116_kRN.phl[1497]" "SER_116_kRN.phl[1498]";
connectAttr "SER_116_kRN.phl[1499]" "SER_116_kRN.phl[1500]";
connectAttr "SER_116_kRN.phl[1501]" "SER_116_kRN.phl[1502]";
connectAttr "SER_116_kRN.phl[1503]" "SER_116_kRN.phl[1504]";
connectAttr "SER_116_kRN.phl[1505]" "SER_116_kRN.phl[1506]";
connectAttr "SER_116_kRN.phl[1507]" "SER_116_kRN.phl[1508]";
connectAttr "SER_116_kRN.phl[1509]" "SER_116_kRN.phl[1510]";
connectAttr "SER_116_kRN.phl[1511]" "SER_116_kRN.phl[1512]";
connectAttr "SER_116_kRN.phl[1513]" "SER_116_kRN.phl[1514]";
connectAttr "SER_116_kRN.phl[1515]" "SER_116_kRN.phl[1516]";
connectAttr "SER_116_kRN.phl[1517]" "SER_116_kRN.phl[1518]";
connectAttr "SER_116_kRN.phl[1519]" "SER_116_kRN.phl[1520]";
connectAttr "SER_116_kRN.phl[1521]" "SER_116_kRN.phl[1522]";
connectAttr "SER_116_kRN.phl[1523]" "SER_116_kRN.phl[1524]";
connectAttr "SER_116_kRN.phl[1525]" "SER_116_kRN.phl[1526]";
connectAttr "SER_116_kRN.phl[1527]" "SER_116_kRN.phl[1528]";
connectAttr "SER_116_kRN.phl[1529]" "SER_116_kRN.phl[1530]";
connectAttr "SER_116_kRN.phl[1531]" "SER_116_kRN.phl[1532]";
connectAttr "SER_116_kRN.phl[1533]" "SER_116_kRN.phl[1534]";
connectAttr "SER_116_kRN.phl[1535]" "SER_116_kRN.phl[1536]";
connectAttr "SER_116_kRN.phl[1537]" "SER_116_kRN.phl[1538]";
connectAttr "SER_116_kRN.phl[1539]" "SER_116_kRN.phl[1540]";
connectAttr "SER_116_kRN.phl[1541]" "SER_116_kRN.phl[1542]";
connectAttr "SER_116_kRN.phl[1543]" "SER_116_kRN.phl[1544]";
connectAttr "SER_116_kRN.phl[1545]" "SER_116_kRN.phl[1546]";
connectAttr "SER_116_kRN.phl[1547]" "SER_116_kRN.phl[1548]";
connectAttr "SER_116_kRN.phl[1549]" "SER_116_kRN.phl[1550]";
connectAttr "SER_116_kRN.phl[1551]" "SER_116_kRN.phl[1552]";
connectAttr "SER_116_kRN.phl[1553]" "SER_116_kRN.phl[1554]";
connectAttr "SER_116_kRN.phl[1555]" "SER_116_kRN.phl[1556]";
connectAttr "SER_116_kRN.phl[1557]" "SER_116_kRN.phl[1558]";
connectAttr "SER_116_kRN.phl[1559]" "SER_116_kRN.phl[1560]";
connectAttr "SER_116_kRN.phl[1561]" "SER_116_kRN.phl[1562]";
connectAttr "SER_116_kRN.phl[1563]" "SER_116_kRN.phl[1564]";
connectAttr "SER_116_kRN.phl[1565]" "SER_116_kRN.phl[1566]";
connectAttr "SER_116_kRN.phl[1567]" "SER_116_kRN.phl[1568]";
connectAttr "SER_116_kRN.phl[1569]" "SER_116_kRN.phl[1570]";
connectAttr "SER_116_kRN.phl[1571]" "SER_116_kRN.phl[1572]";
connectAttr "SER_116_kRN.phl[1573]" "SER_116_kRN.phl[1574]";
connectAttr "SER_116_kRN.phl[1575]" "SER_116_kRN.phl[1576]";
connectAttr "SER_116_kRN.phl[1577]" "SER_116_kRN.phl[1578]";
connectAttr "SER_116_kRN.phl[1579]" "SER_116_kRN.phl[1580]";
connectAttr "SER_116_kRN.phl[1581]" "SER_116_kRN.phl[1582]";
connectAttr "SER_116_kRN.phl[1583]" "SER_116_kRN.phl[1584]";
connectAttr "SER_116_kRN.phl[1585]" "SER_116_kRN.phl[1586]";
connectAttr "SER_116_kRN.phl[1587]" "SER_116_kRN.phl[1588]";
connectAttr "SER_116_kRN.phl[1589]" "SER_116_kRN.phl[1590]";
connectAttr "SER_116_kRN.phl[1591]" "SER_116_kRN.phl[1592]";
connectAttr "SER_116_kRN.phl[1593]" "SER_116_kRN.phl[1594]";
connectAttr "SER_116_kRN.phl[1595]" "SER_116_kRN.phl[1596]";
connectAttr "SER_116_kRN.phl[1597]" "SER_116_kRN.phl[1598]";
connectAttr "SER_116_kRN.phl[1599]" "SER_116_kRN.phl[1600]";
connectAttr "SER_116_kRN.phl[1601]" "SER_116_kRN.phl[1602]";
connectAttr "SER_116_kRN.phl[1603]" "SER_116_kRN.phl[1604]";
connectAttr "SER_116_kRN.phl[1605]" "SER_116_kRN.phl[1606]";
connectAttr "SER_116_kRN.phl[1607]" "SER_116_kRN.phl[1608]";
connectAttr "SER_116_kRN.phl[1609]" "SER_116_kRN.phl[1610]";
connectAttr "SER_116_kRN.phl[1611]" "SER_116_kRN.phl[1612]";
connectAttr "SER_116_kRN.phl[1613]" "SER_116_kRN.phl[1614]";
connectAttr "SER_116_kRN.phl[1615]" "SER_116_kRN.phl[1616]";
connectAttr "SER_116_kRN.phl[1617]" "SER_116_kRN.phl[1618]";
connectAttr "SER_116_kRN.phl[1619]" "SER_116_kRN.phl[1620]";
connectAttr "SER_116_kRN.phl[1621]" "SER_116_kRN.phl[1622]";
connectAttr "SER_116_kRN.phl[1623]" "SER_116_kRN.phl[1624]";
connectAttr "SER_116_kRN.phl[1625]" "SER_116_kRN.phl[1626]";
connectAttr "SER_116_kRN.phl[1627]" "SER_116_kRN.phl[1628]";
connectAttr "SER_116_kRN.phl[1629]" "SER_116_kRN.phl[1630]";
connectAttr "SER_116_kRN.phl[1631]" "SER_116_kRN.phl[1632]";
connectAttr "SER_116_kRN.phl[1633]" "SER_116_kRN.phl[1634]";
connectAttr "SER_116_kRN.phl[1635]" "SER_116_kRN.phl[1636]";
connectAttr "SER_116_kRN.phl[1637]" "SER_116_kRN.phl[1638]";
connectAttr "SER_116_kRN.phl[1639]" "SER_116_kRN.phl[1640]";
connectAttr "SER_116_kRN.phl[1641]" "SER_116_kRN.phl[1642]";
connectAttr "SER_116_kRN.phl[1643]" "SER_116_kRN.phl[1644]";
connectAttr "SER_116_kRN.phl[1645]" "SER_116_kRN.phl[1646]";
connectAttr "SER_116_kRN.phl[1647]" "SER_116_kRN.phl[1648]";
connectAttr "SER_116_kRN.phl[1649]" "SER_116_kRN.phl[1650]";
connectAttr "SER_116_kRN.phl[1651]" "SER_116_kRN.phl[1652]";
connectAttr "SER_116_kRN.phl[1653]" "SER_116_kRN.phl[1654]";
connectAttr "SER_116_kRN.phl[1655]" "SER_116_kRN.phl[1656]";
connectAttr "SER_116_kRN.phl[1657]" "SER_116_kRN.phl[1658]";
connectAttr "SER_116_kRN.phl[1659]" "SER_116_kRN.phl[1660]";
connectAttr "SER_116_kRN.phl[1661]" "SER_116_kRN.phl[1662]";
connectAttr "SER_116_kRN.phl[1663]" "SER_116_kRN.phl[1664]";
connectAttr "SER_116_kRN.phl[1665]" "SER_116_kRN.phl[1666]";
connectAttr "SER_116_kRN.phl[1667]" "SER_116_kRN.phl[1668]";
connectAttr "SER_116_kRN.phl[1669]" "SER_116_kRN.phl[1670]";
connectAttr "SER_116_kRN.phl[1671]" "SER_116_kRN.phl[1672]";
connectAttr "SER_116_kRN.phl[1673]" "SER_116_kRN.phl[1674]";
connectAttr "SER_116_kRN.phl[1675]" "SER_116_kRN.phl[1676]";
connectAttr "SER_116_kRN.phl[1677]" "SER_116_kRN.phl[1678]";
connectAttr "SER_116_kRN.phl[1679]" "SER_116_kRN.phl[1680]";
connectAttr "SER_116_kRN.phl[1681]" "SER_116_kRN.phl[1682]";
connectAttr "SER_116_kRN.phl[1683]" "SER_116_kRN.phl[1684]";
connectAttr "SER_116_kRN.phl[1685]" "SER_116_kRN.phl[1686]";
connectAttr "SER_116_kRN.phl[1687]" "SER_116_kRN.phl[1688]";
connectAttr "SER_116_kRN.phl[1689]" "SER_116_kRN.phl[1690]";
connectAttr "SER_116_kRN.phl[1691]" "SER_116_kRN.phl[1692]";
connectAttr "SER_116_kRN.phl[1693]" "SER_116_kRN.phl[1694]";
connectAttr "SER_116_kRN.phl[1695]" "SER_116_kRN.phl[1696]";
connectAttr "SER_116_kRN.phl[1697]" "SER_116_kRN.phl[1698]";
connectAttr "SER_116_kRN.phl[1699]" "SER_116_kRN.phl[1700]";
connectAttr "SER_116_kRN.phl[1701]" "SER_116_kRN.phl[1702]";
connectAttr "SER_116_kRN.phl[1703]" "SER_116_kRN.phl[1704]";
connectAttr "SER_116_kRN.phl[1705]" "SER_116_kRN.phl[1706]";
connectAttr "SER_116_kRN.phl[1707]" "SER_116_kRN.phl[1708]";
connectAttr "SER_116_kRN.phl[1709]" "SER_116_kRN.phl[1710]";
connectAttr "SER_116_kRN.phl[1711]" "SER_116_kRN.phl[1712]";
connectAttr "SER_116_kRN.phl[1713]" "SER_116_kRN.phl[1714]";
connectAttr "SER_116_kRN.phl[1715]" "SER_116_kRN.phl[1716]";
connectAttr "SER_116_kRN.phl[1717]" "SER_116_kRN.phl[1718]";
connectAttr "SER_116_kRN.phl[1719]" "SER_116_kRN.phl[1720]";
connectAttr "SER_116_kRN.phl[1721]" "SER_116_kRN.phl[1722]";
connectAttr "SER_116_kRN.phl[1723]" "SER_116_kRN.phl[1724]";
connectAttr "SER_116_kRN.phl[1725]" "SER_116_kRN.phl[1726]";
connectAttr "SER_116_kRN.phl[1727]" "SER_116_kRN.phl[1728]";
connectAttr "SER_116_kRN.phl[1729]" "SER_116_kRN.phl[1730]";
connectAttr "SER_116_kRN.phl[1731]" "SER_116_kRN.phl[1732]";
connectAttr "SER_116_kRN.phl[1733]" "SER_116_kRN.phl[1734]";
connectAttr "SER_116_kRN.phl[1735]" "SER_116_kRN.phl[1736]";
connectAttr "SER_116_kRN.phl[1737]" "SER_116_kRN.phl[1738]";
connectAttr "SER_116_kRN.phl[1739]" "SER_116_kRN.phl[1740]";
connectAttr "SER_116_kRN.phl[1741]" "SER_116_kRN.phl[1742]";
connectAttr "SER_116_kRN.phl[1743]" "SER_116_kRN.phl[1744]";
connectAttr "SER_116_kRN.phl[1745]" "SER_116_kRN.phl[1746]";
connectAttr "SER_116_kRN.phl[1747]" "SER_116_kRN.phl[1748]";
connectAttr "SER_116_kRN.phl[1749]" "SER_116_kRN.phl[1750]";
connectAttr "SER_116_kRN.phl[1751]" "SER_116_kRN.phl[1752]";
connectAttr "SER_116_kRN.phl[1753]" "SER_116_kRN.phl[1754]";
connectAttr "SER_116_kRN.phl[1755]" "SER_116_kRN.phl[1756]";
connectAttr "SER_116_kRN.phl[1757]" "SER_116_kRN.phl[1758]";
connectAttr "SER_116_kRN.phl[1759]" "SER_116_kRN.phl[1760]";
connectAttr "SER_116_kRN.phl[1761]" "SER_116_kRN.phl[1762]";
connectAttr "SER_116_kRN.phl[1763]" "SER_116_kRN.phl[1764]";
connectAttr "SER_116_kRN.phl[1765]" "SER_116_kRN.phl[1766]";
connectAttr "SER_116_kRN.phl[1767]" "SER_116_kRN.phl[1768]";
connectAttr "SER_116_kRN.phl[1769]" "SER_116_kRN.phl[1770]";
connectAttr "SER_116_kRN.phl[1771]" "SER_116_kRN.phl[1772]";
connectAttr "SER_116_kRN.phl[1773]" "SER_116_kRN.phl[1774]";
connectAttr "SER_116_kRN.phl[1775]" "SER_116_kRN.phl[1776]";
connectAttr "SER_116_kRN.phl[1777]" "SER_116_kRN.phl[1778]";
connectAttr "SER_116_kRN.phl[1779]" "SER_116_kRN.phl[1780]";
connectAttr "SER_116_kRN.phl[1781]" "SER_116_kRN.phl[1782]";
connectAttr "SER_116_kRN.phl[1783]" "SER_116_kRN.phl[1784]";
connectAttr "SER_116_kRN.phl[1785]" "SER_116_kRN.phl[1786]";
connectAttr "SER_116_kRN.phl[1787]" "SER_116_kRN.phl[1788]";
connectAttr "SER_116_kRN.phl[1789]" "SER_116_kRN.phl[1790]";
connectAttr "SER_116_kRN.phl[1791]" "SER_116_kRN.phl[1792]";
connectAttr "SER_116_kRN.phl[1793]" "SER_116_kRN.phl[1794]";
connectAttr "SER_116_kRN.phl[1795]" "SER_116_kRN.phl[1796]";
connectAttr "SER_116_kRN.phl[1797]" "SER_116_kRN.phl[1798]";
connectAttr "SER_116_kRN.phl[1799]" "SER_116_kRN.phl[1800]";
connectAttr "SER_116_kRN.phl[1801]" "SER_116_kRN.phl[1802]";
connectAttr "SER_116_kRN.phl[1803]" "SER_116_kRN.phl[1804]";
connectAttr "SER_116_kRN.phl[1805]" "SER_116_kRN.phl[1806]";
connectAttr "SER_116_kRN.phl[1807]" "SER_116_kRN.phl[1808]";
connectAttr "SER_116_kRN.phl[1809]" "SER_116_kRN.phl[1810]";
connectAttr "SER_116_kRN.phl[1811]" "SER_116_kRN.phl[1812]";
connectAttr "SER_116_kRN.phl[1813]" "SER_116_kRN.phl[1814]";
connectAttr "SER_116_kRN.phl[1815]" "SER_116_kRN.phl[1816]";
connectAttr "SER_116_kRN.phl[1817]" "SER_116_kRN.phl[1818]";
connectAttr "SER_116_kRN.phl[1819]" "SER_116_kRN.phl[1820]";
connectAttr "SER_116_kRN.phl[1821]" "SER_116_kRN.phl[1822]";
connectAttr "SER_116_kRN.phl[1823]" "SER_116_kRN.phl[1824]";
connectAttr "SER_116_kRN.phl[1825]" "SER_116_kRN.phl[1826]";
connectAttr "SER_116_kRN.phl[1827]" "SER_116_kRN.phl[1828]";
connectAttr "SER_116_kRN.phl[1829]" "SER_116_kRN.phl[1830]";
connectAttr "SER_116_kRN.phl[1831]" "SER_116_kRN.phl[1832]";
connectAttr "SER_116_kRN.phl[1833]" "SER_116_kRN.phl[1834]";
connectAttr "SER_116_kRN.phl[1835]" "SER_116_kRN.phl[1836]";
connectAttr "SER_116_kRN.phl[1837]" "SER_116_kRN.phl[1838]";
connectAttr "SER_116_kRN.phl[1839]" "SER_116_kRN.phl[1840]";
connectAttr "SER_116_kRN.phl[1841]" "SER_116_kRN.phl[1842]";
connectAttr "SER_116_kRN.phl[1843]" "SER_116_kRN.phl[1844]";
connectAttr "SER_116_kRN.phl[1845]" "SER_116_kRN.phl[1846]";
connectAttr "SER_116_kRN.phl[1847]" "SER_116_kRN.phl[1848]";
connectAttr "SER_116_kRN.phl[1849]" "SER_116_kRN.phl[1850]";
connectAttr "SER_116_kRN.phl[1851]" "SER_116_kRN.phl[1852]";
connectAttr "SER_116_kRN.phl[1853]" "SER_116_kRN.phl[1854]";
connectAttr "SER_116_kRN.phl[1855]" "SER_116_kRN.phl[1856]";
connectAttr "SER_116_kRN.phl[1857]" "SER_116_kRN.phl[1858]";
connectAttr "SER_116_kRN.phl[1859]" "SER_116_kRN.phl[1860]";
connectAttr "SER_116_kRN.phl[1861]" "SER_116_kRN.phl[1862]";
connectAttr "SER_116_kRN.phl[1863]" "SER_116_kRN.phl[1864]";
connectAttr "SER_116_kRN.phl[1865]" "SER_116_kRN.phl[1866]";
connectAttr "SER_116_kRN.phl[1867]" "SER_116_kRN.phl[1868]";
connectAttr "SER_116_kRN.phl[1869]" "SER_116_kRN.phl[1870]";
connectAttr "SER_116_kRN.phl[1871]" "SER_116_kRN.phl[1872]";
connectAttr "SER_116_kRN.phl[1873]" "SER_116_kRN.phl[1874]";
connectAttr "SER_116_kRN.phl[1875]" "SER_116_kRN.phl[1876]";
connectAttr "SER_116_kRN.phl[1877]" "SER_116_kRN.phl[1878]";
connectAttr "SER_116_kRN.phl[1879]" "SER_116_kRN.phl[1880]";
connectAttr "SER_116_kRN.phl[1881]" "SER_116_kRN.phl[1882]";
connectAttr "SER_116_kRN.phl[1883]" "SER_116_kRN.phl[1884]";
connectAttr "SER_116_kRN.phl[1885]" "SER_116_kRN.phl[1886]";
connectAttr "SER_116_kRN.phl[1887]" "SER_116_kRN.phl[1888]";
connectAttr "SER_116_kRN.phl[1889]" "SER_116_kRN.phl[1890]";
connectAttr "SER_116_kRN.phl[1891]" "SER_116_kRN.phl[1892]";
connectAttr "SER_116_kRN.phl[1893]" "SER_116_kRN.phl[1894]";
connectAttr "SER_116_kRN.phl[1895]" "SER_116_kRN.phl[1896]";
connectAttr "SER_116_kRN.phl[1897]" "SER_116_kRN.phl[1898]";
connectAttr "SER_116_kRN.phl[1899]" "SER_116_kRN.phl[1900]";
connectAttr "SER_116_kRN.phl[1901]" "SER_116_kRN.phl[1902]";
connectAttr "SER_116_kRN.phl[1903]" "SER_116_kRN.phl[1904]";
connectAttr "SER_116_kRN.phl[1905]" "SER_116_kRN.phl[1906]";
connectAttr "SER_116_kRN.phl[1907]" "SER_116_kRN.phl[1908]";
connectAttr "SER_116_kRN.phl[1909]" "SER_116_kRN.phl[1910]";
connectAttr "SER_116_kRN.phl[1911]" "SER_116_kRN.phl[1912]";
connectAttr "SER_116_kRN.phl[1913]" "SER_116_kRN.phl[1914]";
connectAttr "SER_116_kRN.phl[1915]" "SER_116_kRN.phl[1916]";
connectAttr "SER_116_kRN.phl[1917]" "SER_116_kRN.phl[1918]";
connectAttr "SER_116_kRN.phl[1919]" "SER_116_kRN.phl[1920]";
connectAttr "SER_116_kRN.phl[1921]" "SER_116_kRN.phl[1922]";
connectAttr "SER_116_kRN.phl[1923]" "SER_116_kRN.phl[1924]";
connectAttr "SER_116_kRN.phl[1925]" "SER_116_kRN.phl[1926]";
connectAttr "SER_116_kRN.phl[1927]" "SER_116_kRN.phl[1928]";
connectAttr "SER_116_kRN.phl[1929]" "SER_116_kRN.phl[1930]";
connectAttr "SER_116_kRN.phl[1931]" "SER_116_kRN.phl[1932]";
connectAttr "SER_116_kRN.phl[1933]" "SER_116_kRN.phl[1934]";
connectAttr "SER_116_kRN.phl[1935]" "SER_116_kRN.phl[1936]";
connectAttr "SER_116_kRN.phl[1937]" "SER_116_kRN.phl[1938]";
connectAttr "SER_116_kRN.phl[1939]" "SER_116_kRN.phl[1940]";
connectAttr "SER_116_kRN.phl[1941]" "SER_116_kRN.phl[1942]";
connectAttr "SER_116_kRN.phl[1943]" "SER_116_kRN.phl[1944]";
connectAttr "SER_116_kRN.phl[1945]" "SER_116_kRN.phl[1946]";
connectAttr "SER_116_kRN.phl[1947]" "SER_116_kRN.phl[1948]";
connectAttr "SER_116_kRN.phl[1949]" "SER_116_kRN.phl[1950]";
connectAttr "SER_116_kRN.phl[1951]" "SER_116_kRN.phl[1952]";
connectAttr "SER_116_kRN.phl[1953]" "SER_116_kRN.phl[1954]";
connectAttr "SER_116_kRN.phl[1955]" "SER_116_kRN.phl[1956]";
connectAttr "SER_116_kRN.phl[1957]" "SER_116_kRN.phl[1958]";
connectAttr "SER_116_kRN.phl[1959]" "SER_116_kRN.phl[1960]";
connectAttr "SER_116_kRN.phl[1961]" "SER_116_kRN.phl[1962]";
connectAttr "SER_116_kRN.phl[1963]" "SER_116_kRN.phl[1964]";
connectAttr "SER_116_kRN.phl[1965]" "SER_116_kRN.phl[1966]";
connectAttr "SER_116_kRN.phl[1967]" "SER_116_kRN.phl[1968]";
connectAttr "SER_116_kRN.phl[1969]" "SER_116_kRN.phl[1970]";
connectAttr "SER_116_kRN.phl[1971]" "SER_116_kRN.phl[1972]";
connectAttr "SER_116_kRN.phl[1973]" "SER_116_kRN.phl[1974]";
connectAttr "SER_116_kRN.phl[1975]" "SER_116_kRN.phl[1976]";
connectAttr "SER_116_kRN.phl[1977]" "SER_116_kRN.phl[1978]";
connectAttr "SER_116_kRN.phl[1979]" "SER_116_kRN.phl[1980]";
connectAttr "SER_116_kRN.phl[1981]" "SER_116_kRN.phl[1982]";
connectAttr "SER_116_kRN.phl[1983]" "SER_116_kRN.phl[1984]";
connectAttr "SER_116_kRN.phl[1985]" "SER_116_kRN.phl[1986]";
connectAttr "SER_116_kRN.phl[1987]" "SER_116_kRN.phl[1988]";
connectAttr "SER_116_kRN.phl[1989]" "SER_116_kRN.phl[1990]";
connectAttr "SER_116_kRN.phl[1991]" "SER_116_kRN.phl[1992]";
connectAttr "SER_116_kRN.phl[1993]" "SER_116_kRN.phl[1994]";
connectAttr "SER_116_kRN.phl[1995]" "SER_116_kRN.phl[1996]";
connectAttr "SER_116_kRN.phl[1997]" "SER_116_kRN.phl[1998]";
connectAttr "SER_116_kRN.phl[1999]" "SER_116_kRN.phl[2000]";
connectAttr "SER_116_kRN.phl[2001]" "SER_116_kRN.phl[2002]";
connectAttr "SER_116_kRN.phl[2003]" "SER_116_kRN.phl[2004]";
connectAttr "SER_116_kRN.phl[2005]" "SER_116_kRN.phl[2006]";
connectAttr "SER_116_kRN.phl[2007]" "SER_116_kRN.phl[2008]";
connectAttr "SER_116_kRN.phl[2009]" "SER_116_kRN.phl[2010]";
connectAttr "SER_116_kRN.phl[2011]" "SER_116_kRN.phl[2012]";
connectAttr "SER_116_kRN.phl[2013]" "SER_116_kRN.phl[2014]";
connectAttr "SER_116_kRN.phl[2015]" "SER_116_kRN.phl[2016]";
connectAttr "SER_116_kRN.phl[2017]" "SER_116_kRN.phl[2018]";
connectAttr "SER_116_kRN.phl[2019]" "SER_116_kRN.phl[2020]";
connectAttr "SER_116_kRN.phl[2021]" "SER_116_kRN.phl[2022]";
connectAttr "SER_116_kRN.phl[2023]" "SER_116_kRN.phl[2024]";
connectAttr "SER_116_kRN.phl[2025]" "SER_116_kRN.phl[2026]";
connectAttr "SER_116_kRN.phl[2027]" "SER_116_kRN.phl[2028]";
connectAttr "SER_116_kRN.phl[2029]" "SER_116_kRN.phl[2030]";
connectAttr "SER_116_kRN.phl[2031]" "SER_116_kRN.phl[2032]";
connectAttr "SER_116_kRN.phl[2033]" "SER_116_kRN.phl[2034]";
connectAttr "SER_116_kRN.phl[2035]" "SER_116_kRN.phl[2036]";
connectAttr "SER_116_kRN.phl[2037]" "SER_116_kRN.phl[2038]";
connectAttr "SER_116_kRN.phl[2039]" "SER_116_kRN.phl[2040]";
connectAttr "SER_116_kRN.phl[2041]" "SER_116_kRN.phl[2042]";
connectAttr "SER_116_kRN.phl[2043]" "SER_116_kRN.phl[2044]";
connectAttr "SER_116_kRN.phl[2045]" "SER_116_kRN.phl[2046]";
connectAttr "SER_116_kRN.phl[2047]" "SER_116_kRN.phl[2048]";
connectAttr "SER_116_kRN.phl[2049]" "SER_116_kRN.phl[2050]";
connectAttr "SER_116_kRN.phl[2051]" "SER_116_kRN.phl[2052]";
connectAttr "SER_116_kRN.phl[2053]" "SER_116_kRN.phl[2054]";
connectAttr "SER_116_kRN.phl[2055]" "SER_116_kRN.phl[2056]";
connectAttr "SER_116_kRN.phl[2057]" "SER_116_kRN.phl[2058]";
connectAttr "SER_116_kRN.phl[2059]" "SER_116_kRN.phl[2060]";
connectAttr "SER_116_kRN.phl[2061]" "SER_116_kRN.phl[2062]";
connectAttr "SER_116_kRN.phl[2063]" "SER_116_kRN.phl[2064]";
connectAttr "SER_116_kRN.phl[2065]" "SER_116_kRN.phl[2066]";
connectAttr "SER_116_kRN.phl[2067]" "SER_116_kRN.phl[2068]";
connectAttr "SER_116_kRN.phl[2069]" "SER_116_kRN.phl[2070]";
connectAttr "SER_116_kRN.phl[2071]" "SER_116_kRN.phl[2072]";
connectAttr "SER_116_kRN.phl[2073]" "SER_116_kRN.phl[2074]";
connectAttr "SER_116_kRN.phl[2075]" "SER_116_kRN.phl[2076]";
connectAttr "SER_116_kRN.phl[2077]" "SER_116_kRN.phl[2078]";
connectAttr "Helper_Weapon1_visibility.o" "SER_116_kRN.phl[2079]";
connectAttr "Helper_Weapon1_translateX.o" "SER_116_kRN.phl[2080]";
connectAttr "Helper_Weapon1_translateY.o" "SER_116_kRN.phl[2081]";
connectAttr "Helper_Weapon1_translateZ.o" "SER_116_kRN.phl[2082]";
connectAttr "Helper_Weapon1_rotateX.o" "SER_116_kRN.phl[2083]";
connectAttr "Helper_Weapon1_rotateY.o" "SER_116_kRN.phl[2084]";
connectAttr "Helper_Weapon1_rotateZ.o" "SER_116_kRN.phl[2085]";
connectAttr "Helper_Weapon1_scaleX.o" "SER_116_kRN.phl[2086]";
connectAttr "Helper_Weapon1_scaleY.o" "SER_116_kRN.phl[2087]";
connectAttr "Helper_Weapon1_scaleZ.o" "SER_116_kRN.phl[2088]";
connectAttr "Helper_Weapon1_lockInfluenceWeights.o" "SER_116_kRN.phl[2089]";
connectAttr "SER_116_kRN.phl[2090]" "SER_116_kRN.phl[2091]";
connectAttr "SER_116_kRN.phl[2092]" "SER_116_kRN.phl[2093]";
connectAttr "SER_116_kRN.phl[2094]" "SER_116_kRN.phl[2095]";
connectAttr "SER_116_kRN.phl[2096]" "SER_116_kRN.phl[2097]";
connectAttr "SER_116_kRN.phl[2098]" "SER_116_kRN.phl[2099]";
connectAttr "SER_116_kRN.phl[2100]" "SER_116_kRN.phl[2101]";
connectAttr "SER_116_kRN.phl[2102]" "SER_116_kRN.phl[2103]";
connectAttr "SER_116_kRN.phl[2104]" "SER_116_kRN.phl[2105]";
connectAttr "SER_116_kRN.phl[2106]" "SER_116_kRN.phl[2107]";
connectAttr "SER_116_kRN.phl[2108]" "SER_116_kRN.phl[2109]";
connectAttr "SER_116_kRN.phl[2110]" "SER_116_kRN.phl[2111]";
connectAttr "SER_116_kRN.phl[2112]" "SER_116_kRN.phl[2113]";
connectAttr "SER_116_kRN.phl[2114]" "SER_116_kRN.phl[2115]";
connectAttr "SER_116_kRN.phl[2116]" "SER_116_kRN.phl[2117]";
connectAttr "SER_116_kRN.phl[2118]" "SER_116_kRN.phl[2119]";
connectAttr "SER_116_kRN.phl[2120]" "SER_116_kRN.phl[2121]";
connectAttr "SER_116_kRN.phl[2122]" "SER_116_kRN.phl[2123]";
connectAttr "SER_116_kRN.phl[2124]" "SER_116_kRN.phl[2125]";
connectAttr "SER_116_kRN.phl[2126]" "SER_116_kRN.phl[2127]";
connectAttr "SER_116_kRN.phl[2128]" "SER_116_kRN.phl[2129]";
connectAttr "SER_116_kRN.phl[2130]" "SER_116_kRN.phl[2131]";
connectAttr "SER_116_kRN.phl[2132]" "SER_116_kRN.phl[2133]";
connectAttr "SER_116_kRN.phl[2134]" "SER_116_kRN.phl[2135]";
connectAttr "SER_116_kRN.phl[2136]" "SER_116_kRN.phl[2137]";
connectAttr "SER_116_kRN.phl[2138]" "SER_116_kRN.phl[2139]";
connectAttr "SER_116_kRN.phl[2140]" "SER_116_kRN.phl[2141]";
connectAttr "SER_116_kRN.phl[2142]" "SER_116_kRN.phl[2143]";
connectAttr "SER_116_kRN.phl[2144]" "SER_116_kRN.phl[2145]";
connectAttr "SER_116_kRN.phl[2146]" "SER_116_kRN.phl[2147]";
connectAttr "SER_116_kRN.phl[2148]" "SER_116_kRN.phl[2149]";
connectAttr "SER_116_kRN.phl[2150]" "SER_116_kRN.phl[2151]";
connectAttr "SER_116_kRN.phl[2152]" "SER_116_kRN.phl[2153]";
connectAttr "SER_116_kRN.phl[2154]" "SER_116_kRN.phl[2155]";
connectAttr "SER_116_kRN.phl[2156]" "SER_116_kRN.phl[2157]";
connectAttr "SER_116_kRN.phl[2158]" "SER_116_kRN.phl[2159]";
connectAttr "SER_116_kRN.phl[2160]" "SER_116_kRN.phl[2161]";
connectAttr "SER_116_kRN.phl[2162]" "SER_116_kRN.phl[2163]";
connectAttr "SER_116_kRN.phl[2164]" "SER_116_kRN.phl[2165]";
connectAttr "SER_116_kRN.phl[2166]" "SER_116_kRN.phl[2167]";
connectAttr "SER_116_kRN.phl[2168]" "SER_116_kRN.phl[2169]";
connectAttr "SER_116_kRN.phl[2170]" "SER_116_kRN.phl[2171]";
connectAttr "SER_116_kRN.phl[2172]" "SER_116_kRN.phl[2173]";
connectAttr "SER_116_kRN.phl[2174]" "SER_116_kRN.phl[2175]";
connectAttr "SER_116_kRN.phl[2176]" "SER_116_kRN.phl[2177]";
connectAttr "SER_116_kRN.phl[2178]" "SER_116_kRN.phl[2179]";
connectAttr "SER_116_kRN.phl[2180]" "SER_116_kRN.phl[2181]";
connectAttr "SER_116_kRN.phl[2182]" "SER_116_kRN.phl[2183]";
connectAttr "SER_116_kRN.phl[2184]" "SER_116_kRN.phl[2185]";
connectAttr "SER_116_kRN.phl[2186]" "SER_116_kRN.phl[2187]";
connectAttr "SER_116_kRN.phl[2188]" "SER_116_kRN.phl[2189]";
connectAttr "SER_116_kRN.phl[2190]" "SER_116_kRN.phl[2191]";
connectAttr "SER_116_kRN.phl[2192]" "SER_116_kRN.phl[2193]";
connectAttr "SER_116_kRN.phl[2194]" "SER_116_kRN.phl[2195]";
connectAttr "SER_116_kRN.phl[2196]" "SER_116_kRN.phl[2197]";
connectAttr "SER_116_kRN.phl[2198]" "SER_116_kRN.phl[2199]";
connectAttr "SER_116_kRN.phl[2200]" "SER_116_kRN.phl[2201]";
connectAttr "SER_116_kRN.phl[2202]" "SER_116_kRN.phl[2203]";
connectAttr "SER_116_kRN.phl[2204]" "SER_116_kRN.phl[2205]";
connectAttr "SER_116_kRN.phl[2206]" "SER_116_kRN.phl[2207]";
connectAttr "SER_116_kRN.phl[2208]" "SER_116_kRN.phl[2209]";
connectAttr "SER_116_kRN.phl[2210]" "SER_116_kRN.phl[2211]";
connectAttr "SER_116_kRN.phl[2212]" "SER_116_kRN.phl[2213]";
connectAttr "SER_116_kRN.phl[2214]" "SER_116_kRN.phl[2215]";
connectAttr "SER_116_kRN.phl[2216]" "SER_116_kRN.phl[2217]";
connectAttr "SER_116_kRN.phl[2218]" "SER_116_kRN.phl[2219]";
connectAttr "SER_116_kRN.phl[2220]" "SER_116_kRN.phl[2221]";
connectAttr "SER_116_kRN.phl[2222]" "SER_116_kRN.phl[2223]";
connectAttr "SER_116_kRN.phl[2224]" "SER_116_kRN.phl[2225]";
connectAttr "SER_116_kRN.phl[2226]" "SER_116_kRN.phl[2227]";
connectAttr "SER_116_kRN.phl[2228]" "SER_116_kRN.phl[2229]";
connectAttr "SER_116_kRN.phl[2230]" "SER_116_kRN.phl[2231]";
connectAttr "SER_116_kRN.phl[2232]" "SER_116_kRN.phl[2233]";
connectAttr "y_visibility.o" "SER_116_kRN.phl[2234]";
connectAttr "y_translateX.o" "SER_116_kRN.phl[2235]";
connectAttr "y_translateY.o" "SER_116_kRN.phl[2236]";
connectAttr "y_translateZ.o" "SER_116_kRN.phl[2237]";
connectAttr "y_rotateX.o" "SER_116_kRN.phl[2238]";
connectAttr "y_rotateY.o" "SER_116_kRN.phl[2239]";
connectAttr "y_rotateZ.o" "SER_116_kRN.phl[2240]";
connectAttr "y_scaleX.o" "SER_116_kRN.phl[2241]";
connectAttr "y_scaleY.o" "SER_116_kRN.phl[2242]";
connectAttr "y_scaleZ.o" "SER_116_kRN.phl[2243]";
connectAttr "z_translateX.o" "SER_116_kRN.phl[2244]";
connectAttr "z_translateY.o" "SER_116_kRN.phl[2245]";
connectAttr "z_translateZ.o" "SER_116_kRN.phl[2246]";
connectAttr "z_rotateX.o" "SER_116_kRN.phl[2247]";
connectAttr "z_rotateY.o" "SER_116_kRN.phl[2248]";
connectAttr "z_rotateZ.o" "SER_116_kRN.phl[2249]";
connectAttr "Character1_Ctrl_HipsEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2250]"
		;
connectAttr "Character1_Ctrl_HipsEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2251]"
		;
connectAttr "Character1_Ctrl_HipsEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2252]"
		;
connectAttr "Character1_Ctrl_HipsEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2253]"
		;
connectAttr "Character1_Ctrl_HipsEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2254]"
		;
connectAttr "Character1_Ctrl_HipsEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2255]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2256]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2257]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2258]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2259]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2260]"
		;
connectAttr "Character1_Ctrl_LeftAnkleEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2261]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2262]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2263]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2264]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2265]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2266]"
		;
connectAttr "Character1_Ctrl_RightAnkleEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2267]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2268]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2269]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2270]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2271]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2272]"
		;
connectAttr "Character1_Ctrl_LeftWristEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2273]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2274]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2275]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2276]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2277]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2278]"
		;
connectAttr "Character1_Ctrl_RightWristEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2279]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2280]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2281]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2282]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2283]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2284]"
		;
connectAttr "Character1_Ctrl_LeftKneeEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2285]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2286]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2287]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2288]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2289]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2290]"
		;
connectAttr "Character1_Ctrl_RightKneeEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2291]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2292]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2293]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2294]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2295]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2296]"
		;
connectAttr "Character1_Ctrl_LeftElbowEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2297]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2298]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2299]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2300]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2301]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2302]"
		;
connectAttr "Character1_Ctrl_RightElbowEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2303]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2304]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2305]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2306]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2307]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2308]"
		;
connectAttr "Character1_Ctrl_ChestOriginEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2309]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2310]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2311]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2312]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2313]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2314]"
		;
connectAttr "Character1_Ctrl_ChestEndEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2315]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2316]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2317]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2318]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2319]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2320]"
		;
connectAttr "Character1_Ctrl_LeftShoulderEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2321]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2322]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2323]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2324]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2325]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2326]"
		;
connectAttr "Character1_Ctrl_RightShoulderEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2327]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2328]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2329]"
		;
connectAttr "Character1_Ctrl_HeadEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2330]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2331]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2332]"
		;
connectAttr "Character1_Ctrl_HeadEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2333]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2334]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2335]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2336]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2337]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2338]"
		;
connectAttr "Character1_Ctrl_LeftHipEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2339]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2340]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2341]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2342]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2343]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2344]"
		;
connectAttr "Character1_Ctrl_RightHipEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2345]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2346]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2347]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2348]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2349]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2350]"
		;
connectAttr "Character1_Ctrl_LeftHandThumbEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2351]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2352]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2353]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2354]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2355]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2356]"
		;
connectAttr "Character1_Ctrl_LeftHandIndexEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2357]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2358]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2359]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2360]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2361]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2362]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddleEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2363]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2364]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2365]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2366]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2367]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2368]"
		;
connectAttr "Character1_Ctrl_LeftHandRingEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2369]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2370]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2371]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2372]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2373]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2374]"
		;
connectAttr "Character1_Ctrl_LeftHandPinkyEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2375]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2376]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2377]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2378]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2379]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2380]"
		;
connectAttr "Character1_Ctrl_RightHandThumbEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2381]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2382]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2383]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2384]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2385]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2386]"
		;
connectAttr "Character1_Ctrl_RightHandIndexEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2387]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2388]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2389]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2390]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2391]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2392]"
		;
connectAttr "Character1_Ctrl_RightHandMiddleEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2393]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2394]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2395]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2396]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2397]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2398]"
		;
connectAttr "Character1_Ctrl_RightHandRingEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2399]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2400]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2401]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2402]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2403]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2404]"
		;
connectAttr "Character1_Ctrl_RightHandPinkyEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2405]"
		;
connectAttr "Character1_Ctrl_LeftFootIndexEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2406]"
		;
connectAttr "Character1_Ctrl_LeftFootIndexEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2407]"
		;
connectAttr "Character1_Ctrl_LeftFootIndexEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2408]"
		;
connectAttr "Character1_Ctrl_LeftFootIndexEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2409]"
		;
connectAttr "Character1_Ctrl_LeftFootIndexEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2410]"
		;
connectAttr "Character1_Ctrl_LeftFootIndexEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2411]"
		;
connectAttr "Character1_Ctrl_RightFootIndexEffector_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2412]"
		;
connectAttr "Character1_Ctrl_RightFootIndexEffector_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2413]"
		;
connectAttr "Character1_Ctrl_RightFootIndexEffector_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2414]"
		;
connectAttr "Character1_Ctrl_RightFootIndexEffector_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2415]"
		;
connectAttr "Character1_Ctrl_RightFootIndexEffector_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2416]"
		;
connectAttr "Character1_Ctrl_RightFootIndexEffector_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2417]"
		;
connectAttr "Character1_Ctrl_Hips_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2418]"
		;
connectAttr "Character1_Ctrl_Hips_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2419]"
		;
connectAttr "Character1_Ctrl_Hips_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2420]"
		;
connectAttr "Character1_Ctrl_Hips_translateZ_tempLayer_inputA.o" "SER_116_kRN.phl[2421]"
		;
connectAttr "Character1_Ctrl_Hips_translateY_tempLayer_inputA.o" "SER_116_kRN.phl[2422]"
		;
connectAttr "Character1_Ctrl_Hips_translateX_tempLayer_inputA.o" "SER_116_kRN.phl[2423]"
		;
connectAttr "Character1_Ctrl_LeftUpLeg_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2424]"
		;
connectAttr "Character1_Ctrl_LeftUpLeg_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2425]"
		;
connectAttr "Character1_Ctrl_LeftUpLeg_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2426]"
		;
connectAttr "Character1_Ctrl_LeftLeg_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2427]"
		;
connectAttr "Character1_Ctrl_LeftLeg_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2428]"
		;
connectAttr "Character1_Ctrl_LeftLeg_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2429]"
		;
connectAttr "Character1_Ctrl_LeftFoot_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2430]"
		;
connectAttr "Character1_Ctrl_LeftFoot_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2431]"
		;
connectAttr "Character1_Ctrl_LeftFoot_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2432]"
		;
connectAttr "Character1_Ctrl_LeftFootIndex1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2433]"
		;
connectAttr "Character1_Ctrl_LeftFootIndex1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2434]"
		;
connectAttr "Character1_Ctrl_LeftFootIndex1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2435]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2436]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2437]"
		;
connectAttr "Character1_Ctrl_RightUpLeg_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2438]"
		;
connectAttr "Character1_Ctrl_RightLeg_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2439]"
		;
connectAttr "Character1_Ctrl_RightLeg_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2440]"
		;
connectAttr "Character1_Ctrl_RightLeg_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2441]"
		;
connectAttr "Character1_Ctrl_RightFoot_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2442]"
		;
connectAttr "Character1_Ctrl_RightFoot_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2443]"
		;
connectAttr "Character1_Ctrl_RightFoot_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2444]"
		;
connectAttr "Character1_Ctrl_RightFootIndex1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2445]"
		;
connectAttr "Character1_Ctrl_RightFootIndex1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2446]"
		;
connectAttr "Character1_Ctrl_RightFootIndex1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2447]"
		;
connectAttr "Character1_Ctrl_Spine_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2448]"
		;
connectAttr "Character1_Ctrl_Spine_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2449]"
		;
connectAttr "Character1_Ctrl_Spine_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2450]"
		;
connectAttr "Character1_Ctrl_Spine1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2451]"
		;
connectAttr "Character1_Ctrl_Spine1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2452]"
		;
connectAttr "Character1_Ctrl_Spine1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2453]"
		;
connectAttr "Character1_Ctrl_Spine2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2454]"
		;
connectAttr "Character1_Ctrl_Spine2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2455]"
		;
connectAttr "Character1_Ctrl_Spine2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2456]"
		;
connectAttr "Character1_Ctrl_LeftShoulder_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2457]"
		;
connectAttr "Character1_Ctrl_LeftShoulder_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2458]"
		;
connectAttr "Character1_Ctrl_LeftShoulder_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2459]"
		;
connectAttr "Character1_Ctrl_LeftArm_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2460]"
		;
connectAttr "Character1_Ctrl_LeftArm_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2461]"
		;
connectAttr "Character1_Ctrl_LeftArm_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2462]"
		;
connectAttr "Character1_Ctrl_LeftForeArm_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2463]"
		;
connectAttr "Character1_Ctrl_LeftForeArm_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2464]"
		;
connectAttr "Character1_Ctrl_LeftForeArm_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2465]"
		;
connectAttr "Character1_Ctrl_LeftHand_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2466]"
		;
connectAttr "Character1_Ctrl_LeftHand_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2467]"
		;
connectAttr "Character1_Ctrl_LeftHand_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2468]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2469]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2470]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2471]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2472]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2473]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2474]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2475]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2476]"
		;
connectAttr "Character1_Ctrl_LeftHandThumb3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2477]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2478]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2479]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2480]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2481]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2482]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2483]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2484]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2485]"
		;
connectAttr "Character1_Ctrl_LeftHandIndex3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2486]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2487]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2488]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2489]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2490]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2491]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2492]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2493]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2494]"
		;
connectAttr "Character1_Ctrl_LeftHandMiddle3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2495]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2496]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2497]"
		;
connectAttr "Character1_Ctrl_LeftHandRing1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2498]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2499]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2500]"
		;
connectAttr "Character1_Ctrl_LeftHandRing2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2501]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2502]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2503]"
		;
connectAttr "Character1_Ctrl_LeftHandRing3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2504]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2505]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2506]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2507]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2508]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2509]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2510]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2511]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2512]"
		;
connectAttr "Character1_Ctrl_LeftHandPinky3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2513]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2514]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2515]"
		;
connectAttr "Character1_Ctrl_RightShoulder_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2516]"
		;
connectAttr "Character1_Ctrl_RightArm_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2517]"
		;
connectAttr "Character1_Ctrl_RightArm_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2518]"
		;
connectAttr "Character1_Ctrl_RightArm_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2519]"
		;
connectAttr "Character1_Ctrl_RightForeArm_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2520]"
		;
connectAttr "Character1_Ctrl_RightForeArm_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2521]"
		;
connectAttr "Character1_Ctrl_RightForeArm_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2522]"
		;
connectAttr "Character1_Ctrl_RightHand_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2523]"
		;
connectAttr "Character1_Ctrl_RightHand_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2524]"
		;
connectAttr "Character1_Ctrl_RightHand_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2525]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2526]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2527]"
		;
connectAttr "Character1_Ctrl_RightHandThumb1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2528]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2529]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2530]"
		;
connectAttr "Character1_Ctrl_RightHandThumb2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2531]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2532]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2533]"
		;
connectAttr "Character1_Ctrl_RightHandThumb3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2534]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2535]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2536]"
		;
connectAttr "Character1_Ctrl_RightHandIndex1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2537]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2538]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2539]"
		;
connectAttr "Character1_Ctrl_RightHandIndex2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2540]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2541]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2542]"
		;
connectAttr "Character1_Ctrl_RightHandIndex3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2543]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2544]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2545]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2546]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2547]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2548]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2549]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2550]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2551]"
		;
connectAttr "Character1_Ctrl_RightHandMiddle3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2552]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2553]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2554]"
		;
connectAttr "Character1_Ctrl_RightHandRing1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2555]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2556]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2557]"
		;
connectAttr "Character1_Ctrl_RightHandRing2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2558]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2559]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2560]"
		;
connectAttr "Character1_Ctrl_RightHandRing3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2561]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2562]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2563]"
		;
connectAttr "Character1_Ctrl_RightHandPinky1_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2564]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2565]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2566]"
		;
connectAttr "Character1_Ctrl_RightHandPinky2_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2567]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2568]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2569]"
		;
connectAttr "Character1_Ctrl_RightHandPinky3_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2570]"
		;
connectAttr "Character1_Ctrl_Neck_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2571]"
		;
connectAttr "Character1_Ctrl_Neck_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2572]"
		;
connectAttr "Character1_Ctrl_Neck_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2573]"
		;
connectAttr "Character1_Ctrl_Head_rotate_tempLayer_inputAZ.o" "SER_116_kRN.phl[2574]"
		;
connectAttr "Character1_Ctrl_Head_rotate_tempLayer_inputAY.o" "SER_116_kRN.phl[2575]"
		;
connectAttr "Character1_Ctrl_Head_rotate_tempLayer_inputAX.o" "SER_116_kRN.phl[2576]"
		;
connectAttr "white_fadeouit_translateX.o" "white_fadeouit.tx";
connectAttr "white_fadeouit_translateY.o" "white_fadeouit.ty";
connectAttr "white_fadeouit_translateZ.o" "white_fadeouit.tz";
connectAttr "white_fadeouit_visibility.o" "white_fadeouit.v";
connectAttr "white_fadeouit_rotateX.o" "white_fadeouit.rx";
connectAttr "white_fadeouit_rotateY.o" "white_fadeouit.ry";
connectAttr "white_fadeouit_rotateZ.o" "white_fadeouit.rz";
connectAttr "white_fadeouit_scaleX.o" "white_fadeouit.sx";
connectAttr "white_fadeouit_scaleY.o" "white_fadeouit.sy";
connectAttr "white_fadeouit_scaleZ.o" "white_fadeouit.sz";
connectAttr "polyPlane3.out" "white_fadeouitShape.i";
connectAttr "nurbsCircle1_translateX.o" "nurbsCircle1.tx";
connectAttr "nurbsCircle1_translateY.o" "nurbsCircle1.ty";
connectAttr "nurbsCircle1_translateZ.o" "nurbsCircle1.tz";
connectAttr "nurbsCircle1_visibility.o" "nurbsCircle1.v";
connectAttr "nurbsCircle1_scaleX.o" "nurbsCircle1.sx";
connectAttr "nurbsCircle1_scaleY.o" "nurbsCircle1.sy";
connectAttr "nurbsCircle1_scaleZ.o" "nurbsCircle1.sz";
connectAttr "nurbsCircle1_rotateX.o" "nurbsCircle1.rx";
connectAttr "nurbsCircle1_rotateY.o" "nurbsCircle1.ry";
connectAttr "nurbsCircle1_rotateZ.o" "nurbsCircle1.rz";
connectAttr "makeNurbCircle1.oc" "nurbsCircleShape1.cr";
connectAttr "camera1_translateX.o" "camera1.tx";
connectAttr "camera1_translateY.o" "camera1.ty";
connectAttr "camera1_translateZ.o" "camera1.tz";
connectAttr "camera1_visibility.o" "camera1.v";
connectAttr "camera1_rotateX.o" "camera1.rx";
connectAttr "camera1_rotateY.o" "camera1.ry";
connectAttr "camera1_rotateZ.o" "camera1.rz";
connectAttr "camera1_scaleX.o" "camera1.sx";
connectAttr "camera1_scaleY.o" "camera1.sy";
connectAttr "camera1_scaleZ.o" "camera1.sz";
connectAttr "cameraShape1_focalLength.o" "cameraShape1.fl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "SER_116_kRN.phl[1285]" "SER_116_kRN.phl[1286]";
connectAttr "sharedReferenceNode.sr" "SER_116_kRN.sr";
connectAttr "polyPlane3_axisX.o" "polyPlane3.axx";
connectAttr "polyPlane3_axisY.o" "polyPlane3.axy";
connectAttr "polyPlane3_axisZ.o" "polyPlane3.axz";
connectAttr "polyPlane3_width.o" "polyPlane3.w";
connectAttr "polyPlane3_height.o" "polyPlane3.h";
connectAttr "polyPlane3_subdivisionsWidth.o" "polyPlane3.sw";
connectAttr "polyPlane3_subdivisionsHeight.o" "polyPlane3.sh";
connectAttr "white.oc" "lambert3SG.ss";
connectAttr "white_fadeouitShape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo33.sg";
connectAttr "white.msg" "materialInfo33.m";
connectAttr "lambert3SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[0].dn"
		;
connectAttr "white.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo1.tgi[0].ni[1].dn"
		;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "white.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of 118_kyojin_002.ma
