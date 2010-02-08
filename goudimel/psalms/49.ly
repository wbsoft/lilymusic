\version "2.13.10"

\include "def.ly"

psalm = 49

keySig = {
  \key g \major
}

mel = \relative c' {
  g2 g a b4 b c b a2 a g r
  d'2 d4 c b2 d c4 b b a b2 r
  b2 b4 b a2 b c4 b a g fis2 r
  g2 e4 a g2 b a4 g g fis g2 r
  d2 e4 fis g2 b d4 d c c b2 r
  d2 g,4 a b2 d c4 b b a b2 r
  g2 g4 a b2 c b4 a g fis e2 d r
  d' c4 b a2 d c4 b a g a2 g1
}

bas = \relative c' {
  g2 e d g4 g c, g a2 d g, r
  g'2 g4 c, g'2 g, a4 b g c b2 r
  g2 g4 g d'2 g, c4 g d' e d2 r
  g,2 c4 a e'2 b c4 c d d g,2 r
  d'2 a4 d g,2 g' g4 g c, c g'2 r
  g2 e4 d g2 g, a4 b g c b2 r
  e2 e4 d g2 c, g4 a c d a2 d r
  g,2 c4 g d'2 b c4 g d' e d2 g,1
}

sop = \relative c' {
  d2 e fis g4 g g g e2 fis g r
  b2 b4 g g2 b a4 fis g a fis2 r
  g2 g4 g fis2 g g4 g fis g a2 r
  b2 g4 c b2 d c4 c b a b2 r
  a2 a4 a b2 g g4 g g g g2 r
  g2 g4 fis g2 b a4 fis g a fis2 r
  e2 e4 fis g2 g g4 e e d2 cis4 d2 r
  g2 g4 g fis2 g e4 g fis g2 fis4 g1
}

alt = \relative c' {
  b2 b d d4 d e d2 cis4 d2 d r
  g2 g4 e d2 g e4 d d e dis2 r
  d2 d4 d d2 d e4 d d b d2  r
  d2 c4 e e2 d e4 e d d d2 r
  d2 cis4 d d2 d b4 b e e d2 r
  b2 b4 d d2 g e4 d d e dis2 r
  b2 b4 d d2 e d4 c c a a2 a r
  b2 e4 d d2 d g,4 d' d b d2 d1
}

% modified for soprano setting
altSS = \relative c' {
  d2 e fis g4 g g g e2 fis g r
  g2 g4 e d2 g e4 d d e dis2 r
  d2 d4 d d2 d e4 d d b d2  r
  d2 c4 e e2 d e4 e d d d2 r
  d2 cis4 d d2 d g4 g g g g2 r
  g2 g4 fis g2 g e4 d d e dis2 r
  e2 e4 fis g2 g g4 e e d2 cis4 d2 r
  g2 g4 g fis2 g e4 g fis g2 fis4 g1
}

tenSS = \relative c' {
  b2 b d d4 d e d2 cis4 d2 d r
  b2 b4 g g2 b a4 fis g a fis2 r
  g2 g4 g fis2 g g4 g fis g a2 r
  b2 g4 c b2 d c4 c b a b2 r
  a2 a4 a b2 g b4 b e e d2 r
  b2 b4 d d2 b a4 fis g a fis2 r
  b2 b4 d d2 e d4 c c a a2 a r
  b2 e4 d d2 d g,4 d' d b d2 d1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
