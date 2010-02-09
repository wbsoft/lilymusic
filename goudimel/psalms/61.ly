\version "2.13.10"

\include "def.ly"

psalm = 61

keySig = {
  \key a \dorian
}

mel = \relative c {
  e2 a4 a g c2 b4 a2 g4 \breathe
  c2 b4 a2 g r
  e2 g e4 a a gis a2 r
  a2 e a4 a g g fis2 e4 \breathe
  a2 b4 c2 b r
  b2 d c4 b2 a gis4 a1
}

bas = \relative c {
  e2 d4 d e c2 g4 a2 e'4 \breathe
  c2 g4 a2 e' r
  e2 e a,4 a d e a,2 r
  a2 a a4 a c e d2 a4 \breathe
  a2 gis4 a2 e' r
  e2 d a4 e' f2 e a,1
}

sop = \relative c' {
  e2 fis4 fis e g2 g4 e2 e4 \breathe
  g2 g4 e2 e r
  e2 e c4 e f e e2 r
  e2 cis e4 e e b d2 e4 \breathe
  e2 e4 e2 e r
  e2 f e4 e d2 e e1
}

alt = \relative c' {
  b2 d4 d b e2 d4 c2 b4 \breathe
  e2 d4 c2 b r
  b2 b a4 c d b a2 r
  c2 a c4 c c g a2 c4 \breathe
  c2 b4 a2 gis r
  gis2 a a4 gis a2 b a1
}

% modified for soprano setting
altSS = \sop

tenSS = \alt

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
