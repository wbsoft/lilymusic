\version "2.13.10"

\include "def.ly"

psalm = 92

keySig = {
  \key d \dorian
}

mel = \relative c' {
  a2 a4 a d c b2 a4 \breathe
  c4 b a a gis a2 r
  a2 a4 a bes2 g f4 \breathe
  f4 g a d, f e2 d r
  f2 e4 d f g a2 a4 \breathe
  c4 b c d b a2 r
  d,2 a'4 a g2 f e4 \breathe
  a4 a g f d e2 d1
}

bas = \relative c {
  d2 a4 d d f g2 d4 \breathe
  c4 e f e e a,2 r
  d2 f4 f bes,2 c d4 \breathe
  d4 c a d d a2 d r
  d2 a4 d d bes a2 a4 \breathe
  a4 e' a, d e a,2 r
  d2 d4 f c2 d a4 \breathe
  f4 f c' d b a2 d1
}

sop = \relative c' {
  f2 e4 f a a g2 fis4 \breathe
  e4 e c e e e2 r
  f2 f4 f g( f2) e4 f \breathe
  d4 e e f d2 cis4 d2 r
  a'2 a4 a d d c2 c4 \breathe
  a4 gis a a gis a2 r
  f2 f4 f e2 d c4 \breathe
  f4 f e d d2 cis4 d1
}

alt = \relative c' {
  d2 cis4 d f f d2 d4 \breathe
  g,4 g a b b cis2 r
  d2 c4 c d2 c a4 \breathe
  a4 c c a a a2 a r
  d2 c4 f a g e2 e4 \breathe
  e4 e e f e e2 r
  a,2 d4 c c2 a a4 \breathe
  c4 c c a g a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 cis4 d f f d2 d4 \breathe
  e4 e c e e e2 r
  f2 f4 f g( f2) e4 f \breathe
  a,4 c c a d2 cis4 d2 r
  d2 c4 a d d c2 c4 \breathe
  e4 e e f e e2 r
  d2 f4 f e2 d c4 \breathe
  f4 f e d d2 cis4 d1
}

tenSS = \relative c {
  f2 e4 f a a g2 fis4 \breathe
  g4 g a b b cis2 r
  d2 c4 c d2 c a4 \breathe
  d,4 e e f a a2 a r
  a2 a4 f a g e2 e4 \breathe
  a4 gis a a gis a2 r
  a2 d4 c c2 a a4 \breathe
  c4 c c a g e( a) a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
