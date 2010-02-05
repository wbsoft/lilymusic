\version "2.13.10"

\include "def.ly"

psalm = 30

keySig = {
  \key g \mixolydian
}

mel = \relative c' {
  g2 f e d4 d e f g2 r
  c2 c4 a c2 b a4 a g2 r
  g2 e f g4 g a2 c b r
  g2 c4 b c d2 c b4 c2 r
  c2 b a g4 a g f e2 d r
  g2 a b c4 b a g2 fis4 g1
}

bas = \relative c {
  g2 d' c g4 d' a d c2 r
  c2 c4 d c2 g d'4 d g,2 r
  g2 a d e4 e d2 c g r
  c2 c4 g c b c2 g c r
  c2 g d' e4 a, c d a2 d r
  c2 a g c4 g d' e d2 g,1
}

sop = \relative c' {
  d2 f g g4 f e d e2 r
  g2 g4 fis g2 g fis4 fis g2 r
  b2 c a g4 g fis2 g g r
  e2 g4 g g g g2 g e r
  g2 g f e4 e e d2 cis4 d2 r
  e2 e g g4 g fis g a2 g1
}

alt = \relative c' {
  b2 a c b4 a c a c2 r
  e2 e4 d e2 d d4 d d2 r
  d2 c d b4 b d2 e d r
  c2 e4 d e g e2 d c r
  e2 d d b4 c c a a2 a r
  c2 c d e4 d d b d2 d1
}

% modified for soprano setting
altSS = \alt

tenSS = \transpose c' c \sop

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
