\version "2.13.10"

\include "def.ly"

psalm = 123

keySig = {
  \key f \major
}

mel = \relative c' {
  a2 f g a4 a g f a2 bes c4 \breathe
  a4 a g2 f e4 f2 r
  f2 f4 g a a c bes a2 g f e4 \breathe
  f4 g a bes2 a g f r
  a2 a4 bes c2 bes a4 g f g a2 g4 \breathe
  bes4 a g f e d2 c r
  f2 a4 bes c2 c a4 a f2 g a4 \breathe
  a4 g bes a2 g f1
}

bas = \relative c, {
  f2 bes g f4 f c' d d2 g f4 \breathe
  f4 f c d2 c f, r
  f'2 d4 c f f f bes, f'2 c d a4 \breathe
  d4 c f bes,2 c c f, r
  f'2 d4 g f2 bes, f'4 c d es d2 g,4 \breathe
  g4 d' g, bes c g2 c r
  d2 d4 g f2 c d4 d d2 c f,4 \breathe
  f4 c' g a2 c f,1
}

sop = \relative c' {
  f2 d d f4 f e d f2 g a4 \breathe
  f4 f e f2 g a r
  c,2 d4 e f f f f f2 e d c4 \breathe
  d4 e f2 g f e4 f2 r
  f2 f4 g a2 d c4 c a g2 fis4 g \breathe
  g f d d c2 b4 c2 r
  a' f4 g a2 g f4 f d2 e f4 \breathe
  f e g2 f e4 f1
}

alt = \relative c' {
  c2 bes bes c4 c c a d2 d f4 \breathe
  c4 c c a2 c c r
  a2 a4 c c c a d c2 c a a4 \breathe
  a4 c c d2 c c c r
  c2 d4 d f2 f f4 e d bes d2 d4 \breathe
  d4 d bes bes g g2 g r
  d'2 d4 d f2 e d4 d a2 c c4 \breathe
  c4 c d c2 c c1
}

% modified for soprano setting
altSS = \relative c' {
  f2 d d f4 f e d d2 d f4 \breathe
  c4 c c a2 c c r
  c2 d4 e f f f f f2 e d c4 \breathe
  d4 e f2 g f e4 f2 r
  c2 d4 d f2 f f4 e d bes d2 d4 \breathe
  g f d d c2 b4 c2 r
  d2 d4 d f2 e d4 d d2 e f4 \breathe
  f e g2 f e4 f1
}

tenSS = \relative c' {
  c2 bes bes c4 c c a f2 g a4 \breathe
  f4 f e f2 g a r
  a2 a4 c c c a d c2 c a a4 \breathe
  a4 c c d2 c c c r
  f,2 f4 g a2 d c4 c a g2 fis4 g \breathe
  d'4 d bes bes g g2 g r
  a2 f4 g a2 g f4 f a2 c c4 \breathe
  c4 c d c2 c c1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
