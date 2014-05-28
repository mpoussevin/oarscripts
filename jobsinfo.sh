#!/bin/bash

lename=`whoami`;
echo "Listing jobs for user $lename";
for jid in `oarstat | grep $lename | cut -d" " -f1`; 
do
	lecommand=`oarstat -fj $jid | grep command | cut -d= -f2- | sed 's/^ *//'`;
	lestate=`oarstat -fj $jid | grep state | cut -d= -f2- | sed 's/^ *//'`;
	echo "[$lestate] Job $jid - $lecommand";
done
exit;
