\version "2.13.10"

\include "def.ly"

psalm = 125

keySig = {
  \key d \dorian
}

mel = \relative c' {
  a2 a4 c b2 a g4 f e2 d r
  f2 f4 e4 f2 g a r
  a2 c4 c b2 d a r
  d,2 a' b c4 b a a g2 f r
  a2 a4 a d2 c b4 a2 gis4 a2 r
  f2 g4 f e2 d1
}

bas = \relative c {
  d2 d4 a e'2 f c4 d a2 d r
  d2 d4 a d2 c f, r
  d'2 c4 c e2 d d r
  d2 d g c,4 e f f c2 f, r
  f'2 d4 d d2 a e'4 f e2 a, r
  d2 c4 d a2 d1
}

sop = \relative c' {
  f2 f4 a g2 f e4 d2 cis4 d2 r
  d2 d4 cis d( f2) e4 f2 r
  f2 g4 g g2 a fis r
  f2 f g g4 g f f2 e4 f2 r
  f2 f4 f f2 e e4 c e2 e r
  d2 e4 d2 cis4 d1
}

alt = \relative c' {
  d2 d4 e e2 c c4 a a2 a r
  a2 a4 a a2 c c r
  d2 e4 e e2 f d r
  a2 d d e4 e c c c2 c r
  c2 d4 d a2 a gis4 a b2 cis r
  a2 c4 a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  f2 f4 a g2 f e4 d2 cis4 d2 r
  d2 d4 cis d( f2) e4 f2 r
  d2 e4 e e2 f d r
  d2 f g g4 g f f2 e4 f2 r
  f2 f4 f f2 e e4 c e2 e r
  d2 e4 d2 cis4 d1
}

tenSS = \relative c' {
  d2 d4 e e2 c c4 a a2 a r
  a2 a4 a a2 c c r
  f,2 g4 g g2 a fis r
  a2 d d e4 e c c c2 c r
  c2 d4 d a2 a gis4 a b2 cis r
  a2 c4 a a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
