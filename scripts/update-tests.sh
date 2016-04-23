#!/bin/bash
#Run this for automation: fswatch -0 sources/ | xargs -0 -n1 -I{} sh scripts/update-tests.sh
cd ../sources/sfd/;
ls *sfd > sfd.txt;
echo 'hello' | awk '{print "fontforge ../../scripts/fontconvert "$0" --remove-overlap --otf"}' sfd.txt > sfdlist.sh;
rm sfd.txt;
sh sfdlist.sh
rm sfdlist.sh
rm ../../tests/fonts/*otf
mv *otf ../../tests/fonts
cd ../../tests/fonts
git add .
git commit -m 'Minor Updates to test'
cp *otf /Library/Application\ Support/Adobe/Fonts
echo 'DONE!';
