\version "2.13.10"

\include "def.ly"

psalm = 40

keySig = {
  \key g \dorian
}

mel = \relative c {
  d2 d4 d f2 g bes4 a2 g fis4 g2 r
  g2 bes4 bes a a g2 g f r
  bes2 a4 g f d f2 g d r
  g2 bes c d4 bes c d bes2 a g r
  \repeat unfold 2 { d2 g4 g f f e2 d r }
  d'2 c4 bes bes a bes2 r
  \repeat unfold 2 { bes2 bes4 bes a2 g f r }
  d2 e4 g g fis g1
}

bas = \relative c {
  d2 d4 d bes2 g g4 d' c2 d g, r
  g'2 g4 g d f es2 c d r
  g,2 d'4 es d d d2 c bes r
  g2 g' f bes,4 d c bes bes2 d g, r
  \repeat unfold 2 { g2 g4 g bes bes c2 g r }
  g'2 c,4 g' es f bes,2 r
  \repeat unfold 2 { bes2 es4 bes f'2 c d r }
  d2 c4 g d' d g,1
}

sop = \relative c' {
  d2 f4 f d2 d d4 d es2 d d r
  g2 g4 g f a bes2 c a r
  g2 f4 g a f d2 e f r
  bes2 g4( bes2) a4 bes bes g bes2 g2 fis4 g2 r
  \repeat unfold 2 { g2 bes4 bes bes bes g2 g r }
  g2 g4 g g f f2 r
  \repeat unfold 2 { f2 g4 f f2 e d r }
  f2 g4 bes a a g1
}

alt = \relative c' {
  a2 a4 a bes2 bes g4 f c'2 a b r
  d2 d4 d d c es2 es d r
  d2 d4 bes d a a2 c f, r
  d'2 d f f4 f e f d2 d d r
  \repeat unfold 2 { bes2 d4 d d d c2 b r }
  bes2 c4 d es c d2 r
  \repeat unfold 2 { d2 es4 d c2 c a r }
  a2 c4 d d d d1
}

% modified for soprano setting
altSS = \relative c' {
  a2 a4 a bes2 bes d4 d es2 d d r
  d2 d4 d d c es2 es d r
  d2 d4 bes d a a2 c d r
  d2 d f f4 f e f d2 d d r
  \repeat unfold 2 { bes2 d4 d d d c2 b r }
  g'2 g4 g g f f2 r
  \repeat unfold 2 { f2 g4 f f2 e d r }
  a2 c4 d d d d1
}

tenSS = \relative c {
  d2 f4 f d2 d g4 f c'2 a b r
  g2 g4 g f a bes2 c a r
  g2 f4 g a f d2 e f r
  bes2 g4( bes2) a4 bes bes g bes2 g2 fis4 g2 r
  \repeat unfold 2 { g2 bes4 bes bes bes g2 g r }
  bes2 c4 d es c d2 r
  \repeat unfold 2 { d2 es4 d c2 c a r }
  f2 g4 bes a a g1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
