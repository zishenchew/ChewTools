# encoding: utf-8
import os
import pymel.core as pm

path = u'//p.sv/Prism/project/Parallel/works/02_ダンス・汎用・固有モーション/2018_01_25撮影/調整データ/汎用モーション'
#path = r'\\p.sv\Prism\project\Parallel\user\ishikawa\to_chew\OK'
fileList = [i for i in os.listdir(path) if os.path.isfile(os.path.join(path, i))]
amount = 0 #the 3 variables are for the progress bar
amount_max = len(fileList)
amount_increment = 100.0/amount_max


progWin = pm.progressWindow(title=u'PARALLEL 検索', progress=amount, status=(u'検索中: ' + `amount` + '%'), isInterruptable=True) #for progress bar


#creating a txt file to output the results of the search
txtWrite = open(path + '/' + 'results.txt', 'w+')


for i in fileList:
    FBXOpen = open(path + '/' + i, 'r')
    FBXRead = FBXOpen.read()
    print i
    if FBXRead.find('LeftForeArmRoll_EXJ') and FBXRead.find('LeftArmRoll_EXJ') and FBXRead.find('RightForeArmRoll_EXJ') and FBXRead.find('RightArmRoll_EXJ') :
        print 'Found'
    else:
        print '4 bones not found'
        txtWrite.write(i + ' X\n')
    pm.progressWindow(progWin, edit=True, progress=amount, status=(u'検索中: ' + `amount` + '%'))
    amount += amount_increment
    FBXOpen.close()

txtWrite.close()
pm.progressWindow(progWin, endProgress=1) #end of progress bar