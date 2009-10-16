\version "2.12.0"

#(set-global-staff-size 18)

\header {
  title = "Onze Vader"
  subtitle = "The Lord’s Prayer"
  composer = "Robert Stone (1516-1613)"
  arranger = "Wilbert Berendsen (* 1971)"
  poet = "Oecumenische tekst"
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
      Copyright © 2009
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
    \strut
  }
}

global = {
  \key f \major
  \set Score.timing = ##f
  #(set-accidental-style 'forget)
}

soprano = \relative c'' {
  \global
  % Muziek volgt hier.
  a4 a a2 a4 a g g bes bes bes2\fermata \breathe
  a4 a2 a4 a g g2 g\fermata \breathe \bar""\break
  a2 a4 a g fis2 fis\fermata \breathe
  fis4 f!2 f4 f f g f2 f4 f e f g f2 f\fermata \breathe \bar""\break
  bes2 a4 g f f g2 a g4 g2\fermata \breathe
  g2 g4 a2 a4 a a bes2 a\fermata \breathe \bar""\break
  a2 g4 f g2 bes4 bes a2 g4 f e f2 f\fermata \breathe
  f4 f2 g4 fis2 f!4( g) a bes2 a\fermata \breathe 
  \once\override Staff.BarLine #'break-visibility = #end-of-line-invisible
  \bar"|:"\break
  \repeat volta 2 {
    a4 a c2 bes4 a g f f \breathe g4.( a8 fis4) g1\fermata
  }
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  f4 f f2 f4 f e e f f f2
  f4 f2 f4 f d e2 e
  f2 f4 f d d2 d 
  d4 d2 d4 d d bes d2 d4 c c a d d2 d
  d2 d4 d d d e2 f d4 e2
  e2 e4 f2 f4 f f d2 f
  f2 e4 d e2 f4 f f2 e4 a, c c2 c
  c4 d2 bes4 d2 d f4 f2 f
  \repeat volta 2 {
    f4 f f2 d4 f bes, d d bes( d2) d1
  }
}

tenor = \relative c' {
  \global
  % Muziek volgt hier.
  c4 c c2 c4 c c c d d d2 \breathe
  c4 c2 c4 a bes c2 c \breathe
  c2 d4 d bes a2 a \breathe
  a4 a2 a4 bes bes g a2 a4 a g f bes a2 a \breathe
  g2 f4 bes a a c2 c b4 c2 \breathe
  c2 c4 c2 d4 d d bes2 c \breathe
  c2 c4 a c2 d4 d c2 c4 f, g a2 a \breathe
  a4 bes2 g4 a2 a4( bes) c d2 d\breathe
  \repeat volta 2 {
    c4 c a2 bes4 c g a a \breathe g( a2) b1
  }
}

bass = \relative c {
  \global
  % Muziek volgt hier.
  f4 f f2 f4 f c c bes bes bes2\fermata
  f'4 f2 f4 f g c,2 c\fermata
  f2 d4 d g d2 d\fermata
  d4 d2 d4 bes bes es d2 d4 f c d bes d2 d\fermata 
  g2 d4 bes d d c2 f g4 c,2\fermata
  c2 c4 f2 d4 d d g2 f\fermata
  f2 c4 d c2 bes4 bes f'2 c4 d c f2 f\fermata
  f4 bes,2 es4 d2 d4( g) f bes,2 d\fermata
  \once\override Staff.BarLine #'break-visibility = #end-of-line-invisible
  \repeat volta 2 {
    f4 f f2 g4 f es d d es( d2) g,1\fermata
  }
}

verse = \lyricmode {
  % Liedtekst volgt hier.
  % Oecumenische tekst
  On -- ze Va -- der die in de he -- mel zijt,
  Uw naam wor -- de ge -- hei -- ligd.
  Uw ko -- nink -- rijk ko -- me.
  Uw wil ge -- schie -- de, op aar -- de zo -- als in de he -- mel.
  Geef ons he -- den ons da -- ge -- lijks brood.
  En ver -- geef ons on -- ze schul -- den
  zo -- als ook wij on -- ze schul -- de -- naars ver -- ge -- ven.
  En leid ons niet in __ ver -- zoe -- king,
  maar ver -- los ons van de bo -- ze.
  %{Want van U is het ko -- nink -- rijk
  en de kracht en de heer -- lijk -- heid
  in eeu -- wig -- heid.%} A -- men.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \center-column { "S." "A." }
    } <<
      \new Voice = "soprano" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \soprano }
      \new Voice = "alto" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "soprano" \verse
    \new Staff \with {
      instrumentName = \markup \center-column { "T." "B." }
    } <<
      \clef bass
      \new Voice = "tenor" \with {
        \consists "Ambitus_engraver"
      } { \voiceOne \tenor }
      \new Voice = "bass" \with {
        \consists "Ambitus_engraver"
        \override Ambitus #'X-offset = #2.0
      } { \voiceTwo \bass }
    >>
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
