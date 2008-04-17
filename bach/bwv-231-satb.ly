\version "2.11.43"

#(set-global-staff-size 19)

\header {
  title = "Sei Lob und Preis mit Ehren"
  composer = "Johann Sebastian Bach (1685-1750)"
  subtitle = "Motette BWV 231"
  copyright = \markup \center-align {
    \line {
      Engraved by
      \with-url #"http://www.wilbertberendsen.nl/"
      {
        Wilbert Berendsen
        (http://www.wilbertberendsen.nl/)
      }
    }
    \line {
      Copyright © 2008
      \with-url #"http://www.cpdl.org/"
      {
        The Choral Public Domain Library
        (http://www.cpdl.org/)
      }
    }
    \line {
      This edition may be freely distributed,
      edited, performed or recorded.
    }
  }
}

global = {
  \key c \major
  \time 2/2
}

sop = \relative c'' {
  \global
  R1*5
  c1 c2 b a g c2( d) e1~ e~ e2 r
  R1*6
  e1 e2 e e d c d c1~ c~ c2 r
  R1*4 %rep.
  c1 c2 b a g c2( d) e1~ e~ e2 r
  R1*6
  e1 e2 e e d c d c1~ c~ c2 r
  R1*12
  c1 c4( d) e2 d e4( d) c2( b) a1~ a~ a2 r
  R1*6
  d1 d2 b c4( b) a2 g1~ g~ g2 r
  R1*10
  g1 c2 c d d e4( d e2) c1~ c~ c2 r
  R1*9
  c1 f2 f e4( d) e2 d1~ d~ d2 r
  R1*7
  d1 e2 e f f g1 c,~ c~ c2 r
  R1*8
  e1 d4( c) b2 c4( b) a2 g1 ~ g ~ g2 r
  R1*9
  g1 c2 b a g d'( e) d1 ~ d ~ d2 r
  R1*11
  e1 f2 e d( c4 d e2) d c1~ c~ c~ c~ c~
  \override Staff.TimeSignature #'stencil = ##f
  \time 4/2
  c\breve\fermata
  \bar"|."
}

alt = \relative c' {
  \global
  R1*2
  r4 c d e
  f( a) g( f)
  e2 fis4 g
  g2( fis)
  g r
  r g
  g f
  e c
  g'( a)
  b4 e, a2~(
  a gis)
  a r
  R1
  r4 g d f
  e e c'2~(
  c b4 a
  gis a2) gis4
  a c g bes
  a2 r
  r4 g d f
  e f g2 ~
  g f
  e r
  R1 %rep.
  r4 c d e
  f( a) g( f)
  e2 fis4 g
  g2( fis)
  g r
  r g
  g f
  e c
  g'( a)
  b4 e, a2~(
  a gis)
  a r
  R1
  r4 g d f
  e e c'2~(
  c b4 a
  gis a2) gis4
  a c g bes
  a2 r
  r4 g d f
  e f g2 ~
  g f
  e r %rep.
  R1
  r2 r4 e
  f fis g gis
  a2 e4 fis
  g( f) e a~(
  a b) c( cis)
  d2.( cis4)
  d2 r4 g,
  g( a) b2
  a b4( a)
  g2( fis)
  e4 e b'2 ~
  b4 a g2~(
  g4 f) e r
  r2 r4 e
  f fis g gis
  a2.( g4)
  f a d2 ~
  d4 cis8( b) cis2
  d2 r4 d
  g,2. c4
  fis,2. d4
  g2 fis4 e
  a a, d2~
  d c4 e
  a2. d,4
  g1~
  g2 fis
  e4( g) a b
  c2 g4( f)
  e2 fis
  g r
  r2 r4 d
  g g a a
  b( a) g g
  a a b b
  c2( b4 a)
  g2 r
  d g ~
  g f
  e4 e a2
  d,4 d g2 ~
  g4 e a2 ~
  a4 f bes2~(
  bes4 a bes2 ~
  bes4) a r e
  f g a f
  bes2( c ~
  c bes ~
  bes a4 g)
  a2 r
  r e
  a a
  g4( f) g2
  f2. f4
  e( d) e( c)
  d( f) bes( a)
  g( f e d)
  c2 r4 f
  bes2. e,4
  a1 ~
  a4 d, g2 ~
  g4 bes a g
  f2 e
  d a'
  b b
  c c
  d4( c b a)
  g g c b
  a( g) f( e)
  d2( g4 f
  e) c g'2
  a a
  bes bes
  c4( bes a g
  f g a2 ~
  a g4 a
  bes a bes2)
  a a
  g4( f) e2
  f4( e) d2
  c c'
  b4( a) g2
  a4( g) fis2
  gis4 a b2 ~
  b a ~
  a g ~
  g fis
  e4( g) a( b)
  c1 ~
  c2 b4( a)
  g2 fis
  g r
  R1
  r2 c,
  f2 f
  d d
  g1
  e2 e
  a1
  g4 b,( c d
  e2 d
  c4 d e f
  g2. a8 g
  fis4 d e fis)
  g fis g a
  b( a g2 ~
  g4 fis8 e fis2)
  g b
  c b
  a( g4 a
  b2) a
  g4( bes) a( g)
  f( d'2) c4
  c( b a b
  c a) fis( g)
  g2 fis
  g2.( f4)
  e8( d e f g2)
  a4( b) c( c,)
  d( e f e8 f
  g4 c bes) a
  g( f8 e f4) g8( a)
  bes4( a) g2
  a g
  f( e4 f
  g2 f ~
  \override Staff.TimeSignature #'stencil = ##f
  \time 4/2
  f) e4( d)
  e1\fermata
  \bar"|."
}


ten = \relative c' {
  \global
  r2 c
  c b
  a g
  c( d)
  e4 g, a b
  c( e) d( c)
  d( c) d e
  f2( e4 d)
  c g a b
  c d e2 ~
  e d4 c
  d2.( c4)
  b e b d
  c1 ~
  c4 a d c
  b( c d2 ~
  d4) c g b
  a a d2( ~
  d4 c) b( d)
  c1 ~
  c4 f b, d
  g, g a b
  c2. bes4
  a( g) a2
  g %rep.
  c
  c b
  a g
  c( d)
  e4 g, a b
  c( e) d( c)
  d( c d e
  f2 e4 d)
  c g a b
  c d e2 ~
  e d4 c
  d2.( c4)
  b e b d
  c1 ~
  c4 a d c
  b c d2 ~
  d4 c g b
  a a d2~
  d4 c b d
  c1 ~
  c4 f b, d
  g, g a b
  c2. bes4
  a( g) a a
  g2 %rep.
  c
  c4( d) e2
  d e4( d)
  c2( b)
  a r4 a
  bes b c cis
  d2( g ~
  g4 f e2)
  d4 e f2 ~
  f4 e8( fis) g2~(
  g4 fis8 e fis2 ~
  fis4 e2 dis4)
  e2. d4
  c2. bes4
  a( as) g c~
  c4 b8( a b4) b
  c2( d)
  e4 a, e'2 ~
  e4 d8( e) f2~(
  f4 e8 d e2)
  f4 a, d2 ~
  d4 g, c2 ~
  c4 bes8( a) bes2 ~
  bes4 a a( g)
  fis2 gis
  a1 ~
  a4 b c2~
  c4 b e2 ~
  e4 e2 dis4
  e2.( d4
  c1 ~
  c4) g c8( b) c4
  c2( b4) g
  c c d d
  e( d) c c
  d d e e
  f( e d2)
  e r
  g, c ~
  c bes
  a4 a d2 ~
  d c ~
  c4 b e2 ~
  e4 c d2 ~
  d4 d g2~(
  g4 f g2 ~
  g4) f bes,2 ~
  bes a4( f')
  f2( es
  d4 c d e)
  f2 c
  f f
  e4( d) e2
  d1 ~
  d2. cis4
  d a bes2 ~
  bes a ~
  a g4( f)
  e2 r
  r4 a d2 ~
  d4 g, c2 ~
  c bes4( a)
  bes2. bes4
  a( cis) d( e)
  a,( d2) cis4
  d2 r
  r d
  e e
  f f
  g4( f e d)
  c a d c
  b( a) g2
  c1~(
  c4 a d c
  bes a) g f
  g( c2) bes4
  a( bes) c( f,)
  f'1~(
  f2 e)
  f r
  r e
  d4( c) b2
  c4( b) a2
  g g'
  fis4( e2 d4~
  d) c b d
  c( b) c( a)
  d2. b4
  e( d) c2
  b c4( d)
  e1 ~
  e2 d4( c)
  b2 a
  b g
  c c
  a a
  d1
  b2 b
  e e
  c2 c
  f1~(
  f2 e4 d)
  c e,( f g
  a b) c r
  r d( c b
  a fis g a)
  d,2 r
  r4 c' d e
  a,( b c a)
  b2 r4 d
  e4( fis) g2~(
  g4 f) e( fis
  g2.) f4
  e2 e
  f e
  d( c4 d
  e2) d
  c4( e) d( c)
  b c d2 ~
  d4 g, c2~(
  c4 d) e( fis)
  g( gis a g8 f
  e4 fis g) f
  e c2( bes8 a)
  g4 c, c' bes
  a( c8 d) e2
  d( c ~
  c4 bes2) a4
  \override Staff.TimeSignature #'stencil = ##f
  \time 4/2
  g\breve\fermata
  \bar"|."
}

bas = \relative c {
  \global
  R1
  r4 c d e
  f2. e4
  a2( b)
  c2. b4
  a( g a2)
  g2 r4 g,
  a b c d
  e2( f4 g)
  c,4 b c d
  e4( c') fis,( a)
  gis2 a4 a
  e1
  a,4 a' e g
  fis2 r4 d
  g( a) b( g)
  c a e g
  f2. f4
  e( d) e2
  a,4 a' e g
  f2. d4
  e2 f4( g)
  a2 e
  f f
  c r %rep.
  r4 c d e
  f2. e4
  a2( b)
  c2. b4
  a( g a2)
  g2 r4 g,
  a b c d
  e2( f4 g)
  c,4 b c d
  e4( c') fis,( a)
  gis2 a4 a
  e1
  a,4 a' e g
  fis2. d4
  g( a) b( g)
  c a e g
  f2. f4
  e( d) e2
  a,4 a' e g
  f2. d4
  e2 f4( g)
  a2 e(
  f) f
  c r %rep.
  r2 r4 e
  f fis g gis
  a2 e4 e
  f( g) a2
  g a4( g)
  f2( e)
  d2. a4
  bes( a8 g a4) b
  c2( b4 cis
  d dis2 cis8 dis)
  e4 g a b
  c2 gis
  a( e)
  f c4( e)
  f fis g gis
  a2( b)
  c2. cis4
  d2 f,4( g)
  a2( a,)
  d r4 b
  e2. a,4
  d1 ~
  d2 cis
  c( b)
  a4 e' a g
  fis2 fis
  g2. e4
  a2. b4
  c c, f2~(
  f4 e8 g bes2 ~
  bes) a
  g4 g, g' f
  e( d) c( b)
  c1
  g2 r
  r r4 g
  c c d d
  e( d) c c
  d d e e
  f( e) d d
  e e fis fis
  g2.( e4
  a2. f4
  bes2. g4
  c2) c,4 c
  f f g g
  a( g) f f
  g g a a
  bes( a g2
  f4 g f e)
  d2 d
  g g
  f4( e) f2
  e a,
  d d
  c4( bes) c2
  bes1 ~
  bes4 g c bes
  a4( f') bes( a)
  g( e a g
  fis d) e fis
  g a bes g
  d' e, f g
  a2 a,
  d4 e f2 ~
  f4 d g f
  e( a2 g4
  f) e d2
  e e
  f2 f
  g4( f e d)
  c c'2 bes4
  a( g) f2 ~
  f e4( d
  e) c f( g)
  a( g) f( es)
  d( c) bes( a)
  g2( c)
  f,2. f'4
  b,2 cis
  d4( a'2) gis4
  a( g2) fis4
  g( a) b( c)
  a2 b
  e,4( fis) gis( e)
  a( e) a( g)
  fis( d) g( fis)
  e2. dis4
  e2. d4
  c( d) e( fis)
  g( a) b( c)
  d( c) d( d,)
  g2 r
  r c,
  f f4( e)
  d( e) f( d)
  g( a g f
  e f g e
  a bes a g
  f g a f
  c' d c b)
  a c,( d e
  f2 e4 d
  c b c2 ~
  c b4 a
  b d) e fis
  g( a) b( c)
  d2( d,)
  g r
  r2 r4 g
  a( b) c2
  b4( cis d2 ~
  d) cis
  d4 d,( e f)
  g2. f4
  e4( c'2 b4
  a g) a2
  g4( a) b2
  c2. bes4
  a2.( g8 a
  b2) a
  g4( a) bes2 ~
  bes4 a8( g a4 f ~
  f e8 d) e2
  f4 c2( d8 e)
  f4( g a) g8( f)
  e2 f
  \override Staff.TimeSignature #'stencil = ##f
  \time 4/2
  c\breve\fermata
  \bar"|."
}

sopText = \lyricmode {
  Sei Lob und Preis mit Eh -- ren __
  Gott Va -- ter, Sohn und Heil’ -- gem Geist, __
  der woll in uns ver -- meh -- ren, __
  was er aus Gna -- den uns ver -- heißt, __
  dass wir ihm fest ver -- trau -- en, __
  gänz -- lich ver -- lass’n auf ihn, __
  von Her -- zen auf ihn bau -- en, __
  dass uns’r Herz, Mut und Sinn __
  ihm tröst -- lich soll’n an -- han -- gen, __
  drauf sin -- gen wir zur Stund: __
  A -- men, wir werd’ns er -- lan -- gen, __
  gläub’n wir aus Her -- zens -- grund. __
}

altText = \lyricmode {
  Sei Lob und Preis mit Eh -- ren, mit Eh -- ren,
  sei Lob und Preis mit Eh -- ren, mit Eh -- ren
  Gott Va -- ter, Sohn und Heil’ -- gem Geist,
  Gott Va -- ter, Sohn,
  Gott Va -- ter, Sohn und Heil’ -- gem Geist,
  der woll in uns ver -- meh -- ren, ver -- meh -- ren,
  der woll in uns ver -- meh -- ren, ver -- meh -- ren,
  was er aus Gna -- den uns, __ aus Gna -- den uns ver -- heißt,
  was er aus Gna -- den uns __ ver -- heißt,
  dass wir ihm fest ver -- trau -- en, ver -- trau -- en,
  fest __ ver -- trau -- en,
  dass wir ihm fest ver -- trau -- en,
  ihm fest __ ver -- trau -- en,
  dass wir ihm fest ver -- trau -- en,
  ihm fest __ ver -- trau -- en,
  dass wir ihm fest ver -- trau -- en,
  ihm fest ver -- trau -- en, ver -- trau -- en,
  gänz -- lich, gänz -- lich ver -- lass’n auf ihn,
  auf ihn,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  dass uns’r Herz, Mut und Sinn
  ihm tröst -- lich soll’n an -- han -- gen,
  dass uns’r Herz, Mut __ und Sinn, __
  dass uns’r Herz, Mut und Sinn
  ihm tröst -- lich soll’n an -- han -- gen,
  ihm tröst -- lich soll’n an -- han -- gen,
  ihm tröst -- lich soll’n an -- han -- gen,
  drauf sin -- gen wir zur Stund,
  drauf sin -- gen wir zur Stund,
  drauf sin -- gen, __ sin -- gen wir,
  drauf sin -- gen wir zur Stund:
  A -- men, wir werd’ns er -- lan -- gen, er -- lan -- gen,
  A -- men, wir werd’ns er -- lan -- gen,
  gläub’n wir aus Her -- zens -- grund,
  gläub’n wir __ aus Her -- zens, Her -- zens -- grund, __
  gläub’n __ wir aus Her -- zens -- grund, __
  gläub’n wir,
  gläub’n wir aus Her -- zens -- grund.
}

tenText = \lyricmode {
  Sei Lob und Preis mit Eh -- ren,
  sei Lob und Preis mit Eh -- ren, mit Eh -- ren,
  sei Lob und Preis mit Eh -- ren, mit Eh -- ren
  Gott Va -- ter, Sohn __ und Heil’ -- gem Geist, __
  Gott Va -- ter, Sohn und Heil’ -- gem Geist, __
  Gott Va -- ter, Sohn und Heil’ -- gem Geist,
  und Heil’ -- gem Geist,
  der woll in uns ver -- meh -- ren,
  der woll in uns ver -- meh -- ren,
  der woll in uns ver -- meh -- ren, ver -- meh -- ren,
  was er aus Gna -- den uns ver -- heißt,
  aus Gna -- den uns ver -- heißt,
  aus Gna -- den uns ver -- heißt, __
  was er aus Gna -- den uns ver -- heißt,
  was er uns ver -- heißt,
  dass wir ihm fest ver -- trau -- en,
  dass wir ihm fest ver -- trau -- en,
  ihm fest __ ver -- trau -- en,
  ihm fest ver -- trau -- en,
  ihm __ fest __ ver -- trau -- en,
  ihm fest __ ver -- trau -- en,
  dass wir __ ihm fest __ ver -- trau -- en,
  ihm fest ver -- trau -- en,
  gänz -- lich, gänz -- lich ver -- lass’n __ auf ihn,
  auf ihn, __
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en, __
  von Her -- zen auf __ ihn bau -- en,
  auf __ ihn bau -- en,
  dass uns’r Herz, Mut und Sinn __
  ihm tröst -- lich soll’n __ an -- han -- gen,
  dass uns’r __ Herz, Mut __ und Sinn,
  dass uns’r Herz, Mut __ und Sinn
  ihm tröst -- lich soll’n __ an -- han -- gen,
  ihm tröst -- lich soll’n __ an -- han -- gen,
  ihm tröst -- lich soll’n __ an -- han -- gen,
  drauf sin -- gen wir zur Stund,
  drauf sin -- gen wir zur Stund,
  drauf sin -- gen wir zur Stund,
  drauf sin -- gen wir zur Stund:
  A -- men, wir werd’ns er -- lan -- gen,
  A -- men, wir werd’ns er -- lan -- gen,
  A -- men, A -- men, wir werd’ns er -- lan -- gen,
  gläub’n wir aus __ Her -- zens -- grund,
  gläub’n wir aus Her -- zens -- grund,
  gläub’n wir aus Her -- zens -- grund, __
  aus Her -- zens -- grund,
  gläub’n __ wir aus Her -- zens -- grund, __
  aus Her -- zens -- grund.
}

basText = \lyricmode {
  Sei Lob und Preis mit Eh -- ren,
  mit Eh -- ren,
  sei Lob und Preis mit Eh -- ren,
  sei Lob und Preis mit Eh -- ren,
  mit Eh -- ren,
  Gott Va -- ter, Sohn und Heil’ -- gem Geist,
  Gott Va -- ter, Sohn und Heil’ -- gem Geist,
  Gott Va -- ter, Sohn und Heil’ -- gem Geist,
  und Heil’ -- gem Geist,
  der woll in uns ver -- meh -- ren, ver -- meh -- ren,
  der woll in uns ver -- meh -- ren,
  der woll in uns ver -- meh -- ren, ver -- meh -- ren,
  was er aus Gna -- den uns ver -- heißt,
  was er aus Gna -- den uns ver -- heißt,
  was er aus Gna -- den uns ver -- heißt,
  uns __ ver -- heißt,
  dass wir ihm fest ver -- trau -- en,
  dass wir ihm fest ver -- trau -- en,
  ihm fest __ ver -- trau -- en,
  dass wir ihm fest ver -- trau -- en,
  dass wir ihm fest ver -- trau -- en,
  ihm fest ver -- trau -- en,
  dass wir ihm fest __ ver -- trau -- en,
  gänz -- lich ver -- lass’n auf ihn, auf ihn,
  gänz -- lich ver -- lass’n __ auf ihn,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  von Her -- zen auf ihn bau -- en,
  dass uns’r Herz, Mut und Sinn
  ihm tröst -- lich soll’n an -- han -- gen,
  tröst -- lich soll’n an -- han -- gen,
  dass uns’r Herz, Mut und Sinn,
  dass uns’r Herz, Mut und Sinn
  ihm tröst -- lich soll’n an -- han -- gen,
  ihm tröst -- lich soll’n an -- han -- gen,
  tröst -- lich soll’n an -- han -- gen,
  ihm tröst -- lich soll’n an -- han -- gen,
  drauf sin -- gen wir zur Stund,
  drauf sin -- gen wir zur Stund,
  drauf sin -- gen wir zur Stund,
  drauf sin -- gen wir,
  drauf sin -- gen wir zur Stund:
  A -- men, wir werd’ns er -- lan -- gen,
  A -- men, wir werd’ns er -- lan -- gen,
  gläub’n wir aus Her -- zens -- grund,
  gläub’n __ wir aus Her -- zens -- grund,
  gläub’n wir aus Her -- zens -- grund,
  aus __ Her -- zens -- grund,
  gläub’n __ wir __ aus Her -- zens -- grund.
}

\book {
  \paper {
    page-count = 12
    ragged-last-bottom = ##f
  }

  \score {
    \new ChoirStaff <<
      { \set Staff.instrumentName = "Sopran" \sop }
      \addlyrics { \sopText }
      { \set Staff.instrumentName = "Alt"  \alt }
      \addlyrics { \altText }
      { \set Staff.instrumentName = "Tenor" \clef "G_8" \ten }
      \addlyrics { \tenText }
      { \set Staff.instrumentName = "Bass" \clef F \bas }
      \addlyrics { \basText }
    >>
    \layout {
      system-count = 35
      \context {
        \Score
        \override PaperColumn #'keep-inside-line = ##t
        \override NonMusicalPaperColumn #'keep-inside-line = ##t
      }
      \context {
        \Staff
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 5)
      }
      \context {
        \Lyrics
        \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
      }
    }
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 84 2)
      }
    }
  }

  \markup {
    \fill-line {
      \center-align {
        \line { Lof, prijs en eer zij God, }
        \line { Vader, Zoon en heilige Geest! }
        \line { Moge hij in ons doen toenemen }
        \line { wat hij ons uit genade belooft, }
        \line { opdat wij vast op Hem vertrouwen, }
        \line { ons geheel op Hem verlaten, }
        \line { van harte op Hem bouwen, }
        \line { opdat wij ons met hart en ziel }
        \line { aan Hem vasthouden; }
        \line { Daarom zingen wij nu: }
        \line { Amen, we zullen het verkrijgen }
        \line { zo geloven wij, nu en altijd. }
        \italic \line { vertaling: Dick Wursten (met toestemming overgenomen) }
      }
    }
  }
}

% \score {
%   <<
%     \new PianoStaff <<
%       \new Staff << \sop \\ \alt >>
%       \new Staff {\clef "G_8" \ten }
%     >>
%     \new Staff { \clef F \bas }
%   >>
%   \layout {
%     \context {
%       \Voice
%       \remove "Slur_engraver"
%     }
%   }
% }
