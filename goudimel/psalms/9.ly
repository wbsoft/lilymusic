\version "2.13.10"

\include "def.ly"

psalm = 9

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 d4 d a'2 c b4 b a2 r
  c2 b a g4 e f2 g a r
  a2 c4 c d2 a c4 c b2 a
  r4 e f2 a g4 e f g e2 d1
}

bas = \relative c {
  d2 d4 d c2 a e'4 e a,2 r
  a2 e' f c4 c d2 c f r
  d2 a4 a d2 d c4 a e'2 a,
  r4 a d2 d e4 cis d g, a2 d1
}

sop = \relative c' {
  d2 f4 f e2 a gis4 gis a2 r
  a2 g f e4 e d( f2) e4 f2 r
  fis2 e4 e fis2 fis g4 a2 gis4 a2
  r4 a a2 f e4 e d d2 cis4 d1
}

alt = \relative c' {
  a2 a4 a a2 e' e4 e cis2 r
  e2 e c c4 c a2 c c r
  d2 c4 c a2 d e4 e e2 e
  r4 cis d2 d b4 a a bes a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 a4 a e'2 e e4 e cis2 r
  e2 e c e4 e d( f2) e4 f2 r
  fis2 e4 e fis2 fis g4 a2 gis4 a2
  r4 cis, d2 d b4 e d d2 cis4 d1
}

tenSS = \relative c {
  d2 f4 f e2 a gis4 gis a2 r
  a2 g a c4 c a2 c c r
  d2 c4 c a2 d e4 e e2 e
  r4 a, a2 f g4 a a bes a2 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
