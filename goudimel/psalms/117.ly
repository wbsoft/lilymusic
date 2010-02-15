\version "2.13.10"

\include "def.ly"

psalm = 117

keySig = {
  \key a \mixolydian
}

mel = \relative c' {
  a2 d4 d cis a b cis d2 r
  d2 cis4 b a g fis2 e d r
  d2 e4 fis g a a gis a2 r
  a2 b4 b d d cis2 b a r
  a2 g4 fis b a g2 fis e r
  e2 fis4 g a b2 a gis4 a1
}

bas = \relative c {
  d2 d4 d a d b a d2 r
  d2 a4 b d g, d'2 a d r
  d2 a4 d b a d e a,2 r
  a'2 e4 g d d a'2 e fis r
  d2 e4 d g d e2 b e r
  e2 b4 e d b cis4.( d8 e4) e a,1
}

sop = \relative c' {
  fis2 a4 a a fis fis a a 2 r
  a2 a4 fis fis e2 d cis4 d2 r
  fis2 a4 a g e fis e e2 r
  e2 g4 g a a a2 g fis r
  fis2 g4 a g fis2 e dis4 e2 r
  e2 dis4 e fis fis e2 e e1
}

alt = \relative c' {
  d2 fis4 fis e d d e fis2 r
  fis2 e4 d d b a2 a a r
  a2 cis4 d d cis d b cis2 r
  cis2 e4 d fis fis e2 e cis r
  d2 b4 d d d b2 b b r
  b2 b4 b d d cis2 b cis1
}

% modified for soprano setting
altSS = \relative c' {
  d2 fis4 fis e d d e fis2 r
  fis2 e4 d d e2 d cis4 d2 r
  a2 cis4 d d cis d b cis2 r
  cis2 e4 d fis fis e2 e cis r
  d2 b4 d d fis2 e dis4 e2 r
  e2 dis4 e fis fis e2 e e1
}

tenSS = \relative c {
  fis2 a4 a a fis fis a a 2 r
  a2 a4 fis fis b a2 a a r
  fis2 a4 a g e fis e e2 r
  a2 g4 g a a a2 g fis r
  fis2 g4 a b d b2 b b r
  b2 b4 b d d cis2 b cis1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
