\version "2.13.10"

\include "def.ly"

psalm = 74

keySig = {
  \key f \mixolydian
}

mel = \relative c' {
  c2 a4 bes c2 c a4 bes g g f2 r
  f2 a4 bes c2 bes a4 g a c b2 c r
  c2 bes4 a g2 c bes4 a bes c d2 c r
  g2 a4 bes c2 g a4 bes g g f1
}

bas = \relative c {
  f2 f4 g f2 c d4 bes c c f2 r
  f2 f4 g f2 bes, f'4 c f f g2 c, r
  c2 es4 f c2 c es4 f es c bes2 c r
  es2 f4 d c2 c f4 bes, c c f1
}

sop = \relative c'' {
  a2 c4 bes a2 g f4 f f e f2 r
  c'2 c4 bes a2 f f4 e f a g2 g r
  g2 g4 f e2 g g4 f g g bes2 g r
  g2 f4 f es2 es4 g f f2 e4 f1
}

alt = \relative c' {
  f2 f4 d f2 es d4 d c c c2 r
  f2 f4 d f2 d c4 c c f d2 e r
  es2 es4 c c2 es es4 c es es f2 e r
  c2 c4 bes g2 c c4 d c c c1
}

% modified for soprano setting
altSS = \relative c' {
  f2 f4 d f2 es d4 d c c c2 r
  f2 f4 d f2 f f4 e f f d2 e r
  es2 es4 c c2 es es4 c es es f2 e r
  c2 c4 f es2 c c4 d c c c1
}

tenSS = \relative c' {
  a2 c4 bes a2 g f4 f f e f2 r
  c'2 c4 bes a2 d c4 c c a g2 g r
  g2 g4 f e2 g g4 f g g bes2 g r
  g2 f4 f g2 es4 g f f2 e4 f1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
