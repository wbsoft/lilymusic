\version "2.13.10"

\include "def.ly"

psalm = 122

keySig = {
  \key d \major
}

mel = \relative c' {
  a2 a4 b a d cis2 b a r
  \repeat unfold 2 { a2 fis4 g a2 b a4 g fis2 r }
  d'2 cis4 b a fis g2 b a r
  \repeat unfold 2 { fis2 a4 a e fis g fis d2 r }
  d'2 cis4 d a a b d2 cis4 d2 r
  \repeat unfold 2 { a2 d4 cis b b a2 g fis r }
  d2 d4 e fis2 a g4 fis e2 d1
}

bas = \relative c {
  d2 d4 g, d' d a2 e' a, r
  \repeat unfold 2 { d2 d4 e d2 g, d'4 e b2 r }
  d2 a4 b fis' b, e2 e fis r
  \repeat unfold 2 { d2 d4 a a d c d g,2 r }
  d'2 a4 d d fis e d a'2 d, r
  \repeat unfold 2 { d2 d4 a b g d'2 e b r }
  b2 b4 a d2 d g,4 d' a2 d1
}

sop = \relative c' {
  fis2 fis4 g fis fis a2 gis a r
  \repeat unfold 2 { fis2 a4 g fis2 g fis4 e dis2 r }
  fis2 a4 fis fis dis e2 g fis r
  \repeat unfold 2 { d2 fis4 e cis d e d b2 r }
  fis'2 e4 fis fis fis gis a a2 a r
  \repeat unfold 2 { fis2 a4 a fis g fis2 e dis r }
  fis2 fis4 a a2 fis d4 d2 cis4 d1
}

alt = \relative c' {
  d2 d4 d d a e'2 e e r
  \repeat unfold 2 { d2 d4 b d2 d d4 b b2 r }
  a2 e'4 d cis b b2 e cis r
  \repeat unfold 2 { d2 d4 cis a a c a g2 r }
  a2 a4 a d cis e fis e2 fis r
  \repeat unfold 2 { d2 fis4 e d d d2 b b r }
  b2 b4 cis d2 d b4 a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  fis2 fis4 g fis fis e2 e e r
  \repeat unfold 2 { fis2 fis4 e fis2 g fis4 e dis2 r }
  fis2 e4 d cis dis e2 g fis r
  \repeat unfold 2 { d2 fis4 e cis d e d b2 r }
  fis'2 e4 fis d cis e fis e2 fis r
  \repeat unfold 2 { d2 fis4 e d d d2 b dis r }
  b2 b4 cis d2 d d4 d2 cis4 d1
}

tenSS = \relative c' {
  d2 d4 d d a a2 gis a r
  \repeat unfold 2 { d2 d4 b d2 d d4 b b2 r }
  a2 a4 fis a b b2 e cis r
  \repeat unfold 2 { a2 d4 cis a a c a g2 r }
  a2 a4 a fis a gis a a2 a r
  \repeat unfold 2 { fis2 a4 a fis g fis2 g b r }
  fis2 fis4 a a2 fis b4 a a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
