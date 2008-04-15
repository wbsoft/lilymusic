\version "2.11.43"

\header {
  title = "The Chorals of the Clavierübung III"
  composer = "Johann Sebastian Bach (1865-1750)"
  poet = "Martin Luther (1483-1546)"
  copyright = \markup \center-align {
    \line { Typeset by
      \with-url #"http://www.wilbertberendsen.nl/"
      {Wilbert Berendsen (http://www.wilbertberendsen.nl/)}
    }
    \line { Copyright © 2007
      \with-url #"http://www.cpdl.org/"
      {The Choral Public Domain Library (http://www.cpdl.org/)}
    }
    \line {This edition may be freely distributed, edited, performed or recorded.}
  }
}

\paper {
  indent = 8\mm
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  bottom-margin = 9\mm
  line-width = 18.7\cm
  between-system-padding = 1\mm
}

\layout {
  \context {
    \Score
    \override VerticalAlignment #'max-stretch = #10
    %\override VerticalAlignment #'max-stretch = #ly:align-interface::calc-max-stretch
  }
  \context {
    \Staff
    %%% Equivalent to #(set-accidental-style 'modern) :
    autoAccidentals = #'(Staff (same-octave . 0) (any-octave . 0) (same-octave . 1))
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 5)
    \override VerticalAxisGroup #'keep-fixed-while-stretching = ##f
  }
  \context {
    \ChoirStaff
    \consists "Instrument_name_engraver"
    \override InstrumentName #'extra-offset = #'(0 . 3)
  }
  \context {
    \Voice

  }
  \context {
    \Lyrics
    %       \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 0)
    %       fontSize = 0.5
    \override LyricExtender #'minimum-length = #1
    %       \override LyricSpace #'minimum-distance = #0.5
  }
}

fourStaffs = #(define-music-function (parser location) ()
#{
  \new ChoirStaff <<
    \set ChoirStaff.instrumentName = \markup {
      \fontsize #6 \bold \concat { \pieceNumber ". "}
    }
    \new Staff \new Voice = "s" {
      \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \once \override Score.RehearsalMark #'font-series = #'bold
      \once \override Score.RehearsalMark #'padding = #3
      \once \override Score.RehearsalMark #'extra-offset = #'(-3.5 . 0)
      \mark \pieceTitle
      \sop
    }
    \new Lyrics \lyricsto "s" \sopText
    \new Staff \new Voice = "a" \alt
    \new Lyrics \lyricsto "a" \altText
    \new Staff \new Voice = "t" { \clef "G_8" \ten }
    \new Lyrics \lyricsto "t" \tenText
    \new Staff \new Voice = "b" { \clef bass \bas }
    \new Lyrics \lyricsto "b" \basText
  >>
#})

fourStaffsTwoLyrics = #(define-music-function (parser location) ()
#{
  \new ChoirStaff \with {
    \override InstrumentName #'extra-offset = #'(0 . 0)
  } <<
    \set ChoirStaff.instrumentName = \markup {
      \fontsize #6 \bold \concat { \pieceNumber ". "}
    }
    \new Staff \new Voice = "s" {
      \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
      \once \override Score.RehearsalMark #'font-series = #'bold
      \once \override Score.RehearsalMark #'padding = #3
      \once \override Score.RehearsalMark #'extra-offset = #'(-3.5 . 0)
      \mark \pieceTitle
      \sop
    }
    \new Lyrics \lyricsto "s" \sopText
    \new Staff \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
      \override VerticalAxisGroup #'keep-fixed-while-stretching = ##t
    }
    \new Voice = "a" \alt
    \new Staff \new Voice = "t" { \clef "G_8" \ten }
    \new Lyrics \lyricsto "t" \tenText
    \new Staff \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
      \override VerticalAxisGroup #'keep-fixed-while-stretching = ##t
    }
    \new Voice = "b" { \clef bass \bas }
  >>
#})

piano = #(define-music-function (parser location) ()
#{
  \removeWithTag #'nopiano
  \new PianoStaff <<
    \set PianoStaff.instrumentName = \markup {
      \fontsize #6 \bold \concat { \pieceNumber ". "}
    }
    \new Staff <<
      \new Voice \with { \remove "Slur_engraver" } {
        \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
        \once \override Score.RehearsalMark #'font-series = #'bold
        \once \override Score.RehearsalMark #'padding = #3
        \once \override Score.RehearsalMark #'extra-offset = #'(-3 . 0)
        \mark \pieceTitle \voiceOne \sop
      }
      \new Voice \with { \remove "Slur_engraver" } {
        \voiceTwo \alt
      }
    >>
    \new Staff \with {
      \override VerticalAxisGroup #'keep-fixed-while-stretching = ##t
    } <<
      \new Voice \with { \remove "Slur_engraver" } {
        \voiceOne \clef bass \ten
      }
      \new Voice \with { \remove "Slur_engraver" } {
        \voiceTwo \bas
      }
    >>
  >>
#})
