#!/bin/bash
temp_date=$(date)
temp_path=$(pwd)

#进入这个路径，因为这里是git的环境
#因为有可能在其他路径下执行这个脚本
#fix bug on 09/11/2015
cd $temp_path && /usr/bin/git branch tmp
cd $temp_path && /usr/bin/git checkout tmp
cd $temp_path && /usr/bin/git add . --all
#echo "please input commit message:"
#read message
cd $temp_path && /usr/bin/git commit -m "code on $temp_date"
cd $temp_path && /usr/bin/git checkout master
cd $temp_path && /usr/bin/git merge tmp
cd $temp_path && /usr/bin/git push origin master
cd $temp_path && /usr/bin/git branch -d tmp
