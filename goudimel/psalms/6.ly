\version "2.13.10"

\include "def.ly"

psalm = 6

keySig = {
  \key e \minor
}

mel = \relative c {
  e2 e4 e d2 d e4( g2 fis4) g2 r
  b2 b4 d c b a2 g r
  d2 e4 g fis e b'2 r
  d2 d4 c b a g2 e r
  a2 a4 g fis e g2 d r
  e2 b'4 b a2 fis e1
}

bas = \relative c {
  e2 a,4 a b2 g c( d) g, r
  g'2 g4 g c, g d'2 g, r
  g2 c4 g d' e b2 r
  g'2 g4 c, g' d e2 a, r
  a2 a4 c d a g2 g r
  c2 g4 g a2 b e1
}

sop = \relative c'' {
  g2 a4 a fis2 g e( d) d r
  g2 g4 b a g2 fis4 g2 r
  g2 g4 b a g fis2 r
  g2 g4 g g fis e2 cis r
  e2 e4 e d cis d2 b r
  g'2 g4 g fis( e2) dis4 e1
}

alt = \relative c' {
  b2 c4 c b2 b c( a) b r
  d2 d4 b e d d2 b r
  b2 c4 d d b d2 r
  b2 b4 e d d b2 a r
  c2 c4 c a a b2 g r
  g2 d'4 d c2 b b1
}

% modified for soprano setting
altSS = \relative c' {
  b2 c4 c b2 b c4( e d2) d r
  g2 g4 b a g2 fis4 g2 r
  b,2 c4 d d b d2 r
  g2 g4 g g fis e2 cis r
  e2 e4 e d cis d2 b r
  c2 d4  g fis( e2) dis4 e1
}

tenSS = \relative c' {
  g2 a4 a fis2 g g4( c a2) b r
  d2 d4 b e d d2 b r
  g2 g4 b a g fis2 r
  b2 b4 e d d b2 a r
  c2 c4 c a a b2 g r
  g2 g4 d' c2 b b1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
