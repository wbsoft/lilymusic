\version "2.13.10"

\include "def.ly"

psalm = 37

keySig = {
  \key c \dorian
}

mel = \relative c {
  c2 c4 c g' g bes bes f g a2 g r
  c2 c4 c d2 c bes4 bes a a g2 r
  c2 bes4 a g2 es f4 g f es d2 c r
  c'2 c4 c d2 c bes4 bes a a g2 r
  bes2 bes4 a g g as g f es f2 es r
  es2 f4 as g2 es f4 es d d c1
}

bas = \relative c {
  c2 c4 c b c bes bes bes es d2 g, r
  c2 c4 c bes2 f' g4 es f f c2 r
  c2 es4 f c2 c bes4 es bes c g2 c r
  c2 c4 c bes2 f' g4 es f f c2 r
  es2 es4 f c es as, es' bes c bes2 es r
  c2 bes4 f g2 c bes4 c g g c1
}

sop = \relative c' {
  es2 es4 es d es f f bes g2 fis4 g2 r
  g2 g4 g bes2 a g4 g f f e2 r
  g2 g4 f es2 c d4 es d c2 b4 c2 r
  g'2 g4 g bes2 a g4 g f f e2 r
  g2 g4 f es es es es d es2 d4 es2 r
  c2 d4 f d2 c d4 c c b c1
}

alt = \relative c' {
  g2 g4 g g c d d d bes d2 d r
  es2 es4 es f2 f d4 es c c c2 r
  es2 es4 c c2 g bes4 bes bes g g2 g r
  es'2 es4 es f2 f d4 es c c c2 r
  es2 es4 c c bes c bes bes g bes2 bes r
  g2 bes4 c bes2 g bes4 g g g g1
}

% modified for soprano setting
altSS = \relative c' {
  g2 g4 g g c d d d bes d2 d r
  es2 es4 es f2 f d4 es c c c2 r
  es2 es4 c c2 c d4 es d c2 b4 c2 r
  es2 es4 es f2 f d4 es c c c2 r
  es2 es4 c es es es es d es2 d4 es2 r
  c2 d4 f d2 c d4 c c b c1
}

tenSS = \relative c {
  es2 es4 es d es f f bes g2 fis4 g2 r
  g2 g4 g bes2 a g4 g f f e2 r
  g2 g4 f es2 g bes4 bes bes g g2 g r
  g2 g4 g bes2 a g4 g f f e2 r
  g2 g4 a c bes c bes bes g bes2 bes r
  g2 bes4 c bes2 g bes4 g g g g1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
