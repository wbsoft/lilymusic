\version "2.13.10"

\include "def.ly"

psalm = 47

keySig = {
  \key d \major
}

mel = \relative c' {
  a2 fis d4 e fis \breathe g2 fis4 e e d2 r
  a'2 a b4 cis d \breathe a2 b4 g a fis2 r
  d2 e fis4 g fis \breathe e2 d4 d cis d2 r
  a'2 b a4 g fis \breathe fis2 e4 fis g a2 r
  d2 cis b4 b a \breathe b2 a4 g fis e2 r
  d2 fis a4 g fis \breathe e2 d4 d cis d1  
}

bas = \relative c {
  d2 d b4 a d \breathe g,2 d'4 a a d2 r
  d2 fis e4 a d, \breathe d2 b4 e a, d2 r
  d2 a d4 g, d' \breathe a2 b4 g a d2 r
  d2 g, d'4 e b \breathe b2 c4 b e d2 r
  d2 a e'4 e fis \breathe b,2 d4 g, d' a2 r
  d2 d d4 g, d' \breathe a2 b4 g a d1
}

sop = \relative c' {
  fis2 d fis4 a a \breathe b2 a4 a a fis2 r
  fis2 fis g4 a a \breathe fis2 fis4 e e d2 r
  a'2 a a4 b a \breathe a2 fis4 g e fis2 r
  fis2 g fis4 e dis \breathe dis2 e4 dis e fis2 r
  fis2 a g4 g fis \breathe fis2 fis4 d d cis2 r
  fis2 a fis4 b a \breathe a2 fis4 g e d1
}

alt = \relative c' {
  d2 a b4 cis d \breathe d2 d4 cis cis d2 r
  d2 cis e4 e fis \breathe d2 d4 b cis a2 r
  d2 cis d4 d d \breathe cis2 b4 b a a2 r
  d2 d d4 b b \breathe b2 g4 b b d2 r
  a2 e' e4 e cis \breathe d2 d4 b a a2 r
  a2 d d4 d d \breathe cis2 b4 b a a1
}

% modified for soprano setting
altSS = \relative c' {
  d2 a b4 cis d \breathe d2 d4 cis cis d2 r
  d2 cis e4 e fis \breathe d2 d4 b cis a2 r
  d2 cis d4 d d \breathe cis2 b4 b a a2 r
  d2 d d4 b b \breathe b2 g4 b b d2 r
  fis2 e e4 e cis \breathe d2 d4 b a a2 r
  a2 d d4 d d \breathe cis2 b4 b a a1
}

tenSS = \relative c {
  fis2 d fis4 a a \breathe b2 a4 a a fis2 r
  fis2 fis g4 a a \breathe fis2 fis4 e e d2 r
  a'2 a a4 b a \breathe a2 fis4 g e fis2 r
  fis2 g fis4 e dis \breathe dis2 e4 dis e fis2 r
  a2 a g4 g fis \breathe fis2 fis4 d d cis2 r
  fis2 a fis4 b a \breathe a2 fis4 g e d1
}

breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
