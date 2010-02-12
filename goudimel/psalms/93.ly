\version "2.13.10"

\include "def.ly"

psalm = 93

keySig = {
  \key g \mixolydian
}

mel = \relative c' {
  g2 e f g4 g a c c b c2 r
  c2 a c b4 g a b c2 a g r
  e2 f4 g a2 g f4 d e e d2 r
  g2 g4 g a2 c c4 b c2 a g1
}

bas = \relative c {
  g2 c d g,4 g' f a g g c,2 r
  c2 d c g'4 g d g c,2 d g, r
  c2 d4 c f2 c d4 d a a d2 r
  g,2 c4 e d2 c c4 g c2 d g,1
}

sop = \relative c'' {
  g2 g f d4 d f e g g g2 r
  g2 fis g g4 d f g a( g2) fis4 g2 r
  g2 f4 e f2 e d4 d cis cis d2 r
  d2 e4 e f2 g g4 g a( g2) fis4 g1
}

alt = \relative c' {
  d2 c a b4 b c c d d e2 r
  e2 d e d4 b d d e2 d d r
  c2 a4 c c2 c a4 a a a a2 r
  b2 c4 b d2 e e4 d e2 d d1
}

% modified for soprano setting
altSS = \relative c' {
  d2 e d d4 d f e g g g2 r
  g2 fis g g4 d f g a( g2) fis4 g2 r
  e2 d4 e f2 e d4 d cis cis d2 r
  d2 e4 e f2 g g4 g a( g2) fis4 g1
}

tenSS = \relative c' {
  d2 c a b4 b c c d d e2 r
  e2 d e d4 b d d e2 d d r
  c2 a4 c c2 c a4 a a a a2 r
  b2 c4 b d2 e e4 d e2 d d1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
