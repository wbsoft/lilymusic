\version "2.13.10"

\include "def.ly"

psalm = 16

keySig = {
  \key b \minor
}

mel = \relative c' {
  d2 cis b a4 fis a a g g fis2 r
  fis2 e4 d a'2 a b4 b cis a d2 cis r
  d2 d4 d a2 b a4 g2 fis e4 fis2 r
  d2 e g fis4 b b a b d cis2 b r
  fis2 g4 e d2 a' g4 fis g a b2 a r
  fis2 a b fis4 a b d cis b2 ais4 b1
}

bas = \relative c {
  d2 a e' fis4 b, a d e e b2 r
  d2 a4 b a2 d b4 e a, d d2 a r
  d2 g4 g fis2 b, fis'4 g d2 e b r
  b2 a g d'4 g e fis e b fis'2 b, r
  d2 g,4 a d2 d g,4 d' e d g,2 d' r
  d2 d b b4 fis' e d a' b fis2 b,1
}

sop = \relative c'' {
  a2 a g fis4 d e fis e e dis2 r
  d2 cis4 d e2 fis fis4 gis a fis a2 a r
  a2 b4 b cis2 d cis4 b2 a4 g2 fis r
  fis2 a b a4 g g fis g b2 ais4 b2 r
  a2 b4 a fis2 fis b4 a g fis g2 fis r
  a2 fis fis d4 fis g a a fis fis2 fis1
}

alt = \relative c' {
  fis2 e e cis4 b cis d b b b2 r
  a2 a4 fis cis'2 d d4 e e d fis2 e r
  fis2 b,4 b fis'2 fis fis4 d d2 b b r
  b2 cis d d4 d e cis e fis fis2 fis r
  d2 d4 cis d2 d d4 d b d d2 d r
  a2 d d b4 cis e fis e d cis2 b1
}

% modified for soprano setting
altSS = \relative c' {
  fis2 e e cis4 d e fis e e dis2 r
  d2 cis4 d e2 fis fis4 gis a fis a2 a r
  a2 d,4 d fis2 fis fis4 d d2 b b r
  b2 cis d d4 d e cis e fis fis2 fis r
  d2 d4 cis d2 d d4 d b d d2 d r
  d2 d d d4 fis g a a fis fis2 fis1
}

tenSS = \relative c' {
  a2 a g a4 b cis d b b b2 r
  a2 a4 fis cis'2 d d4 e e d fis2 e r
  fis2 b,4 b cis2 d cis4 b2 a4 g2 fis r
  fis2 a b a4 g g fis g b2 ais4 b2 r
  a2 b4 a fis2 fis b4 a g fis g2 fis r
  a2 fis fis b4 cis e fis e d cis2 b1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
