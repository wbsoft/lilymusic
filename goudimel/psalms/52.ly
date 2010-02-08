\version "2.13.10"

\include "def.ly"

psalm = 52

keySig = {
  \key d \major
}

mel = \relative c' {
  a2 a b4 cis d2 d4 cis b2 a \breathe
  fis2 b4 b a g a2 r
  fis2 g a fis4 d g fis e2 d \breathe
  a'2 g4 fis d e fis2 r
  fis2 d4 e fis a g2 fis2 e4 \breathe
  a4 g fis d2 e d1
}

bas = \relative c {
  d2 fis e4 a g2 g4 a e2 a, \breathe
  d2 g,4 g d' e d2 r
  b2 e d d4 d c d a2 d \breathe
  d2 e4 b b a d2 r
  b2 b4 a d d e2 b e4 \breathe
  d4 g, a b2 a d1
}

sop = \relative c' {
  fis2 fis g4 a b2 b4 a2 gis4 a2 \breathe
  a2 g4 g fis e fis2 r
  d2 e fis d4 fis e d2 cis4 d2 \breathe
  fis2 e4 d fis a a2 r
  b2 fis4 a a fis e2 dis e4 \breathe
  fis4 d fis2 d cis4 d1
}

alt = \relative c' {
  d2 cis e4 e g2 g4 e e2 cis \breathe
  d d4 d d b d2 r
  b b d a4 a c a a2 a \breathe
  d b4 b b cis d2 r
  d b4 cis d d b2 b b4 \breathe
  d b cis b( fis) a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 cis e4 e g2 g4 e e2 cis \breathe
  d d4 d d b d2 r
  d2 b d d4 d e d2 cis4 d2 \breathe
  fis2 e4 d b cis d2 r
  d b4 cis d fis e2 dis e4 \breathe
  fis4 d cis b( d2) cis4 d1
}

tenSS = \relative c {
  fis2 fis g4 a b2 b4 a2 gis4 a2 \breathe
  a2 g4 g fis e fis2 r
  b g fis a4 a c a a2 a \breathe
  d b4 b fis a a2 r
  b2 fis4 a a d b2 b b4 \breathe
  d b a fis2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
