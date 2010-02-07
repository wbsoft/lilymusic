\version "2.13.10"

\include "def.ly"

psalm = 41

keySig = {
  \key c \dorian
}

mel = \relative c' {
  g2 c4 c bes2 c d4 c bes2 a g4 \breathe
  es4 f g g fis g2 r
  c,2 g' as g4 bes c d2 c b4 c \breathe
  g4 g f es2 d c r
  c2 es4 d c2 g' g4 g as2 f es4 \breathe
  g4 a bes c a g2 r
  c2 g c bes4 g bes a g2 f es4 \breathe
  as4 g f es2 d c1
}

bas = \relative c {
  c2 c4 c g2 c bes4 f' g2 d g,4 \breathe
  c4 bes es c d g,2 r
  c2 c f, c'4 g c bes c2 g c4 \breathe
  c4 es bes c2 g c r
  c2 c4 g c2 c es4 es as,2 bes es4 \breathe
  es4 d g, c d g,2 r
  c2 c c g4 c bes f g2 bes c4 \breathe
  f,4 g bes c2 g c1
}

sop = \relative c' {
  es2 g4 g g2 g bes4 a2 g fis4 g \breathe
  g4 bes bes c a g2 r
  g2 es f es4 g g bes g2 g g4 \breathe
  es4 es d2 c b4 c2 r
  c2 c4 b c2 es es4 es f4( es2) d4 es \breathe
  es4 f g g fis g2 r
  g2 es g g4 es f f2 es d4 es4 \breathe
  f4 es d2 c b4 c1
}

alt = \relative c' {
  c2 es4 es d2 es f4 f d2 d d4 \breathe
  c4 d es es d d2 r
  es2 c c c4 d es f2 es4 d2 c4 \breathe
  c4 bes bes g2 g g r
  g2 g4 g g2 c bes4 bes c2 bes bes4 \breathe
  bes d d es d d2 r
  es c es d4 c d c bes2 bes g4 \breathe
  c bes bes g2 g g1
}

% modified for soprano setting
altSS = \relative c' {
  c2 es4 es d2 es f4 f d2 d d4 \breathe
  c4 d es es d d2 r
  c2 c c c4 d es f2 es4 d2 c4 \breathe
  es4 es d2 c b4 c2 r
  c2 c4 b c2 es es4 es f4( es2) d4 es \breathe
  es4 f g g fis g2 r
  g2 es g g4 es f f2 es d4 es4 \breathe
  f4 es d2 c b4 c1
}

tenSS = \relative c {
  es2 g4 g g2 g bes4 a2 g fis4 g \breathe
  g4 bes bes c a g2 r
  es2 es f es4 g g bes g2 g g4 \breathe
  c4 bes bes g2 g g r
  g2 g4 g g2 c bes4 bes c2 bes bes4 \breathe
  bes d d es d d2 r
  es c es d4 c d c bes2 bes g4 \breathe
  c bes bes g2 g g1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
