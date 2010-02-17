\version "2.13.10"

\include "def.ly"

psalm = 130

keySig = {
  \key d \dorian
}

mel = \relative c' {
  a2 d,4 e f e d2 c r
  f2 d4 e f2 g a r
  a2 g4 a b c b2 a r
  d2 c4 a c2 b a r
  a2 c a g4 f e2 d r
  g2 f4 e d d c2 r
  f2 f4 g a bes g2 f r
  a2 g4 f g2 e d1
}

bas = \relative c {
  d2 d4 cis d a bes2 f r
  d'2 d4 c d2 bes a r
  a2 e'4 f e a, e'2 a, r
  d2 f4 f c2 e a, r
  d2 c f, c'4 d a2 d r
  g,2 d'4 a bes g a2 r
  d2 d4 c f bes, c2 f, r
  f2 c'4 d g,2 a d1
}

sop = \relative c' {
  f2 f4 e d a' f2 f r
  d2 f4 a a2 g e r
  c'2 b4 a g a2 gis4 a2 r
  f2 f4 f g( a2) gis4 a2 r
  f2 g f e4 d cis2 d r
  d2 d4 a' f g e2 r
  d2 d4 e f f e2 f r
  f2 e4 d e( d2) cis4 d1
}

alt = \relative c' {
  d2 a4 a a c bes2 a r
  a2 a4 e' d2 d cis r
  e2 e4 c e e e2 cis r
  a2 a4 c e2 e e r
  d2 e c c4 a a2 a r
  bes2 a4 c bes bes a2 r
  a2 a4 c c d c2 c r
  c2 c4 a bes2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 a4 a d c bes2 a r
  a2 a4 e' d2 d cis r
  e2 e4 c e e e2 cis r
  f2 f4 c e2 e e r
  d2 e f e4 d cis2 d r
  d2 d4 c bes bes a2 r
  d2 d4 e f f e2 f r
  f2 e4 d e( d2) cis4 d1
}

tenSS = \relative c {
  f2 f4 a a a f2 f r
  d2 f4 a a2 g e r
  c'2 b4 a g a2 gis4 a2 r
  a2 a4 f g( a2) gis4 a2 r
  f2 g c c4 a a2 a r
  bes2 a4 a f g e2 r
  a2 a4 c c d c2 c r
  c2 c4 a bes2 a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
