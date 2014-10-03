#!/bin/bash
# This is an helper script to simplify the use of oarsub
# Usage is: big_newjob.sh hostname nbcores "/foo/bar stuff"
# It will run "/foo/bar stuff" on hostname using nbcores cores.

bighost=$1
cores=$2
lecmd=$3

if [ -n "$BIG_MAIL" ];
then
  oarsub -l nodes=1/core=$cores,walltime=1500 -p "host='$bighost'" --notify "mail:$BIG_MAIL" "$lecmd"
else
  echo "Please set the BIG_MAIL variable to your own mail so oar can send you notifications";
fi

