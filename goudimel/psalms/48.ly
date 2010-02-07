\version "2.13.10"

\include "def.ly"

psalm = 48

keySig = {
  \key d \dorian
}

mel = \relative c {
  \repeat unfold 2 { f2 bes4 bes a2 a g4 g4 f2 r }
  \repeat unfold 2 { a2 bes4 a f a g f e2 d r }
  f2 g a4 b c b a2 \breathe d4 c b a a gis a2 r
  \repeat unfold 2 { a2 a bes4 a g f g2 f r }
  d2 d a'4 a c c b2 a r
  c2 b a4 f g f e2 d1
}

bas = \relative c {
  \repeat unfold 2 { d2 g,4 g d'2 f c4 c f,2 r }
  \repeat unfold 2 { d'2 g,4 d' d a c d a2 d r }
  d2 c f4 e a e f2 \breathe d4 a e' f d e a,2 r
  \repeat unfold 2 { f'2 f bes,4 f' c d c2 f, r }
  d'2 d d4 d c a e'2 a, r
  a2 g d'4 d c d a2 d1
}

sop = \relative c'' {
  \repeat unfold 2 { a2 g4 g f2 f e4 e f2 r }
  \repeat unfold 2 { f2 g4 f d e e d2 cis4 d2 r }
  d2 e f4 g a g f2 \breathe a4 a g f f e e2 r
  \repeat unfold 2 { f2 f f4 f e d e2 f r }
  f2 f f4 f g a2 gis4 a2 r
  e2 g f4 d e d2 cis4 d1
}

alt = \relative c' {
  \repeat unfold 2 { d2 d4 d d2 c c4 c c2 r } 
  \repeat unfold 2 { d2 d4 d a c c a a2 a r }
  a2 c c4 e e e c2 \breathe f4 e e c d b cis2 r
  \repeat unfold 2 { c2 c d4 c c a c2 c r }
  a2 a d4 d e e e2 cis r
  a2 d d4 a c a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat unfold 2 { d2 d4 d d2 c c4 c c2 r } 
  \repeat unfold 2 { d2 d4 d d e e d2 cis4 d2 r }
  d2 e f4 g a g f2 \breathe a4 a g f f e e2 r
  \repeat unfold 2 { f2 f f4 f e d e2 f r }
  d2 d f4 f g a2 gis4 a2 r
  e2 g f4 d e d2 cis4 d1
}

tenSS = \relative c' {
  \repeat unfold 2 { a2 g4 g f2 f e4 e f2 r }
  \repeat unfold 2 { f2 g4 f a c c a a2 a r }
  a2 c c4 e e e c2 \breathe f4 e e c d b cis2 r
  \repeat unfold 2 { c2 c d4 c c a c2 c r }
  a2 a d4 d e e e2 cis r
  a2 d d4 a c a a2 a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
