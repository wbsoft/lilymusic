\version "2.13.10"

\include "def.ly"

psalm = 105

keySig = {
  \key d \major
}

mel = \relative c {
  d2 fis4 g a2 d cis4 d b2 a r
  a2 d4 cis b2 a fis4 d e2 d r
  g2 fis4 g a b2 a gis4 a2 r
  a2 fis4 g a b2 a gis4 a2 r
  a2 d4 cis b a g2 fis e r
  a2 fis4 b a g fis2 e d1
}

bas = \relative c {
  d2 b4 e d2 d a'4 d, e2 a, r
  d2 d4 a e'2 a, b4 b a2 d r
  g,2 d'4 e d g, d'2 e a, r
  d2 d4 e d g, d'2 e a, r
  d2 d4 a b d e2 b e r
  d2 d4 g, d' e b8( cis d4) a2 d1
}

sop = \relative c' {
  fis2 d4 e fis2 a a4 a2 gis4 a2 r
  fis2 a4 a g2 e d4 d2 cis4 d2 r
  b'2 a4 g fis g fis2 e e r
  fis2 a4 g fis g fis2 e e r
  fis2 a4 a g fis2 e dis4 e2 r
  fis2 a4 g fis e2 d cis4 d1
}

alt = \relative c' {
  a2 b4 b d2 fis e4 fis e2 e r
  d2 fis4 e e2 cis b4 fis a2 a r
  d2 d4 b d d d2 b cis r
  d2 d4 b d d d2 b cis r
  d2 fis4 e d d b2 b b r
  d2 d4 d d b2 a4 a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d4 e fis2 fis e4 fis e2 e r
  d2 fis4 e e2 cis b4 d2 cis4 d2 r
  d2 d4 b d d d2 b cis r
  d2 d4 b d d d2 b cis r
  d2 fis4 e g fis2 e dis4 e2 r
  fis2 fis4 g fis e2 d cis4 d1
}

tenSS = \relative c' {
  a2 b4 b d2 a a4 a2 gis4 a2 r
  fis2 a4 a g2 e d4 fis a2 a r
  b2 a4 g fis g fis2 e e r
  fis2 a4 g fis g fis2 e e r
  fis2 a4 a d d b2 b b r
  d2 d4 d d b2 a4 a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
