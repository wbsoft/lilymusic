\version "2.13.10"

\include "def.ly"

psalm = 80

keySig = {
  \key d \dorian
}

mel = \relative c {
  d2 d4 c d f g f e2 d r
  a'2 g4 e g f d f e2 d r
  a'2 c4 d a2 f g4 g a2 r
  a2 c4 d a2 f g4 g a2 r
  a2 c4 b a g2 f e4 f2 r
  bes2 g a f4 d g2 e d1
}

bas = \relative c {
  d2 g,4 a d d c d a2 d r
  a2 c4 c g d' d d a2 d r
  d2 a4 d d2 d c4 e d2 r
  d2 a4 d d2 d c4 e d2 r
  d2 c4 g a c d2 c f, r
  g2 c a d4 d g,2 a d1
}

sop = \relative c' {
  f2 g4 e f d e d2 cis4 d2 r
  e2 e4 c d d f d2 cis4 d2 r
  f2 e4 f d2 d e4 e f2 r
  f2 a4 a f2 d e4 e fis2 r
  fis2 g4 g e e f2 g a r
  g2 e e d4 f e( d2) cis4 d1
}

alt = \relative c' {
  a2 bes4 a a a c a a2 a r
  c2 c4 g bes a a a a2 a r
  f2 a4 a f2 a c4 b d2 r
  d2 e4 f d2 a c4 b d2 r
  d2 e4 d c c a2 c c r
  d2 c c a4 a bes2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  a2 bes4 a a d e d2 cis4 d2 r
  e2 e4 c d d a d2 cis4 d2 r
  f2 e4 f d2 d e4 e f2 r
  f2 e4 f d2 d e4 e fis2 r
  d2 e4 d c c a2 c c r
  d2 c c a4 a bes2 a a1
}

tenSS = \relative c {
  f2 g4 e f a c a a2 a r
  c2 c4 g bes a f a a2 a r
  f2 a4 a f2 a c4 b d2 r
  d2 c4 a f2 a c4 b d2 r
  fis,2 g4 g e e f2 g a r
  g2 e e d4 f e( d2) cis4 d1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
