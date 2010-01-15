\version "2.12.0"
\include "nederlands.ly"

#(set-global-staff-size 18)

\paper {
  indent = 5\mm
  ragged-last-bottom = ##f
  between-system-padding = #0.1
}

\header {
  title = "Ein Kind geborn zu Bethlehem"
  composer = "Michael Prætorius (1571-1621)"
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
    \strut % space before tagline
  }
}

global = {
  \key g \dorian
  \time 6/4
  \partial 4
}

soprano = \relative c'' {
  \global
  % Muziek volgt hier.
  g4 g2 g4 a2 a4 bes2 g4 f2
  \parenthesize f4 bes4.( c8 d4 c bes) a bes2.~bes2
  bes4 bes2 bes4 a2 a4 g2 fis4 g2
  g4 fis2 g4 a2 a4 bes2( a4 g2) fis4 g2.~g2
  \bar "|."
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  d4 d2 c4 f2 f4 es8( d d4) c d2
  \parenthesize d4 d8( e f8. c16 g'2 d4) f f2.~ f2
  f4 g2 f4 f2 f4 d( e) d d2
  e4 d2 e4 f2 f4 f2.( d4 es) d d2.~d2
  \bar "|."
}

tenor = \relative c' {
  \global
  % Muziek volgt hier.
  g4 bes2 g4 d'2 c4 bes8( a g4) g a2
  \parenthesize a4 g( d'8 c bes a g a bes4) c d2.~ d2
  d4 d2 d4 c2 f,4 bes4 a2 g8( a bes4)
  c4 a2 bes4 c2 d4 d2( c8 d bes4 c) a b2.~ b2
  \bar "|."
}

bass = \relative c' {
  \global
  % Muziek volgt hier.
  g4 g2 e4 d2 f4 g2 e4 d2
  \parenthesize d4 bes'4.( a8 g f es4 g) f bes,2.~ bes2
  bes'4 g2 d4 f4.( e8 d c bes4) c4 d bes g
  c d2 g4 f4.( e8 d c bes c d e) f( d) g4( c,) d g,2.~g2
  \bar "|."
}

sopranoVerseOne = \lyricmode {
  \set stanza = "1."
  % Liedtekst volgt hier.
  Ein Kind ge -- born zu Beth -- le -- hem, zu Beth -- le -- hem, __
  des freu -- et sich Je -- ru -- sa -- lem.
}

sopranoVerseTwo = \lyricmode {
  \set stanza = "2."
  % Liedtekst volgt hier.
  Hie leit es in dem Krip -- pe -- lein, \skip4 Krip -- pe -- lein. __
  Ohn en -- de ist die Herr -- schaft sein.
  Al -- le -- lu -- ja, al -- le -- lu -- ja. __
}

sopranoVerseThree = \lyricmode {
  \set stanza = "3."
  % Liedtekst volgt hier.
  Für sol -- che Gna -- den -- rei -- che Zeit, \skip4 rei -- che Zeit __
  sei Gott ge -- lobt in E -- wig -- keit.
}

altoVerseOne = \lyricmode {
  \set stanza = "1."
  % Liedtekst volgt hier.
  Ein Kind ge -- born zu Beth -- le -- hem, zu Beth -- le -- hem, __
  des freu -- et sich Je -- ru -- sa -- lem.
}

altoVerseTwo = \lyricmode {
  \set stanza = "2."
  % Liedtekst volgt hier.
  Hie leit es in dem Krip -- pe -- lein, \skip4 Krip -- pe -- lein. __
  Ohn en -- de ist die Herr -- schaft sein.
  Al -- le -- lu -- ja, al -- le -- lu -- ja. __
}

altoVerseThree = \lyricmode {
  \set stanza = "3."
  % Liedtekst volgt hier.
  Für sol -- che Gna -- den -- rei -- che Zeit, \skip4 rei -- che Zeit __
  sei Gott ge -- lobt in E -- wig -- keit.
}

tenorVerseOne = \lyricmode {
  \set stanza = "1."
  % Liedtekst volgt hier.
  Ein Kind ge -- born zu Beth -- le -- hem, zu Beth -- le -- hem, __
  des freu -- et sich Je -- ru -- sa -- lem. __
}

tenorVerseTwo = \lyricmode {
  \set stanza = "2."
  % Liedtekst volgt hier.
  Hie leit es in dem Krip -- pe -- lein, \skip4 Krip -- pe -- lein. __
  Ohn en -- de ist die Herr -- schaft sein. __
  Al -- le -- lu -- ja, al -- le -- lu -- ja. __
}

tenorVerseThree = \lyricmode {
  \set stanza = "3."
  % Liedtekst volgt hier.
  Für sol -- che Gna -- den -- rei -- che Zeit, \skip4 rei -- che Zeit __
  sei Gott ge -- lobt in E -- wig -- keit. __
}

bassVerseOne = \lyricmode {
  \set stanza = "1."
  % Liedtekst volgt hier.
  Ein Kind ge -- born zu Beth -- le -- hem, zu Beth -- le -- hem, __
  des freu -- et sich __ Je -- ru -- sa -- lem.
}

bassVerseTwo = \lyricmode {
  \set stanza = "2."
  % Liedtekst volgt hier.
  Hie leit es in dem Krip -- pe -- lein, \skip4 Krip -- pe -- lein. __
  Ohn en -- de ist __ die Herr -- schaft sein.
  Al -- le -- lu -- ja, __ al -- le -- lu -- ja. __
}

bassVerseThree = \lyricmode {
  \set stanza = "3."
  % Liedtekst volgt hier.
  Für sol -- che Gna -- den -- rei -- che Zeit, \skip4 rei -- che Zeit __
  sei Gott ge -- lobt __ in E -- wig -- keit.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "S."
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \sopranoVerseOne }
    \addlyrics { \sopranoVerseTwo }
    \addlyrics { \sopranoVerseThree }
    \new Staff \with {
      instrumentName = "A."
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \altoVerseOne }
    \addlyrics { \altoVerseTwo }
    \addlyrics { \altoVerseThree }
    \new Staff \with {
      instrumentName = "T."
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerseOne }
    \addlyrics { \tenorVerseTwo }
    \addlyrics { \tenorVerseThree }
    \new Staff \with {
      instrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \bassVerseOne }
    \addlyrics { \bassVerseTwo }
    \addlyrics { \bassVerseThree }
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 4)
    }
  }
}
