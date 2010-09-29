\version "2.13.10"

\header {
  dedication = "Dedicated to Louis James Alfred Lefébure-Wely"
  title = "Final"
  subtitle = "From: Six Pièces pour Grand Orgue (No.6)"
  composer = "César Auguste Franck (1822-1890)"
  opus = "Op. 21 (1860-1862)"
}

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold "Allegro maestoso"
}

global = {
  \tempoMark
  \key bes \major
  \time 4/4
  \partial 8
}

right = \relative c'' {
  \global
  % Muziek volgt hier.
  
}

left = \relative c' {
  \global
  % Muziek volgt hier.
  
}

pedal = \relative c {
  \global
  % Muziek volgt hier.
  f8 |
  bes4. f8 bes4. f8 |
  bes8 d, es f d4 r8 f |
  c'8 d, es f c4 r8 f |
  d'8 d, es f bes,2~ |
  
  % 5
  bes4 c8 d c4 d8 es |
  d8 c bes4 r4\fermata r8 f' |
  bes4. f8 bes4. f8 |
  bes8 d, es f d4 r8 f |
  c'8 d, es f c4 r8 f |

  % 10
  d'8 d, es f bes,2~ |
  bes4 c8 d e4 f8 g |
  a8 g f4 r\fermata r8 f |
  g4 es c4. f8 |
  bes8 a g a f4. es8 |
  
  % 15
  f4 d bes4. f'8 |
  c'8 bes a bes f4 d'~ |
  d8 c bes c f, es d c |
  c'8 bes a bes f d c bes |
  bes'8 as g as f d f g |
  
  % 20
  bes8 as g as f d f g |
  as4. f8 as4. f8 |
  as2~ as8 ges f es |
  f4. bes,8 f'4. bes,8 |
  f'2. d4
  
  % 25
  es8 d c d es4. f8 |
  es8 d c d es4. g8 |
  es8 d c d es f g a |
  bes4. f8 bes4. f8 |
  bes4 r r2 |
  
  % 30
  R1*5 |
  
  % 35
  R1*5 |
  
  % 40
  R1*4 |
  r2 r4 r8 d,8 |
  
  
  
}

\score {
  <<
    \new PianoStaff <<
      \new Staff = "right" \right
      \new Staff = "left" { \clef bass \left }
    >>
    \new Staff = "pedal" { \clef bass \pedal }
  >>
  \layout { }
}
