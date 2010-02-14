\version "2.13.10"

\include "def.ly"

psalm = 97

keySig = {
  \key d \major
}

mel = \relative c' {
  a2 b4 d d cis d2 r
  d2 b4 cis d b a2 \breathe
  a2 d4 b cis d b2 a r
  d,2 fis4 a g fis e2 d r
  \repeat unfold 2 {
    fis2 e4 a a gis a2 r
  }
  fis2 b4 b a2 g fis4 \breathe
  fis4 b b a2 g fis r
  a2 d,4 g fis2 e d1
}

bas = \relative c {
  d2 g4 b a a d,2 r
  d2 g4 fis d e fis2 \breathe
  d2 d4 g fis d e2 a, r
  d2 d4 a c d a2 d r
  \repeat unfold 2 {
    d2 a4 a d e a,2 r }
  d2 g,4 g d'2 e b4 \breathe
  b4 g g d'2 e b r
  d2 b4 g a2 a d1
}

sop = \relative c' {
  fis2 g4 g a a a2 r
  a2 b4 a a g fis2 \breathe
  fis2 a4 b a a2 gis4 a2 r
  fis2 d4 e e d2 cis4 d2 r
  \repeat unfold 2 {
    a'2 a4 e fis e e2 r
  }
  a2 g4 g fis2 e d4 \breathe
  d4 g g fis2 e dis r
  fis2 fis4 e2 d cis4 d1
}

alt = \relative c' {
  d2 d4 d e e fis2 r
  fis2 d4 fis fis e cis2 \breathe
  d2 fis4 d fis fis e2 cis r
  a2 a4 c c a a2 a r
  \repeat unfold 2 {
    d2 cis4 cis d b cis2 r
  }
  d2 d4 d d2 b b4 \breathe
  b4 d d d2 b b r
  a2 b4 b a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  fis2 g4 g a a a2 r
  fis2 d4 fis fis e cis2 \breathe
  d2 fis4 d fis fis e2 cis r
  a2 d4 e e d2 cis4 d2 r
  \repeat unfold 2 {
    d2 cis4 e fis e e2 r
  }
  fis2 g4 g fis2 e d4 \breathe
  d4 g g fis2 e dis r
  a2 b4 e2 d cis4 d1
}

tenSS = \relative c' {
  d2 d4 d e e fis2 r
  a,2 b4 a a g fis2 \breathe
  fis2 a4 b a a2 gis4 a2 r
  fis2 a4 c c a a2 a r
  \repeat unfold 2 {
    a2 a4 cis d b cis2 r
  }
  d2 d4 d d2 b b4 \breathe
  b4 d d d2 b b r
  fis2 fis4 b a2 a a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
