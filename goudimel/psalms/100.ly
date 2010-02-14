\version "2.13.10"

\include "def.ly"

psalm = 100

keySig = {
  \key d \phrygian
}

mel = \relative c' {
  g2 a f4 bes a g2 fis4 g2 r
  d2 g4 f g2 bes bes4 a bes2 r
  bes2 c d g,4 a bes2 g f r
  f2 g4 bes f2 g f4 es d1
}

bas = \relative c {
  g2 d' d4 bes f' c2 d4 g,2 r
  g2 g4 d' c2 bes es4 f bes,2 r
  es2 c g g4 f bes2 c f, r
  bes2 g4 g d'2 g, bes4 c g1
}

sop = \relative c'' {
  g2 f d4 f f es2 d4 d2 r
  bes2 d4 d es2 f g4 f f2 r
  es2 es g bes4 a g( f2) e4 f2 r
  d2 d4 d d2 d d4 c b1
}

alt = \relative c' {
  d2 d a4 d c c2 a4 b2 r
  g2 bes4 a c2 d es4 c d2 r
  g,2 g bes bes4 c d2 c c r
  bes2 bes4 g a2 bes bes4 g g1
}

% modified for soprano setting
altSS = \relative c'' {
  g2 f d4 f f es2 d4 d2 r
  bes2 d4 d es2 f g4 f f2 r
  es2 es g d4 f g( f2) e4 f2 r
  d2 d4 d d2 d d4 c b1
}

tenSS = \relative c' {
  d2 d a4 d c c2 a4 b2 r
  g2 bes4 a c2 d es4 c d2 r
  g,2 g bes bes4 c d2 c c r
  bes2 bes4 g a2 bes bes4 g g1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
