\version "2.13.10"

\include "def.ly"

psalm = 129

keySig = {
  \key a \dorian
}

mel = \relative c' {
  a2 a4 g fis2 e g4 b2 a gis4 a2 r
  b2 d4 c b2 a b4 c a b a2 g r
  a2 a4 g a2 b d4 a b2 c b r
  b2 b4 a g2 e g4 a b a2 gis4 a1
}

bas = \relative c {
  a2 a4 c d2 e e4 e d2 e a, r
  g2 g4 c g2 d' g4 c, d g, d'2 e r
  a,2 a4 e' d2 g d4 a' g2 c, g' r
  e2 g4 a e2 a, e'4 d g a e2 a,1
}

sop = \relative c'' {
  c2 c4 c a2 g e4 e f2 e e r
  g2 g4 g g2 fis g4 g fis g fis2 e r
  e2 e4 e fis2 g a4 e g2 g g r
  g2 g4 e e2 cis e4 fis g e e2 e1
}

alt = \relative c' {
  e2 e4 e d2 b b4 g d'2 b a r
  d2 b4 e d2 d d4 e d d d2 b r
  a2 c4 b d2 d f4 c d2 e d r
  e2 d4 c b2 a b4 d d c b2 a1
}

% modified for soprano setting
altSS = \relative c' {
  e2 e4 e d2 b e4 e f2 e e r
  g2 g4 g g2 fis g4 g fis g fis2 e r
  e2 e4 e fis2 d f4 e g2 g g r
  g2 g4 e e2 cis e4 fis g e e2 e1
}

tenSS = \relative c' {
  c2 c4 c a2 g b4 g d'2 b a r
  d2 b4 e d2 d d4 e d d d2 b r
  a2 c4 b d2 b a4 c d2 e d r
  e2 d4 c b2 a b4 d d c b2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
