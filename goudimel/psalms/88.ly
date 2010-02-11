\version "2.13.10"

\include "def.ly"

psalm = 88

keySig = {
  \key d \dorian
}

mel = \relative c' {
  a2 f4 g a d c2 b a r
  d2 c4 c d c a c b2 a r
  a2 c4 b a2 g a4 bes g2 f r
  f2 g4 a d, e f2 e d r
  d2 f4 g a2 d a4 c b2 a r
  a2 bes4 g a2 f g4 f e2 d1
}

bas = \relative c {
  a2 d4 c f d e2 e a, r
  d2 a'4 a g c, f f g2 d r
  d2 c4 g a2 e' d4 bes c2 f, r
  d'2 g,4 d' d cis d2 a d r
  d2 d4 c f2 d d4 a e'2 a, r
  d2 g,4 g d'2 d c4 d a2 d1
}

sop = \relative c'' {
  a2 a4 c c b2 a gis4 a2 r
  a2 a4 a bes g f a g2 fis r
  f2 g4 g e2 e f4 f2 e4 f2 r
  d2 d4 d f e2 d cis4 d2 r
  f2 d4 e f2 a f4 a2 gis4 a2 r
  f2 g4 g f2 d e4 d2 cis4 d1
}

alt = \relative c' {
  e2 d4 e f f e2 e e r
  f2 e4 e g e c f d2 d r
  d2 e4 d c2 b d4 d c2 c r
  a2 bes4 f a a a2 a a r
  a2 a4 c c2 f d4 e e2 e r
  d2 d4 d d2 a c4 a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  e2 d4 e f f e2 e e r
  f2 e4 e g e c f d2 d r
  d2 e4 d c2 b d4 d c2 c r
  d2 d4 d a e'2 d cis4 d2 r
  a2 a4 c c2 f d4 e e2 e r
  d2 d4 d d2 d e4 d2 cis4 d1
}

tenSS = \relative c' {
  a2 a4 c c b2 a gis4 a2 r
  a2 a4 a bes g f a g2 fis r
  f2 g4 g e2 e f4 f2 e4 f2 r
  a2 bes4 f f a a2 a a r
  f2 d4 e f2 a f4 a2 gis4 a2 r
  f2 g4 g f2 a c4 a a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
