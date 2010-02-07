\version "2.13.10"

\include "def.ly"

psalm = 34

keySig = {
  \key e \dorian
}

mel = \relative c {
  e2 g4 fis g2 a b r
  b2 b4 b d cis b2 a g r
  b2 a4 g fis a2 g fis4 g2 r
  b2 g4 e a2 fis e r
  e2 g4 fis e e d2 r
  g2 fis4 g a2 b b4 ais b2 r
  b2 d4 d cis2 b a4 g fis2 r
  a2 g4 fis2 e dis4 e1
}

bas = \relative c {
  e2 e4 b e2 cis b r
  g'2 e4 e d fis g2 d g, r
  g' d4 e b a e'2 d g, r
  e'2 e4 e a,2 b e r
  e2 e4 dis e a, b2 r
  e2 b4 e d2 g e4 fis b,2 r
  b2 b4 b fis'2 b, d4 e b2 r
  a2 c4 d a2 b e1
}

sop = \relative c' {
  e2 b'4 b b2 a fis r
  g2 g4 g a a2 g fis4 g2 r
  g2 fis4 e b' c b( a8 g a4) a g2 r
  g2 e4 g fis( e2) dis4 e2 r
  g2 e4 fis g a fis2 r
  e2 b'4 b d2 d e4 cis b2 r
  d2 b4 b ais2 d d4 b b2 r
  c2 c4 a a2 fis e1
}

alt = \relative c' {
  b2 e4 dis e2 e d r
  d2 e4 e fis fis d2 d d r
  d2 d4 b d e2 b4 d2 d r
  e2 b4 b c2 b b r
  b2 b4 b b cis b2 r
  b2 d4 e fis2 g g4 fis fis2 r
  fis2 fis4 fis fis2 fis fis4 e dis2 r
  e2 e4 d c2 b b1
}

% modified for soprano setting
altSS = \relative c' {
  b2 e4 dis e2 e d r
  d2 e4 e fis fis d2 d d r
  d2 d4 b d e2 b4 d2 d r
  e2 b4 b c2 b b r
  b2 b4 b b cis b2 r
  b2 d4 e fis2 g g4 fis fis2 r
  fis2 fis4 fis fis2 fis fis4 e dis2 r
  e2 e4 d c2 b b1
}

tenSS = \relative c {
  e2 b'4 b b2 a fis r
  g2 g4 g a a2 g fis4 g2 r
  g2 fis4 g b c b( a8 g a4) a g2 r
  g2 e4 g fis( e2) dis4 e2 r
  g2 e4 fis g a fis2 r
  e2 b'4 b d2 d e4 cis b2 r
  d2 b4 b ais2 d d4 b b2 r
  c2 c4 a a2 fis e1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
