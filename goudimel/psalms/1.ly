\version "2.13.10"

\include "def.ly"

psalm = 1

keySig = {
  \key d \major
}

mel = \relative c' {
  a2 b a fis a g4 fis g2 e d
  r4 d fis2 g a a b4 a fis g a2 r
  a2 a4 g fis2 fis fis4 e fis a g2 fis r
  fis2 a4 g fis2 b b4 b a g fis2 e
  r4 fis a2 a b d cis4 b a2 b a r
  a2 b a fis a g4 fis g2 e d1
}

bas = \relative c {
  d2 g, a d d g,4 d' g,2 a d
  r4 d b2 e a, d g,4 a b e d2 r
  d2 d4 e b2 d d4 a d d e2 b r
  d2 d4 g, d'2 b e4 b d e b2 e
  r4 d d2 fis e d a4 b fis'2 e a, r
  d2 g, a d d g,4 d' g,2 a d1
}

sop = \relative c' {
  fis2 g e d d d4 d e( d2) cis4 d2
  r4 fis d2 e e fis g4 e d e fis2 r
  fis2 fis4 e d2 d d4 cis d fis e2 dis r
  d2 d4 d d2 fis g4 fis fis e2 dis4 e2
  r4 a fis2 fis gis a a4 fis fis( a2) gis4 a2 r
  fis2 g e d d d4 d e( d2) cis4 d1
}

alt = \relative c' {
  d2 d cis a fis b4 a b2 a2 a
  r4 a b2 b cis d d4 cis b b d2 r
  d2 d4 b b2 a a4 a a d b2 b r
  a2 fis4 b a2 d e4 d d b b2 b
  r4 d d2 cis e fis e4 d cis2 e cis r
  d2 d cis a fis b4 a b2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  fis2 g e d d d4 d e( d2) cis4 d2
  r4 a d2 e e fis g4 e d e fis2 r
  fis2 fis4 e d2 d d4 cis d fis e2 dis r
  d2 d4 d d2 fis g4 fis fis e2 dis4 e2
  r4 d fis2 fis gis a a4 fis fis( a2) gis4 a2 r
  fis2 g e d d d4 d e( d2) cis4 d1
}

tenSS = \relative c' {
  d2 d cis a fis b4 a b2 a2 a
  r4 a b2 b cis d d4 cis b b d2 r
  d2 d4 b b2 a a4 a a d b2 b r
  a2 fis4 b a2 d e4 d d b b2 b
  r4 a d2 cis e fis e4 d cis2 e cis r
  d2 d cis a fis b4 a b2 a a1
}

breaks = {
  s1*9
  %\bar "" \break
  s1*8 s2
  %\bar "" \break
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
