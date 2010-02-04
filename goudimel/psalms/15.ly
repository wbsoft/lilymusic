\version "2.13.10"

\include "def.ly"

psalm = 15

keySig = {
  \key f \mixolydian
}

mel = \relative c {
  f2 f4 f g2 bes a4 a g2 r
  g2 a4 bes c2 g bes4 bes a2 g r
  g2 g4 g f2 f g4 a bes2 r
  d2 c4 bes a2 g bes4 bes a2 r
  c2 bes4 g a2 g a4 bes g2 f1
}

bas = \relative c {
  bes2 d4 d c2 bes f'4 f c2 r
  es d4 g c,2 c bes4 g d'2 g, r
  g'2 es4 c d2 d c4 f bes,2 r
  bes2 f'4 g d2 es bes4 bes f'2 r
  c2 g'4 g f2 c f4 bes, c2 f1
}

sop = \relative c' {
  d2 d4 d es2 f f4 f e2 r
  g2 fis4 g g2 e f4 g fis2 g r
  d2 es4 es d2 d es4 f f2 r
  bes2 a4 g fis2 g f4 f f2 r
  g2 g4 d f2 e f4 f e2 f1
}

alt = \relative c' {
  bes2 a4 a c2 d c4 c c2 r
  bes2 d4 d es2 c d4 d d2 d r
  bes2 bes4 c a2 a c4 c d2 r
  f2 f4 d d2 bes d4 d c2 r
  es2 d4 bes c2 c c4 d c2 c1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \sop \alt \bas \breaks
