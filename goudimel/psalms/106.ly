\version "2.13.10"

\include "def.ly"

psalm = 106

keySig = {
  \key b \minor
}

mel = \relative c' {
  d2 cis b4 d2 cis4 b b a2 r
  a2 b4 d cis a d2 cis b r
  b2 d4 cis b2 a g4 fis e2 d r
  d2 fis4 g a2 fis g4 g fis2 r
  fis2 a4 b cis2 a d4 cis b2 a r
  a2 d4 d b a d2 cis b1
}

bas = \relative c {
  d2 a e'4 d2 a4 e' e a,2 r
  d2 b4 b fis' fis d2 fis b, r
  e2 d4 a b2 d g,4 d' a2 d r
  d2 b4 e d2 d g,4 g d'2 r
  d2 d4 g fis2 a g4 a e2 a, r
  d2 d4 d e fis b,2 fis' b,1
}

sop = \relative c'' {
  a2 a g4 fis2 a4 a gis a2 r
  fis2 fis4 b a fis a( b2) ais4 b2 r
  gis2 a4 a fis2 fis b4 a a2 a r
  fis2 d4 e fis2 a b4 b a2 r
  a2 fis4 g a2 cis2 b4 a2 gis4 a2 r
  fis2 a4 a g fis2 b ais4 b1
}

alt = \relative c' {
  fis2 e e4 a,2 e'4 e e cis2 r
  d2 d4 fis fis cis fis2 fis fis r
  e2 fis4 e d2 d d4 d2 cis4 d2 r
  a2 b4 b d2 d d4 d d2 r
  d2 d4 d fis2 e g4 e e2 e r
  d2 fis4 fis e cis fis2 fis fis1
}

% modified for soprano setting
altSS = \relative c' {
  fis2 e e4 fis2 e4 e e cis2 r
  d2 d4 fis fis cis fis2 fis fis r
  e2 fis4 e d2 d d4 d2 cis4 d2 r
  a2 b4 b d2 d d4 d d2 r
  d2 d4 d fis2 e g4 e e2 e r
  d2 fis4 fis e cis fis2 fis fis1
}

tenSS = \relative c' {
  a2 a g4 a2 a4 a gis a2 r
  fis2 fis4 b a fis a( b2) ais4 b2 r
  gis2 a4 a fis2 fis b4 a a2 a r
  fis2 d4 e fis2 a b4 b a2 r
  a2 fis4 g a2 cis2 b4 a2 gis4 a2 r
  fis2 a4 a g fis2 b ais4 b1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
