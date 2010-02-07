\version "2.13.10"

\include "def.ly"

psalm = 45

keySig = {
  \key d \dorian
}

mel = \relative c {
  f2 g4 g a2 a bes4 a g f e2 d r
  a'2 f4 g a2 c c4 c b a gis2 a r
  d2 c4 b a2 d e4 c d2 b a r
  f2 g4 a bes a g f g2 e d2 r
  d2 f4 g a2 d c4 b a g f2 e r
  a2 g4 g f d f g a bes g2 f r
  d2 a'4 a g f e d f2 g a r
  d2 c4 b a2 g f4 g f2 e d1
}

bas = \relative c {
  d2 c4 c f2 f bes,4 f c' d a2 d r
  a2 d4 b a2 a a4 c g a e'2 a, r
  d2 f4 g d2 d c4 f d2 e a, r
  d2 c4 f bes, f c' d g,2 a d r
  d2 d4 g, d'2 d a4 e' f c d2 a r
  a2 c4 c d d d c f bes, c2 f, r
  d'2 d4 f c d a d d2 b a r
  d2 a4 e' a,2 c d4 c d2 a d1
}

sop = \relative c' {
  d2 e4 e f2 f f4 f e d2 cis4 d2 r
  a'2 a4 g e2 a a4 g g e e2 e r
  a2 a4 g f2 f g4 a f2 e e r
  d2 e4 f f f e d e( d2) cis4 d2 r
  a'2 a4 g f2 a a4 g f e d2 cis r
  e2 e4 e d f d e f f2 e4 f2 r
  f2 f4 f e d cis d a'2 g e r
  f2 e4 e e2 e d4 e2 d cis4 d1
}

alt = \relative c' {
  a2 c4 c c2 c d4 c c a a2 a r
  e'2 d4 d c2 e e4 e d c b2 cis r
  f2 f4 d d2 a c4 a bes( a2) gis4 a2 r
  a2 c4 c d c c a bes2 a a r
  d2 d4 d d2 f e4 e c c a2 a r
  c2 c4 c a a a c c d c2 c r
  a2 d4 c c a a a d2 d c r
  a2 a4 gis c2 c a4 c a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 e4 e f2 f f4 f e d2 cis4 d2 r
  e2 d4 d c2 e e4 e g e e2 e r
  f2 f4 d d2 f g4 f f2 e e r
  d2 e4 f f f e d e( d2) cis4 d2 r
  d2 d4 d d2 f e4 e c e d2 cis r
  e2 e4 e d d d e f f2 e4 f2 r
  d2 f4 f e d cis d d2 d e r
  f2 e4 e e2 e d4 e2 d cis4 d1
}

tenSS = \relative c' {
  a2 c4 c c2 c d4 c c a a2 a r
  a2 a4 g e2 a a4 g d' c b2 cis r
  a2 a4 g f2 a c4 a bes( a2) gis4 a2 r
  a2 c4 c d c c a bes2 a a r
  a2 a4 g f2 a a4 g a c a2 a r
  c2 c4 c a a a c c d c2 c r
  a2 d4 c c a a a d2 d c r
  a2 a4 gis c2 c a4 c a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
