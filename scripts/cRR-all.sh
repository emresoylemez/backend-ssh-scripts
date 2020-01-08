#!/bin/sh
current_dir=$PWD;

#build digital 
cd ../digital
./gradlew cRR

#build for all splitted services in the services folder.
#for dir in $current_dir/../services/*/
#do
#    dirName=${dir%*/}      # remove the trailing "/"
#    echo building directory : ${dirName##*/}    # print everything after the final "/"
#    cd ${dir}
#    ./gradlew cRR
#done

cd $current_dir;
