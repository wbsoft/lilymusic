\version "2.13.10"

\include "def.ly"

psalm = 149

keySig = {
  \key d \dorian
}

mel = \relative c' {
  d2 c4 b a2 c d4 c b2 a r
  a2 b4 c d2 a c4 c b2 a r
  a2 c b a4 c b a g2 f4 \breathe
  a4 bes a g f e2 d r
  \repeat unfold 2 { d4 d a'2 a4 f g g a2 r }
  f2 g4 a c b a2 g f4 \breathe
  bes4 a g f2 e d1
}

bas = \relative c {
  d2 f4 g d2 a d4 a e'2 a, r
  d2 g4 e d2 d c4 a e'2 a, r
  d2 c g d'4 c g a c2 f,4 \breathe
  f'4 bes, f' c d a2 d r
  \repeat unfold 2 { d4 d d2 a4 d c e d2 r }
  d2 g,4 d' c g a2 c d4 \breathe
  g,4 a c d2 a d1
}

sop = \relative c'' {
  a2 a4 g fis2 a a4 a2 gis4 a2 r
  f2 g4 g fis2 fis g4 a2 gis4 a2 r
  f2 g g fis4 g g f2 e4 f \breathe
  f4 f f e d2 cis4 d2 r
  \repeat unfold 2 { f4 f f2 e4 d e e fis2 r }
  a2 bes4 f g g e( f2) e4 f \breathe
  g4 f e2 d cis4 d1
}

alt = \relative c' {
  f2 f4 d d2 e f4 e e2 e r
  d2 d4 g, a2 d e4 e e2 e r
  d2 e d d4 e d c c2 a4 \breathe
  c4 d c c a a2 a r
  \repeat unfold2 { a4 a d2 c4 a c b d2 r }
  d2 d4 d e d c2 c a4 \breathe
  d4 c c a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  f2 f4 d d2 e f4 e e2 e r
  d2 d4 g fis2 fis g4 a2 gis4 a2 r
  f2 g g fis4 g g f2 e4 f \breathe
  f4 f f e d2 cis4 d2 r
  \repeat unfold 2 { d4 d f2 e4 d e e fis2 r }
  d2 d4 f g g e( f2) e4 f \breathe
  g4 f e2 d cis4 d1
}

tenSS = \relative c' {
  a2 a4 g fis2 a a4 a2 gis4 a2 r
  f2 g4 g a2 d e4 e e2 e r
  d2 e d d4 e d c c2 a4 \breathe
  c4 d c c a a2 a r
  \repeat unfold2 { a4 a d2 c4 a c b d2 r }
  a2 bes4 d e d c2 c a4 \breathe
  d4 c c a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
