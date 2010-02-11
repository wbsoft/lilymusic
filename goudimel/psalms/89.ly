\version "2.13.10"

\include "def.ly"

psalm = 89

keySig = {
  \key g \major
}

mel = \relative c' {
  \repeat volta 2 {
    g2 e4 d g a b2 b d4 c b2 a g r
  }
  b2 b4 a g c b2 g a4 fis g fis e2 d r
  d2 e4 g g fis g2 d g4 a b g c2 b r
  d2 c4 b a a g2 c b4 a g fis e2 d r
  a'2 b4 a2 g fis4 g2 a b4 d c b a2 g1
}

bas = \relative c {
  \repeat volta 2 {
    g2 a4 b e d g,2 g g4 a b2 d g, r
  }
  g'2 g4 d e a, b2 e d4 d c d a2 d r
  d2 c4 e d d g,2 g g4 d' b c c2 g r
  g2 c4 g d' d e2 c g4 a c d a2 d r
  d2 g,4 d' e2 d g, d' g4 g c, g d'2 g1
}

sop = \relative c'' {
  \repeat volta 2 {
    b2 a4 fis e fis g2 g b4 a2 g fis4 g2 r
  }
  g2 g4 fis e a fis2 e2 fis4 d e d2 cis4 d2 r
  fis2 g4 g a a b2 g d4 fis fis e g2 g r
  g2 e4 g g fis g2 g g4 fis e d2 cis4 d2 r
  fis2 g4 fis g2 a b fis g4 b a g2 fis4 g1
}

alt = \relative c' {
  \repeat volta 2 {
    d2 c4 b b d d2 g, g'4 e d2 d d r
  }
  d2 d4 d b e d2 b d4 a c a a2 a r
  a2 c4 b d d d2 b b4 d d c e2 d r
  b2 g4 d' d d b2 e d4 c c a a2 a r
  d2 d4 d b2 d d d d4 b e d d2 d1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    d2 c4 b b d d2 d g4 e d2 d d r
  }
  g2 g4 fis e a fis2 e2 fis4 d e d2 cis4 d2 r
  a2 c4 b d d d2 b d4 fis fis e g2 g r
  g2 g4 g g fis g2 g g4 fis e d2 cis4 d2 r
  d2 d4 d b2 d d fis g4 b a g2 fis4 g1
}

tenSS = \relative c' {
  \repeat volta 2 {
    b2 a4 fis e fis g2 g b4 a2 g fis4 g2 r
  }
  d'2 d4 d b e d2 b d4 a c a a2 a r
  fis2 g4 g a a b2 g b4 d d c e2 d r
  b2 e4 d d d b2 e d4 c c a a2 a r
  fis2 g4 fis g2 a b d d4 b e d d2 d1
}


breaks = {
  s2*9
  \noBreak
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
