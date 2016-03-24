#!/bin/bash
#Run this for automation: fswatch -0 sources/ | xargs -0 -n1 -I{} sh scripts/update-tests.sh
cd ../sources/sfd/;
ls *sfd | tr "\n" " " > fswatch.txt
echo 'hello' | awk '{print "fswatch -0 "$0" | xargs -0 -n1 -I{} sh ../../scripts/update-tests.sh"}' fswatch.txt > fswatch.sh;
rm fswatch.txt
sh fswatch.sh
echo 'Watching all SFD files now!';
