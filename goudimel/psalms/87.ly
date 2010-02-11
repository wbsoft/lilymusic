\version "2.13.10"

\include "def.ly"

psalm = 87

keySig = {
  \key f \mixolydian
}

mel = \relative c {
  f2 d g f4 f g a bes a g2 f r
  bes2 c4 c d2 c a4 bes g g f2 r
  f2 g a f4 f g bes bes a bes2 r
  bes2 g4 f bes2 a f4 g a bes g2 f1
}

bas = \relative c, {
  f2 g es bes'4 d c f es f c2 f r
  es2 c4 f bes,2 c d4 bes c c f,2 r
  f'2 c f bes,4 d c bes f' f bes,2 r
  bes2 c4 d bes2 f' bes,4 es d bes c2 f,1
}

sop = \relative c' {
  c2 bes es d4 d es f g f2 e4 f2 r
  g g4 a bes2 g f4 f f e f2 r
  f e f d4 d es f f f f2 r
  f es4 d f2 f d4 es f f2 e4 f1
}

alt = \relative c' {
  a2 g bes bes4 a c c es c c2 c r
  es2 es4 f f2 es d4 d c c c2 r
  c2 c c bes4 a c d c c d2 r
  d2 c4 a d2 c bes4 bes d d c2 c1
}

% modified for soprano setting
altSS = \relative c' {
  c2 bes es d4 d es f g f2 e4 f2 r
  es2 es4 f f2 es d4 d c c c2 r
  f e f d4 d es f f f f2 r
  f es4 d f2 f d4 es f f2 e4 f1
}

tenSS = \relative c' {
  a2 g bes bes4 a c c es c c2 c r
  g g4 a bes2 g f4 f f e f2 r
  c'2 c c bes4 a c d c c d2 r
  d2 c4 a d2 c bes4 bes d d c2 c1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
