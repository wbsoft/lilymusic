\version "2.13.10"

\include "def.ly"

psalm = 43

keySig = {
  \key g \major
}

mel = \relative c' {
  g2 a a g4 g c c b2 a
  r4 g a2 c b4 a2 g fis4 g2 r
  b2 b4 b a a b d2 cis4 d2 r
  a2 a4 a b2 a g4 fis e2 d r
  b'2 d4 c b a b2 c b4 \breathe
  b4 a g g fis g1  
}

bas = \relative c' {
  g2 d d e4 e c c g'2 d
  r4 e d2 c g'4 d e2 d g, r
  g'2 g4 g d d g b a2 d, r
  d2 d4 d g2 d4 a( c) d a2 d r
  g2 g4 c, g' d g2 c, g'4 \breathe
  g4 d e c d g,1
}

sop = \relative c'' {
  g2 fis fis e4 e g g g2 fis
  r4 e fis2 g g4 fis e( c) d2 d r
  g2 g4 g fis fis g fis a2 fis r
  fis2 fis4 fis g2 fis4 e2 d cis4 d2 r
  g2 g4 g g fis g2 g g4 \breathe
  g4 fis e e d d1
}

alt = \relative c' {
  b2 d d b4 b e e d2 d
  r4 b d2 e d b4 g a2 b r
  d2 d4 d d d d d e2 d r
  d2 d4 d d2 d4 c2 a4 a2 a r
  d2 b4 e d d d2 e d4 \breathe
  d4 d b c a b1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \sop \alt \bas \breaks
