\version "2.13.10"

\include "def.ly"

psalm = 57

keySig = {
  \key d \mixolydian
}

mel = \relative c' {
  a2 c b a d c4 a b b a2 r
  a2 b4 c d2 d c4 a b b a2 r
  a2 c4 c b2 a g4 b a g fis2 e4 \breathe
  g4 a b c2 c b4 a a gis a2 r
  a2 c4 b a2 e fis4 a g fis e2 d1
}

bas = \relative c' {
  a2 a e a g a4 a e e a,2 r
  a'2 e4 a g2 g a4 a e e a,2 r
  a2 a4 a e'2 a, c4 g d' e b2 e4 \breathe
  e4 d g c,2 c g'4 a e e a,2 r
  a2 a4 e' a,2 a d4 a c d a2 d1
}

sop = \relative c'' {
  a2 a gis c b a4 a gis gis a2 r
  a2 gis4 a b2 b a4 a gis gis a2 r
  e2 a4 a g2 e e4 g fis e dis2 e4 \breathe
  e4 fis g g2 g g4 e e e e2 r
  e2 e4 e e2 cis d4 c c d2 cis4 d1
}

alt = \relative c' {
  e2 e e e g e4 e e e e2 r
  e2 e4 e g2 g e4 e e e e2 r
  c2 e4 e e2 c c4 d d b b2 g4 \breathe
  b4 d d e2 e d4 c b b a2 r
  c2 a4 gis c2 a a4 c c a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  e2 e e e g e4 e e e e2 r
  e2 e4 e g2 g e4 e e e e2 r
  e2 a4 a g2 e e4 g fis e dis2 e4 \breathe
  e4 fis g g2 g g4 e e e e2 r
  e2 e4 e e2 cis d4 c c d2 cis4 d1
}

tenSS = \relative c' {
  a2 a gis c b a4 a gis gis a2 r
  a2 gis4 a b2 b a4 a gis gis a2 r
  c2 e4 e e2 c c4 d d b b2 g4 \breathe
  b4 d d e2 e d4 c b b a2 r
  c2 a4 gis c2 a a4 c c a a2 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
