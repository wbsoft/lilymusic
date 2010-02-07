\version "2.13.10"

\include "def.ly"

psalm = 35

keySig = {
  \key f \major
}

mel = \relative c {
  f2 f4 g a g2 f e4 f2 r
  a2 a4 g a2 c bes4 a g2 r
  a2 c4 c d c bes a g2 f r
  c2 d4 e f a g f e2 f r
  f2 g a f4 g a bes c2 r
  f,2 g a f4 e d d c2 r
  c'2 c4 a f2 bes a4 g a2 r
  a2 g4 f e2 g f4 e f1
}

bas = \relative c, {
  f2 bes4 g f c' d2 c f, r
  f'2 f4 c f2 f g4 f c2 r
  f2 c4 f bes, f' bes, f c'2 f, r
  a2 g4 c d f c d c2 f, r
  f'2 c f f4 e d d c2 r
  f2 c f bes,4 c g g c2 r
  c2 f4 f bes,2 bes f4 c' f,2 r
  f2 c'4 d c2 g bes4 c f,1
}

sop = \relative c' {
  f2 d4 d f e f2 g a r
  f2 f4 e f2 f d4 f e2 r
  f2 g4 a bes a f f e2 f r
  e2 g4 g f f e f g2 f r
  c2 e f c4 c f d e2 r
  c2 e f d4 c c b c2 r
  e2 f4 f d2 f f4 e f2 r
  f2 e4 f g2 bes bes4 g f1
}

alt = \relative c' {
  c2 bes4 bes c c a2 c c r
  c2 c4 c c2 a bes4 c c2 r
  c2 e4 f f f d c c2 a r
  a2 bes4 g bes c c a c2 c r
  a2 c c a4 g f f g2 r
  a2 c c bes4 g g g g2 r
  g2 a4 c bes2 d c4 c c2 r
  c2 c4 a c2 d d4 c c1
}

% modified for soprano setting
altSS = \relative c' {
  c2 bes4 bes c c a2 c c r
  f2 f4 e f2 f d4 f e2 r
  c2 e4 f f f d c c2 a r
  a2 bes4 c bes c c a c2 c r
  c2 e f c4 c f d e2 r
  c2 e f d4 c c b c2 r
  e2 f4 f d2 f f4 e f2 r
  c2 c4 a c2 d d4 c c1
}

tenSS = \relative c {
  f2 d4 d f e f2 g a r
  c2 c4 c c2 a bes4 c c2 r
  f,2 g4 a bes a f f e2 f r
  e2 g4 g f f e f g2 f r
  a2 c c a4 g f f g2 r
  a2 c c bes4 g g g g2 r
  g2 a4 c bes2 d c4 c c2 r
  f,2 e4 f g2 bes bes4 g f1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
