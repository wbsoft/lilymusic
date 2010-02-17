\version "2.13.10"

\include "def.ly"

psalm = 126

keySig = {
  \key a \dorian
}

mel = \relative c' {
  g2 fis4 g a b2 a gis4 a2 r
  a2 b c a4 a b c d2 r
  d2 c4 c d a c2 b a r
  a2 g4 a e g fis2 e d r
  \repeat unfold 2 {
    d2 a'4 a e fis g a fis2 e r
  }
  a2 b4 b g g c2 b a r
  a2 a4 b g a fis2 e d1
}

bas = \relative c {
  e2 b4 e d g, d'2 e a, r
  a'2 e a d,4 fis e a g2 r
  d2 a'4 a d, d c2 e a, r
  a2 e'4 a, c c d2 a d r
  \repeat unfold 2 {
    d2 d4 d c d e a, b2 e r
  }
  d2 g4 g c, c c2 g d' r
  d2 d4 b c a d2 a d1  
}

sop = \relative c' {
  e2 d4 e fis g fis2 e e r
  a2 gis a fis4 a gis a b2 r
  a2 a4 a a fis g( a2) gis4 a2 r
  e2 e4 e c e2 d cis4 d2 r
  \repeat unfold 2 {
    fis2 fis4 fis a a g e2 dis4 e2 r
  }
  fis2 g4 g e e g2 g fis r
  fis2 fis4 fis e e2 d cis4 d1
}

alt = \relative c' {
  b2 b4 b d d d2 b cis r
  e2 e e d4 cis e e g2 r
  fis2 e4 e fis d e2 e e r
  c2 b4 c g c a2 a a r
  \repeat unfold 2 {
    a2 d4 d e d b c b2 b r
  }
  d2 d4 d c c e2 d d r
  d2 d4 d c c a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  e2 d4 e fis g fis2 e e r
  e2 e e d4 cis e e g2 r
  fis2 e4 e fis d e2 e e r
  e2 e4 e c e2 d cis4 d2 r
  \repeat unfold 2 {
    a2 d4 d e d b e2 dis4 e2 r
  }
  fis2 g4 g e e g2 g fis r
  fis2 fis4 fis e e2 d cis4 d1
}

tenSS = \relative c' {
  b2 b4 b d d d2 b cis r
  a2 gis a fis4 a gis a b2 r
  a2 a4 a a fis g( a2) gis4 a2 r
  c2 b4 c g c a2 a a r
  \repeat unfold 2 {
    fis2 fis4 fis a a g c b2 b r
  }
  d2 d4 d c c e2 d d r
  d2 d4 d c c a2 a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
