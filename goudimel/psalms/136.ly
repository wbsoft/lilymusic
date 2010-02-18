\version "2.13.10"

\include "def.ly"

psalm = 136

keySig = {
  \key d \mixolydian
}

mel = \relative c {
  d2 d g4 a b c d2 r
  b2 d c4 b g2 a g r
  b2 a g4 g c c b2 r
  g2 a fis4 g e e d1
}

bas = \relative c {
  g2 g g4 d' g e d2 r
  g,2 g a4 b e2 d g, r
  g'2 d e4 e c c g2 r
  c2 a b4 g a a d1
}

sop = \relative c'' {
  g2 g b4 a g g fis2 r
  g2 b a4 fis e( g2) fis4 g2 r
  g2 fis e4 e g g g2 r
  e2 e d4 d d cis d1
}

alt = \relative c' {
  b2 b d4 d d c a2 r
  d2 g e4 d b2 d d r
  d2 d b4 b e e d2 r
  c2 c b4 b a a a1
}

% modified for soprano setting
altSS = \relative c' {
  b2 b d4 d d g fis2 r
  d2 g e4 d b2 d d r
  g2 fis e4 e g g g2 r
  e2 e d4 d d cis d1
}

tenSS = \relative c' {
  g2 g b4 a g g a2 r
  g2 b a4 fis e( g2) fis4 g2 r
  d'2 d b4 b e e d2 r
  c2 c b4 b a a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
