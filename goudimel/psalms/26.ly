\version "2.13.10"

\include "def.ly"

psalm = 26

keySig = {
  \key e \phrygian
}

mel = \relative c {
  e2 a g f4 f e2 r
  a2 g4 e f g a2 r
  c2 b4 a g2 e f4 d e2 r
  g2 a4 b c b a2 g r
  c2 b4 d a c b2 a r
  a2 c b a4 g f f e1
}

bas = \relative c {
  a2 f c' d4 d a2 r
  a2 c4 c d b a2 r
  a2 e'4 f e2 a, d4 b a2 r
  e'2 d4 g f g d2 g r
  f2 g4 d f f g2 d r
  d2 c g a4 c d d a1
}

sop = \relative c' {
  c2 f e d4 d c2 r
  e2 e4 g f d c2 r
  a'2 g4 a b2 a a4 gis a2 r
  g2 f4 g a g2 fis4 g2 r
  a2 g4 a f a g2 fis r
  f2 g g f4 e d d cis1
}

alt = \relative c' {
  a2 c c a4 a a2 r
  c2 c4 c a g e2 r
  e'2 e4 c e2 c d4 d cis2 r
  b2 d4 d f d d2 d r
  f2 d4 f c f d2 d r
  d2 e d c4 c a a a1
}

% modified for soprano setting
altSS = \relative c' {
  c2 f e d4 d c2 r
  c2 c4 c a d c2 r
  e2 e4 c e2 c d4 d cis2 r
  b2 d4 d f d d2 d r
  f2 d4 f c f d2 d r
  d2 e d f4 e d d cis1
}

tenSS = \relative c' {
  a2 c c a4 a a2 r
  e2 e4 g f d e2 r
  a2 g4 a b2 a a4 gis a2 r
  g2 f4 g a g2 fis4 g2 r
  a2 g4 a f a g2 fis r
  f2 g g c4 c a a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
