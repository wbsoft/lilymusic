\version "2.13.10"

\include "def.ly"

psalm = 18

keySig = {
  \key g \dorian
}

mel = \relative c' {
  g2 bes bes a4 a bes c d c bes2 a r
  f2 g4 bes a2 c bes4 bes a g a2 g r
  g2 bes4 bes a2 g f4 g f es d2 r
  d2 f4 f g2 bes a4 g g fis g2 r
  d'2 c4 bes a2 f g4 a bes d c2 bes r
  bes2 a4 g c2 d c4 bes a g a2 g r
  bes2 a4 g f2 g f4 g f es d2 r
  f2 g4 a bes2 c bes4 bes a a g1
}

bas = \relative c' {
  g2 g g d4 d g f bes, f' g2 d r
  d2 c4 g d'2 c g4 g d' es d2 g, r
  g'2 g4 g d2 g, d'4 g, bes c g2 r
  d'2 d4 d c2 bes f'4 g c, d g,2 r
  bes2 f'4 g d2 d c4 f bes, bes f'2 bes, r
  bes2 f'4 g f2 bes, f'4 g d es d2 g, r
  g2 d'4 g, d'2 c d4 g, bes c g2 r
  d'2 c4 f bes,2 f g4 g d' d g,1
}

sop = \relative c'' {
  g2 g g fis4 fis g a bes a g2 fis r
  d2 e4 g fis2 g g4 g fis g2 fis4 g2 r
  d2 g4 g f2 bes a4 bes bes g g2 r
  f2 d4 d e2 f f4 d es d d2 r
  bes'2 a4 g f2 a c4 c d bes2 a4 bes2 r
  d2 c4 bes a2 bes a4 g f g2 fis4 g2 r
  g2 f4 bes a2 c a4 bes bes g g2 r
  d2 e4 f f2 a g4 g fis fis g1
}

alt = \relative c' {
  d2 d d d4 d d f f f d2 d r
  a2 c4 d d2 es d4 d d bes d2 d r
  bes2 d4 d d2 d d4 d d c b2 r
  a2 a4 a c2 d c4 b c a g2 r
  f'2 f4 d d2 d e4 f f f f2 d r
  f2 f4 d f2 f f4 d d bes d2 d r
  d2 d4 d d2 es d4 d d c b2 r
  a2 c4 c d2 f d4 d d d d1
}

% modified for soprano setting
altSS = \relative c'' {
  g2 g g fis4 fis g a bes a g2 fis r
  d2 e4 g fis2 g g4 g fis g2 fis4 g2 r
  d2 g4 g f2 d d4 d d c b2 r
  a2 d4 d e2 f f4 d es d d2 r
  f2 f4 d d2 d e4 f f f f2 d r
  f2 f4 d f2 f f4 d d bes d2 d r
  d2 d4 d d2 es d4 d d c b2 r
  a2 c4 c d2 f d4 d d d d1
}

tenSS = \relative c' {
  d2 d d d4 d d f f f d2 d r
  a2 c4 d d2 es d4 d d bes d2 d r
  bes2 d4 d d2 bes a4 bes bes g g2 r
  f2 a4 a c2 d c4 b c a g2 r
  bes2 a4 g f2 a c4 c d bes2 a4 bes2 r
  d2 c4 bes a2 bes a4 g f g2 fis4 g2 r
  g2 f4 bes a2 c a4 bes bes g g2 r
  d2 e4 f f2 a g4 g fis fis g1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
