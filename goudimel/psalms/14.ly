\version "2.13.10"

\include "def.ly"

psalm = 14

keySig = {
  \key d \dorian
}

mel = \relative c' {
  d2 d4 d g,2 a c4 d b b a2 r
  c2 c4 b a2 g f4 a g f e2 d r
  f2 a4 a d, e f g a c b2 a r
  a2 a4 g f2 a bes4 a g g f2 r
  g2 f4 e d1
}

bas = \relative c {
  d2 d4 d c2 f f4 d e e a,2 r
  a'2 a4 e f2 c d4 a c d a2 d r
  d2 a4 a g c d c a a e'2 a, r
  d2 f4 c d2 a g4 a c c f,2 r
  c'2 d4 a d1
}

sop = \relative c' {
  f2 f4 f e2 f a4 a a gis a2 r
  a2 a4 g f2 e d4 e e d2 cis4 d2 r
  d2 e4 e g g f e e a2 gis4 a2 r
  f2 f4 e d2 e g4 f f e f2 r
  e2 d4 cis d1
}

alt = \relative c' {
  a2 a4 b c2 c f4 f e e cis2 r
  e2 e4 e c2 c a4 c c a a2 a r
  a2 c4 c b c a c c e e2 cis r
  d2 c4 c a2 c d4 c c c a2 r
  c2 a4 a a1
}

% modified for soprano setting
altSS = \relative c' {
  f2 f4 f e2 f f4 f e e cis2 r
  a'2 a4 g f2 e d4 e e d2 cis4 d2 r
  a2 c4 c b c a c c e e2 cis r
  f2 f4 e d2 e g4 f f e f2 r
  e2 d4 cis d1
}

tenSS = \relative c' {
  a2 a4 b c2 c a4 a a gis a2 r
  e'2 e4 e c2 c a4 c c a a2 a r
  d,2 e4 e g g f e e a2 gis4 a2 r
  d2 c4 c a2 c d4 c c c a2 r
  c2 a4 a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
