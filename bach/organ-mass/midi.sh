#!/bin/bash

prefix=""
html=index.html

LILYPOND=/usr/bin/lilypond

midi()
{
	local file=$1
	local tempo=$2
	# local transpose=${3:-c c}
	(
		echo "pieceTempo = \\tempo $tempo"
		cat $file.ly midi.ly
	) |
	$LILYPOND -o $file -
	title=$(sed -nr 's/^\s*pieceTitle\s*=\s*"([^"]+)"\s*$/\1/p' $file.ly)
	echo -n "<tr><td>${title}</td><td><a href=\"${prefix}${file}.midi\">tutti</a></td>" >> $html
	n=1
	for i in sop alt tenor bas
	do
		mv "${file}-$n.midi" "${prefix}${file}-$i.midi"
		echo -n "<td><a href=\"${prefix}${file}-$i.midi\">$i</a></td>" >> $html
		let n=++n
	done
	echo "</tr>" >> $html
}

cat <<"EOF" > $html
<html><head><meta http-equiv="Content-Type" content="text/html;charset=utf-8" /></head><body>

<table>
EOF

midi 01-kyrie-gott-vater 	4=72
midi 02-christe-aller-welt 	4=72
midi 03-kyrie-gott-heiliger	4=72
midi 04-allein-gott		4=80
midi 05-dies-sind		4=72
midi 06-wir-glauben		4=72
midi 07-vater-unser		4=66
midi 08-christ-unser-herr	4=72
midi 09-aus-tiefer-not		4=80
midi 10-jesus-christus		4=72

cat <<"EOF" >> $html
</table>
</body></html>
EOF
