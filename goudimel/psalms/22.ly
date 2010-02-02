\version "2.13.10"

\include "def.ly"

psalm = 22

keySig = {
  \key e \minor
}

sop = \relative c' {
  e2 g c b4 e, g g g2 fis e r
  fis e4 fis g2 g fis4 e cis2 e dis r
  e2 fis4 g g g g g fis2 fis e r
  g2 fis4 e dis2 e r
  g fis4 g e2 g b4 a g g g2 fis r
  fis g4 g g2 d e4 fis g fis e2 d r
  d c4 d e e fis g g g fis2 e r
  g fis4( e2) dis4 e1
}

alt = \relative c' {
  c2 c e e4 b e e d2 d b r
  b b4 d d2 d d4 b a2 g b r 
  b d4 d c d e d d2 d b r
  d d4 b b2 b r 
  e dis4 e c2 b d4 d d e d2 d r
  d d4 d g,2 b b4 d d d b2 b r
  a a4 a c b d d e d d2 b r
  d c b b1
}

mel = \relative c' {
  g2 e a g4 g c c b2 a g r
  d g4 a b2 b a4 g e2 e fis r
  g a4 b e, b' c b a2 a g r
  b a4 g fis2 e r
  b' b4 b a2 d, g4 a b c b2 a r
  b b4 b e,2 fis g4 a b a g2 fis r
  d e4 fis g g a b c b a2 g r
  b a fis e1
}

bas = \relative c {
  c2 c a e'4 e c c g'2 d e r
  b e4 d g2 g, d'4 e a,2 c b r
  e d4 g c, g' c, g d'2 d e r
  g, d'4 e b2 e r
  e b4 e a,2 g g4 d' g c, g'2 d r
  b g4 g c2 b e4 d g d e2 b r
  d a4 d c e d g c, g d'2 e r
  g, a b e1
}


% modified for soprano setting:
altSS = \relative c' {
  c2 c e e4 b e e d2 d b r
  b b4 d d2 d d4 b cis2 e dis r
  b d4 d c d e d d2 d b r
  d d4 b b2 b r 
  e dis4 e c2 b d4 d d e d2 d r
  d d4 d c2 d e4 fis g fis e2 d r
  d c4 d e e fis g g g fis2 e r
  g fis4( e2) dis4 e1
}

tenSS = \relative c {
  e2 g c b4 e, g g g2 fis e r
  fis e4 fis g2 g fis4 e a2 g b r 
  e,2 fis4 g g g g g fis2 fis e r
  g2 fis4 e dis2 e r
  g fis4 g e2 g b4 a g g g2 fis r
  fis g4 g g2 b b4 d d d b2 b r
  a a4 a c b d d e d d2 b r
  d c b b1
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks

