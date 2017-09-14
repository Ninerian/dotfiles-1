#!/bin/sh 
TMP_PTO=/tmp/cube_project.pto 
erect2cubic --erect="$1" --ptofile=$TMP_PTO 
nona -o "$1" $TMP_PTO 
rm $TMP_PTO
