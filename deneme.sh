#!/bin/sh

readCli(){
  read -p "$@ :"  readValue
  echo $readValue
}


test=$(readCli "deneme mesaj")
echo "bunu okudum $test"
