\version "2.21.81"

#(set-global-staff-size 18)

\header {
  title = "Herzliebster Jesu, was hast du verbrochen"
  subtitle = "Matthäus-Passion (BWV 244): 3. Choral"
  composer = "Johann Sebastian Bach (1685-1750)"
  % Standaard LilyPond-tagline verwijderen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  line-width = 185\mm
  system-count = 3
  system-system-spacing.basic-distance = #20
  top-margin = 20\mm
  markup-system-spacing.basic-distance = #20
}

global = {
  \accidentalStyle modern-voice
  \autoBeamOff
  \key b \minor
  \time 4/4
  \partial 4
}

soprano = \relative {
  \global
  % Muziek volgt hier.
  b'4
  b4 b ais8[ gis] fis4
  b4 cis d d
  e4( d) cis\fermata cis
  d4 e fis8[ e] d4
  g4 g fis8[ e] fis4
  e2 d4\fermata d
  cis4 b a fis8[ g]
  a4 a b a
  g2 fis4\fermata fis'4
  e4 d cis2
  b2.\fermata
  \bar "|."
}

alto = \relative {
  \global
  % Muziek volgt hier.
  fis'4
  g4 d8[ e] fis4 cis
  fis4 fis fis fis
  fis2 fis4 fis
  fis4 a a b8[ a]
  g4 a a d8[ cis]
  b4( a8[ g]) fis4 fis
  e4 d e d8[ e]
  fis4 fis g fis
  fis8[( dis] e4) e d
  g4 fis fis4.( e8)
  dis2.
}

tenor = \relative {
  \global
  % Muziek volgt hier.
  d'4 
  e4 b cis8[ b] ais4
  b4 ais b8[ cis] d4
  cis4( b) ais ais
  b4 cis d8[ cis] b[ cis]
  d4 e e d
  d4( cis) a b8[ a]
  g4 g8[ fis] e[ a] a4
  d4 d d c
  b4.( ais16[ b]) cis4 b
  b8[ ais] b4 b( ais)
  fis2.
}

bass = \relative {
  \global
  % Muziek volgt hier.
  b4 e,8[ fis] g4 fis4 fis8[ e]
  d4 fis b, b'
  ais4( b) fis\fermata fis
  b4 a d, g8[ a]
  b4 cis d8[ cis] b[ a]
  g4( a) d,\fermata b
  e8[ fis] g4 cis, d
  d'8[ c] b[ a] g[ fis] e[ dis]
  e2 ais,4\fermata b
  cis d8[ e] fis2
  b,2.\fermata
  
}

l = {
  \once \override LyricText.self-alignment-X = #LEFT
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Liedtekst volgt hier.
  Herz -- lieb -- ster Je -- su, was hast du ver -- bro -- chen,
  daß man ein solch hart Ur -- teil hat ge -- \l spro -- chen?
  Was ist die Schuld, in was für Mis -- se -- \l ta -- ten
  bist du ge -- ra -- ten?
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Liedtekst volgt hier.
  Was ist die Ur -- sach’ al -- ler solch -- er Pla -- gen?
  Ach, mei -- ne Sün -- den ha -- ben dich ge -- \l schla -- gen!
  Ich, ach Herr Je -- su, ha -- be dies ver -- \l schul -- det,
  was du er -- dul -- det.
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \center-column { "Sopraan" "Alt" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Staff \with {
      instrumentName = \markup \center-column { "Tenor" "Bas" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
}

% MIDI-oefenbestanden:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verseOne
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verseOne
    \midi { }
  }
}

