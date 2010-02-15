\version "2.13.10"

\include "def.ly"

psalm = 120

keySig = {
  \key g \dorian
}

mel = \relative c' {
  g2 a4 f bes a g f e2 d r
  d2 f4 g a bes a g2 fis4 g2 r
  d2 d4 e f f g a bes2 g r
  d'2 c4 bes a g f g a2 g r
  bes2 bes4 bes a f g a f2 d r
  f2 g4 g a f g a bes2 a r
  bes2 c4 d c bes a2 g f r
  d2 f4 g a2 g g4 fis g1
}

bas = \relative c {
  g2 d'4 d bes f c' d a2 d r
  g,2 d'4 es d bes f' g d2 g, r
  d'2 g,4 c bes d c a g2 c r
  bes2 f'4 g d g, d' es d2 g, r
  g'2 g4 g d d c a d2 g, r
  d'2 c4 c a d g, fis g2 d' r
  g2 f4 bes, f' g d2 g, d' r
  g,2 d'4 es d2 g, c4 d g,1
}

sop = \relative c'' {
  g2 f4 d f f e d2 cis4 d2 r
  bes'2 a4 g f f f d d2 d r
  f2 g4 g bes a c c d2 c r
  bes2 a4 g f bes a g2 fis4 g2 r
  g2 g4 g f a c c a2 g r
  a2 c4 c c a bes a g2 fis r
  g2 a4 bes a g f2 bes a r
  bes2 a4 g f2 d es4 d d1
}

alt = \relative c' {
  d2 d4 a d c c a a2 a r
  d2 d4 bes d d c bes a2 g r
  a2 bes4 c d d e e g2 e r
  f2 f4 d d d d bes d2 d r
  d2 d4 d d f e e d2 b r
  d2 e4 e e f d d d2 d r
  d2 f4 f f d d2 d d r
  d2 d4 bes d2 bes c4 a g1
}

% modified for soprano setting
altSS = \relative c'' {
  g2 f4 d f f e d2 cis4 d2 r
  d2 d4 bes d f f d d2 d r
  a2 bes4 c d d e e g2 e r
  f2 f4 d d d d bes d2 d r
  d2 d4 d d f e e d2 b r
  d2 e4 e e f d d d2 d r
  d2 f4 f f d d2 d d r
  d2 d4 bes d2 d es4 d d1
}

tenSS = \relative c' {
  d2 d4 a d c c a a2 a r
  bes2 a4 g f d' c bes a2 g r 
  f2 g4 g bes a c c d2 c r
  bes2 a4 g f bes a g2 fis4 g2 r
  g2 g4 g f a c c a2 g r
  a2 c4 c c a bes a g2 fis r
  g2 a4 bes a g f2 bes a r
  bes2 a4 g f2 bes c4 a g1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
