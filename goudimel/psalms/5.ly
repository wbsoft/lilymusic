\version "2.13.10"

\include "def.ly"

psalm = 5

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 a'4 b c2 c d4 c b2 a r
  d2 d4 d c b a2 f e r
  a2 a4 a g a c2 b a r
  f2 f4 g a2 a bes4 a g2 f r
  a2 g4 f e2 d1
}

bas = \relative c {
  d2 d4 g f2 a g4 a e2 a r
  d,2 d4 g, a e' a,2 d a r
  a2 d4 a e' f c2 e a, r
  d2 d4 c f2 f bes,4 f c'2 f, r
  f2 c'4 d a2 d1
}

sop = \relative c' {
  d2 f4 g a2 a b4 a2 gis4 a2 r
  fis2 fis4 g e e e2 d cis r
  e2 f4 e e d e2 e e r
  d2 d4 e f2 f f4 f e2 c r
  f2 e4 d2 cis4 d1
}

alt = \relative c' {
  a2 d4 d f2 e g4 e e2 cis2 r
  a2 a4 bes a g c2 a a r
  cis2 d4 c b a g( a2) gis4 a2 r
  a2 a4 c c2 c d4 c c2 a r
  c2 c4 a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 d4 d f2 e g4 e e2 cis2 r
  fis2 fis4 g e e e2 d cis r
  e2 f4 e e d e2 e e r
  d2 d4 e f2 f f4 f e2 c r
  f2 e4 d2 cis4 d1
}

tenSS = \relative c {
  d2 f4 g a2 a b4 a2 gis4 a2 r
  a2 a4 bes a g c2 a a r
  cis2 d4 c b a g( a2) gis4 a2 r
  a2 a4 c c2 c d4 c c2 a r
  c2 c4 a a2 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
