\version "2.13.10"

\include "def.ly"

psalm = 60

keySig = {
  \key g \major
}

mel = \relative c' {
  g2 c4 c b a2 g fis4 g2 r
  g2 g4 c b a b2 c d r
  b2 d4 d c b a2 g fis r
  d2 e4 fis g a2 g fis4 g2 r
  b2 b4 a g2 c b4 a b2 r
  b2 b4 a g2 c b4 a b2 r
  b2 d4 c b2 a g4 fis e2 d r
  g2 a4 b g2 c b4 b a2 g1  
}

bas = \relative c {
  c2 a4 c g d' e2 d g, r
  g'2 e4 c e f e2 a g r
  g,2 g4 b c g d'2 g, d' r
  d2 a4 d c a c2 d g, r
  g'2 g4 d e2 c g4 c b2 r
  g2 g4 d' e2 c g4 c b2 r
  g2 b4 c g2 a2 c4 d a2 d r
  c2 a4 g c2 a b4 g d'2 g,1
}

sop = \relative c' {
  e2 a4 g g fis g2 a b r
  d,2 e4 g g a2 gis4 a2 b r
  g2 g4 fis e g fis2 b a r
  d,2 cis4 d e e e2 d d r
  g2 g4 fis e2 g g4 a fis2 r
  g2 g4 fis e2 g g4 a fis2 r
  g2 fis4 e g2 fis4 e2 d cis4 d2 r
  e2 e4 g e2 a fis4 g2 fis4 g1
}

alt = \relative c' {
  c2 e4 e d d b2 d d r
  b2 b4 e e c e2 e g r
  d2 b4 b g d' d2 d d r
  a2 a4 a c c c2 a b r
  d2 d4 d b2 e d4 e dis2 r
  d2 d4 d b2 e d4 e dis2 r
  d2 b4 g d'2 c c4 a a2 a r
  c2 c4 d c2 e d4 d d2 d1
}

% modified for soprano setting
altSS = \relative c' {
  c2 e4 e d d b2 d d r
  b2 b4 e e c e2 e g r
  g2 g4 fis e d d2 d d r
  d2 cis4 d e e e2 d d r
  g2 g4 fis e2 g g4 a fis2 r
  g2 g4 fis e2 g g4 a fis2 r
  g2 fis4 e d( g) fis e2 d cis4 d2 r
  e2 e4 g e2 a fis4 g2 fis4 g1
}

tenSS = \relative c {
  e2 a4 g g fis g2 a b r
  g2 g4 g g a2 gis4 a2 b r
  d2 b4 b g g fis2 b a r
  a2 a4 a c c c2 a b r
  d2 d4 d b2 e d4 e dis2 r
  d2 d4 d b2 e d4 e dis2 r
  d2 b4 g g2 c c4 a a2 a r
  c2 c4 d c2 e d4 d d2 d1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
