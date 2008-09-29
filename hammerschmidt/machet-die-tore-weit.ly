\version "2.11.58"

#(set-global-staff-size 17)

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  short-indent = 6\mm
  between-system-padding = #0
}

\include "machet-die-tore-weit-voices.ly"

sopranoOneVerse = \lyricmode {
  \repeat unfold 14 \skip4
  daß der Kö -- nig der Eh -- ren, daß der Kö -- nig der Eh -- ren ein -- zie -- he.
  \repeat unfold 14 \skip4
  daß der Kö -- nig der Eh -- ren, daß der Kö -- nig ein -- zie -- he.
}

menVerse = \lyricmode {
  %lyrics for tenor but sometimes also for bass 1
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch,
  daß der Kö -- nig der Eh -- ren, daß der Kö -- nig ein -- zie -- he.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt

  \set associatedVoice = "bass1"
  hoch,

  daß der Kö -- nig der Eh --

  \set associatedVoice = "tenor"
  ren,
  daß der Kö -- nig der Eh -- ren ein -- zie -- he.

  Wer ist der -- sel -- be,
  wer ist der -- sel -- bi -- ge Kö -- nig der Eh -- ren?
  Es ist der Herr, stark und mäch -- tig,
  es ist der Herr,
  stark und mäch -- tig im Streit.

  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch!

  Ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
  Ho -- si -- an -- na,
  ho -- si -- an -- na in __ der Hö -- he,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
}

bassTwoVerse = \lyricmode {
  \repeat unfold 28 \skip4
  daß der Kö -- nig der Eh -- ren,
  daß der Kö -- nig der Eh -- ren ein -- zie -- he.

  \repeat unfold 11 \skip4
  Es ist der Herr, stark und mäch -- tig,
  mäch -- tig im Streit.

  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch!

  Ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
  Ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
}

\score {
  \new ChoirStaff <<
    \new Staff = "ss" \with {
      instrumentName = \markup \center-column {
        "Soprano"
        "I–II"
      }
      shortInstrumentName = "S."
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 4)
    } <<
      %\set Score.markFormatter = #format-mark-box-barnumbers
      \rehearsalMarks
      \new Voice = "soprano1" { \voiceOne \sopranoOne }
      \new Voice = "soprano2" { \voiceTwo \sopranoTwo }
    >>
    \new Lyrics \with {
      alignAboveContext = "ss"
    } \lyricsto "soprano1" { \sopranoOneVerse }
    \new Lyrics \lyricsto "soprano2" { \sopranoTwoVerse }
    \new Staff \with {
      instrumentName = "Alt"
      shortInstrumentName = "A."
    } \new Voice = "alto" \alto
    \new Lyrics \lyricsto "alto" { \altoVerse }
    \new Staff \with {
      instrumentName = "Tenor"
      shortInstrumentName = "T."
    } {
      \clef "treble_8"
      \new Voice = "tenor" \tenor
    }
    \new Staff = "bb" \with {
      instrumentName = \markup \center-column {
        "Bass"
        "I–II"
      }
      shortInstrumentName = "B."
    } <<
      \clef bass
      \new Voice = "bass1" { \voiceOne \bassOne }
      \new Voice = "bass2" { \voiceTwo \bassTwo }
    >>
    \new Lyrics \with {
      alignAboveContext = "bb"
    } \lyricsto "tenor" { \menVerse }
    \new Lyrics \lyricsto "bass2" { \bassTwoVerse }
  >>
  \layout {
    system-count = #9
  }
}

\include "machet-die-tore-weit-dutch-markup.ly"
