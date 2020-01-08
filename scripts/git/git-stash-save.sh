#!/bin/sh
read -p "Enter stash name: "  name

git stash save  "$name"
