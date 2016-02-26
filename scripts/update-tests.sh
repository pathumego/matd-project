#!/bin/bash
#Run this for automation: fswatch -0 sources/ | xargs -0 -n1 -I{} sh scripts/update-tests.sh
cd ../sources/sfd/

fontforge ../../scripts/fontconvert experiment-latin-0.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-latin-1.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-latin-italic-0.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-latin-opt-0.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-latin-opt-1.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-latin-opt-italic-0.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-sinhala-0.sfd --remove-overlap --ot
fontforge ../../scripts/fontconvert experiment-sinhala-cursive-0.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-thaana-0.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-tamil-0.sfd --remove-overlap --otf

rm ../../tests/fonts/*otf
mv *otf ../../tests/fonts
cd ../../tests/fonts
git add .
git commit -m 'Minor Updates to test'
cp *otf /Library/Application\ Support/Adobe/Fonts
