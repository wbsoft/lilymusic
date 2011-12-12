\version "2.14.1"

\header {
  title = "Thou wilt keep him in perfect peace"
  composer = "Samuel Sebastian Wesley (1810-1876)"
}

global = {
  \key f \major
  \time 4/4
  \tempo "Andante sostenuto"
}

soprano = \relative c' {
  \global
  % Muziek volgt hier.
  f2 g
  a4( g8 f) c'4 c
  d4( f) e( d)
  c2 c
  c4 f, bes2~
  bes4 a g d
  f2. e4 f2 r
  R1
  
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  r4 f2 e4 f2( g)
  f2. f4
  e4( g) f( es)
  d2 r
  r4 a d bes
  a4 bes8( a) g2
  f2 r
  R1

}

tenorOne = \relative c' {
  \global
  % Muziek volgt hier.
  r4 c( d) c
  c2 c~
  c2 bes
  bes2( a4) f
  d'2 e4( d)
  cis2 d
  c4 d8( c) bes2
  a2 r
  R1
  
}

tenorTwo = \relative c' {
  \global
  % Muziek volgt hier.
  
}

bass = \relative c {
  \global
  % Muziek volgt hier.
  
}

sopranoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep him in per -- fect peace,
  whose mind is stay -- ed on Thee,
  on Thee.
  
}

altoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep __ him in per -- fect peace,
  whose mind is stay -- ed on Thee.
  
}

tenorOneVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep him __ in per -- fect peace,
  whose mind is stay -- ed on Thee.
}

tenorTwoVerse = \lyricmode {
  % Liedtekst volgt hier.
  
}

bassVerse = \lyricmode {
  % Liedtekst volgt hier.
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "S."
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
      instrumentName = "A."
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \altoVerse }
    \new ChoirStaff \with {
      systemStartDelimiter = #'SystemStartSquare
    } <<
      \new Staff \with {
        instrumentName = "T. I"
        \consists "Ambitus_engraver"
      } { \clef "treble_8" \tenorOne }
      \addlyrics { \tenorOneVerse }
      \new Staff \with {
        instrumentName = "T. II"
        \consists "Ambitus_engraver"
      } { \clef "treble_8" \tenorTwo }
      \addlyrics { \tenorTwoVerse }
    >>
    \new Staff \with {
      instrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \bassVerse }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}
