\version "2.13.10"

\include "def.ly"

psalm = 55

keySig = {
  \key b \minor
}

mel = \relative c {
  fis2 a4 a b2 a d4 cis b2 a r
  a2 b4 b a2 fis g4 fis e2 d r
  a'2 b4 b a2 d cis4 d b2 a r
  b2 a4 g fis2 b a4 g fis2 r
  a2 b4 cis d2 a2 b4 cis d2 r
  d2 cis4 b cis2 a b4 d cis2 b1
}

bas = \relative c {
  fis2 fis4 fis e2 a g4 a e2 a, r
  d2 g,4 g d'2 d c4 d a2 d r
  d2 b4 b fis'2 d a'4 d, e2 fis r
  b,2 d4 e b2 g d'4 e b2 r
  fis'2 e4 a d,2 fis e4 a, d2 r
  b2 fis'4 g fis2 fis e4 b fis'2 b,1
}

sop = \relative c' {
  fis2 fis4 fis g2 a b4 a2 gis4 a2 r
  fis2 g4 g fis2 d e4 d2 cis4 d2 r
  fis2 fis4 fis fis2 a a4 a g2 fis r
  fis2 fis4 e d2 g fis4 e dis2 r
  fis2 g4 a a2 fis g4 a a2 r
  b2 a4 b a2 fis g4 b2 ais4 b1
}

alt = \relative c' {
  cis2 cis4 cis e2 e g4 e e2 e r
  d2 d4 d d2 a c4 a a2 a r
  d2 d4 d cis2 fis e4 fis e2 cis r
  d2 d4 b b2 d d4 b b2 r
  cis2 e4 e fis2 cis e4 e fis2 r
  fis2 fis4 d fis2 cis e4 fis fis2 fis1
}

% modified for soprano setting
altSS = \relative c' {
  fis2 fis4 fis g2 e g4 e e2 e r
  fis2 g4 g fis2 d e4 d2 cis4 d2 r
  d2 d4 d cis2 fis e4 fis e2 cis r
  d2 d4 b d2 g fis4 e dis2 r
  cis2 e4 e fis2 cis e4 e fis2 r
  fis2 fis4 d fis2 cis e4 fis fis2 fis1
}

tenSS = \relative c' {
  cis2 cis4 cis e2 cis b4 a2 gis4 a2 r
  d2 d4 d d2 a c4 a a2 a r
  fis2 fis4 fis fis2 a a4 a g2 fis r
  fis2 fis4 g b2 d d4 b b2 r
  fis2 g4 a a2 fis g4 a a2 r
  b2 a4 b a2 fis g4 b2 ais4 b1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
