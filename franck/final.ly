\version "2.13.10"

\header {
  dedication = "Dedicated to Louis James Alfred Lefébure-Wely"
  title = "Final"
  subtitle = "From: Six Pièces pour Grand Orgue, (No.6)"
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
  d'8 d, es f bes,2~ |

  % 10
  bes4 c8 d e4 f8 g |
  a8 g f4 r\fermata r8 f |
  
  
  
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
