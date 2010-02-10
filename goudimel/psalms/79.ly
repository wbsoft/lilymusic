\version "2.13.10"

\include "def.ly"

psalm = 79

keySig = {
  \key g \major
}

mel = \relative c {
  d2 g a b b b4 b a c b2 a r
  d,2 g4 a b2 c b4 a b c d2 b4 \breathe
  b4 a a g2 g g4 fis g fis e2 d r
  g2 g4 fis g2 d e4 g a b a2 g r
  \repeat unfold 2 { d2 g4 fis g2 a b r }
  b2 b4 b a c b2 a r
  d2 c4 b a2 c b r
  b2 a4 g fis e d2 r
  d2 e4 g a b a2 g1
}

bas = \relative c {
  d2 c a g g g4 g d' a e'2 a, r
  d2 c4 a g2 c g4 d' g e d2 g,4 \breathe
  g4 d' d g,2 g g4 d' c d a2 d r
  g,2 c4 d g,2 g c4 e d g, d'2 g, r
  \repeat unfold 2 { g2 g4 d' e2 d g, r }
  g'2 e4 g d c g'2 d r
  g,2 c4 g d'2 c g r
  g2 d'4 e b c g2 r
  g2 c4 g d' g d2 g,1
}

sop = \relative c' {
  d2 e e g g g4 g fis a gis2 a r
  fis2 e4 e g2 g g4 fis g g fis2 d4 \breathe
  g4 g fis g2 d d4 d e d2 cis4 d2 r
  d2 e4 d d2 g g4 e fis g2 fis4 g2 r
  \repeat unfold 2 { g2 b4 a2 g fis4 g2 r }
  g2 g4 g fis g g2 fis r
  g2 g4 g fis2 g g r
  d'2 d4 b b g g2 r
  b2 c4 b a g2 fis4 g1
}

alt = \relative c' {
  a2 c c d d d4 d d e e2 cis r
  a2 c4 c d2 e d4 d d c a2 g4 \breathe
  d'4 d d b2 b b4 a c a a2 a r
  b2 c4 a b2 b c4 b d d d2 d r
  \repeat unfold 2 { d2 d4 d b2 d d r }
  d2 e4 d d e d2 d r
  b2 e4 d d2 e d r
  g2 fis4 e d c b2 r
  d2 c4 d d d d2 d1
}

% modified for soprano setting
altSS = \relative c' {
  a2 c c d d d4 d d e e2 cis r
  a2 c4 c d2 e d4 d d g fis2 d4 \breathe
  d4 d d b2 d d4 d e d2 cis4 d2 r
  d2 e4 d d2 b c4 b d d d2 d r
  \repeat unfold 2 { d2 d4 d b2 d d r }
  d2 e4 d d e d2 d r
  g2 g4 g fis2 g g r
  g2 fis4 e d c b2 r
  d2 c4 d d d d2 d1
}

tenSS = \relative c {
  d2 e e g g g4 g fis a gis2 a r
  fis2 e4 e g2 g g4 fis g g  a2 g4 \breathe
  g4 g fis g2 b b4 a c a a2 a r
  b2 c4 a b2 g g4 g fis g2 fis4 g2 r
  \repeat unfold 2 { g2 b4 a2 g fis4 g2 r }
  g2 g4 g fis g g2 fis r
  b2 e4 d d2 e d r
  d2 d4 b b g g2 r
  b2 c4 b a g2 fis4 g1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
