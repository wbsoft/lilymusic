\version "2.13.10"

\include "def.ly"

psalm = 46

keySig = {
  \key d \mixolydian
}

mel = \relative c' {
  a2 a4 a b g a c b2 a r
  a2 a4 e g g fis d e2 d r
  d2 a'4 b g a c2 b a r
  e2 fis4 a e g fis2 e d r
  \repeat unfold 2 { a'2 a4 c b a b c d2 a r }
  d2 d4 c b a g2 fis e r
  a2 c4 b a g fis2 e d1
}

bas = \relative c {
  a2 d4 f e e d a e'2 a, r
  a2 a4 a g g b b a2 d r
  d2 d4 g, c a a2 e' a, r
  c2 b4 a c c d2 a d r
  \repeat unfold 2 { d2 d4 a e' f e a, d2 d r }
  d2 g4 c, g' d e2 b e r
  a,2 a4 g a c d2 a d1
}

sop = \relative c' {
  e2 fis4 a g e fis a2 gis4 a2 r
  e2 e4 c d e d d2 cis4 d2 r
  fis2 fis4 g e e2 a gis4 a2 r
  c,2 d4 e c e2 d cis4 d2 r
  \repeat unfold 2 { fis2 fis4 a gis a gis a a2 fis2 r }
  a2 b4 g g fis2 e dis4 e2 r
  e2 e4 g fis e2 d cis4 d1
}

alt = \relative c' {
  c2 d4 c e b d e e2 e r
  c2 c4 a b b b fis a2 a r
  a2 d4 d c c e2 e cis r
  g2 b4 c g c a2 a a r
  \repeat unfold 2 { d2 d4 e e c e e fis2 d r }
  fis2 g4 e d d b2 b b r
  c2 a4 d c c a2 a a1
}

% modified for soprano setting
altSS = \relative c' {
  c2 d4 c e b d e e2 e r
  e2 e4 c d e d d2 cis4 d2 r
  a2 d4 d c c e2 e cis r
  c2 d4 e c e2 d cis4 d2 r
  \repeat unfold 2 { d2 d4 e e c e e fis2 d r }
  fis2 g4 g g fis2 e dis4 e2 r
  e2 e4 g fis e2 d cis4 d1
}

tenSS = \relative c {
  e2 fis4 a g e fis a2 gis4 a2 r
  c2 c4 a b b b fis a2 a r
  fis2 fis4 g e e2 a gis4 a2 r
  g2 b4 c g c a2 a a r
  \repeat unfold 2 { fis2 fis4 a gis a gis a a2 fis2 r }
  a2 b4 e d d b2 b b r
  c2 a4 d c c a2 a a1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
