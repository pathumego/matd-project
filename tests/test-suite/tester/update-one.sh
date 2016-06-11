#!/bin/bash
FILE="experiment-sinhala-0.sfd"
cd ../sources/sfd/;
echo 'hello' | awk '{print "fontforge ../../scripts/fontconvert "$FILE" --remove-overlap --unlink-reference --otf"}' oneesfd.txt > oneesfd.sh;
rm oneesfd.txt;
sh oneesfd.sh
rm ../../tests/fonts/$FILE
mv $FILE ../../tests/fonts;
cd ../../tests/fonts/;
cp $FILE /Library/Application\ Support/Adobe/Fonts
cp $FILE ../test-suite/tester/fonts
