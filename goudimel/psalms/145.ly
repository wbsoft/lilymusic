\version "2.13.10"

\include "def.ly"

psalm = 145

keySig = {
  \key d \mixolydian
}

mel = \relative c' {
  a2 b4 g a2 d c4 a b b a2 r
  a2 b4 a fis2 a g4 fis e e d2 r
  d2 a' b g4 a c b2 a gis4 a2 r
  a2 b g e4 g a g fis2 e d r
  g2 fis4 g a2 d a4 b c d b2 a r
  c2 a b a4 fis g b a g fis2 e r
  e2 fis4 g a2 b a4 g a b c2 b r
  d2 c4 b a2 b a4 g fis d e2 d1
}

bas = \relative c {
  a2 e'4 e d2 d f4 f e e a,2 r
  d2 g,4 a d2 a c4 d a a d2 r
  d2 d g, c4 a a e' f2 e a, r
  d2 g, g c4 c a c d2 a d r
  g,2 d'4 e d2 d d4 b a d e2 a, r
  a2 d g, d'4 d c g d' e b2 e r
  e2 b4 e d2 g, d'4 e d b a2 g r
  g2 c4 g d'2 g, a4 c d b a2 d1
}

sop = \relative c'' {
  a2 g4 e fis2 a a4 a gis gis a2 r
  fis2 g4 e d2 e e4 d d cis d2 r
  fis2 fis g e4 e e e d2 e e r
  fis2 g b g4 e e e2 d cis4 d2 r
  b'2 a4 g fis2 fis fis4 fis a a2 gis4 a2 r
  a2 fis g fis4 d e g fis e2 dis4 e2 r
  e2 d4 e fis2 g fis4 e fis g e( fis) g2 r
  g2 e4 g fis2 g e4 e d d2 cis4 d1
}

alt = \relative c' {
  e2 e4 b d2 f f4 c e e e2 r
  d2 d4 c a2 c c4 a a a a2 r
  a2 d d c4 c a gis a2 b cis r
  d2 d d c4 c c c a2 a a r
  d2 d4 b d2 a d4 d e fis e2 e r
  e2 d d d4 a c d d b b2 b r
  b2 b4 b d2 d d4 b d d c2 d r
  b2 g4 d' d2 d c4 c a gis a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  e2 e4 b d2 f f4 c e e e2 r
  fis2 g4 e d2 e e4 d d cis d2 r
  d2 fis g e4 e e e d2 e e r
  fis2 g d c4 e e e2 d cis4 d2 r
  d2 d4 b d2 fis d4 d e fis e2 e r
  a2 fis g fis4 d e g fis e2 dis4 e2 r
  e2 d4 e fis2 g fis4 e fis g e( fis) g2 r
  g2 e4 g fis2 g e4 e d d2 cis4 d1
}

tenSS = \relative c' {
  a2 g4 e fis2 a a4 a gis gis a2 r
  d2 d4 c a2 c c4 a a a a2 r
  a2 d d c4 c a gis a2 b cis r
  d2 d b g4 c c c a2 a a r
  b2 a4 g fis2 a fis4 fis a a2 gis4 a2 r
  e'2 d d d4 a c d d b b2 b r
  b2 b4 b d2 d d4 b d d c2 d r
  b2 g4 d' d2 d c4 c a gis a2 a1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
