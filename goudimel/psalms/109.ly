\version "2.13.10"

\include "def.ly"

psalm = 109

keySig = {
  \key g \dorian
}

mel = \relative c' {
  g2 a f d4 d e g fis2 g r
  bes2 bes4 c d d c bes a2 g r
  d2 g bes a4 g f f e2 d r
  g2 bes a g4 f g bes2 a4 bes2 r
  d2 bes4 c g bes a2 g f r
  bes2 a4 g f g g fis g1
}

bas = \relative c' {
  g2 f bes, bes4 d c g d'2 g, r
  g2 g4 c bes bes f' g d2 g, r
  d'2 c bes f'4 c d d a2 d r
  c2 bes f' c4 d g g f2 bes, r
  g'2 g4 c, c bes f'2 c d r
  bes2 f'4 c d g, c d g,1
}

sop = \relative c' {
  d2 f d f4 f g bes a2 g r
  g2 g4 g bes bes a g2 fis4 g2 r
  d2 e f f4 e d d2 cis4 d2 r
  e2 f f e4 d d d f2 f r
  g2 g4 g e f f2 e d r
  f2 f4 e d d es d d1
}

alt = \relative c' {
  bes2 c bes bes4 a c d d2 d r
  d2 d4 e f f f d d2 d r
  a2 c d c4 c a a a2 a r
  c2 d c c4 a bes bes c2 d r
  bes2 d4 es c d c2 c a r
  d2 c4 c a bes c a g1
}

% modified for soprano setting
altSS = \relative c' {
  d2 f d bes4 a c d d2 d r
  g2 g4 g bes bes a g2 fis4 g2 r
  d2 e f f4 e d d2 cis4 d2 r
  e2 f f e4 d d d f2 f r
  g2 g4 g e f f2 e d r
  f2 f4 e d d es d d1
}

tenSS = \relative c' {
  bes2 c bes f4 f g bes a2 g r
  d'2 d4 e f f f d d2 d r
  a2 c d c4 c a a a2 a r
  c2 d c c4 a bes bes c2 d r
  bes2 d4 es c d c2 c a r
  d2 c4 c a bes c a g1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
