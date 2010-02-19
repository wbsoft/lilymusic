\version "2.13.10"

\include "def.ly"

psalm = 148

keySig = {
  \key d \dorian
}

mel = \relative c {
  f2 e4 d f2 g4 a2 gis4 a2 r
  a2 d4 d c a c2 b a r
  a2 c4 b a g2 f e4 f2 r
  f2 g4 bes a g f2 e d r
  \repeat unfold 2 { d'2 c4 c d a c c b2 a r }
  a2 b4 c a d d cis d2 r
  a2 c4 b a g f2 e d1
}

bas = \relative c {
  d2 a4 d d2 c4 a e'2 a, r
  d2 d4 d f f c2 e a, r
  d2 c4 g a c d2 c f, r
  d'2 g,4 g a c d2 a d r
  \repeat unfold 2 { d2 a'4 a d, d c a e'2 a, r }
  a'2 e4 a d, d g e d2 r
  d2 c4 g a c d2 a d1
}

sop = \relative c' {
  d2 c4 d d2 e4 e e2 e r
  f2 a4 a a f g( a2) gis4 a2 r
  f2 g4 g e e f2 g a2 r
  a2 bes4 g f e2 d cis4 d2 r
  \repeat unfold 2 { a'2 a4 a a f g a2 gis4 a2 r }
  a2 gis4 a fis fis g g fis2 r
  f2 g4 g f e2 d cis4 d1
}

alt = \relative c' {
  a2 a4 a a2 c4 c b2 a r
  d2 f4 f f c e2 e e r
  d2 e4 d c c a2 c c r
  d2 d4 d c c a2 a a r
  \repeat unfold 2 { f'2 e4 e f d e e e2 e r }
  e2 e4 e d a bes g a2 r
  d2 e4 d c c a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 c4 d d2 e4 e e2 e r
  d2 f4 f f c e2 e e r
  d2 e4 d c c a2 c c r
  d2 d4 g f e2 d cis4 d2 r
  \repeat unfold 2 { f2 e4 e f d e e e2 e r }
  e2 e4 e d fis g g fis2 r
  f2 g4 g f e2 d cis4 d1
}

tenSS = \relative c' {
  a2 a4 a a2 c4 c b2 a r
  f2 a4 a a f g( a2) gis4 a2 r
  f2 g4 g e e f2 g a2 r
  a2 bes4 d c c a2 a a r
  \repeat unfold 2 { a2 a4 a a f g a2 gis4 a2 r }
  a2 gis4 a fis a bes g a2 r
  d2 e4 d c c a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
