#!/bin/sh
current_dir=$PWD;

#build digital 
cd ../digital
./gradlew composeUp

cd $current_dir;
