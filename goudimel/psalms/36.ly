\version "2.13.10"

\include "def.ly"

psalm = 36

keySig = {
  \key d \major
}

mel = \relative c {
  \repeat volta 2 {
    d2 d4 e fis d fis g a2 r
    a2 g4 fis e d fis g a2 r
    b2 a4 g fis d e2 d r
  }
  \repeat unfold 2 { d'2 d4 d cis a b b a2 r }
  fis2 g4 b a fis g2 fis r
  e2 fis4 g a g fis fis e2 r
  a2 b4 cis d cis b b a2 r
  d,2 e4 fis g fis e2 d1
}

bas = \relative c {
  \repeat volta 2 {
    d2 b4 a d d b e d2 r
    d2 g,4 d' a b b e d2 r
    g,2 d'4 e b b a2 d r
  }
  \repeat unfold 2 { d2 b4 d a a e' e a,2 r }
  d2 g,4 g d' d e2 b r
  e2 b4 e d e b b e2 r
  d2 b4 a d a e' e a,2 r
  d2 cis4 d g, d' a2 d1
}

sop = \relative c' {
  \repeat volta 2 {
    d2 fis4 a a fis d e fis2 r
    fis2 b4 a a fis d e fis2 r
    g2 fis4 e d d2 cis4 d2 r
  }
  \repeat unfold 2 { fis2 fis4 fis e a a gis a2 r }
  d,2 d4 g fis fis e2 dis r
  e2 d4 e fis e e dis e2 r
  fis2 fis4 a a a a gis a2 r
  fis2 e4 d d d2 cis4 d1
}

alt = \relative c' {
  \repeat volta 2 {
    a2 b4 cis d a b b d2 r
    d2 d4 d cis b b b d2 r
    d2 d4 b b fis a2 a r
  }
  \repeat unfold 2 { a2 b4 a a e' e e cis2 r }
  a2 b4 d d d b2 b r
  b2 b4 b d b b b b2 r
  d2 d4 e fis e e e cis2 r
  a2 a4 a b a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    a2 b4 cis d a b b d2 r
    d2 d4 d cis b b b d2 r
    d2 d4 b b d2 cis4 d2 r
  }
  \repeat unfold 2 { fis2 fis4 fis e e e e cis2 r }
  d2 d4 g fis fis e2 dis r
  e2 d4 e fis e e dis e2 r
  d2 d4 e fis e e e cis2 r
  a2 a4 d d d2 cis4 d1
}

tenSS = \relative c {
  \repeat volta 2 {
    d2 fis4 a a fis d e fis2 r
    fis2 b4 a a fis d e fis2 r
    g2 fis4 e d fis a2 a r
  }
  \repeat unfold 2 { a2 b4 a a a a gis a2 r }
  a2 b4 d d d b2 b r
  b2 b4 b d b b b b2 r
  fis2 fis4 a a a a gis a2 r
  fis2 a4 a b a a2 a1
}

breaks = {
  s2*17
  \noBreak
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
