\version "2.13.10"

\include "def.ly"

psalm = 113

keySig = {
  \key a \mixolydian
}

mel = \relative c' {
  a2 b cis a4 d d cis d2 r
  d2 b cis a4 d d cis d2 r
  a2 b4 g a2 fis g4 fis e2 d r
  d2 fis4 g a fis b2 b a r
  a2 a4 g fis fis b2 b a r
  d2 cis4 b a2 d cis4 d b2 a1
}

bas = \relative c' {
  a2 e a d,4 d g a d,2 r
  d2 e a, d4 d a' a d,2 r
  d2 b4 e a,2 d c4 d a2 d r
  d2 b4 e d d g,2 g d' r
  d2 d4 g, d' d g,2 g d' r
  d2 a4 b fis'2 d a'4 d, e2 a,1
}

sop = \relative c'' {
  a2 gis a fis4 a b a a2 r
  a2 gis a fis4 a a a a2 r
  fis2 fis4 e e2 d e4 d2 cis4 d2 r
  fis2 d4 e fis a g2 g fis r
  fis2 fis4 b a a g2 g fis r
  a2 a4 fis fis2 a a4 a2 gis4 a1
}

alt = \relative c' {
  e2 e e d4 fis g e fis2 r
  fis2 e e d4 fis e e fis2 r
  d2 d4 b cis2 a c4 a a2 a r
  a2 b4 b d d d2 d d r
  d2 d4 d d d d2 d d r
  fis2 e4 d cis2 fis e4 fis e2 e1
}

% modified for soprano setting
altSS = \relative c' {
  e2 e e d4 fis g e fis2 r
  fis2 e e d4 fis e e fis2 r
  fis2 fis4 e e2 d e4 d2 cis4 d2 r
  a2 d4 b d d d2 d d r
  fis2 fis4 d d d d2 d d r
  fis2 e4 d cis2 fis e4 fis e2 e1
}

tenSS = \relative c' {
  a2 gis a fis4 a b a a2 r
  a2 gis a fis4 a a a a2 r
  d2 d4 b cis2 a c4 a a2 a r
  fis2 b4 g fis a g2 g fis r
  d'2 d4 b a a g2 g fis r
  a a4 fis fis2 a a4 a2 gis4 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
