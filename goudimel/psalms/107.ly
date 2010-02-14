\version "2.13.10"

\include "def.ly"

psalm = 107

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 d a' d4 d c2 a r
  a2 bes4 a f2 g f r
  d2 d a' d4 d c2 a r
  f2 g4 a f2 e d r
  d'2 a4 b c2 b a r
  d2 e4 d a c b2 a r
  a2 c4 b a2 g f r
  f2 g4 a g f e2 d1
}

bas = \relative c {
  d2 d d d4 g, a2 d r
  d2 g,4 a d2 c f, r
  d'2 d d d4 g, a2 d r
  d2 c4 a d2 a d r
  d2 d4 g, c2 e a, r
  d2 c4 d d a e'2 a, r
  d2 c4 g a2 c f, r
  d'2 c4 f, c' d a2 d1
}

sop = \relative c' {
  d2 f f a4 bes a2 fis r
  f2 g4 e d( f2) e4 f2 r
  d2 f f a4 bes a2 fis r
  d2 e4 e2 d cis4 d2 r
  a'2 f4 g2 a gis4 a2 r
  f2 g4 f f a2 gis4 a2 r
  f2 g4 g e( f2) e4 f2 r
  d2 e4 f e d2 cis4 d1
}

alt = \relative c' {
  a2 a d f4 g e2 d r
  d2 d4 c a2 c c r
  a2 a d f4 g e2 d r
  a2 c4 c a2 a a r
  a2 d4 d e2 e cis r
  a2 c4 a d e e2 cis r
  d2 e4 d c2 c c r
  a2 c4 c c a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 a d f4 g e2 d r
  d2 d4 c a2 c c r
  a2 a d f4 g e2 d r
  d2 e4 e2 d cis4 d2 r
  d2 f4 g2 a gis4 a2 r
  f2 g4 f f a2 gis4 a2 r
  f2 g4 g e( f2) e4 f2 r
  d2 e4 f e d2 cis4 d1
}

tenSS = \relative c {
  d2 f f a4 bes a2 fis r
  f2 g4 e d( f2) e4 f2 r
  d2 f f a4 bes a2 fis r
  a2 c4 c a2 a a r
  a2 d4 d e2 e cis r
  a2 c4 a d e e2 cis r
  d2 e4 d c2 c c r
  a2 c4 c c a a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
