\version "2.13.10"

\include "def.ly"

psalm = 8

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 f g a d c4 b a c b2 a r
  d2 d4 d c2 e d4 a bes a g2 f r
  f2 e4 e d2 a' c4 c g2 bes a2
  r4 a c2 d a c a4 g f2 e d1
}

bas = \relative c {
  d2 d c f d f4 g a a e2 a, r
  d2 d4 d f2 c d4 d g, a c2 f, r
  d'2 a4 a d2 d c4 c c2 g a2
  r4 d a2 d d c f4 c d2 a d1
}

sop = \relative c' {
  d2 d e f a a4 d c a2 gis4 a2 r
  f2 f4 f a2 g f4 f g f2 e4 f2 r
  d2 cis4 cis d2 d e4 e e2 g e
  r4 f e2 f f g f4 e2 d cis4 d1
}

alt = \relative c' {
  a2 a c c f f4 d f e e2 e r
  a,2 a4 a a2 c a4 d d c c2 c r
  a2 a4 a a2 fis g4 g c2 d cis
  r4 a a2 a d e c4 c a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d e f a a4 g f e e2 e r
  f2 f4 f a2 g f4 f g f2 e4 f2 r
  d2 cis4 cis d2 d e4 e e2 g e
  r4 f e2 f f g f4 e2 d cis4 d1
}

tenSS = \relative c' {
  a2 a c c f f4 d c a2 gis4 a2 r
  a2 a4 a a2 c a4 d d c c2 c r
  a2 a4 a a2 fis g4 g c2 d cis
  r4 a a2 a d e c4 c a2 a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
