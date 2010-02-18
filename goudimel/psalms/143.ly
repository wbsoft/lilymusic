\version "2.13.10"

\include "def.ly"

psalm = 143

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 a' a g4 a b c b2 a r
  d2 d4 d c b a c b2 a r
  d,2 a'4 a g a c2 b a r
  d2 d4 d c b a c b2 a r
  c2 b4 a g f g2 e d1
}

bas = \relative c {
  d2 d a e'4 f e a, e'2 a, r
  d2 d4 g, a e' a f g2 d r
  d2 d4 f e a, a2 e' a, r
  d2 d4 g, a e' a f g2 d r
  c2 e4 f c d g,2 a d1
}

sop = \relative c'' {
  a2 d c b4 a g a2 gis4 a2 r
  a2 a4 bes a g c a g2 fis r
  f2 f4 a b c2 a gis4 a2 r
  a2 a4 bes a g c a g2 fis r
  g2 g4 f e d e( d2) cis4 d1
}

alt = \relative c' {
  d2 f e e4 c e e e2 e r
  fis2 fis4 g e e e f d2 d r
  a2 d4 c e e e2 e e r
  fis2 fis4 g e e e f d2 d r
  e2 e4 c c a bes2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 f e e4 c e e e2 e r
  fis2 fis4 g e e e f d2 d r
  a2 d4 c e e e2 e e r
  fis2 fis4 g e e e f d2 d r
  e2 e4 c e d e( d2) cis4 d1
}

tenSS = \relative c' {
  a2 d c b4 a g a2 gis4 a2 r
  a2 a4 bes a g c a g2 fis r
  f2 f4 a b c2 a gis4 a2 r
  a2 a4 bes a g c a g2 fis r
  g2 g4 a c a bes2 a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
\score { \sopranoSetting \midi {} \layout {} }
