\version "2.13.10"

\include "def.ly"

psalm = 11

keySig = {
  \key d \dorian
}

mel = \relative c' {
  a2 c b a4 a b c d c b2 a r
  d2 c d a4 c b a a gis a2 r
  a2 a4 g f f bes a g f e2 d r
  f f4 g a2 c b4 a b c d2 r
  a2 b4 d c b a a g f g2 f r
  a2 g4 f e2 e d4 c f2 f e r
  a2 g4 a d, a' c a g f e2 d1
}

bas = \relative c {
  a2 a e' a,4 a' g e d a e'2 a, r
  d2 a d d4 c g' a d, e a,2 r
  d2 f4 c d d bes f c' d a2 d r
  d2 d4 c f2 c g'4 f e a, d2 r
  d2 g4 g c, e f f c d c2 f, r
  f'2 c4 d a2 c g4 c bes2 f c' r
  a2 e'4 a, d d c f, c' d a2 d1
}

sop = \relative c'' {
  a2 a gis a4 e g g f a2 gis4 a2 r
  a2 a a f4 g g e f e e2 r
  f2 f4 e d d f f e d2 cis4 d2 r
  d2 d4 e f2 g g4 a gis a a2 r
  f2 g4 g g g f f e f2 e4 f2 r
  f2 e4 d c2 c b4 e d2 c c r
  e2 e4 e f d e f e d2 cis4 d1
}

alt = \relative c' {
  e2 e e e4 c d e a, e' e2 e r
  f2 e f d4 e d cis d b cis2 r
  d2 c4 c a a d c c a a2 a r
  a2 a4 c c2 e d4 d e e fis2 r
  d2 d4 b e e c c c a c2 c r
  c2 c4 a a2 g g4 g bes2 a g r
  c2 b4 c a f g c c a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  e2 e e e4 e g g f e e2 e r
  f2 e f f4 g g e f e e2 r
  f2 f4 e d d f f e d2 cis4 d2 r
  d2 d4 e f2 g g4 a gis a a2 r
  f2 g4 g g g f f e f2 e4 f2 r
  f2 e4 d c2 c b4 g bes2 a g r
  c2 b4 c a d e f e d2 cis4 d1
}

tenSS = \relative c' {
  a2 a gis a4 c d e a, a2 gis4 a2 r
  a2 a a d4 e d cis d b cis2 r
  d2 c4 c a a d c c a a2 a r
  a2 a4 c c2 e d4 d e e fis2 r
  d2 d4 b e e c c c a c2 c r
  c2 c4 a a2 g g4 e d2 c c r
  e2 e4 e f f g c c a a2 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
