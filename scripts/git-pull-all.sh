#!/bin/sh
current_dir=$PWD;

gitPullForAllDirectories(){
  for dir in $@
  do
      dirName=${dir%*/}      # remove the trailing "/"
      echo building directory : ${dirName##*/}    # print everything after the final "/"
      # echo ${dir}
      cd ${dir}
      git pull
  done
}

#build digital 
cd ../digital
git pull

#build for all splitted services/libraries in the services folder.
gitPullForAllDirectories $current_dir/../services/*/
gitPullForAllDirectories $current_dir/../libraries/*/

cd $current_dir;
