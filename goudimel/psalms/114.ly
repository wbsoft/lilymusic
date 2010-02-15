\version "2.13.10"

\include "def.ly"

psalm = 114

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 d4 d a'2 c d d4 c b2 a r
  c2 c4 b a2 f g g4 f e2 d r
  f2 g4 a bes a g2 f r
  a2 a4 a d,2 g f4 e d d c2 r
  f2 g4 g a2 b c4 d c b a2 r
  a2 bes4 a g f e2 d1
}

bas = \relative c {
  d2 d4 b a2 a d d4 a e'2 a, r
  f'2 f4 g d2 d c c4 d a2 d r
  d2 c4 f bes, f c'2 f, r
  f2 a4 a g2 g d'4 a bes g a2 r
  d2 c4 c f2 e a4 d, e e a,2 r
  f'2 bes,4 f' c d a2 d1
}

sop = \relative c' {
  f2 f4 g e2 e f f4 a2 gis4 a2 r
  a2 a4 g f2 d e e4 d2 cis4 d2 r
  d2 e4 f f f2 e4 f2 r
  f2 e4 e g2 bes a4 a f g e2 r
  d2 e4 e f2 g a4 a a gis a2 r
  f2 f4 f e d2 cis4 d1
}

alt = \relative c' {
  a2 a4 d c2 a a a4 e' e2 e r
  f2 f4 d d2 a c c4 a a2 a r
  a2 c4 c d c c2 a r
  c2 c4 c b2 d d4 c d bes a2 r
  a2 c4 c c2 e e4 f e e e2 r
  c2 d4 c c a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 a4 d c2 e f f4 e e2 e r
  f2 f4 d d2 d e e4 d2 cis4 d2 r
  d2 e4 f f f2 e4 f2 r
  c2 c4 c b2 d d4 c d bes a2 r
  a2 c4 c c2 e e4 f e e e2 r
  f2 f4 f e d2 cis4 d1
}

tenSS = \relative c {
  f2 f4 g e2 a a a4 a2 gis4 a2 r
  a2 a4 g f2 a c c4 a a2 a r
  a2 c4 c d c c2 a r
  f2 e4 e g2 bes a4 a f g e2 r
  d2 e4 e f2 g a4 a a gis a2 r
  c2 d4 c c a a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
