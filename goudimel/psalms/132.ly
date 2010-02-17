\version "2.13.10"

\include "def.ly"

psalm = 132

keySig = {
  \key fis \phrygian
}

mel = \relative c {
  fis2 e4 g fis2 b a4 g fis2 r
  fis2 g4 fis e d g2 fis e r
  b'2 cis4 d b d cis2 b a r
  fis2 a4 a b2 cis d4 cis b2 r
  fis2 a e g4 fis a2 g fis1
}

bas = \relative c {
  b2 e4 e b2 g d'4 e b2 r
  d2 g,4 d' a b g2 d' a r
  e'2 a4 d, g g a2 e a, r
  d2 d4 fis e2 a g4 a e2 r
  b2 a a g4 d' d2 e b1
}

sop = \relative c' {
  fis2 g4 e dis2 g2 fis4 e dis2 r
  a'2 b4 a a fis b2 a a r
  gis2 a4 a g b2 a gis4 a2 r
  a2 fis4 fis gis2 a b4 a gis2 r
  b2 cis a b4 a2 fis e4 fis1
}

alt = \relative c' {
  b2 b4 b b2 d d4 b b2 r
  d2 d4 d cis b d2 d cis r
  e2 e4 fis d b e2 e e r
  d2 d4 cis e2 e g4 e e2 r
  d2 e cis d4 d d2 b b1
}

% modified for soprano setting
altSS = \relative c' {
  d2 b4 e dis2 g2 fis4 e dis2 r
  d2 d4 d cis b d2 d cis r
  e2 e4 fis d g e2 e e r
  d2 d4 cis e2 e g4 e e2 r
  d2 e cis d4 d2 fis2 e4 fis1
}

tenSS = \relative c' {
  b2 g4 b b2 d d4 b b2 r
  a2 b4 a a fis b2 a a r
  gis2 a4 a g b2 a gis4 a2 r
  a2 fis4 fis gis2 a b4 a gis2 r
  b2 cis a b4 a fis2 b b1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
