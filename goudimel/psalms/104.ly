\version "2.13.10"

\include "def.ly"

psalm = 104

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 d f d c f4 f g g a2
  r4 a c2 c d d c4 a c2 b a r
  d,2 a'4 a g2 c b4 a g2 a f e r
  d2 f a g a g4 f e d e2 d r
  d'2 d4 d c2 g a4 c b b a2 r
  d,2 d4 d a'2 f g4 a f f e2 r
  f2 e4 d a' a c c d c b2 a r
  a2 a4 a d,2 e f4 g f d e2 d1
}

bas = \relative c {
  d2 g, f g a d4 d c c f,2
  r4 f' f2 a g d f4 f c2 e a, r
  d2 d4 f c2 c g4 a e'2 a, d a r
  d2 d a e' a, c4 d a bes a2 d r
  d2 g4 g c,2 c a4 a e' e a,2 r
  d2 d4 b a2 d c4 a d d a2 r
  d2 a4 bes a a' a a d, a e'2 a, r
  d2 a4 a g2 c d4 c d d a2 d1
}

sop = \relative c' {
  f2 g a g e d4 f f e f2
  r4 f a2 a bes a a4 f g( a2) gis4 a2 r
  f2 f4 f e2 g g4 e e2 e d cis r
  f2 d e e e e4 d cis d2 cis4 d2 r
  f2 g4 g e2 e e4 a a gis a2 r
  f2 f4 g e2 d e4 e d d cis2 r
  d2 c4 d e e a a a a g2 e r
  f2 e4 e g2 g f4 e d d2 cis4 d1
}

alt = \relative c' {
  a2 bes c bes a a4 a c c c2
  r4 c f2 e g f f4 c e2 e e r
  a,2 d4 c c2 e d4 c b2 c a a r
  a2 a c b c c4 a a f a2 a r
  a2 b4 b g2 c c4 e e e e2 r
  a,2 a4 d c2 a c4 c a a a2 r
  a2 a4 f c' c e e f e e2 cis r
  d2 c4 c b2 c a4 c a a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 bes c bes a a4 a c c c2
  r4 c f2 e g f f4 c e2 e e r
  a,2 d4 c e2 g g4 e e2 e d cis r
  d2 d e e e e4 d cis d2 cis4 d2 r
  f2 g4 g e2 e e4 e e e e2 r
  a,2 a4 d c2 a c4 c a a cis2 r
  d2 c4 d e e e e f e e2 cis r
  d2 c4 c b2 c a4 c a d2 cis4 d1
}

tenSS = \relative c {
  f2 g a g e d4 f f e f2
  r4 f a2 a bes a a4 f g( a2) gis4 a2 r
  f2 f4 a c2 e d4 c b2 c a a r
  a2 a c b c c4 a a f a2 a r
  a2 b4 b g2 c c4 a a gis a2 r
  f2 f4 g e2 d e4 e d f a2 r
  a2 a4 f c' c a a a a g2 e r
  f2 e4 e g2 g f4 e d f a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
