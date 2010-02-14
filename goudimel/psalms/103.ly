\version "2.13.10"

\include "def.ly"

psalm = 103

keySig = {
  \key a \mixolydian
}

mel = \relative c' {
  a2 b4 cis d2 d cis4 b cis d b2 a r
  a2 a4 g fis2 fis fis4 e fis g e2 d
  r4 a' b2 d cis b cis4 d b b a2 r
  d2 d4 cis b2 a a4 b a g fis2 e r
  e2 a4 a b2 a a4 a b cis d2 cis
  r4 a b2 d cis b cis4 d b b a1  
}

bas = \relative c' {
  a2 e4 a g2 g a4 e a d, e2 a, r
  d2 d4 e b2 d d4 a d g, a2 d
  r4 d g2 d a' e a4 d, e e a2 r
  g2 g4 a e2 a d,4 g d e b2 e r
  e2 d4 fis e2 a, d4 fis e a, d2 a
  r4 a' g2 d a' e a4 d, e e a,1
}

sop = \relative c'' {
  a2 gis4 a b2 b a4 gis a a2 gis4 a2 r
  fis2 fis4 e d2 d d4 cis d d cis2 d
  r4 fis g2 a a gis a4 a a gis a2 r
  b2 b4 a g2 e fis4 g fis e2 dis4 e2 r
  g2 fis4 fis g2 e fis4 fis g a a2 a
  r4 e g2 a a gis a4 a a gis a1
}

alt = \relative c' {
  e2 e4 e g2 g e4 e e fis e2 e r
  d2 d4 b b2 a a4 a a b a2 a
  r4 d d2 fis e e e4 fis e e e2 r
  g2 g4 e e2 cis d4 d d b b2 b r
  b2 d4 cis e2 cis d4 cis e e fis2 e
  r4 cis d2 fis e e e4 fis e e e1
}

% modified for soprano setting
altSS = \relative c' {
  e2 e4 e g2 g e4 e e fis e2 e r
  fis2 fis4 e d2 d d4 cis d d cis2 d
  r4 fis g2 a a gis a4 a a gis a2 r
  g2 g4 e g2 e fis4 g fis e2 dis4 e2 r
  e2 fis4 fis g2 e fis4 fis g a a2 a
  r4 e g2 a a gis a4 a a gis a1
}

tenSS = \relative c' {
  a2 gis4 a b2 b a4 gis a a2 gis4 a2 r
  d2 d4 b b2 a a4 a a b a2 a
  r4 d d2 fis e e e4 fis e e e2 r
  b2 b4 a b2 cis d4 d d b b2 b r
  b2 d4 cis e2 cis d4 cis e e fis2 e
  r4 cis d2 fis e e e4 fis e e e1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
