files = om-great-acc.pdf  om-great.pdf  om-small-acc.pdf  om-small.pdf

sources = \
01-kyrie-gott-vater.ly \
02-christe-aller-welt.ly \
03-kyrie-gott-heiliger.ly \
04-allein-gott.ly \
05-dies-sind.ly \
06-wir-glauben.ly \
07-vater-unser.ly \
08-christ-unser-herr.ly \
09-aus-tiefer-not.ly \
10-jesus-christus.ly 


all: $(files)

$(files): %.pdf: %.ly $(sources) setup.ly
	lilypond -dno-point-and-click --pdf $<

zip:
	svn export . om
	zip -r om.zip om
	rm -fr om

midi:
	./midi.sh
	zip om-midi.zip *.midi index.html
