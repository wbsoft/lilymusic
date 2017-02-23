\version "2.12.0"
#(set-global-staff-size 19)

\header {
  title = "Sei Lob und Preis mit Ehren"
  composer = "Johann Sebastian Bach (1685-1750)"
  subtitle = "Motette BWV 231"
  instrument = "Rehearsal accompaniment"
  copyright = \markup \center-column {
    \line {
      Engraved by
      \with-url #"http://www.wilbertberendsen.nl/"
      {
        Wilbert Berendsen
        (http://www.wilbertberendsen.nl/)
      }
    }
    \line {
      Copyright © 2008
      \with-url #"http://www.cpdl.org/"
      {
        The Choral Public Domain Library
        (http://www.cpdl.org/)
      }
    }
    \line {
      This edition may be freely distributed,
      edited, performed or recorded.
    }
  }
}

\include "music.ily"


\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" <<
        \new Voice = "sop" <<
          \voiceOne
          \structure
          \sop
        >>
        \new Voice = "alt" \with {
          \remove "Slur_engraver"
        } <<
          \voiceTwo \structure
          \alt
        >>
      >>
      \new Lyrics \with {
        alignAboveContext = "upper"
      } \lyricsto "sop" \sopText
      \new Staff <<
        \clef F
        \new Voice \with {
          \remove "Slur_engraver"
        } <<
          \voiceOne
          \structure
          \ten
        >>
        \new Voice \with {
          \remove "Slur_engraver"
        } <<
          \voiceTwo 
          \structure
          \bas
        >>
      >>
    >>
  >>
}

