\version "2.13.10"

\include "def.ly"

psalm = 71

keySig = {
  \key e \phrygian
}

mel = \relative c' {
  a2 g4 e f f g a2 gis4 a2 r
  d,2 e4 f g2 a d, r
  e2 g4 g f f e2 r
  g2 a4 b c2 b a4 g a2 b r
  a2 d4 c b a g2 a r
  d,2 e4 f g g f2 e1
}

bas = \relative c {
  a2 e'4 a, d f e d e2 a, r
  d2 a4 d c2 a g r
  c2 c4 c d d a2 r
  e'2 d4 g c,2 g' d4 e d2 g, r
  d'2 d4 a e' f e2 a, r
  d2 a4 d c c d2 a1
}

sop = \relative c' {
  e2 g4 a a a g f e2 e r
  f2 e4 d e2 e4( fis) g2 r
  g2 e4 e d d cis2 r
  e2 f4 g g2 g f4 g2 fis4 g2 r
  f2 f4 e e c e2 e r
  f2 e4 d e e d2 cis1
}

alt = \relative c' {
  c2 b4 c d c e d b2 cis r
  a2 c4 a c2 c b r
  c2 c4 c a a a2 r
  b2 d4 d e2 d d4 b d2 d r
  d2 a4 a g a b2 cis r
  a2 c4 a c c a2 a1 
}

% modified for soprano setting
altSS = \relative c' {
  e2 e4 c d c e f e2 e r
  a,2 c4 a c2 c b r
  c2 e4 e d d cis2 r
  e2 f4 g g2 g f4 g2 fis4 g2 r
  f2 f4 e e c e2 cis r
  a2 c4 d e e d2 cis1
}

tenSS = \relative c' {
  c2 b4 a a a b d b2 cis r
  f,2 e4 d e2 e4( fis) g2 r
  g2 c4 c a a a2 r
  b2 d4 d e2 d d4 b d2 d r
  d2 a4 a g a b2 a r
  f2 a4 a c c a2 a1 
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
