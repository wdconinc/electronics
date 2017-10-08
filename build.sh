#!/bin/bash

sed -i 's|^\[\!\[.*||g' README.md
pandoc -s --from=markdown --to=latex -V geometry:letterpaper,margin=1in -o README.tex README.md
rubber --pdf README.tex

pandoc -s --from=markdown --to=latex -V geometry:letterpaper,margin=1in -o LICENSE.tex LICENSE.md
rubber --pdf LICENSE.tex

for i in `seq -w 01 12` ; do
  rubber --pdf lab${i}/lab${i}.tex
  rubber --pdf lab${i}/notes${i}.tex
  rubber --pdf lecture${i}/lecture${i}_handouts.tex
  rubber --pdf lecture${i}/lecture${i}_presentation.tex
done

rubber --pdf electronics_labs.tex
rubber --pdf electronics_handouts.tex

