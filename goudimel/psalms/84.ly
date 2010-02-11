\version "2.13.10"

\include "def.ly"

psalm = 84

keySig = {
  \key d \major
}

mel = \relative c {
  d2 a' g4 fis e d e2 fis r
  fis2 b4 b a fis a2 g fis r
  a2 g4 fis e a g fis e2 d r
  \repeat unfold 2 { d2 fis4 g a2 b a4 gis a2 r }
  d2 cis4 b a2 fis g4 a b2 a r
  a2 a4 g fis2 b a4 g fis2 r
  d2 fis4 a e g fis2 e d1
}

bas = \relative c {
  d2 d g,4 d' a b a2 d r
  d2 g,4 g d' d d2 e b r
  d2 e4 b e d g, d' a2 d r
  \repeat unfold 2 { d2 b4 e d2 g, a4 e' a,2 r }
  g2 a4 g d'2 d e4 d g,2 d' r
  a2 d4 e b2 g d'4 e b2 r
  b2 d4 a a e' b( d) a2 d1
}

sop = \relative c' {
  fis2 d d4 d cis b cis2 d r
  a'2 g4 g fis d fis2 e dis r
  fis2 e4 d g fis d d2 cis4 d2 r
  \repeat unfold 2 { fis2 d4 e fis2 g e4 e e2 r }
  g2 e4 g fis2 a g4 fis g2 fis r
  e2 fis4 e dis2 g fis4 e dis2 r
  fis2 d4 e cis e2 d cis4 d1
}

alt = \relative c' {
  a2 fis b4 a a fis a2 a r
  a2 d4 d d a d2 b b r
  d2 b4 b b d b a a2 a r
  \repeat unfold 2 { a2 b4 b d2 d cis4 b cis2 r }
  b2 a4 d d2 d b4 d d2 d r
  cis2 d4 b b2 d d4 b b2 r
  b2 a4 c a b2 a4 a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 d d4 d cis b cis2 d r
  d2 d4 d d d fis2 e dis r
  d2 b4 b b d d d2 cis4 d2 r
  \repeat unfold 2 { d2 d4 e fis2 g e4 e e2 r }
  g2 e4 g fis2 d b4 d d2 d r
  cis2 d4 b b2 d d4 b b2 r
  d2 d4 e cis e2 d cis4 d1
}

tenSS = \relative c {
  fis2 fis b4 a a fis a2 a r
  a2 g4 g fis a d2 b b r
  fis2 e4 d g fis b a a2 a r
  \repeat unfold 2 { a2 b4 b d2 d cis4 b cis2 r }
  b2 a4 d d2 a g4 fis g2 fis r
  e2 fis4 e dis2 g fis4 e dis2 r
  b'2 a4 c a b2 a4 a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
