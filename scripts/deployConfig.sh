#!/bin/sh
current_dir=$PWD;

cd ../digital
./gradlew deployConfiguration

cd $current_dir;
