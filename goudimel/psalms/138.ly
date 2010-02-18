\version "2.13.10"

\include "def.ly"

psalm = 138

keySig = {
  \key d \major
}

mel = \relative c {
  \repeat volta 2 {
    d2 fis4 g a2 d cis b a r
    a2 b4 a fis2 \breathe
    fis2 g4 fis e2 d r
  }
  d'2 cis4 b a d cis2 b a r
  a2 e g fis4 \breathe
  e4 fis g a2( b) a r
  d,2 d4 e fis d fis2 g a r
  a2 e g fis4 \breathe
  a4 g fis e2 d1
}

bas = \relative c {
  \repeat volta 2 {
    d2 b4 e d2 d a e' a, r
    d2 g,4 a b2 \breathe
    d2 g,4 d' a2 d r
  }
  d2 a4 e' fis b, cis2 e a, r
  a2 a g d'4 \breathe
  a4 d e fis2( e) a, r
  d2 b4 a d d b2 e d r
  a2 a g d'4 \breathe
  a4 c d a2 d1
}

sop = \relative c' {
  \repeat volta 2 {
    fis2 d4 e fis2 fis e4( a2) gis4 a2 r
    fis2 g4 e d2 \breathe
    d2 d4 d2 cis4 d2 r
  }
  a'2 a4 g fis b2 a gis4 a2 r
  e2 a b a4 \breathe
  a4 a g fis( a2) gis4 a2 r
  fis2 fis4 a a fis d2 e fis r
  e2 cis d d4 \breathe
  e4 e d2 cis4 d1
  
}

alt = \relative c' {
  \repeat volta 2 {
    a2 b4 b d2 a a4( e') e2 e r
    d2 d4 cis b2 \breathe
    a2 b4 a a2 a r
  }
  fis'2 e4 e cis fis e2 e cis r
  cis2 cis d d4 \breathe
  cis d b d( cis e2) cis r
  a,2 b4 cis d a b2 b d r
  cis2 a b a4 \breathe
  c4 c a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    a2 d4 e fis2 fis e4( a2) gis4 a2 r
    fis2 g4 e d2 \breathe
    d2 d4 d2 cis4 d2 r
  }
  fis2 e4 e cis fis e2 e cis r
  cis2 cis d d4 \breathe
  cis d b d( cis e2) cis r
  a2 b4 cis d a b2 b d r
  cis2 cis d d4 \breathe
  e4 e d2 cis4 d1
}

tenSS = \relative c {
  \repeat volta 2 {
    fis2 b4 b d2 a a4( e') e2 e r
    d2 d4 cis b2 \breathe
    a2 b4 a a2 a r
  }
  a2 a4 g a b2 a gis4 a2 r
  e2 a b a4 \breathe
  a4 a g fis( a2) gis4 a2 r
  fis2 fis4 a a fis d2 e fis r
  e2 a b a4 \breathe
  c4 c a a2 a1
}


breaks = {
  s2*15
  \noBreak
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
