\version "2.13.10"

\include "def.ly"

psalm = 75

keySig = {
  \key f \major
}

mel = \relative c' {
  c2 bes a4 d c2 bes a4 \breathe
  d4 c2 bes a g4 g f2 r
  f a g4 c c b c2 \breathe
  d4 d c a bes bes a2 r
  c2 bes a4 c bes a g2 r
  a2 c f,4 bes a2 g f1
}

bas = \relative c {
  f2 g d4 bes f'2 g d4 \breathe
  bes4 f'2 g d4 f c2 f r
  f2 f c4 c f g c,2 \breathe
  bes4 bes f' f g g d2 r
  f2 g d4 c es f c2 r
  f2 f d4 bes f'2 c f1
}

sop = \relative c'' {
  a2 g f4 bes a2 g f4 \breathe
  bes4 a2 g f e4 e f2 r
  a2 c c4 g a g g2 \breathe
  bes4 bes a a g g fis2 r
  a2 g f4 g g f e2 r
  f2 a a4 g2 f e4 f1
}

alt = \relative c' {
  f2 d d4 f f2 d d4 \breathe
  f4 f2 d d4 c c2 c r
  c2 f e4 e f d e2 \breathe
  f4 f f f d d d2 r
  f2 d d4 es es c c2 r
  c2 c d4 d c2 c c1
}

% modified for soprano setting
altSS = \relative c' {
  f2 d d4 f f2 d d4 \breathe
  f4 f2 d d4 c c2 c r
  c2 f e4 e f d e2 \breathe
  f4 f f f d d d2 r
  f2 d d4 es es c c2 r
  c2 c d4 g2 f e4 f1
}

tenSS = \relative c' {
  a2 g f4 bes a2 g f4 \breathe
  bes4 a2 g f e4 e f2 r
  a2 c c4 g a g g2 \breathe
  bes4 bes a a g g fis2 r
  a2 g f4 g g f e2 r
  f2 a a4 d c2 c c1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
