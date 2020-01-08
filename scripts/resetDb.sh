#!/bin/sh
current_dir=$PWD;

cd ../digital
./gradlew nukeDatabase updateDatabase populateAccessAllowedList populateDemoSampleData --info 

cd $current_dir;
