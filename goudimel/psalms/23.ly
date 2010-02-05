\version "2.13.10"

\include "def.ly"

psalm = 23

keySig = {
  \key g \dorian
}

mel = \relative c' {
  g2 g4 g d2 d f4 g a g f2 g r
  bes2 a g f d f4 g a g f2 g r
  d'2 d4 d g,2 c c4 bes a g f2 d4 \breathe
  g4 g f g2 f g4 f g a bes2 a r
  bes2 a4 g f2 d f4 f g f e2 d r
  d'2 c4 bes a2 f g4 bes c bes a2 g1
}

bas = \relative c {
  g2 c4 c bes2 bes d4 c f g d2 g, r
  g2 d' g, d' d d4 c f g d2 g, r
  g2 d'4 d c2 c f4 bes, f' c d2 g,4 \breathe
  g4 c d g,2 d' c4 d c f bes,2 f r
  bes2 f4 g d'2 g, d'4 d c d a2 d r
  bes2 f'4 g d2 d g,4 g' f g d2 g,1
}

sop = \relative c' {
  d2 e4 e f2 f d4 e f d d2 d r
  g2 f bes a f d4 e f d d2 d r
  g2 f4 f e2 e f4 f f e d2 b4 \breathe
  d4 es d d2 d e4 d e f f2 f r
  f2 f4 d d2 bes' a4 f e d2 cis4 d2 r
  bes'2 a4 g f2 a bes4 g a g2 fis4 g1
}

alt = \relative c' {
  b2 c4 g bes2 bes a4 c c bes a2 g r
  d'2 d d d a a4 c c bes a2 g r
  bes2 a4 b c2 g a4 d c c a2 g4 \breathe
  b4 c a g2 a c4 a c c d2 c r
  d2 c4 bes a2 g a4 a c a a2 a r
  f'2 f4 d d2 d d4 d f d d2 d1
}

% modified for soprano setting
altSS = \relative c' {
  b2 c4 g bes2 d d4 e f d d2 d r
  d2 d d d a d4 e f d d2 d r
  g2 f4 f e2 e f4 f f e d2 b4 \breathe
  d4 es d d2 d e4 d e f f2 f r
  f2 f4 d d2 bes d4 f e d2 cis4 d2 r
  f2 f4 d d2 d d4 d f d d2 d1
}

tenSS = \relative c {
  d2 e4 e f2 bes a4 c c bes a2 g r
  g2 f bes a f a4 c c bes a2 g r
  bes2 a4 b c2 g a4 d c c a2 g4 \breathe
  b4 c a g2 a c4 a c c d2 c r
  d2 c4 bes a2 g a4 a c a a2 a r
  bes2 a4 g f2 a bes4 g a g2 fis4 g1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
