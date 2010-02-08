\version "2.13.10"

\include "def.ly"

psalm = 54

keySig = {
  \key g \major
}

mel = \relative c' {
  b2 g4 g a2 b c4 c b2 r
  b2 b4 a b d c b a2 b r
  b2 b4 a g2 e fis4 g e2 d r
  d2 e fis d4 g g fis g2 r
  d'2 g,4 a b g c c b2 r
  d2 c4 b a d c b a2 b r
  b2 c4 b g b a g fis2 g r
  d'2 c4 b a g b2 a g1
}

bas = \relative c' {
  g2 c,4 e d2 g c,4 c g'2 r
  g2 g4 d g g c, g' d2 g r
  g2 g4 d e2 a, d4 g, a2 d r
  b2 a d g,4 g c d g,2 r
  g'2 e4 d g c, a c g2 r
  g'2 a4 e a g c, g' d2 g r
  g2 c,4 g c g d' e d2 g, r
  g'2 c,4 g' d e b2 d g,1
}

sop = \relative c'' {
  g2 e4 e fis2 g g4 g g2 r
  g2 g4 fis g g g g fis2 g r
  g2 g4 fis e2 cis d4 d2 cis4 d2 r
  fis2 a a g4 b c a b2 r
  g2 g4 fis g e a g g2 r
  b2 a4 g c b g g2 fis4 g2 r
  g2 g4 g e g fis g a2 b r
  g2 g4 g fis e fis( g2) fis4 g1
}

alt = \relative c' {
  d2 c4 b d2 d e4 e d2 r
  d2 d4 d d b e d d2 d r
  d2 d4 d b2 a a4 b a2 a r
  b2 cis d b4 d e d d2 r
  b2 b4 d d c e e d2 r
  g2 e4 e e g e d d2 d r
  d2 e4 d c d d b d2 d r
  b2 e4 d d b d2 d d1
}

% modified for soprano setting
altSS = \relative c'' {
  g2 e4 e fis2 g g4 g g2 r
  g2 g4 fis g g g g fis2 g r
  g2 g4 fis e2 cis d4 d2 cis4 d2 r
  b2 cis d b4 d e d d2 r
  g2 g4 fis g e a g g2 r
  g2 e4 e e g e d d2 d r
  d2 e4 d c d d b d2 d r
  g2 g4 g fis e fis( g2) fis4 g1
}

tenSS = \relative c' {
  d2 c4 b d2 d e4 e d2 r
  d2 d4 d d b e d d2 d r
  d2 d4 d b2 a a4 b a2 a r
  fis2 a a g4 b c a b2 r
  b2 b4 d d c e e d2 r
  b2 a4 g c b g g2 fis4 g2 r
  g2 g4 g e g fis g a2 b r
  b2 e4 d d b d2 d d1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
