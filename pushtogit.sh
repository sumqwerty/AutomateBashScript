#!/bin/bash

#to clone and push changes in repo, need login because this script uses SSH key

while getopts l:f:c:s:k:r: option;do
case "${option}" in
l) link=${OPTARG};; #repoLink
f) programFile=${OPTARG};; #filename
c) comment=${OPTARG};; #comment
s) change=${OPTARG};; #add or del
k) KeepOrNot=${OPTARG};; #keep the local repo or not
r) LrepoName=${OPTARG};; #if already cloned then use this not the link
esac
done


if [ -z $comment ];then
	comment="Program Files"
fi

if [ -z $change ];then
	change="add"
fi

if [ -z $KeepOrNot ];then
	KeepOrNot="no"
fi



#echo "Link: "$link
#echo "Comment: "$comment
#echo "Program File: "$programFile
#echo "State: "$change
#echo "KeepRepo: "$KeepOrNot


if [ -z "$link" ];then
	repoFolder=$LrepoName

else
	IFS='/' read -ra string <<< "$link"
	i=-1
	for j in ${string[@]}
	do
		i=$(( $i + 1 ))
	done
	interMediate=${string[i]}
	IFS='.' read -ra string <<< "$interMediate"
	repoFolder=${string[0]}

	git clone $link
fi


if [ $change == "add" ];then
	cp -r $programFile $repoFolder;echo "Copied"
	cd $repoFolder;echo "In the repo"
elif [ $change == "del" ];then
	cd $repoFolder;echo "In the repo"
	rm -rf $programFile
else
	echo "wrong command"
fi

git add .
git commit -m "$comment"
git push origin master
cd ..
if [ $KeepOrNot == "no" ];then
	rm -rf $repoFolder
	echo "Clear"
fi
