\version "2.13.10"

\include "def.ly"

psalm = 12

keySig = {
  \key d \dorian
}

mel = \relative c' {
  a2 f4 g a2 c a4 f g f e2 d r
  a'2 a4 g a2 d a4 d c2 b a r
  d,2 f4 f e2 d a'4 a g e f2 e r
  a2 c4 a f2 g a4 d, f2 e d1
}

bas = \relative c {
  d2 d4 c f2 c d4 d c d a2 d r
  d2 a4 e' d2 d f4 d a'2 e a, r
  d2 d4 d a2 d d4 f c c d2 a r
  a2 a4 a d2 c f4 f d2 a d1
}

sop = \relative c' {
  d2 d4 e f2 g f4 d e d2 cis4 d2 r
  f2 e4 e f2 a a4 a a2 gis a r
  f2 d4 d cis2 d f4 f e e d2 cis r
  e2 e4 e d2 e f4 f2 d cis4 d1
}

alt = \relative c' {
  a2 a4 c c2 e d4 a c a a2 a r
  d2 c4 b d2 f c4 f e2 e cis r
  a2 a4 a a2 a d4 c c c a2 a r
  c2 a4 c a2 c c4 a a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d4 e f2 g f4 d e d2 cis4 d2 r
  d2 c4 b d2 f c4 f e2 e cis r
  a2 d4 d cis2 d f4 f e e d2 cis r
  e2 e4 e d2 e f4 d2 d cis4 d1
}

tenSS = \relative c' {
  a2 a4 c c2 e d4 a c a a2 a r
  f2 e4 e f2 a a4 a a2 gis a r
  f2 a4 a a2 a d4 c c c a2 a r
  c2 a4 c a2 c c4 a a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
