#!/bin/bash
read -p "Enter GitLab repo URL : " repo
read -p "Enter GitHub repo URL : " newrepo

IFS='/' 
read -a array <<< "$repo"

reponame = ${array[1]}

git clone --bare $repo

cd $reponame

echo $reponame

git push --mirror $newrepo

cd ..
rm -rf $repo