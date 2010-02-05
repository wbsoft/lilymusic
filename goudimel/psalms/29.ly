\version "2.13.10"

\include "def.ly"

psalm = 29

keySig = {
  \key d \major
}

mel = \relative c' {
  a2 b a4 b cis2 d a r
  d cis b4 d cis b a2 r
  a2 fis4 b2 a4 g fis e2 r
  fis2 g4 a2 g4 fis e d2 r
  \repeat unfold 2 { d2 a' a4 fis g a b2 a r }
  a2 b d4 cis b a g2 fis r
  d2 fis4 a2 e4 g fis e2 d1
}

bas = \relative c {
  d2 g, d'4 b a2 d d r
  d2 a e'4 d e e a,2 r
  d2 d4 g,2 d'4 e d a2 r
  d2 e4 d2 g,4 a a d2 r
  \repeat unfold 2 { d2 d a4 b e fis e2 a, r }
  a2 e' d4 a b d e2 b r
  b2 b4 a2 a4 g d' a2 d1
}

sop = \relative c' {
  fis2 g fis4 fis a2 a fis r
  a2 a gis4 a a gis a2 r
  fis2 a4 g2 fis4 e a a2 r
  a2 g4 fis2 d4 d cis d2 r
  \repeat unfold 2 { a'2 d cis4 b b a2 gis4 a2 r }
  a2 gis a4 a g fis e2 dis r
  fis2 d4 e2 cis4 d d2 cis4 d1
}

alt = \relative c' {
  d2 d d4 d e2 fis d r
  fis2 e e4 fis e e cis2 r
  d2 d4 d2 d4 b d cis2 r
  d2 b4 d2 b4 a a a2 r
  \repeat unfold 2 { fis'2 fis e4 d e cis e2 e r }
  e2 e fis4 e d d b2 b r
  b2 b4 cis2 a4 b a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d d4 d e2 fis d r
  fis2 e e4 fis e e cis2 r
  d2 d4 d2 d4 b d cis2 r
  d2 b4 d2 d4 d cis d2 r
  \repeat unfold 2 { d2 fis e4 d e cis e2 e r }
  e2 e fis4 e g fis e2 dis r
  d2 d4 e2 cis4 d d2 cis4 d1
}

tenSS = \relative c {
  fis2 g fis4 fis a2 a fis r
  a2 a gis4 a a gis a2 r
  fis2 a4 g2 fis4 e a a2 r
  a2 g4 fis2 b4 a a a2 r
  \repeat unfold 2 { a2 d cis4 b b a2 gis4 a2 r }
  a2 gis a4 a d d b2 b r
  fis2 b4 cis2 a4 b a a2 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
\score { \sopranoSetting \midi{}\layout{}}
