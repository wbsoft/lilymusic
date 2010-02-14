\version "2.13.10"

\include "def.ly"

psalm = 110

keySig = {
  \key g \minor
}

mel = \relative c' {
  g2 f4 g a2 bes c4 d c bes a2 g r
  bes2 a4 g f2 g a4 g g fis g2 r
  d2 g4 g f2 g bes4 a g f es2 d4 \breathe
  f4 g a bes2 bes c4 g bes2 a g1
}

bas = \relative c {
  g2 d'4 es d2 g, c4 bes f g d'2 g, r
  g2 d'4 es bes2 g f4 g d' d g,2 r
  g2 g4 g d'2 c bes4 f g bes c2 g4 \breathe
  d'4 c f, bes2 g c4 c bes2 d g,1
}

sop = \relative c'' {
  bes2 a4 g f2 g g4 bes a g2 fis4 g2 r
  g2 f4 es d2 d f4 d d d d2 r
  b2 d4 d d2 es f4 f es d c2 b4 \breathe
  d4 es f f2 g g4 es f( g2) fis4 g1
}

alt = \relative c' {
  d2 d4 bes d2 d es4 f f d d2 d r
  d2 d4 bes bes2 bes c4 bes a a g2 r
  g2 bes4 bes a2 c d4 c bes bes g2 g4 \breathe
  a4 c c d2 d es4 c d2 d d1
}

% modified for soprano setting
altSS = \relative c' {
  d2 d4 bes d2 d es4 f f d d2 d r
  g2 f4 es d2 d f4 d d d d2 r
  b2 d4 d d2 es f4 f es d c2 b4 \breathe
  d4 es f f2 g g4 es f( g2) fis4 g1
}

tenSS = \relative c' {
  bes2 a4 g f2 g g4 bes a g2 fis4 g2 r
  d'2 d4 bes bes2 bes c4 bes a a g2 r
  g2 bes4 bes a2 c d4 c bes bes g2 g4 \breathe
  a4 c c d2 d es4 c d2 d d1
}


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
