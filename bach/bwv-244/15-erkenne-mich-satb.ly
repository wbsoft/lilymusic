\version "2.21.81"

\header {
  title = "Erkenne mich, mein Hüter"
  subtitle = "Matthäus-Passion (BWV 244): 15. Choral"
  composer = "Johann Sebastian Bach (1685-1750)"
  % Standaard LilyPond-tagline verwijderen
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  line-width = 185\mm
  system-system-spacing.basic-distance = #20
  top-margin = 20\mm
  markup-system-spacing.basic-distance = #20
}

global = {
  \autoBeamOff
  \accidentalStyle modern-voice
  \key es \major
  \time 4/4
  \partial 4
}

breaks = {
  \skip 1*4 \bar "" \break
  \skip 1*4 \bar "" \break
  \skip 1*4 \bar "" \break
}

soprano = \relative {
  \global
  % Muziek volgt hier.
  g'4
  c4 bes as g
  f2 g4\fermata d'
  es4 es d8[ c] d4
  c2.\fermata 
  g4
  c4 bes as g
  f2 g4\fermata d'
  es4 es d8[ c] d4
  c2.\fermata 
  es4
  d8[ c] bes4 c d
  es2 es4\fermata bes
  c4 bes as as
  g2.\fermata
  es'4
  d8[ es] f4 es d
  c2 d4\fermata g,
  as4 g f bes
  g2.\fermata
  \bar "|."
  
  
}

alto = \relative {
  \global
  % Muziek volgt hier.
  es'4
  es es es8[ f] f[ es]
  es4( d) es f
  es8[ f] g4 g g8[ f]
  es2.
  es4
  es es es8[ f] f[ es]
  es4( d) es f
  es8[ f] g4 g g8[ f]
  es2. 
  c'8[ bes]
  as4 g8[ f] es4 as
  as4( g8[ f]) g4
  g4
  as4 g g f
  e2. 
  f4
  f4 f g f
  g4( f) f 
  es es8[ d] es4 es d
  es2.
}

tenor = \relative {
  \global
  % Muziek volgt hier.
  bes4
  as4 bes c8[ bes] bes4
  c4( bes) bes b
  g4 c c b
  c2.
  bes4
  as4 bes c8[ bes] bes4
  c4( bes) bes b
  g4 c c b
  c2.
  g'4
  f8[ es] d4 c8[ bes] as[ bes]
  c4( bes8[ as]) bes4 es
  es4 es8[ d] c4 c
  c2.
  c4
  bes4 bes8[ a] bes[ c] d[ bes]
  g8[( c] a4) bes bes
  as4 bes c f,8[ bes]
  bes2.
}

bass = \relative {
  \global
  % Muziek volgt hier.
  es4
  as4 g c,8[ d] es4
  as,4( bes) es\fermata d
  c8[ d] es[ f] g4 g,
  c2.\fermata
  es4
  as4 g c,8[ d] es4
  as,4( bes) es\fermata d
  c8[ d] es[ f] g4 g,
  c2.\fermata
  c'4
  f,4 g as8[ g] f4
  es2 es4\fermata es
  as4 es f8[ g] as[ bes]
  c2.\fermata
  a4
  bes4 d, g8[ a] bes4
  es,4( f) bes,4\fermata es8[ d]
  c4 bes as bes
  es2.\fermata
}

l = {
  \once \override LyricText.self-alignment-X = #LEFT
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Liedtekst volgt hier.
  Er -- ken -- ne mich, mein \l Hü -- ter,
  mein \l Hir -- te, nimm mich an,
  von dir, Quell al -- \l ler Gü -- ter,
  ist mir viel Gut’s ge -- tan.
  Dein Mund had mich ge -- \l la -- bet
  mit Milch uns süs -- ser Kost,
  dein Geist had mich be -- \l ga -- bet
  mit man -- cher Him -- mels -- lust.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Liedtekst volgt hier.
  Ich will hier bei dir \l ste -- hen,
  ver -- \l ach -- te mich doch nicht!
  Von dir will ich \l nicht ge -- hen,
  wenn dir dein Her -- ze bricht.
  Wann dein Haupt wird er -- \l blas -- sen,
  im letz -- ten To -- des -- stoß,
  als -- dann will ich dich \l fas -- sen
  in mei -- nen Arm und Schoß.
}

verseThree = \lyricmode {
  \override LyricText.font-shape = #'italic
  \override StanzaNumber.font-shape = #'italic
  \set stanza = "1."
  % Liedtekst volgt hier.
  Mijn Hei -- land wees mijn her -- der,
  neem in Uw dienst mij aan.
  Be -- stuur, be -- scherm mij ver -- der,
  Gij hebt mij wel -- ge -- daan.
  Uw mond heeft mij ge -- na -- dig
  met he -- mel -- spijs ge -- voed.
  Uw geest schonk mij wel -- da -- dig
  een on -- waar -- deer -- lijk goed.
}

verseFour = \lyricmode {
  \override LyricText.font-shape = #'italic
  \override StanzaNumber.font-shape = #'italic
  \set stanza = "2."
  % Liedtekst volgt hier.
  Ik blijf Uw kruis be -- schou -- wen
  met d’o -- gen van ’t_ge -- loof.
  Ver -- meer -- der mijn ver -- trou -- wen!
  Dat niets mijn ij -- ver doov’.
  In ’t_heil -- pad op te stre -- ven
  wan -- neer mijn kracht ver -- gaat,
  bij ’t_uit -- eind van mijn le -- ven,
  wees dan mijn toe -- ver -- laat.  
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
      \breaks
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
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

