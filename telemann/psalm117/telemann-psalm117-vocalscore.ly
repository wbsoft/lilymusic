\version "2.12.0"

\include "parts.ly"

#(set-global-staff-size 18)

breaks = \new Devnull {
  s8 s1*30 \break
  s1.*30 \break
}

\layout {
  \context {
    \Score
    \override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
  }
  \context {
    \Staff
    
  }
  \context {
    \Lyrics
    
  }
}

\score {
  <<
    \breaks
    \choirPart
  >>
}
