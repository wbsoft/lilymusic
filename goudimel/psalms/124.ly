\version "2.13.10"

\include "def.ly"

psalm = 124

keySig = {
  \key f \major
}

mel = \relative c {
  f2 g4 a bes2 a g4 f f e f2 r
  a2 bes4 c d2 c bes4 a g2 f e r
  c2 f4 f e2 f g4 bes2 a g4 a2 r
  c2 c4 bes a2 g a4 c c b c2 r
  a2 g4 f e2 f g4 bes a2 g f1
}

bas = \relative c {
  f2 c4 f bes,2 f' c4 d bes c f,2 r
  f'2 d4 c bes2 f' bes,4 f c'2 f, c' r
  f,2 f4 f c'2 d c4 bes2 f4 bes2 a r
  f'2 f4 bes, f'2 c f4 a g g c,2 r
  f2 c4 d a2 d c4 g a2 c f,1
}

sop = \relative c' {
  f2 e4 f f2 f e4 d d c c2 r
  f2 f4a bes2 a f4 f e2 a g r
  f2 a4 a g2 f e4 f2 f4 g2 e r
  f2 f4 f f2 e f4 e g g g2 r
  f2 e4 d c2 d e4 g2 f e4 f1
}

alt = \relative c' {
  c2 c4 c d2 c c4 a bes g a2 r
  c2 f4 es d2 f d4 c c2 c c r
  a2 c4 c c2 a c4 d2 c4 d2 cis r
  a2 a4 d c2 c c4 c d d e2 r
  c2 c4 a a2 a c4 d c2 c c1
}

% modified for soprano setting
altSS = \relative c' {
  f2 e4 f f2 f e4 d d c c2 r
  c2 f4 es d2 f d4 c c2 c c r
  a2 c4 c c2 a c4 d2 c4 d2 cis r
  f2 f4 f f2 e f4 e g g g2 r
  f2 e4 d c2 d e4 g2 f e4 f1
}

tenSS = \relative c' {
  c2 c4 c d2 c c4 a bes g a2 r
  f2 f4a bes2 a f4 f e2 a g r
  f2 a4 a g2 f e4 f2 f4 d2 e r
  a2 a4 d c2 c c4 c d d e2 r
  c2 c4 a a2 a c4 d c2 c c1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
