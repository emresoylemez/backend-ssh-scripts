#!/bin/sh
current_dir=$PWD;
mainDirectory=~/workspace/core2

checkDirectoryAndCreate(){
  if [ ! -d "$@" ]; then
    echo "directory doesn't exist, creating directory ${@}"
    mkdir $@
  fi
}

checkDirectoryAndCreate $mainDirectory
checkDirectoryAndCreate $mainDirectory/services
checkDirectoryAndCreate $mainDirectory/library

git clone TODO/backend-scripts.git
git clone TODO/project.git

cd $mainDirectory/services
#git clones
cd $mainDirectory/library
#git clones
