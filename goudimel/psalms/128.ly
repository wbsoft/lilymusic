\version "2.13.10"

\include "def.ly"

psalm = 128

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 a'4 a a g f2 e4 \breathe
  e4 f a a gis a2 r
  a2 d4 d c b a2 a4 \breathe
  g4 f d f e d2 r
  d2 f4 e f g a2 g r
  a2 c4 b a gis a2 r
  d2 c4 b a g f2 e r
  d2 g4 f e e d1
}

bas = \relative c {
  d2 d4 d f c d2 a4 \breathe
  a4 d f e e a,2 r
  d2 d4 d e e f2 f4 \breathe
  c4 d g, a a d2 r
  d2 d4 a d c f2 c r
  a2 a4 g a e' a,2 r
  d2 a4 e' f c d2 a r
  d2 c4 d a a d1
}

sop = \relative c' {
  d2 f4 f f e d2 c4 \breathe
  c4 d d e e e2 r
  f2 a4 a a g f2 f4 \breathe
  e4 d d d cis d2 r
  d2 d4 cis d e f2 e r
  e2 e4 g e e e2 r
  a2 a4 g f e d2 cis r
  f2 e4 d d cis d1
}

alt = \relative c' {
  a2 d4 d c c a2 a4 \breathe
  a4 a a b b cis2 r
  d2 f4 f e e c2 c4 \breathe
  c4 a bes a a a2 r
  a2 a4 a a c c2 c r
  c2 a4 d c b a2 r
  f'2 e4 e c c a2 a r
  a2 c4 a a a a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 f4 f f e d2 c4 \breathe
  c4 d d e e e2 r
  d2 f4 f e e c2 c4 \breathe
  e4 d d d cis d2 r
  d2 d4 cis d e f2 e r
  e2 e4 g e e e2 r
  f2 e4 e c e d2 cis r
  d2 e4 d d cis d1
}

tenSS = \relative c' {
  a2 d4 d c c a2 a4 \breathe
  a4 a a b b cis2 r
  f,2 a4 a a g a2 a4 \breathe
  c4 a bes a a a2 r
  a2 a4 a a c c2 c r
  c2 a4 d c b a2 r
  a2 a4 g a c a2 a r
  a2 c4 a a a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
