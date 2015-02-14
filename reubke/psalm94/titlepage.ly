\version "2.18.0"

% A simple title page written in LilyPond markup

\bookpart {
  \paper {
    left-margin = 3 \cm
    top-margin = 5 \cm
    bottom-margin = 3 \cm
    oddFooterMarkup = \markup \left-column {
      \line {
        This edition copyright © 2009 by
        \with-url #"http://www.wilbertberendsen.nl/"
        { Wilbert Berendsen }
      }
      \line {
        Licensed under the
        \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/nl/"
        { Creative Commons License \concat { ( \tiny BY-NC-SA ) } }
      }
    }
  }

  \markup \fontsize #4 \left-column {
    \fontsize #3 \bold \line {
      Der \concat { 94 \raise #1 \fontsize #-2 ste } Psalm
    }
    \bold \line { Sonate für die Orgel }
    \line { }
    \line { Julius Reubke \fontsize #-2 (1834-1858) }
  }
}
