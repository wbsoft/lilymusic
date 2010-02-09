\version "2.13.10"

\include "def.ly"

psalm = 58

keySig = {
  \key a \mixolydian
}

mel = \relative c' {
  a2 b4 b a2 d cis4 d b2 a r
  a2 fis4 fis d g fis2 e d r
  d2 fis4 g a2 a b4 cis d2 r
  d2 cis4 b a b a g fis2 e r
  e2 fis4 g a2 fis b4 b a2 r
  d2 cis4 b a d cis2 b a1
}

bas = \relative c {
  a2 e'4 e fis2 d a'4 d, e2 a, r
  a2 d4 d b g a2 a d r
  d2 b4 e d2 fis e4 a d,2 r
  d2 fis4 g d g, d' e b2 e r
  e2 b4 e d2 d g,4 g d'2 r
  d2 a4 e' fis b, cis2 e a,1
}

sop = \relative c'' {
  a2 g4 g fis2 a a4 a g2 a r
  e d4 d fis e2 d cis4 d2 r
  fis d4 e fis2 fis g4 a a2 r
  a a4 g fis g fis e2 dis4 e2 r
  e d4 e fis2 a g4 g fis2 r
  a a4 g fis b2 a gis4 a1
}

alt = \relative c' {
  e2 e4 e cis2 fis e4 fis e2 cis r
  cis2 a4 a b b a2 a a r
  a2 b4 b d2 cis e4 e fis2 r
  fis2 fis4 d d d d b b2 b r
  b2 b4 b d2 d d4 d d2 r
  fis2 e4 e cis fis e2 e e1
}

% modified for soprano setting
altSS = \relative c' {
  e2 e4 e cis2 fis e4 fis e2 cis r
  cis2 d4 d d e2 d cis4 d2 r
  d2 d4 e fis2 cis e4 e fis2 r
  fis2 fis4 d fis g fis e2 dis4 e2 r
  e d4 e fis2 d d4 d d2 r
  fis2 e4 e cis fis e2 e e1
}

tenSS = \relative c' {
  a2 g4 g fis2 a a4 a g2 a r
  a a4 a b b a2 a a r
  fis b4 b d2 a g4 a a2 r
  a a4 b d d d b b2 b r
  b2 b4 b d2 a g4 g fis2 r
  a a4 g a b2 a gis4 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
