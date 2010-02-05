\version "2.13.10"

\include "def.ly"

psalm = 27

keySig = {
  \key d \mixolydian
}

mel = \relative c' {
  \repeat volta 2 {
    a2 fis g a4 a d d c d b2 a r
    e2 fis a g4 e a g fis2 e d r
  }
  d'2 c4 b a a c c b2 c d r
  g,2 a4 b c c b a a gis a2 r
  a2 c4 c b g a e g2 fis e r
  c'2 b a b4 b a g fis2 e d1
}

bas = \relative c {
  \repeat volta 2 {
    a2 d b a4 a' g g a d, e2 a, r
    a2 d d e4 a, a c d2 a d r
  }
  g,2 c4 g d' d c a e'2 a, d r
  e2 d4 g c, c g' a d, e a,2 r
  a2 a4 a e' e d e e2 b e r
  c2 g' d g4 g, a c d2 a d1
}

sop = \relative c'' {
  \repeat volta 2 {
    a2 a b c4 c b b a a2 gis4 a2 r
    a a fis e4 c e e2 d cis4 d2 r
  }
  g g4 g fis fis g a2 gis4 a2 a r
  e fis4 g g g g e f e e2 r
  e e4 e e e fis g2 e dis4 e2 r
  g2 g fis g4 g fis e2 d cis4 d1
}

alt = \relative c' {
  \repeat volta 2 {
    e2 d d c4 e g g e f e2 e r
    c d d b4 a c c a2 a a r
  }
  b e4 d d d e e e2 e fis r
  b, d4 d e e d cis d b a2 r
  c a4 a g b d b b2 b b r
  e d d d4 d c c a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    e2 d d e4 e g g e f e2 e r
    c2 d d b4 c e e2 d cis4 d2 r
  }
  g2 g4 g fis fis g a2 gis4 a2 a r
  e2 fis4 g g g g e f e e2 r
  e2 e4 e e b d b2 e dis4 e2 r
  g2 g fis g4 g fis e2 d cis4 d1
}

tenSS = \relative c' {
  \repeat volta 2 {
    a2 a b c4 c b b a a2 gis4 a2 r
    a2 a fis g4 a c c a2 a a r
  }
  b2 e4 d d d e e e2 e fis r
  b,2 d4 d e e d cis d b a2 r
  c2 a4 a g e fis g b2 b b r
  e2 d d d4 d c c a2 a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
