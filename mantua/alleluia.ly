\version "2.12.2"

#(set-global-staff-size 18)

\header {
  title = "Alleluia Surrexit Dominus"
  subtitle = "(1538)"
  composer = "Jacquet de Mantua (1483-1559)"
}

global = {
  \key f \major
  \time 2/2
}

soprano = \relative c' {
  \global
  % Muziek volgt hier.
  f2. e4 d2 c4
  c'2\melisma bes4 a4. g8 a f g4. f8\melismaEnd f2 e4 f2
  R1*3 r2 r4
  bes2 a4 g2 f4 c'2\melisma bes4 a4. g8 a f g4. f8\melismaEnd f2 e4
  a4.\melisma g8 a f\melismaEnd g4.\melisma f8\melismaEnd f2 e4 f1
  
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  R1
  r4 f2 e4 d2 c r4 bes2 a4 g2 f
  R1*6 r4
  f'2 e4 d2 c~c r4 g a4. bes8 c4 g a4. bes8 c2
  
}

tenor = \relative c {
  \global
  % Muziek volgt hier.
  R1*4 r2 r4
  f2 e4 d2 c4
  c'2\melisma bes4 a4. g8 a f g4. f8\melismaEnd f2 e4 f2
  r4 bes2 a4 g2 f4 c'2.\melisma a4\melismaEnd bes g2 f4.\melisma e8 d4\melismaEnd c f2 g f1
  %surrexit
  
}

bass = \relative c {
  \global
  % Muziek volgt hier.
  R1*5 r2 r4
  f2 e4 d2 c r4 bes2 a4 g2 f4 f' f e f2 r r4
  f2\melisma c4 d\melismaEnd bes c2 f,4 f'2 e4 d2\melisma c\melismaEnd f, r4
  %surrexit
  
}

sopranoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
  Al -- le -- lu -- ia, al -- le -- lu -- ia, __
  al -- le -- lu -- ia.
  
}

altoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
  Al -- le -- lu -- ia, __ al -- le -- lu -- ia,
  al -- le -- lu -- ia.
}

tenorVerse = \lyricmode {
  % Liedtekst volgt hier.
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia, __
  al -- le -- lu -- ia.
  
}

bassVerse = \lyricmode {
  % Liedtekst volgt hier.
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerse }
    \new Staff \with {
      midiInstrument = "choir aahs"
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \bassVerse }
  >>
  \layout {
    \context {
      \Voice
      \remove "Note_heads_engraver"
      \consists "Completion_heads_engraver"
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 2)
    }
  }
}
