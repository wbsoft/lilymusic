\version "2.13.10"

\include "def.ly"

psalm = 150

keySig = {
  \key d \major
}

mel = \relative c {
  d2 fis e4 d fis g a2 \breathe
  d,2 fis e4 d fis g a2 r
  fis2 b a4 d d cis d2 \breathe
  a2 d b4 a a gis a2 r
  fis2 a b4 a g fis e2 d r
  \repeat unfold 2 {
    d2 g fis4 e fis g a2 r
  }
  d2 b a4 g fis d e2 d1  
}

bas = \relative c {
  d2 d a4 d b b a2 \breathe
  d2 d a4 d b b a2 r
  d2 b fis'4 fis g a d,2 \breathe
  d2 d g,4 d' a e' a,2 r
  d2 d g,4 a c d a2 d r
  \repeat unfold 2 {
    b2 g d'4 cis b e d2 r
  }
  d2 g, d'4 e b b a2 d1
}

sop = \relative c'' {
  a2 a a4 a d d cis2 \breathe
  a2 a a4 a d d cis2 r
  a2 d cis4 a b a a2 \breathe
  fis2 fis g4 fis e e e2 r
  d2 fis g4 e e d2 cis4 d2 r
  \repeat unfold 2 {
    fis2 b a4 a d, e fis2 r
  }
  fis2 g fis4 e d d2 cis4 d1  
}

alt = \relative c' {
  d2 d cis4 fis d b e2 \breathe
  d2 d cis4 fis d b e2 r
  d2 fis fis4 fis e e fis2 \breathe
  d2 a d4 d cis b cis2 r
  d2 d d4 c c a a2 a r
  \repeat unfold 2 {
    b2 d d4 a b b d2 r
  }
  a2 d d4 b b fis a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d cis4 d d d e2 \breathe
  d2 d cis4 d d d e2 r
  d2 fis fis4 fis e e fis2 \breathe
  fis2 fis g4 fis e e e2 r
  d2 fis g4 e e d2 cis4 d2 r
  \repeat unfold 2 {
    b2 d d4 a d b d2 r
  }
  fis2 d d4 b d d2 cis4 d1  
}

tenSS = \relative c' {
  a2 a a4 fis b b cis2 \breathe
  a2 a a4 fis b b cis2 r
  a2 d cis4 a b a a2 \breathe
  d2 a d4 d cis b cis2 r
  d2 d d4 c c a a2 a r
  \repeat unfold 2 {
    fis2 b a4 a d, e fis2 r
  }
  a2 g fis4 g b fis a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks

