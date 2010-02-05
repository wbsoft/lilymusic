\version "2.13.10"

\include "def.ly"

psalm = 62

keySig = {
  \key e \dorian
}

mel = \relative c {
  e2 b' g a a4 g fis2 e r
  e2 g4 a b d cis cis b2 r
  b2 c4 b a g fis e fis2 e r
  g2 g4 g a2 g4 fis e2 d r
  e2 b'4 b g b a2 g fis r
  b2 a4 g fis e g a fis2 e1
}

bas = \relative c {
  e2 b e d d4 e b2 e r
  e2 e4 d g g a a e2 r
  e2 a,4 b d e b c b2 e r
  e2 e4 e d2 g,4 d' a2 b r
  e2 e4 e e b d2 e b r
  g2 d'4 e b e e a, b2 e1
}

sop = \relative c'' {
  g2 fis e fis fis4 e d2 e r
  g2 e4 fis g b a a gis2 r
  g2 a4 g fis e d e2 dis4 e2 r
  e2 e4 e fis2 d4 d a'2 fis r
  g2 g4 g e fis fis2 e dis r
  g2 fis4 e d g e e2 dis4 e1
}

alt = \relative c' {
  b2 d b d d4 b b2 b r
  b2 b4 d d g e e e2 r
  e2 e4 d d b b g b2 b r
  b2 b4 b d2 b4 a c2 b r
  b2 e4 e b d d2 b b r
  d2 d4 b b b b c b2 b1
}

% modified for soprano setting
altSS = \relative c' {
  e2 fis e fis fis4 e d2 e r
  b2 e4 fis g g e e e2 r
  g2 a4 g fis e d e2 dis4 e2 r
  e2 e4 e fis2 d4 d c2 b r
  b2 e4 e e fis fis2 e dis r
  g2 fis4 e d b e e2 dis4 e1
}

tenSS = \relative c' {
  b2 d b d d4 b b2 b r
  g2 b4 d d b a a gis2 r
  e'2 e4 d d b b g b2 b r
  b2 b4 b d2 b4 a a2 fis r
  b2 g4 g b d d2 b b r
  d2 d4 b b g b c b2 b1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
