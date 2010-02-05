\version "2.13.10"

\include "def.ly"

psalm = 21

keySig = {
  \key d \major
}

mel = \relative c' {
  a2 a4 g fis2 b a4 g fis2 r
  d2 fis4 g a a b2 a r
  a2 fis4 fis d fis e2 d r
  a'2 b4 b cis2 a b4 cis d2 r
  a2 b4 b a2 g fis r
  d2 e4 g fis2 e d1
}

bas = \relative c {
  a2 d4 e b2 g d'4 e b2 r
  b2 b4 e d fis e2 a, r
  d2 d4 d g, d' a2 d r
  d2 g4 e a2 d, b4 a d2 r
  d2 g4 g d2 e b r
  b2 a4 g d'2 a d1
}

sop = \relative c' {
  e2 fis4 e dis2 g fis4 e dis2 r
  fis2 d4 e fis a2 gis4 a2 r
  fis2 a4 a b a a2 fis r
  fis2 g4 g a2 fis fis4 a a2 r
  fis2 g4 g fis2 e d r
  b2 cis4 e2 d cis4 d1
}

alt = \relative c' {
  cis2 d4 b b2 d d4 b b2 r
  b b4 b d cis e2 e r
  d d4 d b d2 cis4 d2 r
  d d4 e e2 d d4 e fis2 r
  d d4 d d2 b b r
  fis a4 b a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  e2 fis4 e dis2 g fis4 e dis2 r
  b2 d4 e fis a2 gis4 a2 r
  fis2 d4 d b d2 cis4 d2 r
  fis2 g4 g a2 fis fis4 a a2 r
  fis2 g4 g fis2 e d r
  b2 cis4 e2 d cis4 d1
}

tenSS = \relative c' {
  cis2 d4 b b2 d d4 b b2 r
  b b4 b d cis e2 e r
  d a4 a b a a2 fis r
  d' d4 e e2 d d4 e fis2 r
  d d4 d d2 b b r
  fis a4 b a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
