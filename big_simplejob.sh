#!/bin/bash
# This is an helper script to simplify the use of oarsub
# Usage is: big_newjob.sh "/foo/bar stuff"
# It will run "/foo/bar stuff" using 1 core on any machine.

lecmd=$1

if [ -n "$BIG_MAIL" ];
then
  oarsub -l nodes=1/core=1,walltime=1500 --notify "mail:$BIG_MAIL" "$lecmd"
else
  echo "Please set the BIG_MAIL variable to your own mail so oar can send you notifications";
fi

