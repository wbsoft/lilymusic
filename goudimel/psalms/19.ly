\version "2.13.10"

\include "def.ly"

psalm = 19

keySig = {
  \key d \mixolydian
}

mel = \relative c {
  \repeat volta 2 {
    d2 a'4 a b2 a g r
    g2 a4 b c2 b a r
    e2 g4 g fis2 e d r
  }
  d'2 d4 d c2 b a r
  g2 a4 b c2 b a r
  b2 a4 g fis g e2 d r
  d'2 g,4 a c2 b a r
  g2 fis4 e fis2 g a r
  a2 b4 a g fis e2 d1
}

bas = \relative c {
  \repeat volta 2 {
    d2 d4 d g,2 d' e r
    g2 fis4 g c,2 e a, r
    e'2 e4 c d2 a d r
  }
  d2 b4 b c2 g d' r
  e2 a,4 gis a2 e' a, r
  g2 a4 c d g, a2 d r
  d2 e4 d c2 g d' r
  e2 b4 c b2 e d r
  d2 g,4 a c d a2 d1
}

sop = \relative c'' {
  \repeat volta 2 {
    a2 fis4 fis g2 fis e r
    b'2 a4 g g( a2) gis4 a2 r
    g2 e4 e2 d cis4 d2 r
  }
  fis2 fis4 fis e2 g fis r
  b2 c4 b2 a gis4 a2 r
  g2 e4 e d d2 cis4 d2 r
  fis2 e4 fis g2 g fis r
  e2 d4 e dis2 e fis r
  fis2 g4 e e d2 cis4 d1
}

alt = \relative c' {
  \repeat volta 2 {
    a2 d4 d d2 d b r
    d2 d4 d e2 e cis r
    b2 b4 c a2 a a r
  }
  a2 b4 b g2 d' d r
  b2 e4 e e2 e cis r
  d2 c4 c a b a2 a r
  d2 b4 d e2 d d r
  b2 b4 g b2 b d r
  d2 d4 c c a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    d2 d4 d d2 d b r
    d2 d4 d e2 e cis r
    b2 b4 c a2 a a r
  }
  fis'2 fis4 fis e2 g fis r
  e2 e4 e e2 e cis r
  g'2 e4 e d d2 cis4 d2 r
  fis2 e4 fis g2 g fis r
  e2 d4 e dis2 e fis r
  fis2 g4 e e d2 cis4 d1
}

tenSS = \relative c' {
  \repeat volta 2 {
    a2 fis4 fis g2 fis e r
    b'2 a4 g g( a2) gis4 a2 r
    g2 e4 e2 d cis4 d2 r
  }
  a'2 b4 b g2 d' d r
  b2 c4 b2 a gis4 a2 r
  d2 c4 c a b a2 a r
  d2 b4 d e2 d d r
  b2 b4 g b2 b d r
  d2 d4 c c a a2 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
