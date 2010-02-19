\version "2.13.10"

\include "def.ly"

psalm = 146

keySig = {
  \key a \dorian
}

mel = \relative c' {
  b2 c b4 g a g fis2 e r
  e2 g fis4 e e dis e2 r
  g2 e g4 a b g c2 b r
  b2 c b4 a a gis a2 r
  a2 b g4 e g fis e2 r
  e2 g e4 a a gis a1
}

bas = \relative c {
  e2 a, e'4 e d e b2 e r
  e2 c d4 e a, b e2 r
  c2 c c4 a e' e c2 g' r
  g2 c, g'4 a d, e a,2 r
  a'2 g c,4 c c d a2 r
  e'2 e a,4 a d e a,1
}

sop = \relative c'' {
  g2 a g4 e fis e2 dis4 e2 r
  g2 c a4 gis a fis e2 r
  e2 c e4 e g e g2 g r
  g2 g g4 e f e e2 r
  e2 g e4 c e d cis2 r
  e2 e cis4 e f e e1
}

alt = \relative c' {
  e2 e e4 b d b b2 b r
  b2 e d4 b c b b2 r
  c2 g c4 c b b e2 e r
  d2 e d4 cis d b a2 r
  c2 d c4 g c a a2 r
  b2 b a4 cis d b a1
}

% modified for soprano setting
altSS = \relative c'' {
  g2 a g4 e fis e2 dis4 e2 r
  b2 e d4 b c b b2 r
  e2 c e4 e g e g2 g r
  g2 g g4 e f e e2 r
  e2 g e4 c e d cis2 r
  e2 e cis4 e f e e1
}

tenSS = \relative c' {
  e2 e e4 b d b b2 b r
  g2 c a4 gis a fis e2 r
  c'2 g c4 c b b e2 e r
  d2 e d4 cis d b a2 r
  c2 d c4 g c a a2 r
  b2 b a4 cis d b a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
