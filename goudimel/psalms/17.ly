\version "2.13.10"

\include "def.ly"

psalm = 17

keySig = {
  \key fis \phrygian
}

mel = \relative c' {
  g2 fis a b4 a g e fis2 r
  d2 a'4 a b2 b d4 d cis2 b r
  fis2 b4 b a2 d d4 cis b2 a r
  fis2 e4 d e2 fis g4 g fis2 r
  a2 b d b4 g a a g2 fis r
  fis2 e4 d g g fis2 e d r
  d2 e4 g fis d e2 e fis r
  a2 b a g4 e fis a g2 fis1
}

bas = \relative c {
  g2 d' d g,4 d' e a, d2 r
  d2 d4 fis e2 g d4 d a2 b r
  b b4 b fis'2 b, d4 a e'2 a, r
  d2 a4 b a2 d g,4 g d'2 r
  d2 b b e4 e d d e2 b r
  d2 a4 b g g d'2 a d r
  b2 a4 g b b a2 a d r
  d2 g, d' e4 a, d d e2 b1
}

sop = \relative c'' {
  b2 a fis g4 fis b a a2 r
  fis2 fis4 fis g2 g a4 a a2 fis r
  d2 fis4 fis fis2 fis fis4 a2 gis4 a2 r
  a2 a4 fis a2 a b4 b a2 r
  fis2 fis fis e4 e fis fis e2 dis2 r
  a'2 a4 fis b b a2 a fis r
  fis2 a4 b b fis a2 a a r
  fis2 g fis e4 e d fis e2 dis1
}

alt = \relative c' {
  d2 d d d4 d b cis d2 r
  d2 d4 cis e2 d fis4 fis e2 dis r
  b2 d4 d cis2 b a4 e' e2 cis r
  d2 cis4 b cis2 d d4 d d2 r
  d2 d b g4 b d d b2 b r
  d2 cis4 b d d d2 cis d r
  d2 cis4 b d d cis( d2) cis4 d2 r
  d2 d d b4 cis a d b2 b1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d d d4 d b cis d2 r
  d2 d4 cis e2 d fis4 fis e2 dis r
  d2 fis4 fis fis2 fis fis4 e e2 cis r
  d2 cis4 b cis2 d d4 d d2 r
  fis2 fis fis e4 e fis fis e2 dis2 r
  d2 cis4 b d d d2 cis d r
  d2 cis4 d d d cis( d2) cis4 d2 r
  fis2 g fis e4 e d fis e2 dis1
}

tenSS = \relative c' {
  b2 a fis g4 fis g a a2 r
  fis2 fis4 fis g2 g a4 a a2 fis r
  b2 d4 d cis2 b a4 a2 gis4 a2 r
  a2 a4 fis a2 a b4 b a2 r
  d2 d b g4 b d d b2 b r
  a2 a4 fis b b a2 a fis r
  fis2 a4 b b fis a2 a a r
  d2 d d b4 cis a d b2 b1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
