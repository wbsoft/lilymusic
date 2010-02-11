\version "2.13.10"

\include "def.ly"

psalm = 85

keySig = {
  \key d \mixolydian
}

mel = \relative c {
  d2 d4 d e2 g fis4 g b2 a g r
  g2 g4 fis g a b a g2 fis e r
  g2 e4 fis d2 e fis4 a2 g fis4 g2 r
  d2 g4 a b2 a g4 fis e e d2 r
  d2 e4 fis g2 d g4 fis g a b2 r
  b2 d4 c b2 a g4 c b2 a g r
  g2 a b g4 g c b g2 a b r
  b2 a4 a g2 e fis4 g e e d1
}

bas = \relative c {
  d2 g,4 b a2 g d'4 g, g2 d' g, r
  g2 c4 d e d g d e2 b e r
  e2 a,4 d g,2 c b4 a c2 d g, r
  g2 g4 d' g,2 a c4 d a a d2 r
  b2 a4 d g,2 g g4 d' e c b2 r
  g2 g4 c g2 d' e4 a, b2 d g, r
  c2 a g c4 c a b e2 d g, r
  g'2 d4 d e2 a, d4 g, a a d1
}

sop = \relative c' {
  fis2 g4 fis a2 b a4 b2 g fis4 g2 r
  b2 c4 a g fis g fis2 e dis4 e2 r
  b'2 a4 a g2 g b4 c c2 a b r
  b2 b4 a g2 e e4 d d cis d2 r
  fis2 a4 a b2 g b4 a g e dis2 r
  d2 g4 g g2 fis e4 a2 g fis4 g2 r
  e2 e g e4 e a fis e( g2) fis4 g2 r
  g2 fis4 fis e2 cis4 e d d2 cis4 d1
}

alt = \relative c' {
  a2 b4 b c2 d d4 d d2 d b r
  d2 e4 d b d d d b2 b b r
  e2 cis4 d b2 c d4 e e2 d d r
  d2 d4 d d2 c c4 a a a a2 r
  b2 cis4 d d2 b d4 d b a fis2 r
  g2 b4 e d2 d b4 e d2 d b r
  c2 c d c4 c e d b2 d d r
  d2 d4 d b2 a a4 b a a a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 b4 b c2 d d4 d d2 d b r
  d2 e4 d b d d d b2 b b r
  e2 cis4 d b2 c d4 e e2 d d r
  d2 d4 fis g2 e e4 d d cis d2 r
  b2 cis4 d d2 b d4 d b e dis2 r
  d2 g4 g g2 fis e4 a2 g fis4 g2 r
  e2 e g e4 e a fis e( g2) fis4 g2 r
  g2 fis4 fis e2 cis4 e d d2 cis4 d1
}

tenSS = \relative c {
  fis2 g4 fis a2 b a4 b2 g fis4 g2 r
  b2 c4 a g fis g fis2 e dis4 e2 r
  b'2 a4 a g2 g b4 c c2 a b r
  b2 b4 d d2 c c4 a a a a2 r
  fis2 a4 a b2 g b4 a g e fis2 r
  g2 b4 e d2 d b4 e d2 d b r
  c2 c d c4 c e d b2 d d r
  d2 d4 d b2 a a4 b a a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
