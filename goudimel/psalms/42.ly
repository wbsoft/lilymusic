\version "2.13.10"

\include "def.ly"

psalm = 42

keySig = {
  \key f \major
}

mel = \relative c {
  \repeat volta 2 {
    f2 g4 a2 g4 f e d2 c r
    f2 g4 a2 bes4 a2 g f r
  }
  a2 a4 c2 bes4 a g a2 r
  c2 c4 d2 c4 bes a g2 r
  a2 c4 bes2 a4 f g a2 f r
  a2 a4 bes2 a4 g f2 e4 f1
}

bas = \relative c {
  \repeat volta 2 {
    f2 c4 f2 c4 d a bes2 f r
    f'2 c4 f2 bes,4 f'2 c f, r
  }
  f'2 f4 f2 bes,4 f' c f2 r
  f2 f4 bes,2 f4 bes f c'2 r
  f2 c4 g'2 d4 d c f2 bes, r
  f2 f4 bes2 f4 c' d c2 f,1
}

sop = \relative c' {
  \repeat volta 2 {
    f2 e4 f2 e4 d c bes2 a r
    c2 e4 f2 f4 f2 e f r
  }
  f2 f4 f2 f4 f e f2 r
  f2 f4 f2 f4 f f e2 r
  f2 g4 g2 f4 d e f2 d r
  f2 f4 d2 c4 c a c2 c1
}

alt = \relative c' {
  \repeat volta 2 {
    c2 c4 c2 c4 a a f2 f r
    a2 c4 c2 d4 c2 c c r
  }
  c2 c4 a2 d4 c c c2 r
  a2 a4 bes2 a4 d c c2 r
  c2 es4 d2 d4 a c c2 bes r
  c2 c4 f,2 f4 e f g2 a1
}

% modified for soprano setting
altSS = \relative c' {
  \repeat volta 2 {
    f2 e4 f2 e4 d c bes2 a r
    c2 e4 f2 f4 f2 e f r
  }
  f2 f4 f2 f4 f e f2 r
  f2 f4 f2 f4 f f e2 r
  f2 g4 g2 f4 d e f2 d r
  f2 f4 d2 c4 c a c2 c1
}

tenSS = \relative c' {
  \repeat volta 2 {
    c2 c4 c2 c4 a a f2 f r
    a2 c4 c2 d4 c2 c c r
  }
  c2 c4 a2 d4 c c c2 r
  a2 a4 bes2 a4 d c c2 r
  c2 es4 d2 d4 a c c2 bes r
  c2 c4 f,2 f4 e f g2 a1
}


breaks = {
  s2*13
  \noBreak
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
\score { \sopranoSetting \midi {} \layout {} }
