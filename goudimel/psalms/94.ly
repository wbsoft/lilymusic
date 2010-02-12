\version "2.13.10"

\include "def.ly"

psalm = 94

keySig = {
  \key e \phrygian
}

mel = \relative c {
  e2 a4 a g2 c a4 b c2 b r
  b2 c4 a b g a c b2 a r
  b2 c4 g a2 g f4 f e2 r
  e2 e4 d e g g fis g2 r
  a2 g4 e f a a gis a2 r
  e2 e4 a g2 e f4 f e1
}

bas = \relative c {
  a2 a4 a e'2 a, a4 gis a2 e' r
  e2 c4 f e e d a e'2 a, r
  e'2 c4 c a2 c d4 d a2 r
  a2 c4 g c e d d g,2 r
  f2 c'4 c d d e e a,2 r
  a2 c4 f, g2 a d4 d a1
}

sop = \relative c'' {
  a2 c4 c b2 a c4 b a2 gis r
  g2 g4 a g e f a2 gis4 a2 r
  g2 g4 e e2 e d4 d cis2 r
  c c4 b c c d d d2 r
  f2 e4 g d f e e e2 r
  a2 g4 f d2 c d4 d cis1
}

alt = \relative c' {
  c2 e4 e e2 e e4 e e2 e r
  e2 e4 c e b d e e2 e r
  e2 e4 c c2 c a4 a a2 r
  a2 g4 g g g a a b2 r
  c2 c4 c a d c b cis2 r
  c2 c4 c b2 a a4 a a1
}

% modified for soprano setting
altSS = \relative c' {
  c2 e4 e e2 e e4 e e2 e r
  e2 e4 c e b d e e2 e r
  e2 e4 e e2 e d4 d cis2 r
  c c4 b c c d d d2 r
  f2 e4 e d f e e e2 r
  c2 c4 c b2 c d4 d cis1
}

tenSS = \relative c' {
  a2 c4 c b2 a c4 b a2 gis r
  g2 g4 a g e f a2 gis4 a2 r
  g2 g4 c c2 c a4 a a2 r
  a2 g4 g g g a a b2 r
  c2 c4 c a d c b cis2 r
  a2 g4 f d2 a' a4 a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
