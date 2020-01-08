#!/bin/sh
read -p "Enter commit message: "  message

git add .
git commit -m "$message"
