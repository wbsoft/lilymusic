\version "2.13.10"

\include "def.ly"

psalm = 91

keySig = {
  \key d \dorian
}

mel = \relative c {
  \repeat volta 2 {
    d2 a'4 a g e f2 g a r
    a2 c4 c b g a2( b) a r
  }
  a2 g4 e f f g2 a d, r
  d'2 a4 c b a g2 f r
  a2 bes4 a g f e d e2 r
  a2 g4 d f g e2 d1
}

bas = \relative c {
  \repeat volta 2 {
    d2 d4 f c c d2 bes a r
    d2 c4 a e' e f2( e) a, r
  }
  a2 e'4 a, d d c2 b g r
  d'2 d4 a e' f c2 f, r
  f'2 bes,4 f' c4 d a bes a2 r
  a2 c4 d d g, a2 d1
}

sop = \relative c' {
  \repeat volta 2 {
    f2 f4 f e e d( a') g2 e r
    f2 g4 a g c2 a( gis4) a2 r
  }
  c2 b4 a a d, e2 e4( fis) g2 r
  f2 f4 a g f2 e4 f2 r
  f2 f4 f e d cis d cis2 r
  e2 e4 f d d2 cis4 d1
}

alt = \relative c' {
  \repeat volta 2 {
    a2 d4 c c c a2 d cis r
    d2 e4 e e e c2( e) e r
  }
  e2 e4 cis d a c2 c b r
  a2 d4 e e c c2 c r
  c2 d4 c c a a f a2 r
  c2 c4 a a bes a2 a1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    a2 d4 c c c a2 d cis r
    d2 e4 e e e c2( e) e r
  }
  e2 e4 cis d a c2 c b r
  f'2 f4 a g f2 e4 f2 r
  f2 f4 f e d cis d cis2 r
  e2 e4 d d d2 cis4 d1
}

tenSS = \relative c {
  \repeat volta 2 {
    f2 f4 f e g f2 d e r
    f2 g4 a g c2 a( gis4) a2 r
  }
  c2 b4 a a d, e2 e4( fis) g2 r
  a2 d4 e e c c2 c r
  c2 d4 c c a a f a2 r
  c2 c4 a a bes a2 a1
}


breaks = {
  s2*13
  \noBreak
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
