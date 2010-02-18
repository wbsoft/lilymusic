\version "2.13.10"

\include "def.ly"

psalm = 140

keySig = {
  \key g \major
}

mel = \relative c' {
  g2 g4 a b2 b4 c2 c4 b2 a r
  b2 c4 b a g fis2 g a r
  d2 c4 b a2 fis g4 fis e2 d r
  b'2 c4 b a g b2 a g1
}

bas = \relative c' {
  g2 e4 d g2 g4 c,2 c4 g'2 d r
  g2 c,4 g' d e b2 e d r
  g,2 c4 g d'2 d c4 d a2 d r
  g2 c,4 g' d e b2 d g,1
}

sop = \relative c' {
  d2 e4 fis g2 g4 g2 g4 g2 fis r
  g2 g4 g fis e dis2 e fis r
  g2 e4 g fis2 d e4 d2 cis4 d2 r
  g2 g4 g fis e fis( g2) fis4 g1
}

alt = \relative c' {
  b2 b4 d d2 d4 e2 e4 d2 d r
  d2 e4 d d b b2 b d r
  b2 g4 d' d2 a c4 a a2 a r
  d2 e4 d d b d2 d d1
}

% modified for soprano setting
altSS = \relative c' {
  d2 e4 fis g2 g4 g2 g4 g2 fis r
  g2 g4 g fis e dis2 e fis r
  g2 e4 d d2 d e4 d2 cis4 d2 r
  g2 g4 g fis e fis( g2) fis4 g1
}

tenSS = \relative c' {
  b2 b4 d d2 d4 e2 e4 d2 d r
  d2 e4 d d b b2 b d r
  b2 g4 g fis2 a c4 a a2 a r
  d2 e4 d d b d2 d d1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
