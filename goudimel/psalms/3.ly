\version "2.13.10"

\include "def.ly"

psalm = 3

keySig = {
  \key d \major
}

mel = \relative c {
  d2 a' a b4 cis d2 r
  d cis4 b a g a2 r
  fis2 fis4 d g fis e2 d r
  a'2 a4 b a g fis2 r
  fis2 a4 a g fis e2 r
  fis2 g4 fis d fis e2 d r
  d2 d4 e fis g a2 r
  a2 b4 cis d b a2 r
  a2 a4 a b a g2 fis r
  d2 fis4 a a gis a2 r
  a2 b4 d d cis d2 r
  d2 b4 a g fis e2 d1
}

bas = \relative c {
  d2 d fis e4 a, d2 r
  d2 fis4 g d e d2 r
  d2 d4 d c d a2 d r
  d2 d4 g, d' e b2 r
  d2 a4 d e d a2 r
  d2 g,4 d' d d a2 d r
  d2 d4 cis b e a,2 r
  a'2 e4 a d, e fis2 r
  d2 a4 d g, d' e2 b r
  d2 b4 a d e a,2 r
  d2 g4 g a a d,2 r
  d g4 d e d a2 d1
}

sop = \relative c' {
  fis2 fis fis g4 a a2 r
  a2 a4 g fis e fis2 r
  d2 d4 fis e d2 cis4 d2 r
  fis2 fis4 g fis e dis2 r
  d2 e4 fis e a a2 r
  a2 b4 a fis d2 cis4 d2 r
  a'2 a4 a d b cis2 r
  a2 g4 a a gis a2 r
  fis2 e4 fis g fis e2 dis r
  fis2 d4 e fis e e2 r
  fis2 g4 b a a a2 r
  a2 g4 fis e a a2 fis1
}

alt = \relative c' {
  a2 d cis e4 e fis2 r
  fis2 fis4 d d b d2 r
  a2 a4 a c a a2 a r
  d2 d4 d d b b2 r
  a2 cis4 d b d cis2 r
  d2 d4 d a a a2 a r
  fis'2 fis4 e d e e2 r
  e2 e4 e fis e cis2 r
  d2 cis4 d d d b2 b r
  a2 b4 cis d b cis2 r
  d2 d4 g e e fis2 r
  fis2 d4 d b d2 cis4 d1
}

% modified for soprano setting
altSS = \relative c' {
  a2 d cis e4 e fis2 r
  fis2 fis4 d d b d2 r
  d2 d4 d e d2 cis4 d2 r
  fis2 fis4 g fis e dis2 r
  d cis4 d b d cis2 r
  d2 d4 d a d2 cis4 d2 r
  a2 a4 a d b cis2 r
  e2 e4 e fis e cis2 r
  d2 cis4 d d d b2 b r
  a2 b4 cis d b cis2 r
  d2 d4 g e e fis2 r
  fis2 d4 d b d2 cis4 d1
}

tenSS = \relative c {
  fis2 fis fis g4 a a2 r
  a2 a4 g fis e fis2 r
  a2 a4 a c a a2 a r
  d2 d4 d d b b2 r
  a2 a4 fis g a a2 r
  a2 b4 a fis a a2 a r
  fis2 fis4 e d e e2 r
  a2 g4 a a gis a2 r
  fis2 e4 fis g fis e2 dis r
  fis2 d4 e fis e e2 r
  fis2 g4 b a a a2 r
  a2 g4 fis g a a2 fis1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
