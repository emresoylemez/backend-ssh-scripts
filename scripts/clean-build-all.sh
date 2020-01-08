#!/bin/sh
current_dir=$PWD;

#build digital 
cd ../digital
./gradlew clean build

#build for all splitted services in the services folder.
for dir in $current_dir/../services/*/
do
    dirName=${dir%*/}      # remove the trailing "/"
    echo building directory : ${dirName##*/}    # print everything after the final "/"
    # echo ${dir}
    cd ${dir}
    ./gradlew clean build
done

cd $current_dir;
