\version "2.13.10"

\include "def.ly"

psalm = 7

keySig = {
  \key g \dorian
}

mel = \relative c' {
  g2 g4 a bes g c bes a2 g r
  g2 g4 f g d f f e2 d r
  d2 f4 f g a bes bes a2 r
  f2 g4 bes a g g fis g2 r
  g2 bes4 bes a d c bes c2 bes r
  d2 c4 bes a f g f e2 d r
  g2 g4 f e d f2 g a r
  d,2 f4 e d g g fis g1
}

bas = \relative c' {
  g2 g4 d g g f g d2 g, r
  g2 c4 d g, g d' d a2 d r
  d2 d4 d c a g g a2 r
  d2 c4 bes f' g c, d g,2 r
  g'2 g4 g d bes f' g f2 bes, r
  bes f'4 g d d c d a2 d r
  g,2 g4 d' c g d'2 es d r
  d2 bes4 c g g c d g,1
}

sop = \relative c'' {
  g2 g4 f g bes a g2 fis4 g2 r
  d es4 d d g a a a2 a2 r
  f2 d4 d e f g g e2 r
  d2 e4 f f d es d d2 r
  bes'2 g4 g f bes a bes2 a4 bes2 r
  bes2 a4 g f d e d2 cis4 d2 r
  d2 d4 f g bes a2 g f r
  f2 d4 c b d es d d1
}

alt = \relative c' {
  d2 d4 d d d f d d2 d r
  b2 c4 a b b a d2 cis4 d2 r
  a2 a4 a c c d d cis2 r
  a2 c4 d c b c a b2 r
  d2 d4 d d f f d f2 f r
  f2 f4 d d a c a a2 a r
  bes2 bes4 a c d d2 bes d r
  a2 bes4 g g b c a g1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d4 d d d f d d2 d r
  b2 c4 a b b a d2 cis4 d2 r
  a2 d4 d e f g g e2 r
  d2 e4 f f d es d d2 r
  d2 d4 d d f f d f2 f r
  f2 f4 d d d e d2 cis4 d2 r
  bes2 bes4 a c d d2 bes d r
  a2 d4 c b d es d d1
}

tenSS = \relative c' {
  g2 g4 f g bes a g2 fis4 g2 r
  d es4 d d g a a a2 a2 r
  f2 a4 a c c d d cis2 r
  a2 c4 d c b c a b2 r
  bes2 g4 g f bes a bes2 a4 bes2 r
  bes2 a4 g f a c a a2 a r
  d,2 d4 f g bes a2 g f r
  f2 bes4 g g b c a g1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
