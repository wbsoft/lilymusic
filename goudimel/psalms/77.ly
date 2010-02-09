\version "2.13.10"

\include "def.ly"

psalm = 77

keySig = {
  \key g \dorian
}

mel = \relative c' {
  \repeat unfold 2 { g2 g f4 g a bes a2 g r }
  bes2 a g4 bes a g f2 r
  f2 e d4 g g fis g2 r
  \repeat unfold 2 { bes2 c d4 d c bes c2 bes r }
  bes2 a g4 bes a g f2 r
  f2 e d4 g g fis g1
}

bas = \relative c' {
  \repeat unfold 2 { g2 g d4 g f g d2 g, r }
  g' f c4 bes f' c d2 r
  bes c d4 bes c d g,2 r
  \repeat unfold 2 { g' f bes,4 bes f' g f2 bes, r }
  bes f' c4 bes f' c d2 r
  bes c d4 bes c d g,1
}

sop = \relative c'' {
  \repeat unfold 2 { g2 bes a4 bes a g2 fis4 g2 r }
  g c c4 d c c a2 r
  bes g f4 d es d d2 r
  \repeat unfold 2 { g a bes4 bes a bes2 a4 bes2 r }
  d c c4 d c c a2 r
  bes g f4 d es d d1
}

alt = \relative c' {
  \repeat unfold 2 { d2 d d4 d d d d2 d r }
  d f e4 f f e d2 r
  d c a4 g c a g2 r
  \repeat unfold 2 { d' f f4 f f d f2 f r }
  f f e4 f f e d2 r
  d c a4 g c a g1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat unfold 2 { d2 d d4 d d d d2 d r }
  d f e4 f f e d2 r
  d c a4 d es d d2 r
  \repeat unfold 2 { d f f4 f f d f2 f r }
  f f e4 f f e d2 r
  d c a4 d es d d1
}

tenSS = \relative c' {
  \repeat unfold 2 { g2 bes a4 bes a g2 fis4 g2 r }
  g c c4 d c c a2 r
  bes g f4 g c a g2 r
  \repeat unfold 2 { g a bes4 bes a bes2 a4 bes2 r }
  d c c4 d c c a2 r
  bes g f4 g c a g1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
