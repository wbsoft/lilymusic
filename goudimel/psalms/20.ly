\version "2.13.10"

\include "def.ly"

psalm = 20

keySig = {
  \key e \dorian
}

mel = \relative c' {
  b2 b4 a b d cis b2 ais4 b \breathe
  g4 g g fis e d2 r
  g2 a4 b c b a g fis2 e4 \breathe
  g4 fis e e dis e2 r
  e2 b'4 b a a b d cis2 b r
  d2 cis4 b a g a2 g r
  g2 e4 fis g a b a g2 fis r
  g2 a4 b a g fis2 e1
}

bas = \relative c {
  b2 e4 fis g d a b fis2 b4 \breathe
  e4 e e d a b2 r
  e2 d4 g c, g d' e b2 e4 \breathe
  e4 dis e a, b e2 r
  e2 e4 b fis' fis e b fis'2 b, r
  b2 fis'4 g d e d2 g, r
  e'2 e4 b e d g d e2 b r
  e2 d4 g, d' e b2 e1
}

sop = \relative c' {
  fis2 g4 fis d a' a fis fis2 fis4 \breathe
  e4 e e a a fis2 r
  e2 fis4 g g g fis e dis2 e4 \breathe
  e4 fis g a fis e2 r
  g2 g4 fis fis fis g b2 ais4 b2 r
  b2 a4 g fis g2 fis4 g2 r
  e2 g4 d e fis g fis e2 dis r
  e2 fis4 g fis e2 dis4 e1
  
}

alt = \relative c' {
  d2 e4 cis b fis' e d cis2 b4 \breathe
  b4 b b d cis b2 r
  b2 d4 d e d d b b2 b4 \breathe
  b4 b b c b b2 r
  b2 e4 d cis cis e fis fis2 fis r
  fis2 fis4 d d b d2 d r
  b2 b4 b b d d d b2 b r
  b2 d4 d d b b2 b1
}

% modified for soprano setting
altSS = \relative c' {
  fis2 g4 fis d fis e d cis2 b4 \breathe
  b4 b b d cis b2 r
  b2 d4 d e d d b b2 b4 \breathe
  b4 b b c b b2 r
  b2 e4 d cis cis e fis fis2 fis r
  fis2 fis4 d d b d2 d r
  b2 b4 d e fis g fis e2 dis r
  e2 fis4 g fis e2 dis4 e1
  
}

tenSS = \relative c' {
  d2 e4 cis b a a fis fis2 fis4 \breathe
  e4 e e a a fis2 r
  e2 fis4 g g g fis e dis2 e4 \breathe
  e4 fis g a fis e2 r
  g2 g4 fis fis fis g b2 ais4 b2 r
  b2 a4 g fis g2 fis4 g2 r
  e2 g4 b b d d d b2 b r
  b2 d4 d d b b2 b1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
