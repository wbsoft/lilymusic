\version "2.13.10"

\include "def.ly"

psalm = 115

keySig = {
  \key d \dorian
}

mel = \relative c' {
  a2 c4 b a2 d, f4 f g g a2
  r4 a c2 c d4 d c a bes2 g f r
  a2 g4 f e f d2 c r
  f2 f4 g a2 b c4 d c b a2 r
  c2 c4 b a2 e f4 a g f e2 r
  a2 g4 e f g e2 d1
}

bas = \relative c {
  d2 c4 g a2 d d4 d c c f2
  r4 f f2 a g4 d f f bes,2 c f, r
  f2 c'4 d c f, g2 a r
  d2 d4 c f2 e a4 d, e e a,2 r
  a2 c4 g a2 a d4 a c d a2 r
  f2 c'4 c d g, a2 d1
}

sop = \relative c' {
  f2 g4 g e2 f d4 d e e f2
  r4 f a2 a bes4 a a f g( f2) e4 f2 r
  f2 e4 f g a g2 e r
  d2 d4 e f2 g a4 a a gis a2 r
  a2 g4 g e2 cis d4 e e d cis2 r
  f2 e4 e d d2 cis4 d1
}

alt = \relative c' {
  d2 e4 d c2 a a4 a c c c2
  r4 c f2 e g4 f f c d2 c c r
  c2 c4 a c c b2 a r
  a2 a4 c c2 e e4 f e e e2 r
  e2 e4 d c2 a a4 c c a a2 r
  c2 c4 c a bes a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 e4 d c2 d d4 d e e f2
  r4 f f2 e g4 f f f g( f2) e4 f2 r
  c2 c4 a c c b2 a r
  a2 a4 c c2 e e4 f e e e2 r
  a2 g4 g e2 cis d4 e e d cis2 r
  f2 e4 e d d2 cis4 d1
}

tenSS = \relative c {
  f2 g4 g e2 f a4 a c c c2
  r4 c a2 c bes4 a a c d2 c c r
  f,2 e4 f g a g2 e r
  d2 d4 e f2 g a4 a a gis a2 r
  e'2 e4 d c2 a a4 c c a a2 r
  c2 c4 c a bes a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
