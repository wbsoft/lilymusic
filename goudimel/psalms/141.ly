\version "2.13.10"

\include "def.ly"

psalm = 141

keySig = {
  \key fis \phrygian
}

mel = \relative c {
  fis2 e4 d2 fis4 a2 g4 fis b2 a r
  a2 b4 b a2 fis4 g2 e4 fis2 r
  a2 g4 e fis2 g4 fis2 e4 d2 r
  d2 fis4 g a2 a fis4 a g2 fis1
}

bas = \relative c {
  d2 a4 b2 b4 a2 e'4 d g,2 d' r
  d2 b4 e fis2 b,4 e2 cis4 b2 r
  a2 e'4 a, d2 g,4 d'2 a4 d2 r
  d2 b4 e d2 a d4 d e2 b1
}

sop = \relative c'' {
  a2 a4 fis2 d4 e2 e4 a g2 fis r
  fis2 fis4 g fis2 d4 e2 e4 dis2 r
  e2 e4 cis d2 d4 d2 cis4 d2 r
  fis2 d4 e fis2 e d4 fis e2 dis1
}

alt = \relative c' {
  d2 cis4 b2 b4 cis2 b4 d d2 d r
  d2 d4 e cis2 b4 b2 ais4 b2 r
  c2 b4 a a2 b4 a2 a4 a2 r
  a2 b4 b d2 cis a4 d b2 b1
}

% modified for soprano setting
altSS = \relative c' {
  d2 cis4 b2 b4 cis2 b4 d d2 d r
  fis2 fis4 g fis2 d4 e2 e4 dis2 r
  e2 e4 cis d2 d4 d2 cis4 d2 r
  d2 d4 e fis2 e d4 fis e2 dis1
}

tenSS = \relative c' {
  a2 a4 fis2 d4 e2 g4 a g2 fis r
  d'2 d4 e cis2 b4 b2 ais4 b2 r
  c2 b4 a a2 b4 a2 a4 a2 r
  a2 b4 b d2 cis a4 d b2 b1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
