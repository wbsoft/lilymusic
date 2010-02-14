\version "2.13.10"

\include "def.ly"

psalm = 112

keySig = {
  \key d \dorian
}

mel = \relative c' {
  a2 c4 b a2 f g4 f e2 d r
  f2 d4 e f g a c b2 a r
  a2 bes4 a f g a bes g2 f r
  f2 g4 f d e f g a2 d, r
  d'2 c4 d a b c d b2 a r
  a2 b c a4 f g f e2 d1
}

bas = \relative c {
  d2 c4 g a2 d c4 d a2 d r
  d2 d4 a d c a a e'2 a, r
  d2 g,4 a d c f bes, c2 f, r
  d'2 g,4 d' d cis d b a2 g r
  d'2 a4 d d g f d e2 a, r
  f'2 e c d4 d c d a2 d1
}

sop = \relative c' {
  f2 g4 g e2 d e4 d2 cis4 d2 r
  d2 f4 c d e e a2 gis4 a2 r
  f2 g4 e d e f f2 e4 f2 r
  a2 bes4 a a a a g2 fis4 g2 r
  f2 e4 f f g a a2 gis4 a2 r
  f2 g g f4 d e d2 cis4 d1
}

alt = \relative c' {
  d2 e4 d c2 a c4 a a2 a r
  a2 a4 a a c c e e2 e r
  d2 d4 c a c c d c2 c r
  d2 d4 d f e d d c2 b r
  a2 a4 a d d f f e2 e r
  c2 e e d4 a c a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  f2 g4 g e2 d e4 d2 cis4 d2 r
  d2 d4 c d e e a2 gis4 a2 r
  f2 g4 e d e f f2 e4 f2 r
  d2 d4 d a e' d d c2 b r
  f'2 e4 f d d f f e2 e r
  c2 e e d4 d e d2 cis4 d1
}

tenSS = \relative c' {
  d2 e4 d c2 a c4 a a2 a r
  a2 a4 a a c c e e2 e r
  d2 d4 c a c c d c2 c r
  a2 bes4 a f a a g2 fis4 g2 r
  a2 a4 a f g a a2 gis4 a2 r
  f2 g g f4 a c a a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
