\version "2.13.10"

\include "def.ly"

psalm = 51

keySig = {
  \key e \phrygian
}

mel = \relative c {
  e2 g4 g a2 e g4 g d2 f e r
  e e4 d c2 e e4 f g a gis2 a r
  a2 f4 f e2 c d4 e f e d2 c r
  e2 g4 a b2 g a4 c b b a2 r
  a2 a4 a g2 e a4 a g2 f e r
  a a4 b c2 a g4 e f g a2 e r
  e2 f4 d e2 c d4 e f2 d e r
  a g4 g a2 c c4 b a g f2 e1
}

bas = \relative c {
  e2 e4 e a,2 a g4 g g2 f c' r
  a2 c4 g a2 a a4 d c a e'2 a, r
  d2 d4 d a2 a g4 c f, c' g2 c r
  c2 c4 a g2 c a4 a e' e a,2 r
  a2 d4 d e2 a, f4 f c'2 d a r
  a2 d4 g, c2 f, c'4 c d b a2 a r
  a2 f4 bes a2 a g4 c f,2 g c r
  a2 e'4 e d2 c c4 g a c d2 a1
}

sop = \relative c' {
  e2 e4 e e2 c d4 d b2 c c r
  c2 c4 b c2 c c4 d e e e2 e r
  d2 d4 d c2 e g4 g a g g2 g r
  g2 e4 f g2 e e4 a a gis a2 r
  e2 f4 f e2 c f4 f e2 d cis r
  e2 f4 g g2 f e4 g f d cis2 cis r
  c2 c4 d c2 e g4 g a2 g g r
  e2 e4 e f2 g g4 g f e d2 cis1
}

alt = \relative c' {
  b2 b4 b c2 a b4 b g2 a g r
  a g4 g e2 a a4 a c c b2 a r
  f a4 a a2 a b4 c c c2 b4 c2 r
  g c4 c d2 c c4 e e e e2 r
  cis d4 d b2 a c4 c c2 a a r
  c d4 d e2 c c4 c a g e2 a r
  a a4 f a2 a b4 c a( c2) b4 c2 r
  c b4 b d2 e e4 d c c a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  e2 e4 e e2 c d4 d b2 c c r
  c2 c4 b c2 c c4 d e e e2 e r
  d2 d4 d c2 a b4 c c c2 b4 c2 r
  c2 e4 f g2 e e4 e e e e2 r
  e2 f4 f e2 c f4 f e2 d cis r
  e2 f4 g g2 f e4 e d d cis2 cis r
  c2 c4 d c2 a b4 c a( c2) b4 c2 r
  e2 e4 e f2 g g4 g f e d2 cis1
}

tenSS = \relative c' {
  b2 b4 b c2 a b4 b g2 a g r
  a g4 g e2 a a4 a c c b2 a r
  f a4 a a2 e g4 g a g g2 g r
  g c4 c d2 c c4 a a gis a2 r
  cis d4 d b2 a c4 c c2 a a r
  c d4 d e2 c c4 c a g e2 a r
  a a4 f a2 e g4 g a2 g g r
  c b4 b d2 e e4 d c c a2 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
