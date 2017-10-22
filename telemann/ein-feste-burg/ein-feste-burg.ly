\version "2.19.59"

\header {
  title = "Ein feste Burg"
  composer = "Telemann"
}

\layout {
  \accidentalStyle modern
  \compressFullBarRests
}

structuurA = {
  \time 4/4
  \key f \major
  \skip 1*98
  \bar "|."
}


sopranoA = \relative {
  R1*5
  f''1
  f1
  f1
  c2.( d4)
  e1
  f2( e)
  d1
  c1~
  c1
  R1*2
  f1
  e1
  d1
  c1
  d1
  bes2( a)
  g1
  f1~
  f1~
  f1
  R1*5
  f'1
  f1
  f1
  c2.( d4)
  e1
  f2( e)
  d1
  c1~
  c1
  R1*2
  f1
  e1
  d1
  c1
  d1
  bes2( a)
  g1
  f1~
  f1~
  f1

  R1*2
  f1
  a1
  c1
  d1
  c1
  c1

  R1*2

  f,1
  c'1
  d1
  e1
  f1~
  f1

  R1*2

  e1
  f1
  e1
  d1
  c1~
  c1

  R1*2

  c1
  d1
  c1
  d1
  bes1
  a1~
  a1

  R1*2

  f'1
  e1
  d1
  c1
  d1
  bes2( a)
  g1
  f1~
  f1~
  f1~
  f1
}

altoA = \relative {
  r4 a' c bes
  a a a g8 f
  bes4 f4 bes2~
  bes4 a8 g a4 b
  c4 g4 c2~
  c4 f,8 e f4 bes
  a4 a4 c bes
  a4 f4 a2~
  a4 f8 g a4 a
  g4 g4 c g
  a4 g8 f g4 g
  a g8 f g2~
  g4 e4 e4 f8 g
  a4 a8 g a2~
  a4 a4 d d
  d4 cis8 b cis4 cis
  d4 a8 b c4 d
  g,2~ g8 e f g
  a4 g8 f g2~
  g4 g8 f e4 a4~
  a4 g8 fis g4 a4
  d,4 e f2~
  f4 e8 d e2
  f4 f4 d8 e f g
  f4 c d8 c d bes
  c2 r2

  r4 a' c bes
  a a a g8 f
  bes4 f4 bes2~
  bes4 a8 g a4 b
  c4 g4 c2~
  c4 f,8 e f4 bes
  a4 a4 c bes
  a4 f4 a2~
  a4 f8 g a4 a
  g4 g4 c g
  a4 g8 f g4 g
  a g8 f g2~
  g4 e4 e4 f8 g
  a4 a8 g a2~
  a4 a4 d d
  d4 cis8 b cis4 cis
  d4 a8 b c4 d
  g,2~ g8 e f g
  a4 g8 f g2~
  g4 g8 f e4 a4~
  a4 g8 fis g4 a4
  d,4 e f2~
  f4 e8 d e2
  f4 f4 d8 e f g
  f4 c d8 c d bes
  c2

  f2~
  f2 a~
  a2 c2~
  c4 a8 bes c4 d
  c4 c4 c bes8 a
  g4 c, c'2~
  c4 c bes2~
  bes4 a8 g a4 f
  g4 c2 bes4
  a g8 f bes4 d,4
  es4 es8 d es4 es
  d8 es d c d4 f4
  e8 g f e f2~
  f4 g8 a bes2~
  bes4 bes8 a g4 c~
  c4 c8 d c4 bes
  a2 a4 a
  g4 bes4 a2~
  a4 a4 d2~
  d4 cis4 a2~
  a4 f8 g a2~
  a4 e4 a2~
  a4 g8 f g2~
  g4 g4 a g8 f
  g2 r2
  c1
  d
  a2 c2~
  c2 bes2
  f4 a4 a f
  fis4 fis a2~
  a4 g4 g e
  f4. g8 e2
  f4 a4 a2~
  a4  a d2~
  d4 g,4 a2~
  a4 a8 b c4 d
  g,2~ g8 e f g
  a f g a g2~
  g4 g8 f e4 a~
  a4 g8 fis g4 a4
  d, e f2~
  f4 e8 d e2
  f4 f4 d8 e f g
  f4 c d8 c d bes
  c1~
  c1
}


tenorA =  \relative {
  f'1
  f
  f
  c2.( d4)
  e1
  f4 c2 d8 e
  f4 f,4 a g
  f4 a4 c f4~
  f4 f8 e f4 d
  d4( c2) c4
  c4 c c d8 e
  f2. e8 d
  e4 g g2~
  g4 f8 e f4 r4
  f1
  e1
  d4 d4 a b
  c4 g c2~
  c4 b8 a b c a b
  c4 g4 c2~
  c4 c4 bes a
  g2 c4 bes8 a
  d2 c~
  c4 a4 bes c8 d
  c4 a bes2~
  bes4 a8 g a4 f4

  f'1
  f
  f
  c2.( d4)
  e1
  f4 c2 d8 e
  f4 f,4 a g
  f4 a4 c f4~
  f4 f8 e f4 d
  d4( c2) c4
  c4 c c d8 e
  f2. e8 d
  e4 g g2~
  g4 f8 e f4 r4
  f1
  e1
  d4 d4 a b
  c4 g c2~
  c4 b8 a b c a b
  c4 g4 c2~
  c4 c4 bes a
  g2 c4 bes8 a
  d2 c~
  c4 a4 bes c8 d
  c4 a bes2~
  bes4 a8 g a4 r4


  f1
  a1~
  a4 f8 g a4 bes
  f2. f4
  g2 a8 bes a g
  a4 g8 f g2~
  g4 c2 d4
  e2 r2
  f,1
  c'1~
  c2 bes~
  bes2 a2
  bes r4 f'
  g4 g8 f e4 g
  c,4 a8 bes c4 d8 e
  f4 c f r4
  e1
  f
  e2 e4 cis
  d4 a4 a d
  d4 b c c
  c2 b8 c a b
  c4 c4 f2~
  f4 e8 d e4 c
  a f c'2~
  c4 bes8 a bes c d e
  f4 f, f'4 f4
  f f, f' f
  f4 f,4 f a
  a d, d' d
  d1~
  d2 cis2
  d r2
  f1
  e1~
  e4 d4 a b
  c4 g c2~
  c4 b8 a b c a b
  c4 g4 c2~
  c4 c4 bes a
  g2 c4 bes8 a
  d2 c2~
  c4 a4 bes4 c8 d
  c4 a bes2~
  bes4 bes4 a g
  a1
}

basA = \relative {
  r4 f a g
  f f f es
  d4 bes4 d e
  f2 e4 d
  c4 c'4 c bes
  a a a g
  f2 r2
  r2 f4 f8 g
  a4 a a b
  c c, c' c
  c c, c' c
  c2 b4 c8 b
  c4 c, c d8 e
  f4 f f e
  d d d8 e f g
  a4 a4 a a,
  d2 r2
  r2 c4 d8 e
  f4 f f f
  e e a g
  fis d e fis
  g2 a4 g8 f
  bes2 c4 bes
  a f bes a8 g
  a4 f bes bes,
  f'2 r2

  r4 f a g
  f f f es
  d4 bes4 d e
  f2 e4 d
  c4 c'4 c bes
  a a a g
  f2 r2
  r2 f4 f8 g
  a4 a a b
  c c, c' c
  c c, c' c
  c2 b4 c8 b
  c4 c, c d8 e
  f4 f f e
  d d d8 e f g
  a4 a4 a a,
  d2 r2
  r2 c4 d8 e
  f4 f f f
  e e a g
  fis d e fis
  g2 a4 g8 f
  bes2 c4 bes
  a f bes a8 g
  a4 f bes bes,
  f'2 r2

  r4 f4 f f
  f8 g f e f4 f
  f2 r2
  r2 f4 f
  e e a g
  f e8 d g4 f
  e2 f4 f,
  c'2 c4 c
  d2 bes2
  bes2 a2
  bes1~
  bes2 r
  r2 bes'4 a
  g g c bes
  a a a g
  f f f8 g a b
  c2 cis4 a
  d2 f,4 d
  a'2 cis4 a
  d d, d8 e f g
  a4 a a g
  f d g f
  e2 f4 f,
  c'2 r2
  R1*2
  r2 f4 f
  bes f f f
  a f f f
  d fis fis fis
  g2 g4 g
  a2 a4 a,
  d4 d'4 d c
  b b b a8 g
  c2 cis4 a
  d2 r
  r2 c,4 d8 e
  f4 f f f
  e e a g
  fis d e fis
  g2 a4 g8 f
  bes2 c4 bes
  a f bes a8 g
  a4 f bes bes,
  f'1~
  f1
}


structuurB = {
  \time 4/4
  \key c \major

  \skip 1*85

  \bar "|."
}


sopranoB = \relative {
  R1*2
  r4 c''4 c c
  g a8 b c4 c
  a4 a4 a g8 f
  g4 a8 b c2~
  c4 b8 a b4 c
  d2~ d8 e c d
  e2 d4 g,
  c b c2~
  c4 c4 b a
  b2 g4 g
  g a8 b c4 g
  e g e c
  g' g g a8 b
  c2 f2~
  f2 e4 d
  c4 d e c
  a b c2~
  c4 b8 a b2
  c4 g a2
  g2 r
  R1

  r4 c4 c c
  g a8 b c4 c
  a4 a4 a g8 f
  g4 a8 b c2~
  c4 b8 a b4 c
  d2~ d8 e c d
  e2 d4 g,
  c b c2~
  c4 c4 b a
  b2 g4 g
  g a8 b c4 g
  e g e c
  g' g g a8 b
  c2 f2~
  f2 e4 d
  c4 d e c
  a b c2~
  c4 b8 a b2
  c4 g a2
  g2

  c4 c
  e e g g
  c, c e d
  c g c e
  d2 g2~
  g4 g4 fis e8 fis
  g2 d4 e
  d2 r2
  r2 g,4 g
  c4 c e e
  d d d c8 b
  c4 c c b8 c
  d2 g,2~
  g4 g4 a a
  g2 r
  r2 e'2
  f4 e f2~
  f2 e2
  d2. c8 b
  c4 d e d
  c b c2
  b2  r2
  r2 d2
  e d
  c4 b a4 c4
  f e f2~
  f2 e2~
  e2 d4 c
  d e8 d c4 d
  e2 b4 b
  c c c b8 a
  b4 e, e'2~
  e4 d4 c d8 e
  d2. c8 b
  c2. b8 a
  b2 e2~
  e4 d4 c2~
  c2 c4 d8 e
  f4 f f e8 d
  e4 c d c8 b
  c4 g a g8 f
  g2 a8 f a4
  g2 r
}

altoB = \relative {
  R1
  r4 g'4 g g
  c, e8 fis g4 g
  e4 e4 g f8 e
  f4 f f e8 d
  e2. f4
  g2 g2
  g4 d4 g g
  g a2 g4~
  g4 g4 e fis
  g1~
  g2 g4 g
  g a8 b c4 g
  e g e c
  g' g g a8 b
  c2 r
  b1
  a1~
  a2 g2
  f2. e8 d
  g4 e f2
  e2 r2

  r4 g4 g g
  c, e8 fis g4 g
  e4 e4 g f8 e
  f4 f f e8 d
  e2. f4
  g2 g2
  g4 d4 g g
  g a2 g4~
  g4 g4 e fis
  g1~
  g2 g4 g
  g a8 b c4 g
  e g e c
  g' g g a8 b
  c2 r
  b1
  a1~
  a2 g2
  f2. e8 d
  g4 e f2
  e2 r


  c4 c e e
  g g g g
  g g g g
  g2 r2
  c2. c4
  b4 b2 c4
  b2 r2
  c,4 c g' g
  g g c2~
  c4 b4 b2~
  b4 a4 a a
  a g r2
  c,4 c f f
  e2 g
  a2 g
  g2 g
  g4 g4 a2~
  a4 g8 fis g2
  g g
  fis4 g8 fis e4 fis
  g2 d2
  e d
  c d
  e2. e4
  c2 c'4 b8 a
  b2. c8 b
  a4 gis a2~
  a4 gis4 a2
  gis2 gis4 gis
  a4 a a gis8 fis
  gis2 a4 b
  e,2 a2~
  a4 g8 fis g2~
  g4 g4 fis e8 fis
  g2 b4 b
  c2. b4
  a2 g4 g
  a4 a a b
  c g b g
  g e f e8 d
  e2 f4 f
  e2 r
}

tenorB = \relative {
  r4 c' c c
  g a8 b c4 c
  a4 a4 e' e8 d
  c4 c4 e c
  c c c c
  c2. d8 e
  d2. c4
  b4 g4 d' d
  c2 d
  e c
  d1~
  d2 g,4 g
  g a8 b c4 g
  e g e c
  g' g g a8 b
  c2 r
  d2 e2~
  e4 d4 c2~
  c4 d4 e c
  a2 d
  e4 c4 c2
  c4 c4 c c

  g a8 b c4 c
  a4 a4 e' e8 d
  c4 c4 e c
  c c c c
  c2. d8 e
  d2. c4
  b4 g4 d' d
  c2 d
  e c
  d1~
  d2 g,4 g
  g a8 b c4 g
  e g e c
  g' g g a8 b
  c2 r
  d2 e2~
  e4 d4 c2~
  c4 d4 e c
  a2 d
  e4 c4 c2~
  c2 r
  r2 c4 c
  e e g f
  e c c c
  b2 r2
  c4 b a c
  d2 g
  g2 g,4 g
  c c e e
  e e g g
  g d g g
  e2 f2~
  f4 f4 e d4
  e4 e c c
  c2 e
  f e
  d4 c d2~
  d2 c2
  d2 g4 d
  e d c b
  a2 a
  d2 b2
  c b
  a b
  c2. c4
  a2. b8 c
  d c d4 g, a8 b
  c2. d8 e
  f2 f
  b,2 e4 e
  a, a a a
  e' d c b
  a2 e'4 a,
  b2. c8 d
  e2 c
  d2 g,4 d'
  c2. d8 e
  f2 g4 g
  f f f f
  g e f e8 d
  e4 c c c
  c2 c4 c
  c2 r
}


basB = \relative {
  R1*3
  c'1
  c1
  c1
  g2.( a4)
  b1
  c2( b)
  a1
  g1~
  g1
  R1
  c1
  b1
  a1
  g1
  a1
  f2( e)
  d1
  c1~
  c1
  R1*2

  c'1
  c1
  c1
  g2.( a4)
  b1
  c2( b)
  a1
  g1~
  g1
  R1
  c1
  b1
  a1
  g1
  a1
  f2( e)
  d1
  c1~
  c1

  R1
  c1
  e1
  g1
  a1
  g1~
  g1
  R1
  c,1
  g'1
  a1
  b1
  c1~
  c1
  R1
  b1
  c1
  b1
  a1
  a1
  g1~
  g1

  R1
  a1
  a1
  g1
  f1
  f1
  e1~
  e1
  R1

  c'1
  b1
  a1
  g1
  a1
  f2( e)
  d1
  c1~
  c1~
  c1~
  c2 r
}


structuurC = {
  \time 2/2
  \key c \major
  \skip 1*40
  \bar "|."
}

sopranoC = \relative {
  r2 c''
  c2 c
  g4.( a8) b2
  c4( b) a2
  g1
  r2 c2
  b2 a
  g2 a
  f4( e d2)
  c1
  r2 c'
  c2 c
  g4.( a8) b2
  c4( b) a2
  g1
  r2 c2
  b2 a
  g2 a
  f4( e d2)
  c1

  r2 c g' a
  g fis
  g1

  c,2 g'
  a2 b
  c1

  r2 b
  c2 b
  a1
  g1

  r2 a
  a2 g
  a2 f
  e1

  r2 c'
  b2 a
  g2 a
  f4( d d2)
  c1\fermata
}

altoC = \relative {
  r2 g'2
  e2 e
  g f
  c4( d) fis2
  d1
  r2 e
  g2 c,
  e c
  d4( g, b2)
  c1

  r2 g'2
  e2 e
  g f
  c4( d) fis2
  d1
  r2 e
  g2 c,
  e c
  d4( g, b2)
  c1

  r2 c
  d2 fis
  d2 d
  d1

  c2 c
  f2 d
  e1

  r2 d
  e d
  d( fis)
  d1

  r2 f
  f2 e
  e f
  cis1

  r2 e
  g2 c,
  e c
  d4( g, b2)
  g1\fermata
}

tenorC = \relative {
  r2 c'
  g c
  c d
  e4( b) d2
  b1

  r2 c
  e a,
  c f
  b,4( g2.)
  e1

  r2 c'
  g c
  c d
  e4( b) d2
  b1

  r2 c
  e a,
  c f
  b,4( g2.)
  e1

  r2 g
  g c
  b a
  b1

  e,2 c'
  c b
  g1

  r2 g
  g b
  d1
  b

  r2 d
  c e
  a, a
  a1

  r2 c
  e a,
  c f
  b,4( g2.)
  e1\fermata
}

basC = \relative {
  r2 c2
  c a
  e' d
  c4( g') d2
  g,1
  r2 a
  e' f
  c a
  b4( c g2)
  c1
  r2 c2
  c a
  e' d
  c4( g') d2
  g,1
  r2 a
  e' f
  c a
  b4( c g2)
  c1

  r2 c
  b a
  b4( g) d'2
  g,1

  a2 e
  f g
  c1

  r2 g'
  e g
  d1
  g1
  r2 d
  f2 c
  cis d
  a1
  r2 a
  e' f
  c a
  b4( c g2)
  c1\fermata
}


organRightA = \relative {
  << { r4 a' c bes } \\ { f1 }  >>
  <c f a>2. g'8 f
  <f bes>4 <d f> << bes'2~ \\ { f4 g } >>
  << { bes4 a } \\ <f c>2 >> <c f a>4 <d f b>
  <e c'>4 g <e g c>2
  <f c'>2. <g bes>4
  <a c>4 <f a> <a c> <g bes>
  <f a>4 f <a c> a8 bes
  << { c2. d4 } \\ { f,4 f8 g <f a>4 <f a> } >>
  << { d'4 c } \\ <g e>2  >> <e g c>2
  <f a c>2 <e g c>
  << d'1 \\ { <f, a>4 g8 f <f g>2 } >>
  <e g c>2 e4 f8 g
  <g a>4 f8 e <f a>2
  <f a>2 <f a d>
  << { d'4 cis } \\ <e, a>2 >> <e a cis>2
  <f a d>4 a8 b c4 <d g,>
  <e, g c>2 e4 f8 g
  <a c>4 b8 a <d, g b>2
  <g c>2 e4 <e a c>
  << <d' c>2 \\ { a4 g8 fis } >> <g bes>4 a
  << bes2 \\ { d,4 e } >> <c f a>2
  << g'1 \\ { <d f>4 e8 d <c e>2 } >>
  f4 <f a> <f d'> c'8 bes
  <f c'>2 <d f bes~>
  <<
    { \voiceOne bes'4 a8 g a2 }
    \new Voice { \voiceTwo <f c>2 }
  >>
  \oneVoice
  << { r4 a c bes } \\ { f1 }  >>
  <c f a>2. g'8 f
  <f bes>4 <d f> << bes'2~ \\ { f4 g } >>
  << { bes4 a } \\ <f c>2 >> <c f a>4 <d f b>
  <e c'>4 g <e g c>2
  <f c'>2. <g bes>4
  <a c>4 <f a> <a c> <g bes>
  <f a>4 f <a c> a8 bes
  << { c2. d4 } \\ { f,4 f8 g <f a>4 <f a> } >>
  << { d'4 c } \\ <g e>2  >> <e g c>2
  <f a c>2 <e g c>
  << d'1 \\ { <f, a>4 g8 f <f g>2 } >>
  <e g c>2 e4 f8 g
  <g a>4 f8 e <f a>2
  <f a>2 <f a d>
  << { d'4 cis } \\ <e, a>2 >> <e a cis>2
  <f a d>4 a8 b c4 <d g,>
  <e, g c>2 e4 f8 g
  <a c>4 b8 a <d, g b>2
  <g c>2 e4 <e a c>
  << <d' c>2 \\ { a4 g8 fis } >> <g bes>4 a
  << bes2 \\ { d,4 e } >> <c f a>2
  << g'1 \\ { <d f>4 e8 d <c e>2 } >>
  f4 <f a> <f d'> c'8 bes
  <f c'>2 <d f bes~>
  <<
    { \voiceOne bes'4 a8 g }
    \new Voice { \voiceTwo <f c>2 }
  >> \oneVoice <a, c f>2~
  <a c f>2 <c f a>
  <c f a>2 <f a c>
  << { c'4 a8 bes c4 d } \\ f,1 >>
  <a c>2 c4 bes8 a
  <g c>2 <e c'~>
  <a c d~>2 <g~ bes~ d>
  <<
    { \voiceTwo <g bes>4 a8 g <f a>4 <d f>}
    \new Voice { \voiceOne c'1 }
  >>
  \oneVoice
  <e, g>4 <e c'>2 <g bes>4
  <f a>4 g8 f <d bes'>4 <d f>
  <c es>4 es8 d <c es>2
  <<
    { f1 }
    \\ { d8 es d c <bes d>4 <bes d> }
    \\ { c2 }
  >>
  << c'1 \\ { e,8 g f e f2 } >>
  << d'1 \\ { f,4 g8 a bes4 <f bes> } >>
  << e'1 \\ { <g, bes>4 <g bes>8 <f a> <e g>4 <e c'> } >>
  <<
    f'1
    \\ { c4 c8 d c4 bes }
    \\ { \skip2. d8 e }
  >>
  <a, c f>2 <a c>4 <f a>
  << { g4 bes a2 } \\ e1 >>
  <f a>2 <f a d>
  << { d'4 cis } \\ <a e>2 >> a4 <a cis>
  <f a d>4 f8 g <f a>4 <f a d>
  <a d>4 b4 <a c>2
  << d1 \\ { <c a>2 <g b> } >>
  <g c~>2 <f~ a c>
  << \new Voice { \voiceOne g1 }
     { \voiceTwo f4 e8 d e2 \oneVoice } >>
  << c'1 \\ { f,4 a <g e>2 } >>
  << d'1 \\ { f,2. bes4 } >>
  <a c>2 <f a c>
  << d'1 \\ { <f, c'>2 <f bes> } >>
  << c' \\ { f,4 <f a> <f a>2 } >>
  << d'1 \\ { <fis, a>2 <d a'> } >>
  << <d bes'>1 \\ { a'4 g g e } >>
  << a1 \\ { <f d>2 <e cis> } >>
  <d a'>4 <f a> <f a>2
  <d f a>2 <d f d'^~>2
  << { \voiceOne d'4 c \oneVoice <e, a e'^~>2 }
     \new Voice { \voiceTwo <e g>2 } >>
  << { \voiceOne e'4 d \oneVoice c <d g,> }
     \new Voice { \voiceTwo <f, a>2 } >>
  <e g c>2 e4 f8 g
  <a c>4 b8 a <d, g b>2
  <g c>2 e4 <e a c>
  << <d' c>2 \\ { a4 g8 fis } >> <g bes>4 a
  << bes2 \\ { d,4 e } >> <c f a>2
  << g'1 \\ { <d f>4 e8 d <c e>2 } >>
  f4 <f a> <f d'> c'8 bes
  <f c'>2 <d f bes^~>
  <<
    { 
      \voiceOne bes'4 bes a g
      a1
    }
    \new Voice {
      \voiceTwo <f c>1~
      <f c>
    }
  >>
}

organLeftA = <<
  \basA
  {
    \skip2*151
    \voiceTwo
    \skip1*3
    \oneVoice
  }
  \new Voice \relative {
    \tiny
    \skip 1*16
    \skip2 a4 b c g \skip2
    \skip 1*24
    \skip2 a4 b c g \skip2
    \skip 1*10
    \skip2 a4 bes f2 \skip2
    \skip 1*7
    \skip2 a2 bes \skip2
    \skip 1*10
    \skip2 \once \voiceOne r4 c4
    a4 f c'2~
    c4 bes8 a bes c d e
    f4 f, \skip2
    \skip 1*8
    \skip2 a4 b c g \skip2
    



  }
>>

organRightB = \relative {

}

organLeftB = \basB




\book {
  \bookOutputSuffix "orgel"
  \score {
    \header {
      piece = "Vers 1."
    }
    \new PianoStaff <<
      \new Staff = "right" <<
        \structuurA
        \organRightA
      >>
      \new Staff = "left" <<
        \clef bass
        \structuurA
        \organLeftA
      >>
    >>
    \layout {
      \expandFullBarRests
    }
  }
%   \score {
%     \header {
%       piece = "Vers 2."
%     }
%     \new PianoStaff <<
%       \new Staff = "right" <<
%         \structuurB
%         \organRightB
%       >>
%       \new Staff = "left" <<
%         \clef bass
%         \structuurB
%         \organLeftB
%       >>
%     >>
%   }
  \score {
    \header {
      piece = "Vers 2. (mag uitgedund worden:-)"
    }
    \new PianoStaff <<
      \new Staff = "right" <<
        \structuurB
        \sopranoB \\ \altoB
      >>
      \new Staff = "left" <<
        \clef bass
        \structuurB
        \tenorB \\ \basB
      >>
    >>
  }
  \score {
    \header {
      piece = "Vers 3."
    }
    \new PianoStaff <<
      \new Staff = "right" <<
        \structuurC
        \sopranoC \\ \altoC
      >>
      \new Staff = "left" <<
        \clef bass
        \structuurC
        \tenorC \\ \basC
      >>
    >>
  }

}

\book {
  \bookOutputSuffix "viool1"
  \score {
    \header {
      piece = "Vers 1."
    }
    \new Staff \with {
      instrumentName = "Viool 1"
    }
    <<
      \structuurA
      \sopranoA
    >>
  }

  \score {
    \header {
      piece = "Vers 2."
    }
    \new Staff \with {
      instrumentName = "Viool 1"
    }
    <<
      \structuurB
      \sopranoB
    >>
  }

  \score {
    \header {
      piece = "Vers 3."
    }
    \new Staff \with {
      instrumentName = "Viool 1"
    }
    <<
      \structuurC
      \sopranoC
    >>
  }
}

\book {
  \bookOutputSuffix "viool2"
  \score {
    \header {
      piece = "Vers 1."
    }
    \new Staff \with {
      instrumentName = "Viool 2"
    }
    <<
      \structuurA
      \altoA
    >>
  }

  \score {
    \header {
      piece = "Vers 3."
    }
    \new Staff \with {
      instrumentName = "Viool 2"
    }
    <<
      \structuurB
      \altoB
    >>
  }

  \score {
    \header {
      piece = "Vers 2."
    }
    \new Staff \with {
      instrumentName = "Viool 2"
    }
    <<
      \structuurC
      \altoC
    >>
  }
}


\book {
  \bookOutputSuffix "altviool"
  \score {
    \header {
      piece = "Vers 1."
    }
    \new Staff \with {
      instrumentName = "Altviool"
    }
    <<
      \clef alto
      \structuurA
      \tenorA
    >>
  }

  \score {
    \header {
      piece = "Vers 2."
    }
    \new Staff \with {
      instrumentName = "Altviool"
    }
    <<
      \clef alto
      \structuurB
      \tenorB
    >>
  }

  \score {
    \header {
      piece = "Vers 3."
    }
    \new Staff \with {
      instrumentName = "Altviool"
    }
    <<
      \clef alto
      \structuurC
      \tenorC
    >>
  }
}

\book {
  \bookOutputSuffix "vc-cb"
  \score {
    \header {
      piece = "Vers 1."
    }
    \new Staff \with {
      instrumentName = "BC"
    }
    <<
      \clef bass
      \structuurA
      \basA
    >>
  }

  \score {
    \header {
      piece = "Vers 2."
    }
    \new Staff \with {
      instrumentName = "BC"
    }
    <<
      \clef bass
      \structuurB
      \basB
    >>
  }

  \score {
    \header {
      piece = "Vers 3."
    }
    \new Staff \with {
      instrumentName = "BC"
    }
    <<
      \clef bass
      \structuurC
      \basC
    >>
  }
}

%}
