scores = \
  fullscore	\
  vocalscore	\
  violino1	\
  violino2	\
  organo	\
  continuo	\


pdfs = $(patsubst %,telemann-psalm117-%.pdf,$(scores))

all: $(pdfs)

$(pdfs): %.pdf: %.ly parts.ly
	lilypond -dno-point-and-click -ddelete-intermediate-files $<

clean:
	rm $(pdfs)
