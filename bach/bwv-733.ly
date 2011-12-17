\version "2.14.1"


global = {
  \key f \major
  \time 4/4
}

sop = \relative c'' {
  \global
  R1*9
  a2 c
  a2 a
  bes2 a
  g1
  f1
  e2. e4
  f8 e d f e d c e
  d1
  c2 f~
  f2 e~
  e2 d~
  d2 cis
  d4 r r2
  R1*7
  e'2 g
  e2 e
  f2 e
  d1
  c1~
  c2 bes~
  bes2 a
  d2 e
  f1
  e1
  d8 c' bes a g f e g
  cis,2 d~
  d2 cis
  d2 r
  R1
  r8 bes a g f e d f
  b,4 g' cis, g'
  fis8 d e fis g2~
  g2 fis
  g2. f4~
  f4 e d g
  e2 a~
  a2 gis4 b~
  b8 e, fis gis a b c a
  d1
  c2 b
  c2 g
  a2. g4
  f8 bes a g f e d f
  e8 a g f e f g e
  f8 g a bes c d es c
  d2 c
  bes1~
  bes8 d c bes a g f a
  d,8 e f2 e4
  f2. e4~
  e8 a b cis d e f d
  g1~
  g2 f~
  f2 e~
  e2 d~
  d2 cis
  d4 c bes2
  a2 d~
  d2 cis
  d2 e
  f4 d c a'~
  a4 g2 fis4
  g8 a, bes c d es f d
  es2 d~
  d8 d e fis g a bes g
  c,1~
  c8 bes a bes c es d c
  bes4 a g2~
  g4. a8 f4. g8
  e2. a4
  d,2~ d8 f' e d
  cis8 b a cis d2~
  d2 cis
  d4 f2 e4~
  e4 d2 cis4
  d4 c2 d8 c
  bes1
  a2 d
  c2 f~
  f8 f g a g4 f~
  f8 e fis gis a b c a
  d,1~
  d4 c8 b c4 f~
  f4 e8 d e4 g~
  g8 bes a g f e d f
  e2. es4
  d1~
  d8 c d e f g a f
  bes2 r
  r8 d, e f g a bes g
  c2 bes~
  bes8 a g f e f g e
  f1~
  f2 e~
  e2 d~
  d2 c~
  c2 b
  c2~ c8 d c b
  a8 b c a d2~
  d1
  c2 r
  r2 r8 c d e
  f8 e d f b, c d4~
  d4 c8 b c2~
  c1~
  c4 bes a d
  bes8 c d e fis g a fis
  bes2. a4~
  a4 g2 fis4
  g1~
  g4 f8 e f4 g
  a1
  bes4 a g2~
  g8 a g f e fis g e
  fis2 g
  a2 d,~
  d4 c bes2~
  bes8 a g f e f g e
  g8 f e d d'2~
  d2 cis
  d1
}

\score {
  \sop
}


  