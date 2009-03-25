\version "2.12.0"

global = {
  \key c \minor
}

breaks = { }

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold Grave.
}

music = {
  <<
    \context Staff = "rh" \relative c {
      \clef bass
      \global
      \tempoMark
      r4 \times 2/3 { c8 d es } as4
      
    }
    \context Staff = "lh" \relative c {
      \clef bass
      \global
      <<
        {
          r4 as( c bes)
        } \\ {
          c,1
        }
      >>
    }
    \context Staff = "ped" \relative c, {
      \clef bass
      \global
      R1
    }
  >>
}

%%master: psalm94.ly
