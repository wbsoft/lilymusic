\version "2.13.10"

\include "def.ly"

psalm = 13

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 d4 d f f g g a2 r
  a2 b4 c a d2 c4 b2 a r
  a2 g4 f e f g a g2 f r
  f2 g4 g a2 c c4 b a2( f) e r
  a2 g4 e g2 f4 d e2 d1
}

bas = \relative c {
  d2 d4 g, d' d c c f2 r
  d2 g4 c, d d2 a4 e'2 a, r
  f'2 c4 d a d c f, c'2 f, r
  d'2 c4 e d2 c c4 g d'1 a2 r
  a2 c4 c g2 d'4 d a2 d1
}

sop = \relative c' {
  d2 f4 g a f f e f2 r
  f2 g4 g f a2 a4 gis2 a r
  f2 e4 d c d e f2 e4 f2 r
  d2 e4 e f2 g g4 g f2( d) cis r
  e2 e4 c d2 d4 d2 cis4 d1
}

alt = \relative c' {
  a2 a4 bes a a c c c2 r
  d2 d4 e d f2 e4 e2 e r
  c2 c4 a a a c c c2 c r
  a2 c4 b d2 e e4 d d2( a) a r
  c2 c4 g bes2 a4 a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 a4 bes d f f e f2 r
  f2 g4 g f a2 a4 gis2 a r
  f2 e4 d c d e f2 e4 f2 r
  d2 e4 e f2 g g4 g f2( d) cis r
  e2 e4 c d2 d4 d2 cis4 d1
}

tenSS = \relative c {
  d2 f4 g a a c c c2 r
  d2 d4 e d f2 e4 e2 e r
  c2 c4 a a a c c c2 c r
  a2 c4 b d2 e e4 d d2( a) a r
  c2 c4 g bes2 a4 a a2 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
