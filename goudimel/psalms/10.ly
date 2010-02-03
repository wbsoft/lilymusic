\version "2.13.10"

\include "def.ly"

psalm = 10

keySig = {
  \key d \dorian
}

mel = \relative c' {
  \repeat volta 2 {
    a2 bes g f f e4 d f2 g a r
    a2 a4 b c b a g f2 e d r
  }
  d'2 c4 b a g a b c2 b a r
  c2 b4 a g2 e f4 g a g f2 e r
  a2 c4 c d2 d c4 b a g f2( e) d1
}

bas = \relative c {
  \repeat volta 2 {
    f2 bes, c d d a4 d d2 b a r
    a'2 d,4 g c, e f c d2 a d r
  }
  d2 f4 g d e d g, c2 e a, r
  a2 e'4 f c2 c d4 c f c d2 a r
  d2 a4 a d2 d a4 e' f c d2( a) d1
}

sop = \relative c' {
  \repeat volta 2 {
    f2 f e d d e4 f a2 g e r
    e2 fis4 g g g f e2 d cis4 d2 r
  }
  a'2 a4 g f e f g2 a gis4 a2 r
  a2 g4 f e2 g f4 e f e d2 cis r
  d2 e4 e f2 f e4 g f e2 d( cis4) d1
}

alt = \relative c' {
  \repeat volta 2 {
    c2 d c a a c4 a d2 d cis r
    cis d4 d e e c c a2 a a r
  }
  f'2 f4 d d b d d e2 e e r
  e2 e4 c c2 c a4 c c c a2 a r
  f2 a4 a a2 a a4 g c c a1 a
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    f2 f e d d c4 a d2 d e r
    e2 fis4 g g g f e2 d cis4 d2 r
  }
  f2 f4 d d b d d e2 e e r
  e2 e4 c e2 e f4 e f e d2 cis r
  d2 e4 e f2 f e4 g f e2 d( cis4) d1
}

tenSS = \relative c' {
  \repeat volta 2 {
    c2 d c a a a4 f a2 d cis r
    cis d4 d e e c c a2 a a r
  }
  a2 a4 g f e f g2 a gis4 a2 r
  a2 g4 a c2 c a4 c c c a2 a r
  f2 a4 a a2 a a4 g c c a1 a
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
