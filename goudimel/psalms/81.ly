\version "2.13.10"

\include "def.ly"

psalm = 81

keySig = {
  \key d \major
}

mel = \relative c' {
  a2 a b4 cis d2 \breathe
  d2 cis b4 a b2 a r
  a2 a b4 cis d2 \breathe
  a4 b a2 g fis r
  a4 b a2 g fis \breathe
  b4 a g fis e2 d1
}

bas = \relative c {
  a2 d b4 a d2 \breathe
  d2 a e'4 fis e2 a, r
  a2 d b4 a d2 \breathe
  d4 g, d'2 e b r
  d4 g, d'2 e b \breathe
  b4 d g, d' a2 d1
}

sop = \relative c'' {
  a2 fis fis4 a a2 \breathe
  a2 a gis4 a2 gis4 a2 r
  cis2 d d4 e fis2 \breathe
  d4 d d2 b b r
  d4 d d2 b b \breathe
  fis4 fis b a a2 fis1
}

alt = \relative c' {
  e2 d d4 e fis2 \breathe
  fis2 e e4 cis e2 e r
  e2 fis fis4 a a2 \breathe
  fis4 g fis2 e d r
  fis4 g fis2 e d \breathe
  d4 d d d2 cis4 d1
}

% modified for soprano setting
altSS = \alt

tenSS = \transpose c c, \sop

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
