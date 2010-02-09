\version "2.13.10"

\include "def.ly"

psalm = 65

keySig = {
  \key e \minor
}

mel = \relative c' {
  \repeat volta 2 {
    b2 b4 b e,2 b' c4 b a2 g r
    a2 b4 a g2 fis e r
  }
  e2 g4 g fis fis g a b2 a r
  b2 c4 b a a g2 r
  b2 a4 g fis d e fis g2 fis r
  g2 a4 g fis fis e1
}

bas = \relative c {
  \repeat volta 2 {
    e2 b4 b a2 g c4 g d'2 g, r
    d'2 g,4 d' e2 b e r
  }
  e2 e4 e b d c a g2 d' r
  g,2 c4 g d' d g,2 r
  g2 d'4 e b b a d c2 d r
  e2 d4 e b b e1
}

sop = \relative c'' {
  \repeat volta 2 {
    g2 fis4 fis a2 d, e4 g fis2 g r
    fis2 g4 fis2 e dis4 e2 r
  }
  g2 e4 e d d e e g2 fis r
  g2 g4 g fis fis g2 r
  g2 fis4 e d fis a a c2 a r
  g2 fis4 e e dis e1
}

alt = \relative c' {
  \repeat volta 2 {
    e2 d4 d c2 d c4 d d2 b r
    d2 d4 d b2 b b r
  }
  b2 b4 b b a c c d2 d r
  d2 e4 d d d b2 r
  d2 d4 b b b c d e2 d r
  b2 d4 b b b b1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    e2 d4 d e2 g2 g4 g fis2 g r
    fis2 g4 fis2 e dis4 e2 r
  }
  e2 e4 e d d e e g2 fis r
  g2 g4 g fis fis g2 r
  g2 fis4 e d b c d e2 d r
  b2 fis'4 e e dis e1
}

tenSS = \relative c' {
  \repeat volta 2 {
    g2 fis4 b c2 d e4 d d2 b r
    d2 d4 d b2 b b r
  }
  b2 b4 b b a c c d2 d r
  d2 e4 d d d b2 r
  d2 d4 b b fis a a c2 a r
  g2 d'4 b b b b1
}

breaks = {
  s2*13
  \noBreak
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
