\version "2.13.10"

\include "def.ly"

psalm = 66

keySig = {
  \key g \major
}

mel = \relative c' {
  g2 e4 d g g a c b2 a r
  d2 b4 b g c b2 a g r
  g2 e4 d g g a c b2 a r
  d2 c4 b a g g fis g2 r
  d'2 d4 c b2 a g4 fis e2 d r
  d2 g4 g fis e g2 a b r
  g2 g4 a b g c c b2 a r
  d2 c4 b a g g fis g1
}

bas = \relative c {
  g2 a4 b e e d a e'2 a, r
  g2 g4 g c a b2 d g, r
  g2 a4 b e e d a e'2 a, r
  g2 c4 g d' e d d g,2 r
  g'2 g4 c, g'2 d4 a( c) d a2 d r
  g,2 g4 g d' a e'2 d g, r
  g'2 e4 d g c, a c g2 d' r
  g,2 c4 g d' e d d g,1
}

sop = \relative c'' {
  b2 a4 fis e e fis a2 gis4 a2 r
  b2 g4 g e a2 g fis4 g2 r
  b2 a4 fis e e fis a2 gis4 a2 r
  b2 g4 g fis g a a b2 r
  g2 g4 g g2 fis4 e2 d cis4 d2 r
  g2 b4 b a a2 g fis4 g2 r
  d2 e4 fis g e a g g2 fis r
  g2 e4 g fis g a a g1
}

alt = \relative c' {
  d2 c4 b b b d e e2 e r
  g2 d4 d c e d2 d b r
  d2 c4 b b b d e e2 e r
  g2 e4 d d b d d d2 r
  b2 b4 e d2 d4 c2 a4 a2 a r
  b2 d4 d d c b2 d d r
  b2 b4 d d c e e d2 d r
  b2 c4 d d b d d b1
}

% modified for soprano setting
altSS = \relative c' {
  d2 c4 b b b d e e2 e r
  g2 d4 d c e d2 d b r
  d2 c4 b b b d e e2 e r
  g2 e4 d d b d d d2 r
  g2 g4 g g2 fis4 e2 d cis4 d2 r
  b2 d4 d d c b2 d d r
  d2 e4 fis g e a g g2 fis r
  g2 e4 d d b d d b1
}

tenSS = \relative c' {
  b2 a4 fis e e fis a2 gis4 a2 r
  b2 g4 g e a2 g fis4 g2 r
  b2 a4 fis e e fis a2 gis4 a2 r
  b2 g4 g fis g a a b2 r
  b2 b4 e d2 d4 c2 a4 a2 a r
  g2 b4 b a a2 g fis4 g2 r
  b2 b4 d d c e e d2 d r
  b2 g4 g fis g a a g1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
\score { \tenorSetting }