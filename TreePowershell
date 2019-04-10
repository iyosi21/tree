$DIRS=@(<PATH1>,<PATH2>)

    foreach($DIR in $DIRS){
    $DIR_Only = $DIR + "\フォルダ一覧.txt"
    $DIR_FN = $DIR + "\フォルダ一覧(ファイル名込).txt"

        tree $DIR | out-file  $DIR_Only
        tree /f $DIR | out-file $DIR_FN
    }
