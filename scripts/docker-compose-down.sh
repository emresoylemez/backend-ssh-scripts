#!/bin/sh
current_dir=$PWD;

#build digital 
cd ../digital
./gradlew composeDown

cd $current_dir;
