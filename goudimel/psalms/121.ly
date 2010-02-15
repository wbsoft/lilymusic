\version "2.13.10"

\include "def.ly"

psalm = 121

keySig = {
  \key f \mixolydian
}

mel = \relative c {
  f2 g f4 bes2 a4 g g f2 r
  bes2 bes4 a bes2 c d4 \breathe
  d4 c bes bes a bes2 r
  f2 g4 a bes a2 g fis4 g2 r
  bes2 a4 g f es d2 c4 \breathe
  f4 f g a2 bes g f1
}

bas = \relative c, {
  f2 c' d4 bes2 f4 c' c d2 r
  bes2 bes4 f' es2 c bes4 \breathe
  bes4 f' g es f bes,2 r
  d2 c4 f bes, f c'2 d g, r
  g2 d'4 es bes c g2 c4 \breathe
  f,4 bes g f2 bes c f,1
}

sop = \relative c' {
  f2 es d4 f2 f4 e e d2 r
  f2 f4 f g2 g bes4 \breathe
  bes4 a g g f f2 r
  d2 es4 f f f es2 d d r
  g2 f4 es d c2 b4 c \breathe
  c4 d es f2 g4( f2) e4 f1
}

alt = \relative c' {
  c2 c a4 d2 c4 c c a2 r
  d2 d4 c es2 es f4 \breathe
  f4 f d es c d2 r
  a2 c4 c d c c2 a g r
  d'2 d4 bes bes g g2 g4 \breathe
  a4 bes bes c2 d c c1
}

% modified for soprano setting
altSS = \relative c' {
  f2 es d4 f2 f4 e e d2 r
  d2 d4 c es2 es f4 \breathe
  f4 f d es c d2 r
  d2 es4 f f f es2 d d r
  g2 f4 es d c2 b4 c \breathe
  c4 d es f2 g4( f2) e4 f1
}

tenSS = \relative c' {
  c2 c a4 d2 c4 c c a2 r
  f2 f4 f g2 g bes4 \breathe
  bes4 a g g f f2 r
  a2 c4 c d c c2 a g r
  d'2 d4 bes bes g g2 g4 \breathe
  a4 bes bes c2 d c c1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
