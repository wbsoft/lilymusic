\version "2.13.10"

\include "def.ly"

psalm = 133

keySig = {
  \key d \major
}

mel = \relative c {
  d2 fis e d4 a' b d cis a b2 a r
  d2 d4 cis d2 a b4 b a fis g2 fis r
  a2 fis b a4 g fis2 e d r
  d2 fis4 g a2 b cis4 a b cis d2 r
  d2 cis4 b a2 fis b4 b a gis a2 r
  d,2 a' b a4 g fis2 e d1
}

bas = \relative c {
  d2 d a d4 fis e d fis fis e2 a, r
  d2 d4 a d2 d b4 g d' d e2 b r
  a2 b g d'4 g, a2 a d r
  d2 b4 e d2 b a4 d b a d2 r
  d2 fis4 g d2 d g,4 g d' e a,2 r
  d2 d g, a4 c d2 a d1
}

sop = \relative c' {
  fis2 a a a4 fis gis a a fis gis2 a r
  a2 a4 a a2 fis fis4 g fis fis e2 dis r
  e2 d g fis4 e2 d cis4 d2 r
  fis2 d4 e fis2 fis a4 fis g a a2 r
  a2 a4 g fis2 a g4 g fis e e2 r
  fis2 fis g e4 e2 d cis4 d1
}

alt = \relative c' {
  a2 d cis d4 cis e fis fis cis e2 e r
  fis2 fis4 e fis2 d d4 d d d b2 b r
  cis2 b d d4 b a2 a a r
  a2 b4 b d2 d e4 d d e fis2 r
  fis2 fis4 d d2 d d4 d d b cis2 r
  a2 d d cis4 e a,2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 d cis d4 cis e fis fis cis e2 e r
  fis2 fis4 e fis2 fis fis4 g fis fis e2 dis r
  e2 d g fis4 e2 d cis4 d2 r
  a2 d4 e fis2 fis a4 fis g a fis2 r
  fis2 fis4 d d2 d d4 d d b cis2 r
  a2 d d cis4 e2 d cis4 d1
}

tenSS = \relative c {
  fis2 a a a4 a gis a a fis gis2 a r
  a2 a4 a a2 d d4 d d d b2 b r
  cis2 b d d4 b a2 a a r
  fis2 b4 b d2 d e4 d d e a,2 r
  a2 a4 g fis2 a g4 g fis e e2 r
  fis2 fis g e4 e a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
