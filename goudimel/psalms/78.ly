\version "2.13.10"

\include "def.ly"

psalm = 78

keySig = {
  \key d \dorian
}

mel = \relative c' {
  a2 a d c4 a c c b a gis2 a r
  a2 f4 d a'2 a c4 b a d2 cis4 d2 r
  a2 bes4 g a2 f g4 a d, f e2 d r
  a'2 b4 c d2 a d4 d c c b2 a r
  a2 g a f4 d a' bes a2 g f r
  a2 d c a4 f g d f2 e d1
}

bas = \relative c {
  a2 d d a4 d c c g a e'2 a, r
  a2 d4 d a2 d c4 e f d a'2 d, r
  d2 g,4 g d'2 d c4 a d d a2 d r
  d2 g4 e d2 d d4 d a a e'2 a, r
  a2 e' a, d4 d d g, a2 c f, r
  d'2 d a d4 d c d d2 a d1
}

sop = \relative c' {
  e2 f a a4 f g g g e e2 e r
  e2 d4 f e2 f g4 g a a a2 a r
  f2 g4 g f2 d e4 e f d2 cis4 d2 r
  f2 g4 g f2 f a4 a a a gis2 a r
  e2 e cis d4 f f g2 f e4 f2 r
  f2 a a f4 d e f2 d cis4 d1
}

alt = \relative c' {
  cis2 d f e4 d e e d c b2 a r
  cis2 a4 a cis2 d e4 e c f e2 d r
  d2 d4 d d2 a c4 c a a a2 a r
  d2 d4 g, a2 d f4 f e e e2 cis r
  c2 b a a4 a d d c2 c c r
  d2 f e d4 a c a a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  e2 f f e4 d e e d c b2 a r
  cis2 a4 a cis2 d e4 e c f e2 d r
  f2 g4 g f2 d e4 e d d2 cis4 d2 r
  f2 g4 g f2 f f4 f e e e2 cis r
  e2 e cis d4 d f g2 f e4 f2 r
  d2 f e d4 d e a,2 d cis4 d1
}

tenSS = \relative c' {
  cis2 d a a4 f g g g e e2 e r
  e2 d4 f e2 f g4 g a a a2 a r
  d2 d4 d d2 a c4 c f, a a2 a r
  d2 d4 g, a2 d a4 a a a gis2 a r
  c2 b a a4 a d d c2 c c r
  f,2 a a f4 a c f, a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
