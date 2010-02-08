\version "2.13.10"

\include "def.ly"

psalm = 56

keySig = {
  \key f \major
}

mel = \relative c {
  f2 d4 c f2 f4 g2 a4 bes2 a g r
  f2 g4 g a2 c c4 bes g2 bes a r
  g2 a4 g e2 e f4 e d d c2 \breathe
  c'2 bes4 a g f g2 f r
  f2 bes4 bes a2 g a4 bes c c d2 c r
  c2 f,4 g a2 f g4 a bes a g2 a r
  a2 a4 a g2 a bes4 a g f e2 c \breathe
  c'2 bes4 a g g f1
}

bas = \relative c, {
  f2 g4 a d2 d4 g,2 f4 g2 d' g, r
  d'2 c4 c f2 f f4 bes, c2 g a r
  c2 f,4 g a2 c bes4 c g g c2 \breathe
  f,2 bes4 f c' d c2 f, r
  bes2 g4 bes f2 c' f4 bes, f' a g2 c, r
  f2 d4 c f2 bes, g4 f bes f c'2 f, r
  f'2 d4 f c2 f bes,4 f c' d c2 f, \breathe
  f2 bes4 f c' c f,1
}

sop = \relative c'' {
  a2 g4 e d2 a'4 bes2 a4 g g2( fis4) g2 r
  d2 e4 e f2 f f4 f e2 g e r
  e2 f4 d c2 c d4 c c b c2 \breathe
  f2 d4 f e f2 e4 f2 r
  d2 g4 f f2 e f4 f a c2 b4 c2 r
  f,2 f4 e f2 d d4 f f f2 e4 f2 r
  f2 f4 f e2 f f4 f e f g2 f \breathe
  f2 d4 f f e f1
}

alt = \relative c' {
  c2 bes4 a a2 d4 d2 d4 d2 d d r
  a2 c4 c c2 a a4 d c2 d cis r
  c2 c4 bes a2 g bes4 g g g g2 \breathe
  a2 f4 c' c a c2 c r
  bes2 d4 d c2 c c4 d f e g2 e r
  a,2 a4 c c2 bes bes4 c d c c2 c r
  c2 d4 c c2 c d4 c c a c2 a \breathe
  a2 f4 c' c c c1
}

% modified for soprano setting
altSS = \relative c' {
  c2 bes4 a a2 d4 d2 d4 d2 d d r
  d2 e4 e f2 f f4 f e2 g e r
  e2 f4 d c2 c d4 c c b c2 \breathe
  f2 f4 f e f2 e4 f2 r
  d2 g4 f f2 e f4 f f e g2 e r
  f2 f4 e f2 d d4 f f f2 e4 f2 r
  c2 d4 c c2 c d4 c c a c2 a \breathe
  f'2 f4 f f e f1
}

tenSS = \relative c' {
  a2 g4 e d2 a'4 bes2 a4 g g2( fis4) g2 r
  a2 c4 c c2 a a4 d c2 d cis r
  c2 c4 bes a2 g bes4 g g g g2 \breathe
  a2 d4 c c a c2 c r
  bes2 d4 d c2 c c4 d a c2 b4 c2 r
  a2 a4 c c2 bes bes4 c d c c2 c r
  f,2 f4 f e2 f f4 f e f g2 f \breathe
  a2 d4 c c c c1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
