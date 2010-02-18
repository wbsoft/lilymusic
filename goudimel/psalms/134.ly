\version "2.13.10"

\include "def.ly"

psalm = 134

keySig = {
  \key g \major
}

mel = \relative c' {
  g2 g4 fis e d g2 a b r
  b2 b4 b a g c2 b a r
  g2 a4 b a g e2 fis g r
  d'2 b g a4 c b2 a g1
}

bas = \relative c {
  g2 g4 d' a b e2 d g, r
  g'2 e4 g d e c2 e a, r
  e'2 d4 g, d' e a,2 d g, r
  g2 g c a4 a b2 d g,1
}

sop = \relative c'' {
  b2 b4 a a fis e( g2) fis4 g2 r
  g2 g4 g fis b2 a gis4 a2 r
  e2 fis4 g fis b a2 a b r
  g2 g e e4 a2 g fis4 g1
}

alt = \relative c' {
  d2 d4 d c b b2 d d r
  d2 e4 d d b e2 e e r
  b2 d4 d d b cis2 d d r
  b2 d c c4 e d2 d d1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d4 d c b b2 d d r
  d2 e4 d fis e e2 e e r
  e2 fis4 g fis e cis2 d d r
  g2 g e e4 a2 g fis4 g1
}

tenSS = \relative c' {
  b2 b4 a a fis e( g2) fis4 g2 r
  g2 g4 b d b2 a gis4 a2 r
  b2 d4 d d b a2 a b r
  b2 d c c4 e d2 d d1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
