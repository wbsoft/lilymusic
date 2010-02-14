\version "2.13.10"

\include "def.ly"

psalm = 96

keySig = {
  \key d \dorian
}

mel = \relative c' {
  d2 d4 d c2 a c4 d b2 a r
  a2 d4 d c2 a g4 f e2 d r
  f2 e4 f g2 a f4 g a2 r
  e2 f4 g a e g2 f e r
  a2 g4 a d, e f g e2 d1
}

bas = \relative c {
  d2 d4 d a'2 f f4 d e2 a, r
  d2 d4 d a2 a c4 d a2 d r
  d2 a4 d c2 a d4 b a2 r
  a2 d4 c f, c' c2 d a r
  a2 e'4 a, d c bes g a2 d1
}

sop = \relative c'' {
  a2 a4 a a2 c a4 a2 gis4 a2 r
  f2 a4 a a2 c c4 a a2 a r
  a2 a4 a c2 c a4 g e2 r
  cis2 d4 e f g e2 d cis r
  e2 e4 e f e d d2 cis4 d1
}

alt = \relative c' {
  f2 f4 f e2 f f4 f e2 e r
  d2 f4 f e2 e e4 d2 cis4 d2 r
  d2 cis4 d e2 e d4 d cis2 r
  a2 a4 c c c c2 a a r
  c2 b4 c f, g bes bes a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  f2 f4 f e2 f f4 f e2 e r
  f2 f4 f e2 e e4 d2 cis4 d2 r
  d2 cis4 d e2 e d4 d cis2 r
  cis2 d4 e f e e2 d cis r
  e2 e4 e a, c d d2 cis4 d1
}

tenSS = \relative c' {
  a2 a4 a c2 c a4 a2 gis4 a2 r
  d2 a4 a a2 c c4 a a2 a r
  a2 a4 a c2 c a4 g e2 r
  a2 a4 c c c c2 a a r
  c2 b4 c f, g bes bes a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
