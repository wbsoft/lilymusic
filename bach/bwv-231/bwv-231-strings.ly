\version "2.12.0"

#(set-global-staff-size 20)

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}


\header {
  title = "Sei Lob und Preis mit Ehren"
  composer = "Johann Sebastian Bach (1685-1750)"
  subtitle = "Motette BWV 231"
  instrument = "Strings accompaniment"
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
      Copyright © 2017
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

stringstruct = {
  \compressFullBarRests
  \structure
}

\book {
  \bookOutputSuffix "violino-I"
  \score {
    \new Staff <<
      \set Staff.instrumentName = "Violin I"
      \stringstruct
      \sop
    >>
  }
}

\book {
  \bookOutputSuffix "violino-II"
  \score {
    \new Staff <<
      \set Staff.instrumentName = "Violin II"
      \stringstruct
      \alt
    >>
  }
}

\book {
  \bookOutputSuffix "violino-alto"
  \score {
    \new Staff <<
      \set Staff.instrumentName = "Violin I"
      \stringstruct
      \ten
      \clef alto
    >>
  }
}

\book {
  \bookOutputSuffix "violoncello"
  \score {
    \new Staff <<
      \set Staff.instrumentName = "Cello/Bc"
      \stringstruct
      \bas
      \clef bass
    >>
  }
}

