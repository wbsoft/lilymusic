\version "2.13.10"

\include "def.ly"

psalm = 99

keySig = {
  \key g \major
}

mel = \relative c' {
  g2 d e4 fis g \breathe
  b2 b4 c a g2 r
  d'2 d b4 c d \breathe
  b2 d4 c c b2 r
  d2 c b4 a g \breathe
  e2 fis4 g e d2 r
  d2 g a4 b c2 b4 \breathe
  g2 a4 b c a2 g1
}

bas = \relative c {
  g2 g c4 d g, \breathe
  g'2 g4 c, d g,2 r
  g'2 d e4 a, d \breathe
  g2 g4 a a e2 r
  g2 c, g'4 d e \breathe
  a,2 d4 g, a d2 r
  g,2 g d'4 b a2 b4 \breathe
  e2 d4 g c, d2 g,1
}

sop = \relative c'' {
  b2 g g4 d d \breathe
  g2 g4 g fis g2 r
  b2 a gis4 a a \breathe
  g2 b4 a a gis2 r
  b2 g g4 fis g \breathe
  a2 a4 b a fis2 r
  g2 b a4 g a2 fis4 \breathe
  e2 fis4 g g2 fis4 g1
}

alt = \relative c' {
  d2 b c4 a b \breathe
  d2 d4 e d d2 r
  g2 fis e4 e fis \breathe
  d2 g4 e e e2 r
  g2 e d4 d b \breathe
  cis2 d4 d cis d2 r
  b2 d d4 d e2 d4 \breathe
  b2 d4 d e d2 d1
}

% modified for soprano setting
altSS = \relative c' {
  d2 b c4 a b \breathe
  d2 g4 g fis g2 r
  g2 fis e4 e fis \breathe
  d2 g4 e e e2 r
  d2 e d4 d b \breathe
  cis2 d4 d cis d2 r
  b2 d fis4 g a2 fis4 \breathe
  e2 fis4 g g2 fis4 g1
}

tenSS = \relative c' {
  b2 g g4 d d \breathe
  g2 d'4 e d d2 r
  b2 a gis4 a a \breathe
  g2 b4 a a gis2 r
  b2 g g4 fis g \breathe
  a2 a4 b a fis2 r
  g2 b d4 d e2 d4 \breathe
  b2 d4 d e d2 d1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
