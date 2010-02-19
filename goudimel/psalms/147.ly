\version "2.13.10"

\include "def.ly"

psalm = 147

keySig = {
  \key fis \phrygian
}

mel = \relative c {
  d2 a' b a4 b d cis b2 a r
  b2 b4 cis d2 b a4 g fis2 e r
  e2 fis4 g a2 fis g4 a b2 a r
  b2 d4 cis b2 a fis4 a g2 fis r
  fis2 e4 d a'2 fis g4 fis e2 d r
  a'2 fis4 b a fis g a b2 a r
  a2 d b cis4 a b d cis2 b r
  d2 b4 b a fis a a g2 fis1
}

bas = \relative c {
  d2 fis e a,4 e' d a e'2 a r
  g2 e4 a d,2 g d4 e b2 e r
  e2 b4 e a,2 b e4 fis e2 a r
  g2 g4 a e2 a, d4 d e2 b r
  d2 a4 b a2 d g,4 d' a2 d r
  d2 d4 g, d' d b fis' e2 a, r
  d2 b e a,4 d b b fis'2 b, r
  b2 e4 g d d a d e2 b1
}

sop = \relative c' {
  fis2 fis g a4 g fis a2 gis4 a2 r
  g2 g4 a a2 g fis4 e2 dis4 e2 r
  b'2 b4 b cis2 d b4 a2 gis4 a2 r
  g2 b4 a g2 e d4 fis e2 dis r
  d2 cis4 d e2 d d4 d cis2 d r
  fis2 a4 g fis a b a2 gis4 a2 r
  fis2 b gis a4 fis fis b2 ais4 b2 r
  b2 g4 g fis d e fis e2 dis1
}

alt = \relative c' {
  d2 cis e e4 e a, e' e2 e r
  d2 e4 e fis2 d d4 b b2 b r
  e2 dis4 e e2 d e4 cis e2 e r
  d2 g4 e e2 cis a4 d b2 b r
  a2 a4 fis cis'2 a2 b4 a a2 a r
  d2 d4 d d d d cis e2 e r
  d2 fis e e4 d d fis fis2 fis r
  fis2 e4 d d a cis d b2 b1
}

% modified for soprano setting
altSS = \relative c' {
  d2 cis e e4 e fis e e2 e r
  d2 e4 e fis2 d fis4 e2 dis4 e2 r
  e2 dis4 e e2 d e4 cis e2 e r
  d2 g4 e e2 cis d4 fis e2 dis r
  d2 cis4 d e2 d d4 d cis2 d r
  d2 d4 d d d d cis e2 e r
  d2 fis e e4 d d fis fis2 fis r
  fis2 e4 d d d e fis e2 dis1
}

tenSS = \relative c {
  fis2 fis g a4 g a a2 gis4 a2 r
  g2 g4 a a2 b d4 b b2 b r
  b2 b4 b cis2 d b4 a2 gis4 a2 r
  g2 b4 a g2 a a4 d b2 b r
  a2 a4 fis cis'2 a2 b4 a a2 a r
  fis2 a4 g fis a b a2 gis4 a2 r
  fis2 b gis a4 fis fis b2 ais4 b2 r
  b2 g4 g fis a cis d b2 b1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
