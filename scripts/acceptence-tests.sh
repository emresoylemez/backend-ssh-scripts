#!/bin/sh
current_dir=$PWD;

cd ../digital
 ./gradlew acceptanceTests

cd $current_dir;
