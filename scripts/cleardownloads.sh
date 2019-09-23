#!/bin/bash

date=$(date '+%Y-%m-%d_%H-%M')
mkdir ~/Downloads/$date

for entry in  ~/Downloads/*; do
 if [[ -f $entry ]]; then
   mv $entry ~/Downloads/$date
 else
   echo "Not file"
 fi
done
