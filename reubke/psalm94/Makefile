all: psalm94.pdf psalm94.zip

files = $(wildcard *.ly)

psalm94.pdf: $(files)
	lilypond --pdf -dno-point-and-click -ddelete-intermediate-files psalm94.ly

psalm94.zip: $(files)
	rm -f psalm94.zip
	zip -9 psalm94.zip $(files) Makefile
