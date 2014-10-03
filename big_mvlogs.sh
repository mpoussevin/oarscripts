#!/bin/bash
# Moves logs to folder, adding prefix
lefolder=$1;
shift;
leprefix=$1;
shift;
lelogs=$@;

echo "Moves logs {${lelogs}} to folder ${lefolder} adding prefix ${leprefix}"
for lelog in ${lelogs};
do
	mv -v ${lelog} ${lefolder}/${leprefix}.$lelog;
done
exit;
