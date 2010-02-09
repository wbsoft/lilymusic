\version "2.13.10"

\include "def.ly"

psalm = 73

keySig = {
  \key d \major
}

mel = \relative c' {
  a2 b4 d cis b2 a gis4 a2 r
  d2 cis4 b d2 a b4 cis d2 r
  a2 b4 b a2 fis g4 a b2 a r
  fis2 a4 a fis2 d g4 fis e2 d r
  a'2 b4 cis d b a2 g fis r
  fis2 g4 a b2 a4 g fis2 e r
  a2 b4 cis a d cis2 b a r
  fis2 g4 a e g fis2 e d1
}

bas = \relative c {
  d2 b4 b a e' d2 b a r
  d2 a4 e' d2 d b4 a d2 r
  d2 g,4 g a2 d b4 a g2 a r
  d2 d4 a b2 b g4 d' a2 d r
  fis2 e4 a d, g, d'2 e b r
  b2 e4 d g,2 d'4 e b2 e r
  d2 b4 a d d a2 e' a, r
  b2 e4 a, a g d'2 a d1
}

sop = \relative c' {
  fis2 fis4 fis a gis a2 b e, r
  a2 a4 g a2 fis fis4 a a2 r
  fis2 g4 g e2 d d4 fis g2 e r
  d2 fis4 e d2 d d4 d2 cis4 d2 r
  fis2 g4 a a g fis2 e dis r
  d2 e4 fis g2 fis4 e2 dis4 e2 r
  fis2 fis4 a fis a a2 g e r
  d2 e4 e cis e2 d cis4 d1
}

alt = \relative c' {
  d2 d4 b e e fis2 d cis r
  fis2 e4 e fis2 d d4 e fis2 r
  d2 d4 d cis2 a b4 cis d2 cis r
  a2 d4 cis b2 fis b4 a a2 a r
  cis2 e4 e fis d d2 b b r
  b2 b4 d d2 d4 b b2 b r
  d2 d4 e d fis e2 e cis r
  b2 b4 cis a b a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d4 d e e fis2 d cis r
  fis2 e4 e fis2 d d4 e fis2 r
  fis2 g4 g e2 d d4 fis g2 e r
  d2 fis4 e d2 d d4 d2 cis4 d2 r
  cis2 e4 e fis d d2 b b r
  d2 e4 fis g2 fis4 e2 dis4 e2 r
  d2 d4 e d fis e2 e cis r
  d2 e4 e cis e2 d cis4 d1
}

tenSS = \relative c {
  fis2 fis4 fis a gis a2 b e, r
  a2 a4 g a2 fis fis4 a a2 r
  d2 d4 d cis2 a b4 cis d2 cis r
  a2 d4 cis b2 fis b4 a a2 a r
  fis2 g4 a a g fis2 e dis r
  b'2 b4 d d2 d4 b b2 b r
  fis2 fis4 a fis a a2 g e r
  b'2 b4 cis a b a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
