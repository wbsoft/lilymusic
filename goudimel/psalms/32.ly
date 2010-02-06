\version "2.13.10"

\include "def.ly"

psalm = 32

keySig = {
  \key d \major
}

mel = \relative c {
  d2 fis g a a a4 fis g a b2 a4 \breathe
  g4 fis fis e2 a b4 a g fis e2 d r
  d2 fis4 g a2 a b4 a g g fis2 r
  a2 g4 fis e2 fis g4 fis d2 e d r
  d'2 d4 d cis2 a b4 cis d cis b2 a r
  a2 a4 a b2 a g4 b a g fis2 e r
  a2 a4 a b2 d cis4 a b b a2 r
  a2 b4 b a2 g fis4 e d2 e d1
}

bas = \relative c {
  d2 b e d a d4 d b a g2 d'4 \breathe
  e4 b b e2 d g,4 a c d a2 d r
  d2 b4 e a,2 d g,4 d' e e b2 r
  d2 g,4 d' a2 d g,4 a b2 a d r
  d2 d4 d a2 d b4 a d a e'2 a, r
  d2 a4 d g,2 d' e4 b d e b2 e r
  d2 fis4 fis e2 d fis4 fis e e a,2 r
  d2 g,4 g d'2 g, d'4 a b2 a d1
}

sop = \relative c' {
  fis2 d e fis e fis4 d d fis g2 fis4 \breathe
  e4 e dis e2 fis g4 fis e d2 cis4 d2 r
  fis2 d4 e e2 fis g4 fis e e dis2 r
  d2 d4 d cis2 d d4 fis2 d cis4 d2 r
  a'2 a4 a a2 fis fis4 a a a2 gis4 a2 r
  fis2 e4 fis g2 fis e4 fis fis e2 dis4 e2 r
  fis2 fis4 fis g2 a a4 fis g g a2 r
  fis2 g4 g fis2 d d4 cis b( d2) cis4 d1
}

alt = \relative c' {
  a2 b b d cis d4 a b cis d2 d4 \breathe
  b4 b b b2 d d4 c c a a2 a r
  a2 b4 b cis2 d d4 d b b b2 r
  fis2 b4 a a2 a b4 cis b( fis) a2 a r
  fis'2 fis4 fis e2 d d4 e fis e e2 e r
  d2 cis4 d d2 d b4 d d b b2 b r
  d2 cis4 cis e2 fis fis4 cis e e cis2 r
  d2 d4 d d2 b a4 a fis2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 d e fis e fis4 d d fis g2 fis4 \breathe
  e4 e dis e2 fis g4 fis e d2 cis4 d2 r
  a2 d4 e e2 fis g4 fis e e dis2 r
  d2 d4 d cis2 d d4 cis b( d2) cis4 d2 r
  fis2 fis4 fis e2 d d4 e fis e e2 e r
  d2 cis4 d d2 d b4 d d b b2 b r
  d2 cis4 cis e2 fis fis4 cis e e cis2 r
  d2 d4 d d2 d d4 cis b( d2) cis4 d1
}


tenSS = \relative c {
  fis2 b b d cis d4 a b cis d2 d4 \breathe
  b4 b b b2 d d4 c c a a2 a r
  fis2 b4 b cis2 d d4 d b b b2 r
  fis2 b4 a a2 a b4 a fis2 a a r
  a2 a4 a a2 fis fis4 a a a2 gis4 a2 r
  fis2 e4 fis g2 fis e4 fis fis e2 dis4 e2 r
  fis2 fis4 fis g2 a a4 fis g g a2 r
  fis2 g4 g fis2 b a4 a fis2 a a1
}



breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
