\version "2.12.0"

#(set-global-staff-size 15) % 15 of 19

\header {
  title = "Sei Lob und Preis mit Ehren"
  composer = "Johann Sebastian Bach (1685-1750)"
  subtitle = "Motette BWV 231"
  %instrument = "Rehearsal accompaniment"
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
\include "text.ily"

\book {
  \paper {
    page-count = 8 % 8 of 12
    ragged-last-bottom = ##f
    between-system-padding = 0 % dit of uitschakelen
  }

  \score {
    \koorVierstemmig
    \layout {
      system-count = 30 % 30 of 35
      \context {
        \Score
        \override PaperColumn #'keep-inside-line = ##t
        \override NonMusicalPaperColumn #'keep-inside-line = ##t
      }
      \context {
        \Staff
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 5.5) % 5.5 of 4.5
      }
      \context {
        \Lyrics
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-0.75 . 0)
      }
    }
    \midi {
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 84 2)
      }
    }
  }
  \markup \vertalingTekst
  \markup \strut
}
