\version "2.13.10"

\include "def.ly"

psalm = 59

keySig = {
  \key d \dorian
}

mel = \relative c' {
  d2 a4 a d d c c b2 a r
  a2 b4 d c a c c b2 a r
  f2 g4 bes a f a2 g f r
  a2 f4 f d f g2 e d r
  d2 f4 g a2 c a4 g f2 e r
  a2 f4 g a b c d b2 a r
  a2 d4 d c c d2 b a r
  f2 g4 a d, g f2 e d1
}

bas = \relative c {
  d2 d4 f d g a a e2 a, r
  a'2 g4 g a d, c a e'2 a, r
  d2 c4 g d' d f2 c f r
  a,2 d4 d g, d' g,2 a d r
  d2 d4 e d2 c f4 c d2 a r
  a2 d4 c f e a d, e2 a, r
  d2 d4 d a a d2 e a, r
  d2 c4 a d c d2 a d1
}

sop = \relative c'' {
  a2 f4 f a b c a2 gis4 a2 r
  c2 d4 b a f g a2 gis4 a2 r
  d,2 e4 g f a2 f e4 f2 r
  e2 d4 a' g f e( d2) cis4 d2 r
  a'2 a4 g f2 g f4 e d2 cis r
  c2 d4 e f g a a2 gis4 a2 r
  f2 a4 a a a bes( a2) gis4 a2 r
  d,2 e4 e f e2 d cis4 d1
}

alt = \relative c' {
  f2 d4 c f g e e e2 e r
  e2 g4 g e d e e e2 e r
  a,2 c4 d d d c2 c c r
  c2 a4 a bes a bes2 a a r
  d2 d4 b d2 e c4 c a2 a r
  a2 a4 c c e e f e2 e r
  d2 f4 f e e f2 e e r
  a,2 c4 c a c a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  f2 d4 c f g e e e2 e r
  e2 g4 g e d e e e2 e r
  d2 e4 g f d c( f2) e4 f2 r
  e2 d4 d d d e( d2) cis4 d2 r
  d2 d4 b d2 e c4 e d2 cis r
  c2 d4 e f g e f e2 e r
  d2 f4 f e a bes( a2) gis4 a2 r
  d,2 e4 e \tiny f \normalsize e2 d cis4 d1
}

tenSS = \relative c' {
  a2 f4 f a b c a2 gis4 a2 r
  c2 d4 b a f g a2 gis4 a2 r
  a2 c4 d d a a2 c c r
  c2 a4 a bes a bes2 a a r
  a2 a4 g f2 g a4 c a2 a r
  a2 a4 c c e c a2 gis4 a2 r
  f2 a4 a a e' f2 e e r
  a,2 c4 c a c a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
