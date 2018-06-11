#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Usage: ./16745203 number"
  exit -1
fi

if [ $1 -le 0 ]; then
  echo "Usage: ./16745203 number"
  exit -1
fi

in=$1
status=0
j=2
k=1

while [ $j -lt $in ]
do
  tmp=`expr $in % $j `
  if [ $tmp -eq 0 ]; then
    k=0
    break
  fi
  let j=$j+1
done
 
if [ $in -eq 1 -o $k -eq 0 ]; then
  status=0
  echo $in"が素数ではない。"
else
  status=1
  echo $in"が素数である。"
fi
exit $status

