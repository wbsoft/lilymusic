\version "2.13.10"

\include "def.ly"

psalm = 135

keySig = {
  \key d \major
}

mel = \relative c' {
  d2 b a4 a b cis d2 r
  a2 b a4 g fis2 e d r
  d2 fis e4 d fis g a2 r
  fis2 a b4 cis d b a2 r
  a2 g fis4 a g fis e2 r
  e2 fis a4 g fis2 e d1
}

bas = \relative c {
  d2 e fis4 fis e a, d2 r
  d2 g, d'4 e b( d) a2 d r
  d2 d a4 d d b a2 r
  d2 fis e4 a d, e a,2 r
  d2 e b4 a c d a2 r
  a2 d d4 g, a2 a d1
}

sop = \relative c'' {
  a2 g fis4 fis g a a2 r
  fis2 g fis4 e2 d cis4 d2 r
  fis2 a a4 fis a g e2 r
  a2 fis gis4 a a gis a2 r
  fis2 e dis4 e e d cis2 r
  cis2 d fis4 e2 d cis4 d1
}

alt = \relative c' {
  fis2 e cis4 cis e e fis2 r
  d2 d d4 b2 a4 a2 a r
  a2 d cis4 a d d cis2 r
  d2 cis e4 e fis e e2 r
  d2 b b4 c c a a2 r
  a2 a a4 b a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  fis2 e cis4 cis e e fis2 r
  fis2 g fis4 e2 d cis4 d2 r
  a2 d cis4 a d d cis2 r
  d2 cis e4 e fis e e2 r
  fis2 e dis4 e e d cis2 r
  cis2 d d4 e2 d cis4 d1
}

tenSS = \relative c' {
  a2 g fis4 fis g a a2 r
  d2 d d4 b2 a4 a2 a r
  fis2 a a4 fis a g e2 r
  a2 fis gis4 a a gis a2 r
  d2 b b4 c c a a2 r
  a2 a fis4 b a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
