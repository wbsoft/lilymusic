\version "2.12.0"

#(set-global-staff-size 16)

\paper {
  #(set-paper-size "a4")
  bottom-margin = 12 \mm
  line-width = 185 \mm
  ragged-last-bottom = ##f
}

\header {
  title = "Heer, hoor mijn gebed"
  poet = "Psalm 143, 1-2"
  composer = "Moritz Hauptmann (1792-1868)"
  copyright = \markup \center-column {
    \with-url #"http://www.cpdl.org/"
    "Copyright © 2007 The Choral Public Domain Library (http://www.cpdl.org/)"
    "This edition may be freely distributed, edited, performed or recorded."
    "Source: Attachment to “De Lofstem”, 1899 nº 3. Some obvious errors have been corrected:"
    "m.34.4 alto: d#; m.52.2-3 alto: a' e''; m.56.3 soprano: b'; alto: g'; m.59.3 alto: c'; m.71.1 bass: c'"
  }
}

global = {
  \time 4/4
  \key e \major
  \dynamicUp
  #(set-accidental-style 'modern)
  \override Hairpin #'to-barline = ##f
}

sop = \relative c' {
  \clef treble
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'font-series = #'bold
  \once \override Score.RehearsalMark #'font-size = #1
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark #'extra-offset = #'(-0.5 . 0)
  \mark \markup { "Adagio. " \fontsize #'-2 \general-align #Y #DOWN \note #"4" #.8 "= 54" }
  R1*2
  r4 e\p\< fis gis\! | b4.( a8)\> fis4 r\! |
  R1 R1 r4 fis\< gis\! a | cis4.(\> b8)\! gis4 gis\p |
  a4. a8 a4 a | a gis r e | cis'4.\< cis8\! cis4 cis | cis b r b\f |
  e4.(\espressivo cis8) cis4 cis\< | fis4.(\! cis8) cis4 cis |
  cis4. b8 b4 a | gis gis\> b\! a | gis2.( fis4)|
  e2 r | R1 |
  \mark \default % A
  r2 b'8 b a gis | e'4. cis8 gis4 ais | b b8 b\p b2~ |
  b4 b b2~ | b4 b b2~ | b bis | cis4 cis8 cis\p cis2 ~ |
  cis4 cis cis2~ | cis 4 cis cis2~ | cis4 e8( dis) cis4.( dis8) | dis2 r4 gis, |
  \mark \default % B
  gis gis8 gis gis4 gis | gis2. gis8 gis | a4. a8 gis4 fisis | gis bis r gis |
  a cis8 e e4 a, | gis1~ | gis4 a8( gis) fisis4 cis' | bis dis
  gis,\f gis | cis2. b4 | a4. a8 gis4 fis | e\> e8 e8 dis4 cis\! | gis'4. gis8 gis4 gis |
  \mark \default % C
  cis,2 r | R1 | r2 r4 a'~\mf | a8 a b a a2~ | a8 a( b) a a2~ | a4 r r d |
  d4. a8 fis4 r | r d'2 d4 | d4. c8 a4 r |
  \mark \default % D
  r d\f b g' | g4.( e8) c4 b | a \breathe a4. a8 b c | fis,4 fis8( b) b2~ | b4 b g e' |
  e4.( c8) a4 g | fis a4. fis8 g a | d,4 d8( g) g2~ |
  \mark \default % E
  g4 r r e8(\p c'8) | c2. g8(\< e') | e2.\! bes8(\f g') | g4. bes,8 bes4 r |
  r b\p e gis, | b4.( a8) fis4 b | b b e gis, cis4. b8 fis4( gis) |
  \mark \default % F
  e r r2 | R1 | R1 | r4 b'4. b8 cis b | b4 r r2 | R1 | r4 r8 b gis'4 fis8( e) |
  e e dis e fis4. b,8 | b( cis) b4 r2 | r4 b4. b8 cis b | b( e) b4 r r8 e, |
  cis' cis b a a4( gis8 fis) | e2 r4 b'\p |
  \mark \default % G
  b b8 b b4 b | b2 c4 b | b4. a8 a4 a | a gis b b | b2. b4 | c b e b | b4. a8 a4 a |
  a( gis) b gis | c2.\< b4\! | b4.\> a8\! a4 a | a2( gis4) g | g( fis) f f |
  e4. e8 e4 e | dis2( e~ | e) dis | e2.( b4) | b1\fermata \bar"|."
}

alt = \relative c' {
  \clef treble
  R1 R1 r4 b\p\< dis e\! | gis4.( fis8)\> dis4 r\! |
  R1 R1 r4 cis\< eis\! fis | a4.(\> gis8)\! eis4 eis\p |
  fis4. fis8 fis4 fis | fis e r gis | gis(\< a8) gis\! fis4 e | dis e r gis\f |
  a2^\espressivo a4 a\< | a2\! a4 gis | fis a gis fis | e e\> e\! e | e2( dis) |
  e r | r4 e e a |
  % A
  a gis r2 | r4 gis4. gis8 fis e | dis2 fis8 fis e dis |
  e4 r8 b gis'4 fis8( e) | dis( fis) fis r a a gis fis |
  e4 gis2 fis4 | eis2 gis8 gis fis eis |
  fis4 r8 cis a'4 gis8( fis) | eis4 fis8( gis) a4 gis | fis2.( fisis4) | gis2 r |
  % B
  r2 r4 dis\p | e e8 e e4 e | e e e dis | dis dis r dis |
  e e8 e cis4 e | dis2 gis, | e' dis | dis4 dis
  gis\f gis | cis2. b4 | a4. a8 gis4 fis | e\> e8 e8 dis4 cis\! | gis'4. fis8 e4 dis |
  % C
  cis2 r | R1 | r2 e8\mf e d cis | d2 fis8 fis e d | cis4. e8 g4 fis8( e) |
  d4. fis8 a4 g | fis2 a8 a g fis | g4 r8 d8 b'4 a8( g) | fis2 c'8 c b a |
  % D
  g4. b8\f%{orig:a%} d4%{orig:e%} f,| e2~ e8 c d e | fis4 r fis8 fis g a | b4 dis, g fis | e4. g8 b4 d,|
  c2~ c8 a b cis | d4 r d8 d e fis | g4 b, e d%{orig:c%} |
  % E
  c g8(\p e') e2~ | e4 e8( g) g2~\< | g4\! e8( g) g4 g8(\f bes) | bes4. g8 g4 r |
  r gis\p b, e | gis4.( fis8) dis4 dis | e e e2~( | e dis) |
  % F
  b4 e e2~ | e4 e2 e4 | e r8 gis b4 a8( gis) | fis4. gis8 a2 | gis4 r gis8 gis fis e |
  a4 r8 e cis'4 b8( a) | gis4 e8 gis b4 a8( gis) | fis4. gis8 a2 | gis4 r8 b, gis'4 fis8( e)|
  e4( dis8) e fis4( e8 dis) | e4 r8 b gis' gis fis e | e2( dis) | b2 r |
  % G
  r2 r4 g'\p | g g8 g g4 g | fis4. fis8 fis4 fis | fis e r2 | r2 g4 g | g2 g4 g |
  fis4. fis8 fis4 fis | fis( e) r2 | r4 g2\< g4\! | fis4.\> fis8\! fis4 fis |
  fis2( e4) e | e2 e4 d | d( c) b ais | b4. b8 b4 b | b2 b | b2.( a4) | gis1\fermata \bar"|."
}

ten = \relative c' {
  \clef "G_8"
  R1 R1 r4 gis\p\< fis e\! | dis4.( fis8)\> a4 r\! |
  R1 R1 r4 a\< gis\! fis | eis4.(\> gis8)\! cis4 r |
  r2 r4 cis | b4. b8 e4 b | b(\< cis8) b\! a4 cis | fis b, r e\f |
  e2\espressivo e4 eis\< | cis4.(\! fis8) fis4 e | dis dis e fis | b, e\> dis\! cis | b2( a) |
  gis b8 b a gis | cis4. cis8 b4 cis8( dis) |
  % A
  e( b) b4 r2 | r4 gis4. e'8 dis cis | b2 a8 a gis fis |
  gis4 r8 gis b4 a8( gis) | fis( dis) dis r cis' cis b a |
  gis2 gis4. gis8 | gis2 b8 b a gis | 
  a4 r8 a cis4 b8( a) | gis4 cis cis e8( dis) | cis1 | bis2 r |
  % B
  r2 r4 bis\p | cis cis8 cis cis4 cis | cis cis cis dis8( cis) | bis4 gis r bis |
  cis a8 a a4 cis | bis2( cis4) e | cis2. fisis,4 | gis bis
  gis\f gis | cis2. b4 | a4. a8 gis4 fis | e\> e8 e8 dis4 cis\! | gis'4( e'8) dis8 cis4 bis |
  % C
  cis2 r | R1 | r2 g8\mf g fis e | fis2 a8 a g fis | e4. g8 b4 a8( g) | fis4. a8 c4 b |
  a2 c8 c b a | b4 r8 b d4 c8( b) | a2 e'8 e d c |
  % D
  b4 b4.\f b8 c d | e4 g,8( c) c2~ | c4 c a fis' | fis4.( dis8) b4 a | g4 g4. g8 a b |
  c4 e,8( a) a2~ | a4 a fis d' | d4.( b8) g4 f | e e8(\p g) g2~ | g4 g8( e') e2~\< |
  e4\! g, bes f\f | e e'2 e4 | e4.( b8) gis4 e | dis fis a fis | b2( gis4) e | a2.( b4) |
  % F
  gis r b8\mf b a gis | cis4 r8 cis e4 dis8( cis) | b4 gis8 b gis'4 fis8( e) |
  e4( dis8) e fis4( e8 dis) | e4 r b8 b a gis | cis4 r8 cis e4 dis8( cis) | b4 gis r2 |
  r4 b4. b8 cis dis | e4 r8 gis, b4 a8( gis) | fis4. gis8 a2 | gis4 r8 gis b4 a8( gis) |
  fis4( cis'4.) cis8 b( a) | gis2 r2
  % G
  r2 r4 e'\p | e e8 e e4 e | e4. e8 e4 e | dis e r2 | r2 e4 e | e2 e4 e | e4. e8 e4 dis |
  b2 r | r4 e2\< e4\! | e4.\> e8\! e4 e | dis2 b4( c) | c2 d4 g, | g4. g8 g4 fis | fis2( b4) a8( g) |
  fis4 fis2( gis8 a) | a2( gis4 fis) | b,1\fermata \bar"|."
}

bas = \relative c {
  \clef bass
  e2\mf gis8 gis fis e | b'4. gis8 e4\> cis | b1~\p | b2 b4 r |
  fis'2\mf a8 a gis fis | cis'4. a8 fis4\> a | cis,1~\! | cis2 cis4 r |
  r cis fis e | dis e r e | a,4.\< cis8\! fis4 a | a gis r d'\f |
  cis4.(\espressivo a8) a4 gis\< | fis2\! fis4 a | b, b cis dis | e cis\> gis\! a | b1 |
  e2 gis8 gis fis e | a4. a8 gis4 fis |
  % A
  e e r2 | r4 cis cis fis | b, b8 b\p b2~ |
  b4 b b2~ | b4. b8 b4 cis8( dis) | e2 d | cis4 cis8 cis\p cis2~ |
  cis4 cis cis2~ | cis4 dis8( eis) fis4 gis | a1 | gis2 r |
  % B
  R1 R1 r2 r4 dis | gis, gis'8 gis gis4 gis gis4. cis,8 fis4 fis | fis dis8 gis e4 cis | a1 | gis4 r
  gis'\f gis | cis2. b4 | a4. a8 gis4 fis | e\> e8 e8 dis4 cis\! | gis4. gis8 gis4 gis |
  % C
  cis2 e8\mf e dis cis | gis'4. e8 cis4 e | a,1~ | a~ | a2 a8 a b cis |
  d4 d d2~ | d4 d d2~ | d d | d4 d2 e8( fis) |
  % D
  g4 r g8\f g a b | c4 e, a g | fis4. a8 c4 e, | dis2~ dis8 b cis dis |
  e4 r e8 e fis gis | a4 c, fis e | d4. fis8 a4 c, | b2~ b8 g a b |
  % E
  c4 c\p c c | c1~\< | c4\! c2 c4\f | c4. c'8 c4 r |
  r b,\p b b | b2.( a4) | gis gis cis2( | a4) fis b2 |
  % F
  <e \parenthesize e,>4 r gis8\mf gis fis e | a4 r8 e cis'4 b8( a) | gis4 e r e | b'4. b,8 b4 r |
  r e e2~ | e4 e2 e4 e2 r4 e | b'4. b,8 b4 r | r2 r4 e | b r r b |
  e r r e | a,2 b <e \parenthesize e,>2 r2 |
  % G
  R1 | r2 r4 e | c'2. fis,4 | b e, r2 | R1 | r2 r4 e | c'2 fis,4 b | e,2 r | r b'4\< e,\! |
  << c'2.\> { s2 s4\!} >> fis,4 | b4. e,8 e4 c | a2 b | c2. c4 | b( a) g e |
  b'2 b | e,1 | e1\fermata \bar"|."
}

soptext = \lyricmode {
  Ver -- neem mijn sme -- ken,
  ver -- neem mijn sme -- ken
  om u -- wer waar -- heid wil -- le,
  om uw ge -- na -- de wil -- le,
  ver -- hoor __ mij, ver -- hoor __ mij
  om u -- wer waar -- heid, uw ge -- na -- de wil -- le.
  Hoor toch mijn ge -- bed,
  ver -- neem mijn sme -- ken,
  o Heer __ mijn God __
  ver -- neem __ mijn sme -- ken,
  o Heer __ mijn God __
  ver -- neem __ mijn sme -- ken,
  en wil niet met u -- wen knecht, u -- wen knecht
  met streng -- heid rich -- ten,
  en wil niet met u -- wen knecht __
  met streng -- heid rich -- ten,
  want wie kan, want wie kan voor uw aan -- ge -- zicht,
  voor uw aan -- ge -- zicht be -- staan!
  Hoor __ toch mijn ge -- bed, __ mijn ge -- bed, __
  ver -- hoor mij toch,
  Heer, ver -- hoor mij toch,
  mijn God, ver -- hoor __ mij,
  mijn God, hoor toch mijn ge -- bed,
  o __ Heer, __ mijn God, ver -- hoor __ mij,
  mijn God, hoor toch mijn ge -- bed,
  o __ Heer, __ o __ Heer, mijn God,
  ver -- hoor mij toch
  om uw ge -- na -- de,
  om uw ge -- na -- de~en waar -- heid wil -- le.
  Hoor toch mijn ge -- bed
  om u -- wer waar -- heid en ge -- na -- de wil -- le,
  Heer, ver -- neem mijn sme -- ken
  om uw ge -- na -- de wil -- le,
  en wil niet met u -- wen knecht,
  u -- wen knecht met streng -- heid rich -- ten,
  want wie kan, want wie kan voor uw aan -- ge -- zicht be -- staan,
  God en Heer, ver -- hoor mij toch,
  ver -- neem __ mijn sme -- ken,
  ver -- hoor mij toch,
  ver -- neem __ mijn sme -- ken.
}

alttext = \lyricmode {
  Ver -- neem mijn sme -- ken,
  ver -- neem mijn sme -- ken
  om u -- wer waar -- heid wil -- le,
  om uw __ ge -- na -- de wil -- le,
  ver -- hoor mij, ver -- hoor mij
  om u -- wer waar -- heid, uw ge -- na -- de wil -- le.
  Ver -- neem mijn sme -- ken,
  hoor toch mijn ge -- bed,
  hoor toch mijn ge -- bed,
  ver -- neem mijn sme -- ken,
  hoor toch mijn ge -- bed, mijn ge -- bed,
  hoor toch mijn ge -- bed,
  ver -- hoor mijn klacht,
  ver -- neem mijn sme -- ken,
  en wil niet met u -- wen knecht
  met streng -- heid rich -- ten,
  en wil niet met u -- wen knecht
  met streng -- heid rich -- ten,
  want wie kan, want wie kan voor uw aan -- ge -- zicht,
  voor uw aan -- ge -- zicht be -- staan!
  Hoor toch mijn ge -- bed,
  hoor toch mijn ge -- bed,
  ver -- neem mijn klacht,
  ver -- neem mijn klacht,
  hoor toch mijn ge -- bed,
  ver -- neem mijn klacht,
  hoor toch mijn ge -- bed,
  ver -- neem, o God, __ ver -- neem mijn klacht,
  hoor toch mijn ge -- bed,
  ver -- neem mijn klacht,
  ver -- neem, o God, __ ver -- neem mijn klacht,
  hoor toch mijn ge -- bed,
  ver -- neem mijn klacht,
  o __ Heer, __ mijn God, __ mijn God,
  ver -- hoor mij toch
  om uw ge -- na -- de en waar -- heid wil -- le,
  mijn God, __ God en Heer,
  om uw ge -- na -- de wil -- le,
  hoor toch mijn ge -- bed,
  ver -- neem mijn sme -- ken,
  om u -- wer waar -- heid wil -- le,
  om u -- wer waar -- heid wil -- le,
  om uw ge -- na -- de wil -- le,
  en wil niet met u -- wen knecht
  met streng -- heid rich -- ten,
  want wie kan voor uw aan -- ge -- zicht be -- staan,
  Heer, ver -- hoor mij toch,
  ver -- neem __ mijn sme -- ken, mijn sme -- ken,
  ver -- hoor mij toch,
  ver -- neem mijn sme -- ken.
}

tentext = \lyricmode {
  Ver -- neem mijn sme -- ken,
  ver -- neem mijn sme -- ken
  om u -- wer waar -- heid, uw __ ge -- na -- de wil -- le,
  ver -- hoor mij, ver -- hoor __ mij
  om u -- wer waar -- heid, uw ge -- na -- de wil -- le.
  Hoor toch mijn ge -- bed,
  ver -- neem mijn sme -- ken,
  hoor toch mijn ge -- bed,
  hoor toch mijn ge -- bed,
  ver -- neem mijn sme -- ken,
  hoor toch mijn ge -- bed, mijn ge -- bed,
  hoor toch mijn ge -- bed, 
  ver -- hoor mijn klacht,
  ver -- neem mijn sme -- ken,
  en wil niet met u -- wen knecht
  met streng -- heid rich -- ten,
  en wil niet met u -- wen knecht __
  met streng -- heid rich -- ten,
  want wie kan, want wie kan voor uw aan -- ge -- zicht,
  voor uw aan -- ge -- zicht be -- staan!
  Hoor toch mijn ge -- bed,
  hoor toch mijn ge -- bed,
  ver -- neem mijn klacht,
  ver -- neem mijn klacht,
  hoor toch mijn ge -- bed,
  ver -- neem mijn klacht,
  hoor toch mijn ge -- bed,
  hoor toch mijn ge -- bed,
  o __ Heer, __ mijn God,
  ver -- hoor __ mij, mijn God,
  hoor toch mijn ge -- bed,
  o __ Heer, __ mijn God,
  ver -- hoor __ mij, mijn God,
  o __ Heer, __ mijn God, __
  mijn God en Heer,
  God, ver -- hoor __ mij
  om uw ge -- na -- de~en waar -- heid wil -- le.
  Hoor toch mijn ge -- bed,
  ver -- neem mijn sme -- ken,
  om uw ge -- na -- de wil -- le,
  hoor toch mijn ge -- bed,
  ver -- neem mijn sme -- ken,
  hoor toch mijn ge -- bed,
  om u -- wer waar -- heid wil -- le,
  om uw ge -- na -- de wil -- le,
  en wil niet met u -- wen knecht
  met streng -- heid rich -- ten,
  want wie kan voor uw aan -- ge -- zicht be -- staan,
  Heer, ver -- hoor mij toch,
  ver -- neem mijn sme -- ken,
  ver -- hoor mij toch, ver -- neem, __
  ver -- neem mijn __ sme -- ken.
}

bastext = \lyricmode {
  Heer, hoor toch mijn ge -- bed, ver -- neem mijn sme -- ken.
  Heer, hoor toch mijn ge -- bed, ver -- neem mijn sme -- ken,
  om u -- wer waar -- heid, om uw ge -- na -- de wil -- le,
  ver -- hoor __ mij, ver -- hoor mij
  om u -- wer waar -- heid, uw ge -- na -- de wil -- le.
  Hoor toch mijn ge -- bed,
  ver -- neem mijn sme -- ken,
  ver -- neem mijn sme -- ken,
  o Heer __ mijn God __
  ver -- neem, mijn God, mijn sme -- ken,
  o Heer __ mijn God, __
  ver -- neem mijn sme -- ken,
  en wil niet met u -- wen knecht
  met streng -- heid rich -- ten, met streng -- heid rich -- ten,
  want wie kan, want wie kan voor uw aan -- ge -- zicht,
  voor uw aan -- ge -- zicht be -- staan!
  Hoor toch mijn ge -- bed, ver -- neem mijn klacht. __
  Hoor toch mijn ge -- bed o Heer, __
  mijn God, __ hoor toch mijn ge -- bed,
  hoor toch mijn ge -- bed,
  ver -- neem mijn klacht,
  ver -- neem, o God, __
  ver -- neem mijn klacht,
  hoor toch mijn ge -- bed,
  ver -- neem mijn klacht,
  ver -- neem, o God, __ ver -- neem mijn klacht,
  ver -- neem mijn klacht, __ Heer, ver -- hoor mij toch
  om uw ge -- na -- de en waar -- heid wil -- le.
  Hoor toch mijn ge -- bed,
  ver -- neem mijn sme -- ken,
  ver -- hoor mij toch,
  mijn God, __ God en Heer,
  ver -- hoor mij toch,
  mijn God en Heer,
  mijn God en Heer.
  Ver -- neem mijn sme -- ken,
  ver -- hoor mijn ge -- bed,
  God en Heer,
  ver -- hoor mijn toch,
  ver -- neem o Heer mijn sme -- ken,
  ver -- neem mijn sme -- ken.
}

\score {
  \new ChoirStaff <<
    { \set Staff.instrumentName = "S. " \global \sop }
    \addlyrics { \soptext }
    { \set Staff.instrumentName = "A. " \global \alt }
    \addlyrics { \alttext }
    { \set Staff.instrumentName = "T. " \global \ten }
    \addlyrics { \tentext }
    { \set Staff.instrumentName = "B. " \global \bas }
    \addlyrics { \bastext }
  >>
  \midi { }
  \layout {
    \context { \Staff
               \consists "Ambitus_engraver"
    }
  }
}

