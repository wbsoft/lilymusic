\version "2.13.10"

\include "def.ly"

psalm = 2

mel = \relative c {
  d2 f4 e d c f a g f e2 r
  f2 e4 d a' g f e d f e2 d r
  d2 f4 e d c f a g f e2 r
  d2 f4 g a2 c b4 a g f d2( e) d r
  d'2 d4 d c2 a c4 b a g a2 d, r
  d2 f4 g a2 b c4 d c b a2 r
  d2 d4 d c2 a c4 b a g a2 d, r
  d2 f4 g a2 g g4 f g2 e d1
}

sop = \relative c'' {
  a2 a4 a f f c f e d cis2 r
  a'2 g4 g e e a g f d2 cis4 d2 r
  a'2 a4 a f f c f e d cis2 r
  d2 d4 d d2 e g4 e e f2 d( cis4) d2 r
  a'2 a4 a a2 fis g4 g fis g e( fis) g2 r
  f2 d4 e f2 g a4 a a gis a2 r
  a2 a4 a a2 fis g4 g fis g e( fis) g2 r
  f2 d4 e f2 e e4 d e( d2) cis4 d1
}


alt = \relative c' {
  a2 d4 c bes a a c c a a2 r
  c2 c4 d c c c c a a a2 a r
  a2 d4 c bes a a c c a a2 r
  a2 a4 bes f2 a d4 c c a f2( a) a r
  f'2 f4 f e2 d e4 d d d c2 b r
  a2 a4 c c2 e2 e4 f e e e2 r
  f2 f4 f e2 d e4 d d d c2 b r
  a2 a4 c c2 c c4 a bes2 a a1
}

bas = \relative c {
  d2 d4 a bes f f f c' d a2 r
  f2 c'4 b a c f, c' d d a2 d r
  d2 d4 a bes f f f c' d a2 r
  d2 d4 g, d'2 a g4 a c f, bes2( a) d r
  d2 d4 d a2 d c4 g d' b a2 g r
  d'2 d4 c f2 e a4 d, e e a,2 r
  d2 d4 d a2 d c4 g d' b a2 g r
  d'2 d4 c f,2 c' c4 d g,2 a d1
}

% modified for soprano setting:

altSS = \relative c' {
  a2 d4 c bes a c f e d cis2 r
  c2 c4 d c c c c a d2 cis4 d2 r
  a2 d4 c bes a c f e d cis2 r
  d2 d4 d d2 e g4 e e c bes d2( cis4) d2 r
  f2 f4 f e2 d e4 d d d c2 b r
  a2 a4 c c2 e2 e4 f e e e2 r
  f2 f4 f e2 d e4 d d d c2 b r
  a2 d4 e f2 e e4 d e( d2) cis4 d1
}

tenSS = \relative c' {
  a2 a4 a f f a c c a a2 r
  a2 g4 g e e a g f a a2 a r
  a2 a4 a f f a c c a a2 r
  a2 a4 bes f2 a d4 c c a f2( a) a r
  a2 a4 a a2 fis g4 g fis g e( fis) g2 r
  f2 d4 e f2 g a4 a a gis a2 r
  a2 a4 a a2 fis g4 g fis g e( fis) g2 r
  f2 a4 c c2 c c4 a bes2 a a1
}


\score {
  \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
  \layout {}
  \midi {}
}

\score {
  \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
  \layout {}
  \midi {}
}
