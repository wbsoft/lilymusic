\version "2.12.0"

\include "parts.ly"

#(set-global-staff-size 18)

\layout {
  \context {
    \Score
    \override BarNumber #'extra-offset = #'(1 . 0)
  }
}

\score {
  \organoPart
}
