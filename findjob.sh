#!/bin/bash

lejob=$1
echo "Looking for $lejob";
lecommand=`oarstat -fj $lejob | grep command | cut -d= -f2- | sed 's/^ *//'`;
ledir=`oarstat -fj $lejob | grep launchingDirectory | cut -d= -f2- | sed 's/^ *//'`;
echo "Job $ljob - $lecommand";
echo "Directory: $ledir";
