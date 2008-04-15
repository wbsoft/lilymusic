\version "2.11"

pieceNumber = "9"
pieceTitle = "Aus tiefer Noth schrei ich zu dir."

global = {
\key fis \phrygian
\time 4/4
}

sop = \relative c'' {
\global
\repeat volta 2 { cis2 fis,4 cis' d cis8( b) a4 b cis2\fermata
cis d4 e d8( cis) b4 a( g) fis2\fermata } %\tag #'nopiano \break
b a4 d cis b e8( d) cis4 b2\fermata
d cis4 d e a, cis b a2\fermata
a d4 cis b fis a( g) fis1\fermata
\bar"|."
}

alt = \relative c' {
\global
\repeat volta 2 { fis2 fis4 ais b a8( gis) fis4 gis ais2\fermata
ais b4 cis d g, fis( e8 d) cis2\fermata }
fis e4 fis8( gis) a4 b cis8( b) ais4 fis2\fermata
b a4 a a8( g) fis4 e d cis2\fermata
fis fis4 fis8( e) d4 d e2~( e4 d) cis2\fermata
\bar"|."
}

ten = \relative c' {
\global
\repeat volta 2 { ais2 b4 e fis e fis8( e) d4 cis2\fermata
fis fis4 g a d, d8( cis b4) ais2\fermata }
b cis4 d e e8( fis) g4 cis, d2\fermata
fis fis4 fis e d gis,8( a4) gis8 a2\fermata
a b4 ais b a a( b cis b) ais2\fermata
\bar "|."
}

bas = \relative c {
\global
\repeat volta 2 { e2 d4 cis b cis d8( cis) b4 fis'2\fermata
fis b4 a8( g) fis4 g d( e) fis2\fermata }
d' cis4 b a g8( fis) e4 fis b,2\fermata
b' fis4 e8( d) cis4 d e e, a2\fermata
d b4 fis' g d c( b ais b) fis2\fermata
\bar "|."
}

sopText = \lyricmode {
<< { \set stanza = "1."
Aus tie -- fer Noth schrei ich zu dir, Herr Gott er -- hör mein Ru -- fen! }
\new Lyrics { \set associatedVoice = "s"
Dein gnä -- dig Ohr’n neig her zu mir und mei -- ner Bitt sie öf -- fen.
Denn so du willst das se -- hen an, was Sünd und Un -- recht ist ge -- tan,
wer kann, Herr, vor dir blei -- ben? }
\new Lyrics { \set associatedVoice = "s" \set stanza = "2."
Ob bei uns ist der Sün -- den viel, bei Gott ist viel mehr Gna -- de, }
\new Lyrics { \set associatedVoice = "s"
sein Hand zu hel -- fen hat kein Ziel, wie gross auch sei der Scha -- de.
Er ist al -- lein der gu -- te Hirt, der Is -- ra -- el er -- lö -- sen wird
aus sei -- nen Sün -- den al -- len. }
>>
}

altText = \lyricmode {
<< { \set stanza = "1."
Aus tie -- fer Noth schrei ich zu dir, Herr Gott er -- hör mein Ru -- fen! }
\new Lyrics { \set associatedVoice = "a"
Dein gnä -- dig Ohr’n neig her zu mir und mei -- ner Bitt sie öf -- fen.
Denn so du willst das se -- hen an, was Sünd und Un -- recht ist ge -- tan,
wer kann, Herr, vor dir blei -- ben? }
\new Lyrics { \set associatedVoice = "a" \set stanza = "2."
Ob bei uns ist der Sün -- den viel, bei Gott ist viel mehr Gna -- de, }
\new Lyrics { \set associatedVoice = "a"
sein Hand zu hel -- fen hat kein Ziel, wie gross auch sei der Scha -- de.
Er ist al -- lein der gu -- te Hirt, der Is -- ra -- el er -- lö -- sen wird
aus sei -- nen Sün -- den al -- len. }
>>
}

tenText = \lyricmode {
<< { \set stanza = "1."
Aus tie -- fer Noth schrei ich zu dir, Herr Gott er -- hör mein Ru -- fen! }
\new Lyrics { \set associatedVoice = "t"
Dein gnä -- dig Ohr’n neig her zu mir und mei -- ner Bitt sie öf -- fen.
Denn so du willst das se -- hen an, was Sünd und Un -- recht ist ge -- tan,
wer kann, Herr, vor dir blei -- ben? }
\new Lyrics { \set associatedVoice = "t" \set stanza = "2."
Ob bei uns ist der Sün -- den viel, bei Gott ist viel mehr Gna -- de, }
\new Lyrics { \set associatedVoice = "t"
sein Hand zu hel -- fen hat kein Ziel, wie gross auch sei der Scha -- de.
Er ist al -- lein der gu -- te Hirt, der Is -- ra -- el er -- lö -- sen wird
aus sei -- nen Sün -- den al -- len. }
>>
}

basText = \lyricmode {
<< { \set stanza = "1."
Aus tie -- fer Noth schrei ich zu dir, Herr Gott er -- hör mein Ru -- fen! }
\new Lyrics { \set associatedVoice = "b"
Dein gnä -- dig Ohr’n neig her zu mir und mei -- ner Bitt sie öf -- fen.
Denn so du willst das se -- hen an, was Sünd und Un -- recht ist ge -- tan,
wer kann, Herr, vor dir blei -- ben? }
\new Lyrics { \set associatedVoice = "b" \set stanza = "2."
Ob bei uns ist der Sün -- den viel, bei Gott ist viel mehr Gna -- de, }
\new Lyrics { \set associatedVoice = "b"
sein Hand zu hel -- fen hat kein Ziel, wie gross auch sei der Scha -- de.
Er ist al -- lein der gu -- te Hirt, der Is -- ra -- el er -- lö -- sen wird
aus sei -- nen Sün -- den al -- len. }
>>
}

