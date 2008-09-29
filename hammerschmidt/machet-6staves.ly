\version "2.11.58"

#(set-global-staff-size 18)

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  short-indent = 6\mm
  between-system-padding = #0
}

\include "machet-die-tore-weit-voices.ly"

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "Soprano I"
      shortInstrumentName = "S. I"
    } {
      <<
        \rehearsalMarks
        \sopranoOne
      >>
    }
    \addlyrics { \sopranoOneVerse }
    \new Staff \with {
      instrumentName = "Soprano II"
      shortInstrumentName = "S. II"
    } { \sopranoTwo }
    \addlyrics { \sopranoTwoVerse }
    \new Staff \with {
      instrumentName = "Alto"
      shortInstrumentName = "A."
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
    } {
      \clef "treble_8"
      \tenor
    }
    \addlyrics { \tenorVerse }
    \new Staff \with {
      instrumentName = "Bass I"
      shortInstrumentName = "B. I"
    } {
      \clef bass
      \bassOne
    }
    \addlyrics { \bassOneVerse }
    \new Staff \with {
      instrumentName = "Bass II"
      shortInstrumentName = "B. II"
    } {
      \clef bass
      \bassTwo
    }
    \addlyrics { \bassTwoVerse }
  >>
  \layout { }
}

\include "machet-die-tore-weit-dutch-markup.ly"
