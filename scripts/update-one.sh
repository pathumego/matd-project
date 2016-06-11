#!/bin/bash
#Run this for automation: fswatch -0 sources/ | xargs -0 -n1 -I{} sh scripts/update-tests.sh
cd ../sources/sfd/;
sh sfdlist.sh
#rm sfdlist.sh
mv *otf ../../tests/fonts
cd ../../tests/fonts
git add .
git commit -m 'Minor Updates to test'
cp *otf /Library/Application\ Support/Adobe/Fonts
cp *otf ../test-suite/tester/fonts
echo 'DONE!';
