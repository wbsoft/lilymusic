\version "2.14.1"

\include "notes.ly"
\include "voicing.ly"
\include "layout.ly"

\header {
  title = "Fuga"
  subtitle = "sopra il Magnificat"
  subsubtitle = "pro Organo pleno con Pedale"
  composer = "Johann Sebastian Bach (1685-1750)"
  opus = "BWV 733"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
  copyright = \markup \fontsize #-1 \center-column {
    \line {
      Engraved © 2011 by 
      \with-url #"http://www.wilbertberendsen.nl/"
      \line { Wilbert Berendsen (http://www.wilbertberendsen.nl/). }
    }
    \line {
      This edition may be freely copied, distributed,
      performed and recorded under the provisions of the
    }
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/nl/"
    \line {
      Creative Commons License \concat { ( \tiny BY-NC-SA , }
      http://creativecommons.org/licenses/by-nc-sa/3.0/nl/).
    }
  }
}

\score {
  \music
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
  }
}

\score {
  \midiMusic
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

