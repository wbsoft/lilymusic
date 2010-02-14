\version "2.13.10"

\include "def.ly"

psalm = 101

keySig = {
  \key g \major
}

mel = \relative c {
  d2 g b a4 a b d c b a2 g r
  g2 fis4 e d d g g a b c2 b r
  b2 d4 c b2 a g4 fis g a b2 r
  c2 b a g1
}

bas = \relative c {
  d2 c g d'4 d g g c, g d'2 g, r
  g2 b4 c g d' c e d b a2 b r
  g'2 g4 c, g'2 d e4 b e d g2 r
  c,2 g' d g,1
}

sop = \relative c' {
  d2 e g fis4 fis g b g g2 fis4 g2 r
  b2 b4 g g fis e e fis fis a2 fis r
  g2 g4 g g2 fis e4 d e fis g2 r
  g2 g fis g1
}

alt = \relative c' {
  a2 c d d4 d d g e d d2 d r
  d2 d4 c b a c b d d e2 dis r
  d2 b4 e d2 d b4 b b d d2 r
  e2 d d d1
}

% modified for soprano setting
altSS = \relative c' {
  d2 e g fis4 fis g g g g2 fis4 g2 r
  d2 d4 c b a c b d d e2 dis r
  d2 g4 g g2 fis e4 d e fis g2 r
  g2 g fis g1
}

tenSS = \relative c' {
  a2 c d d4 d d b e d d2 d r
  b2 b4 g g fis e e fis fis a2 fis r
  g2 b4 e d2 d b4 b b d d2 r
  e2 d d d1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
