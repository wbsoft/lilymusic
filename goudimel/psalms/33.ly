\version "2.13.10"

\include "def.ly"

psalm = 33

keySig = {
  \key d \dorian
}

mel = \relative c {
  \repeat volta 2 {
    d2 a'4 a c b a g f2 e r
    e2 f4 g a d c2 b a r
  }
  \repeat unfold 2 { e4 e g g f2 e r }
  c'2 b4 a2 gis4 a2 r
  d4 d e d c2 a r
  e2 g a4 b c2 a r
  a g4 f e2 d1
}

bas = \relative c {
  \repeat volta 2 {
    d2 d4 d a e' f c d2 a r
    a d4 c f d e2 e a, r
  }
  \repeat unfold 2 { c4 c g g d'2 a r }
  a e'4 a, e'2 a, r
  d4 d c d a2 d r
  c c a4 g c2 d r
  f c4 d a2 d1
}

sop = \relative c'' {
  \repeat volta 2 {
    a2 f4 f a g f e d2 cis r
    c2 d4 e f a a( gis8 fis gis4) gis a2 r
  }
  \repeat unfold 2 { c,4 c d d d2 cis r }
  e2 e4 e e2 e r
  f4 f g f e2 d r
  c2 e e4 g g2 fis r
  f2 e4 d2 cis4 d1
}

alt = \relative c' {
  \repeat volta 2 {
    a2 d4 d e e c c a2 a r
    a2 a4 c c f e2 e c r
  }
  \repeat unfold 2 { g4 g bes bes a2 a r }
  a2 g4 c b2 cis r
  a4 a c a a2 fis r
  g2 c c4 d e2 d r
  c2 c4 a a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    d2 f4 f a g f e d2 cis r
    c2 d4 e f a a( gis8 fis gis4) gis a2 r
  }
  \repeat unfold 2 { c,4 c d d d2 cis r }
  e2 e4 e e2 e r
  f4 f g f e2 d r
  c2 e e4 g g2 fis r
  f2 e4 d2 cis4 d1
}

tenSS = \alt


breaks = {
  s2*13
  \noBreak
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
