\version "2.13.10"

\include "def.ly"

psalm = 39

keySig = {
  \key a \aeolian
}

mel = \relative c {
  e2 e4 f g2 a g4 c c b c2 r
  c2 c4 c b a2 g fis4 g2 r
  g2 a4 a b2 g c4 b a a g2 r
  e2 g4 a c b2 a gis4 a2 r
  e2 f4 f e2 d g4 g a2 b c r
  c2 b4 a d2 c b4 b a1
}

bas = \relative c {
  c2 a4 d c2 f e4 c g' g c,2 r
  c2 a4 c g d' c2 d g, r
  c2 a4 d g,2 c c4 g d' d e2 r
  c2 c4 a a g a2 e' a, r
  a2 d4 d a2 d c4 e d2 g f r
  a2 e4 a g2 a e4 e a,1
}

sop = \relative c' {
  c2 c4 d e2 f g4 g g g g2 r
  e2 e4 e d d e2 d d r
  e2 e4 f g2 e g4 g f f e2 r
  g2 e4 e e e e2 e e r
  cis2 d4 d cis2 d e4 e f2 g a r
  a2 g4 c b2 a4 a2 gis4 a1
}

alt = \relative c' {
  g2 a4 a c2 c c4 e d d e2 r
  g,2 a4 g g f c'2 a b r
  c2 c4 d d2 c e4 d d d b2 r
  c2 c4 c a b c2 b a r
  a2 a4 a a2 a c4 b d2 d f r
  e2 e4 e g2 e e4 e e1
}

% modified for soprano setting
altSS = \relative c' {
  c2 c4 d e2 f g4 g g g g2 r
  e2 e4 e d d e2 d d r
  e2 e4 f g2 e g4 g f f e2 r
  g2 e4 e e e e2 e e r
  cis2 d4 d cis2 a c4 b d2 d f r
  e2 e4 e g2 e e4 e e1
}

tenSS = \relative c' {
  g2 a4 a c2 c c4 e d d e2 r
  g,2 a4 g g f c'2 a b r
  c2 c4 d d2 c e4 d d d b2 r
  c2 c4 c a b c2 b a r
  a2 a4 a a2 f e4 e f2 g a r
  a2 g4 c b2 a4 a2 gis4 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
