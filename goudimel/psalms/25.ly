\version "2.13.10"

\include "def.ly"

psalm = 25

keySig = {
  \key g \major
}

mel = \relative c' {
  \repeat volta 2 {
    g2 fis4 e d g2 a4 b2 g r
    b2 b c4 b g2 a g r
  }
  g2 a b4 g c c b2 r
  g2 e4 fis2 d4 e g fis2 g r
  b2 b g4 c b a g2 r
  b2 d c4 b a g a2 g1
  
}

bas = \relative c {
  \repeat volta 2 {
    g2 b4 c g e'2 d4 g2 c, r
    g'2 g c,4 g'2 e4 d2 g, r
  }
  g'2 d g4 c, c c g'2 r
  g,2 c4 b2 b4 a g d'2 g, r
  g'2 g c,4 c g d' e2 r
  g2 g c,4 g' d e d2 g,1
  
}

sop = \relative c'' {
  \repeat volta 2 {
    b2 b4 g g e2 fis4 g2 e r
    g2 g g4 g d( g2) fis4 g2 r
  }
  g2 fis g4 e g g g2 r
  b2 g4 b2 d4 c b a2 b r
  g2 g e4 g g fis e2 r
  g2 g g4 g fis g2 fis4 g1
}

alt = \relative c' {
  \repeat volta 2 {
    d2 d4 c b b2 d4 d2 c r
    d2 d e4 d b2 d d r
  }
  d2 d d4 c e e d2 r
  d2 c4 d2 b4 c d d2 d r
  d2 d c4 e d d b2 r
  d2 b e4 d d b d2 d1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    d2 d4 c b b2 d4 d2 c r
    d2 d e4 d2 g fis4 g2 r
  }
  g2 fis g4 e g g g2 r
  d2 c4 d2 b4 c d d2 d r
  g2 g e4 g g fis e2 r
  g2 g g4 g fis g2 fis4 g1
}

tenSS = \relative c' {
  \repeat volta 2 {
    b2 b4 g g e2 fis4 g2 e r
    g2 g g4 g b2 d d r
  }
  d2 d d4 c e e d2 r
  b2 g4 b2 fis4 a b a2 b r
  d2 d c4 e d d b2 r
  d2 b e4 d d b d2 d1
}

breaks = {
  s2*13
  \noBreak % avoid breaking just before rest before repeat
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
