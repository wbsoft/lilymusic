\version "2.12.0"

#(set-global-staff-size 16)

\include "parts.ly"

\paper {
  between-system-padding = #0.1
  system-separator-markup = \slashSeparator
}

\score {
  <<
    \new StaffGroup \with {
      \consists "Instrument_name_engraver"
      instrumentName = #"Violinos"
    } <<
      \new Staff \with {
        instrumentName = #"I"
      } \violinoOne
      \new Staff \with {
        instrumentName = #"II"
        % keep some distance
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-6 . 4)
      } \violinoTwo
    >>
    \choirPart
    \new PianoStaff \with {
      instrumentName = \markup \center-column { Basso continuo }
    } <<
      \new Staff \with {
        % keep some distance
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 6)
        % smaller staff and small notes
        fontSize = #-3
        \override StaffSymbol #'staff-space = #(magstep -1)
        \override TimeSignature #'font-size = #2
      } \organo
      \new Staff { \clef bass \continuo }
    >>
  >>
}
