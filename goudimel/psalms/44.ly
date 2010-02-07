\version "2.13.10"

\include "def.ly"

psalm = 44

keySig = {
  \key a \mixolydian
}

mel = \relative c' {
  a2 a4 b cis2 d d4 cis b2 a r
  a2 g4 fis a2 e g4 fis e2 d r
  d2 a' b g4 a b cis d2 r
  d2 cis4 b a b2 a gis4 a2 r
  a2 b4 a g2 e fis4 g a2 r
  a2 g e b'4 b a g fis2 e r
  a2 b4 cis a a b2 d cis r
  d2 d4 d b2 a g4 a b2 a1
}

bas = \relative c' {
  a2 fis4 e a2 g g4 a e2 a, r
  d2 g,4 d' a2 a g4 d' a2 d r
  d2 d b e4 d b a d2 r
  d2 a4 e' fis b, d2 e a, r
  d2 g4 d e2 e b4 e d2 r
  d2 e a, g4 g d' e b2 e r
  d2 b4 a d fis e2 d a r
  d2 b4 b g2 d' e4 fis e2 a,1
}

sop = \relative c' {
  e2 fis4 g a2 b b4 a2 gis4 a2 r
  fis2 d4 d e2 cis d4 d2 cis4 d2 r
  fis2 fis fis e4 fis fis a a2 r
  a2 a4 g fis fis fis2 e e r
  fis2 g4 fis e2 g fis4 e fis2 r
  fis2 e e g4 g fis e2 dis4 e2 r
  fis2 fis4 a fis fis g2 a a r
  fis2 fis4 fis g2 fis b4 a2 gis4 a1
}

alt = \relative c' {
  cis2 cis4 e e2 g g4 e e2 e r
  d2 b4 a cis2 a b4 a a2 a r
  a2 d d b4 d d e fis2 r
  fis2 e4 e cis d d2 b cis r
  d2 d4 d b2 b d4 b d2 r
  d2 b cis d4 d d b b2 b r
  d2 d4 e d cis e2 fis e r
  a,2 b4 b d2 fis e4 cis e2 e1
}

% modified for soprano setting
altSS = \relative c' {
  cis2 cis4 e e2 g g4 e e2 e r
  d2 d4 d e2 cis d4 d2 cis4 d2 r
  a2 d d b4 d d e fis2 r
  fis2 e4 e cis d d2 b cis r
  d2 d4 d b2 b d4 b d2 r
  d2 b cis d4 d d b b2 b r
  d2 d4 e d cis e2 fis e r
  fis2 fis4 fis g2 fis e4 cis e2 e1
}

tenSS = \relative c' {
  a2 a4 g a2 b b4 a2 gis4 a2 r
  fis2 b4 a cis2 a b4 a a2 a r
  fis2 fis fis e4 fis fis a a2 r
  a2 a4 g fis fis fis2 e e r
  fis2 g4 fis e2 g fis4 e fis2 r
  fis2 e e g4 g fis e2 dis4 e2 r
  fis2 fis4 a fis fis g2 a a r
  a2 b4 b d2 d b4 a2 gis4 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
