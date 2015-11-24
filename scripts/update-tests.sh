#!/bin/bash
#Run this for automation: fswatch -0 sources/ | xargs -0 -n1 -I{} sh scripts/update-tests.sh
cd ../sources/sfd/

fontforge ../../scripts/fontconvert experiment-latin-0.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-sinhala-0.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-thaana-0.sfd --remove-overlap --otf
fontforge ../../scripts/fontconvert experiment-narrow-latin-0.sfd --remove-overlap --otf



mv *otf ../../tests/fonts
cd ../../tests/fonts
git add .
git commit -m 'Minor Updates to test'
cp *otf /Library/Application\ Support/Adobe/Fonts
cp *otf /Users/Pathum/Library/Fonts/
