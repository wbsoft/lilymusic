\version "2.13.10"

\include "def.ly"

psalm = 83

keySig = {
  \key fis \phrygian
}

mel = \relative c' {
  b2 a4 a b2 d cis4 cis b2 r
  a2 b4 cis d cis b2 b a r
  b2 d4 cis b a fis a g2 fis r
  d2 fis4 g a fis g a b2 a r
  fis2 a4 a b a d d cis2 b r
  b2 a4 b d2 cis b4 a g2 fis1
}

bas = \relative c {
  b2 fis'4 fis e2 b fis'4 fis b,2 r
  d2 b4 a d a e'2 b fis' r
  e2 d4 a b d d d e2 b r
  d2 b4 e d d e fis e2 a, r
  d2 d4 d b fis' d b fis'2 b, r
  b2 fis'4 g d2 a b4 d e2 b1
}

sop = \relative c' {
  fis2 fis4 fis g2 b ais4 ais b2 r
  fis2 fis4 a a a g2 fis fis r
  g2 a4 a fis fis d fis e2 dis r
  fis2 b4 b d d b a2 gis4 a2 r
  a2 fis4 fis fis fis a b2 ais4 b2 r
  d2 cis4 b a2 a fis4 fis e2 fis1
}

alt = \relative c' {
  d2 cis4 cis e2 fis fis4 fis dis2 r
  d2 d4 e fis e e2 d cis r
  e2 fis4 e d d a d b2 b r
  a2 d4 e fis fis e cis e2 e r
  d2 d4 d d cis fis fis fis2 fis r
  fis2 fis4 d fis2 e d4 d b2 b1
}

% modified for soprano setting
altSS = \alt

tenSS = \transpose c c, \sop

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks

