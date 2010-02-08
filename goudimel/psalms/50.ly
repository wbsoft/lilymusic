\version "2.13.10"

\include "def.ly"

psalm = 50

keySig = {
  \key e \dorian
}

mel = \relative c' {
  b2 a4 g fis2 a b4 a g fis e2 r
  e2 b'4 b a2 b cis4 d cis cis b2 r
  b2 b4 b a2 fis g4 b a g fis2 r
  b2 b4 b a2 fis g4 b a g fis \breathe
  a4 g fis e2 d e4 fis g a b2 fis r
  fis2 a4 a b2 d cis4 b a g fis2 e1
}

bas = \relative c' {
  g2 d4 e b2 a g4 d' e b e2 r
  e2 e4 e fis2 b, ais4 b fis' fis b,2 r
  e2 g4 g d2 d e4 b d e b2 r
  e2 g4 g d2 d e4 b d e b \breathe
  a4 b b e2 b c4 b e d g,2 d' r
  d2 d4 d b2 b fis'4 g d e b2 e1
}

sop = \relative c'' {
  g2 fis4 e d2 e g4 fis e dis e2 r
  g2 g4 g fis2 fis fis4 fis fis fis fis2 r
  g2 g4 g fis2 a g4 fis fis e dis2 r
  g2 g4 g fis2 a g4 fis fis e dis \breathe
  e4 e dis e2 fis e4 dis e fis g2 a r
  a2 fis4 fis fis2 b a4 g fis e2 dis4 e1
}

alt = \relative c' {
  d2 d4 b b2 cis d4 d b b b2 r
  b2 e4 e cis2 d cis4 b b ais b2 r
  e2 d4 d d2 d b4 d d b b2 r
  e2 d4 d d2 d b4 d d b b \breathe
  c4 b b b2 b g4 b b d d2 d r
  d2 d4 d d2 fis fis4 d d b b2 b1
}

% modified for soprano setting
altSS = \relative c'' {
  g2 fis4 e d2 e g4 fis e dis e2 r
  b2 e4 e cis2 d fis4 fis fis fis fis2 r
  e2 d4 d d2 d b4 d d b b2 r
  e2 d4 d d2 d b4 d d b b \breathe
  c4 b b b2 b g4 b b d d2 d r
  d2 fis4 fis fis2 fis fis4 d fis e2 dis4 e1
}

tenSS = \relative c' {
  d2 d4 b b2 cis d4 d b b b2 r
  g2 g4 g fis2 fis cis'4 b b ais b2 r
  g2 g4 g fis2 a g4 fis fis e dis2 r
  g2 g4 g fis2 a g4 fis fis e dis \breathe
  e4 e dis e2 fis e4 dis e fis g2 a r
  a2 d4 d d2 b a4 b d b b2 b1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
