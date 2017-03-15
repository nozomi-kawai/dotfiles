#!/bin/sh

if [ -z "$1" ]
then
    echo "need argument"
    exit
fi

#-------------------------------
# 一時的に使う実行ファイル名を作る
#-------------------------------
tempfile=`date '+%m%d%H%M%S'`

#-------------------------------
# コンパイル実行
#-------------------------------
gcc -o $tempfile $1

#-------------------------------
# 実行
#-------------------------------
./$tempfile

#-------------------------------
# 実行ファイル削除
#-------------------------------
rm $tempfile