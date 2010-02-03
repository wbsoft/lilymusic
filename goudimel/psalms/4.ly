\version "2.13.10"

\include "def.ly"

psalm = 4

keySig = {
  \key g \minor
}

mel = \relative c' {
  bes2 bes4 bes a f g a bes2 a r
  bes2 c g bes4 a bes2 a g r
  d'2 d4 d g,2 d' c4 a bes2 a r
  f2 g4 a bes d c bes c2 bes r
  bes2 c bes g4 a bes2 a g r
  d'2 d4 d g,2 d' c4 a bes2 a r
  bes2 d4 d c a c2 bes a r
  d2 d4 d c f, g a bes2 a r
  bes2 bes4 bes g g a bes c2 bes r
  d2 c4 bes a g a2 a g1
}

bas = \relative c {
  bes2 bes4 bes f' bes, es d g,2 d' r
  g2 c, c bes4 f' bes,2 d g, r
  g'2 d4 d c2 bes f'4 f bes,2 f' r
  d2 c4 f bes, bes f' g f2 bes, r
  es2 c g' g4 fis g2 d g, r
  g2 d'4 d c2 bes f'4 f bes,2 f' r
  bes,2 bes4 bes f' f c2 es f r
  bes,2 bes4 bes f' d c f bes,2 f' r
  bes,2 es4 bes c es f g f2 bes, r
  bes2 f'4 g d es d2 d g,1
}

sop = \relative c' {
  f2 f4 f f d es f g2 fis r
  g2 g e f4 f f g2 fis4 g2 r
  g2 f4 f e2 f f4 f f2 f r
  a2 c4 c d bes a bes2 a4 bes2 r
  g2 g g bes4 a2 g fis4 g2 r
  g2 f4 f e2 f f4 f f2 f r
  f2 bes4 bes a f g2 g f r
  bes2 bes4 bes a bes c c d2 c r
  d2 es4 d c bes a g a2 f r
  bes2 a4 g f g g( fis8 e fis4) fis g1
}

alt = \relative c' {
  d2 d4 d c bes bes d d2 d r
  d2 es c d4 c d2 d d r
  bes2 a4 a c2 f, a4 c d2 c r
  d2 e4 f f f f d f2 f r
  es2 es d d4 d d2 d d r
  bes2 a4 a c2 f, a4 c d2 c r
  d2 f4 f f c es2 es c r
  f2 f4 f f f es f f2 f r
  f2 g4 f es g f d f2 d r
  f2 f4 d d bes d2 d d1
}

% modified for soprano setting
altSS = \relative c' {
  f2 f4 f f d es f g2 fis r
  g2 g e f4 f f g2 fis4 g2 r
  g2 f4 f e2 f f4 f f2 f r
  d2 e4 f f f f d f2 f r
  es2 es d d4 a'2 g fis4 g2 r
  g2 f4 f e2 f f4 f f2 f r
  f2 bes4 bes a f g2 g f r
  f2 f4 f f f es f f2 f r
  f2 g4 f es g f d f2 d r
  f2 f4 d d bes d2 d d1
}

tenSS = \relative c' {
  d2 d4 d c bes bes d d2 d r
  d2 es c d4 c d2 d d r
  bes2 a4 a c2 f, a4 c d2 c r
  a2 c4 c d bes a bes2 a4 bes2 r
  g2 g g bes4 d d2 d d r
  bes2 a4 a c2 f, a4 c d2 c r
  d2 f4 f f c es2 es c r
  bes2 bes4 bes a bes c c d2 c r
  d2 es4 d c bes a g a2 f r
  bes2 a4 g f g g( fis8 e fis4) fis g1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
