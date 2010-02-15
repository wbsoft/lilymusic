\version "2.13.10"

\include "def.ly"

psalm = 119

keySig = {
  \key f \major
}

mel = \relative c {
  f2 g4 a f2 a c4 c bes a g2 r
  a2 f4 e d2 c f4 g a c bes2 a r
  c2 bes4 a g2 a g4 f f e f2 r
  c'2 a4 bes c2 bes a4 g f e d2 c r
  f2 e4 f g2 a bes4 a g f e2 r
  f2 g4 a bes2 a g4 f e f g2 f1
}

bas = \relative c {
  f2 c4 f bes,2 f f4 a bes f c'2 r
  f,2 bes4 c g2 c bes4 g d' a bes2 f r
  f'2 bes,4 f' c2 f, c'4 d bes c f,2 r
  f'2 f4 g f2 bes, f'4 c d a bes2 f r
  f2 c'4 d c2 f, bes4 f c' d c2 r
  f2 c4 f bes,2 f c'4 d a d c2 f,1
}

sop = \relative c' {
  f2 e4 f d2 f a4 a f f e2 r
  f2 d4 c b2 c d4 d f a f2 f r
  a2 d4 c c2 c c4 a bes g a2 r
  a2 c4 bes a2 d c4 c a a f2 f r
  a2 g4 f e2 f f4 f e f g2 r
  a2 c4 c d2 c c4 a a f2 e4 f1
}

alt = \relative c' {
  c2 c4 c bes2 c f4 e d c c2 r
  c2 bes4 g g2 g bes4 bes d e d2 c r
  f2 f4 f e2 f e4 d d c c2 r
  f2 f4 d f2 f f4 e d c bes2 a r
  c2 c4 a c2 c d4 c c a c2 r
  c2 e4 f f2 f e4 d c a c2 c1
}

% modified for soprano setting
altSS = \relative c' {
  f2 e4 f d2 f f4 e d c c2 r
  f2 d4 c b2 c d4 d f e d2 c r
  f2 f4 f e2 f e4 d d c c2 r
  f2 f4 d f2 f f4 e d c bes2 a r
  c2 c4 a c2 c d4 c c a c2 r
  c2 e4 f f2 f e4 d c a c2 c1
}

tenSS = \relative c' {
  c2 c4 c bes2 c a4 a f f e2 r
  c'2 bes4 g g2 g bes4 bes a a f2 f r
  a2 d4 c c2 c c4 a bes g a2 r
  a2 c4 bes a2 d c4 c a a f2 f r
  a2 g4 f e2 f f4 f e f g2 r
  a2 c4 c d2 c c4 a a f2 e4 f1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
