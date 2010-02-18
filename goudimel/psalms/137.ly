\version "2.13.10"

\include "def.ly"

psalm = 137

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 f4 g a2 a a4 g a b c2 a r
  c2 a4 g f2 g g4 a g f e2 d
  r4 d f2 a g f e4 d e e d2 r
  a'2 a4 g f2 a c4 c b b a2 r
  f2 e4 d a'2 c b4 a g a f2 e r
  d2 f4 g a2 g g4 a g f e2 d1
}

bas = \relative c {
  d2 d4 c f2 d d4 e d g, c2 d r
  c2 f4 c d2 c c4 f, c' d a2 d
  r4 d d2 a c d a4 bes a a d2 r
  d2 f4 c d2 d c4 a e' e a,2 r
  d2 c4 b a2 a e'4 f c a d2 a r
  d2 d4 c f2 c c4 f, c' d a2 d1
}

sop = \relative c' {
  d2 d4 e f2 f f4 e f g g2 fis r
  g2 f4 e d2 e e4 f e d2 cis4 d2
  r4 f d2 e e d cis4 d d cis d2 r
  f2 f4 e d2 f g4 a a gis a2 r
  a2 a4 b c2 a g4 f e e d2 cis r
  d2 d4 e f2 e e4 f e d2 cis4 d1
}

alt = \relative c' {
  a2 a4 c c2 d d4 b d d e2 d r
  e2 c4 c a2 c c4 c c a a2 a
  r4 a a2 c c a a4 f a a a2 r
  d2 c4 c a2 d e4 e e e cis2 r
  a2 c4 d e2 e e4 c c c a2 a r
  a2 a4 c c2 c c4 c c a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d4 e f2 f f4 e f g g2 fis r
  g2 f4 e d2 e e4 f e d2 cis4 d2
  r4 d d2 e e d cis4 d d cis d2 r
  f2 f4 e d2 f g4 a a gis a2 r
  d,2 a4 d e2 a g4 f e e d2 cis r
  d2 d4 e f2 e e4 f e d2 cis4 d1
}

tenSS = \relative c' {
  a2 a4 c c2 d d4 b d d e2 d r
  e2 c4 c a2 c c4 c c a a2 a
  r4 a a2 c c a a4 f a a a2 r
  d2 c4 c a2 d e4 e e e cis2 r
  a2 e4 g c2 e e4 c c c a2 a r
  a2 a4 c c2 c c4 c c a a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
