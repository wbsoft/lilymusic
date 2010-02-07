\version "2.13.10"

\include "def.ly"

psalm = 38

keySig = {
  \key g \minor
}

mel = \relative c' {
  bes2 a g4 a bes c d2 c
  r4 d2 c4 bes2 a r
  c4 c d2 bes4 c a2 g r
  d'2 d c4 bes g a bes2 a
  r4 bes2 a4 g2 f r
  bes2 d c4 bes g2 a g1  
}

bas = \relative c' {
  g2 d es4 d g f bes2 f r4
  bes,2 f'4 g2 d r
  c4 c bes2 es4 c d2 g, r
  g'2 bes f4 g g fis g2 d
  r4 g2 d4 es2 bes r
  bes2 bes f'4 bes, es2 d g,1
}

sop = \relative c'' {
  g2 fis g4 fis g a bes2 a
  r4 bes2 a4 g2 fis r
  g4 g bes2 g4 g2 fis4 g2 r
  bes2 bes a4 g bes a g2 fis
  r4 g2 f4 es2 d r
  f2 bes a4 f es4( g2) fis4 g1
}

alt = \relative c' {
  d2 d bes4 d d f f2 f
  r4 f2 f4 d2 d r
  es4 es f2 es4 es d2 d r
  g2 f f4 d d d d2 d
  r4 d2 d4 bes2 bes r
  d2 f f4 d bes2 d d1
}

% modified for soprano setting
altSS = \alt

tenSS = \transpose c' c \sop


breaks = {
  
}

tenorSetting = \makeTenorSetting #psalm \keySig \sop \alt \mel \bas \breaks
sopranoSetting = \makeSopranoSetting #psalm \keySig \mel \altSS \tenSS \bas \breaks
