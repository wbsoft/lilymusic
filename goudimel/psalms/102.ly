\version "2.13.10"

\include "def.ly"

psalm = 102

keySig = {
  \key e \phrygian
}

mel = \relative c' {
  b2 c b4 a g a f2 e r
  g2 a b4 g a c b2 a r
  a2 c b4 a a gis a2 r
  e2 f g4 a a gis a2 r
  a2 g a4 b c b a2 g r
  a2 g e4 f g e f2 e r
  e2 a g4 g a b c2 b r
  g2 a g4 e g g f2 e1
}

bas = \relative c {
  e2 a, e'4 f c a d2 a r
  e'2 d g4 g d a e'2 a, r
  d2 c e4 f d e a,2 r
  a2 d c4 a d e a,2 r
  a2 e' d4 g f g d2 g, r
  d'2 e a,4 d c c f,2 c' r
  a2 a e'4 e d g f2 g r
  c,2 f, c'4 c g c d2 a1
}

sop = \relative c'' {
  g2 a g4 f e e d2 cis r
  e2 f g4 d f a2 gis4 a2 r
  f2 g g4 f f e e2 r
  c2 d e4 e f e e2 r
  e2 e f4 g a g2 fis4 g2 r
  f2 e c4 d e g a2 g r
  a2 c b4 e, f g a2 g r
  e2 f e4 c d e d2 cis1
}

alt = \relative c' {
  e2 e e4 c c c a2 a r
  b2 d d4 b d e e2 e r
  d2 e e4 c d b cis2 r
  a2 a c4 c d b cis2 r
  c2 b d4 d f d d2 d r
  d2 b a4 a c c c2 c r
  c2 e e4 b d d f2 d r
  c2 c c4 g b c a2 a1
}

% modified for soprano setting
altSS = \relative c'' {
  g2 a g4 f e e d2 cis r
  e2 f g4 d f a2 gis4 a2 r
  f2 g g4 f f e e2 r
  c2 d e4 e f e e2 r
  e2 e f4 g c, g'2 fis4 g2 r
  f2 e c4 d e c c2 c r
  c2 e e4 b d d f2 d r
  c2 c c4 c d e d2 cis1
}

tenSS = \relative c' {
  e2 e e4 c c c a2 a r
  b2 d d4 b d e e2 e r
  d2 e e4 c d b cis2 r
  a2 a c4 c d b cis2 r
  c2 b d4 d a d d2 d r
  d2 b a4 a c g a2 g r
  a2 c b4 e, f g a2 g r
  e2 f e4 g b c a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
