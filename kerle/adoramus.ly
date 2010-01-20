\version "2.13.10"

#(set-global-staff-size 18)

\header {
  title = "Adoramus te"
  composer = "Jacob de Kerle (1531-1591)"
  copyright = \markup \center-column {
    \line {
      Engraved by
      \with-url #"http://www.wilbertberendsen.nl/" {
        Wilbert Berendsen
        (http://www.wilbertberendsen.nl/)
      }
    }
    \line {
      Copyright © 2010
      \with-url #"http://www.cpdl.org/" {
        The Choral Public Domain Library
        (http://www.cpdl.org/)
      }
    }
    \line {
      This edition may be freely distributed,
      edited, performed or recorded.
    }
  }
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\paper {
  ragged-last-bottom = ##f
}

global = {
  \key a \dorian
  \time 2/2
}

soprano = \relative c'' {
  \global
  % Muziek volgt hier.
  a2 a |
  c c |
  b1 |
  r4 b b d~( |
  d8 c16 b c4) a2 |
  e'4 e,2 e4 |
  b'4.( a8 gis2) |
  a1 |
  c |
  r2 a~ |
  a4 a a2 |
  a c~ |
  c1
  a2.( gis4) |
  gis2 r4 e |
  b'2 b |
  c4.( b8 a4) b |
  cis2 d |
  e4 a,2 c4 |
  c d2 c4 |
  b d2( cis4) |
  d1 |
  r2 d4.( c16 b |
  a2) b |
  b4 a2 a4 |
  b2 g |
  r4 c2 b4 |
  g4 g2 fis4 |
  g2 e4 e'~( |
  e8 d c2 b4) |
  c2 r |
  r g |
  a b |
  e,8( fis g a b4) c~( |
  c8 b a4. g16 fis g8 fis16 e |
  fis2) g |
  r4 e'2 d4 |
  b c e4.( d8 |
  c4. b16 a e'4) a,~( |
  a8 g f e d4) d'~( |
  d cis) cis2\fermata
  \bar "|."
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  R1 |
  e2 e4 a~( |
  a8 g16 fis g2) g4 |
  fis4.( e16 d fis4. g8 |
  a2) e |
  e4 a2 gis4 |
  gis2 r8 e4 e8 |
  f2 f |
  e1 |
  r2 f~ |
  f4 e e2~ |
  e e~ |
  e2 f4 c~( |
  c8 b a b c4) b |
  r4 b g'2 |
  g4 g2 g4 |
  e2 c4 b |
  r2 a |
  c4 e2 a4~ |
  a a a2 |
  g4.( a8 b4) g~( |
  g fis8 e fis2) |
  r2 fis~ |
  fis g~ |
  g4 fis e4.( fis8 |
  g4) d e b |
  e2( d4. c8 |
  b2 c) |
  d r |
  c d |
  e fis |
  g( e) |
  e r4 e |
  c8( d e fis g4) e~( |
  e8 d16 c e4) d e~( |
  e8 d16 c d4) c4.( b16 a |
  g4) g'2 fis4 |
  e4.( d8 c4) b |
  e4.( d8 c4. b16 a |
  c4 d8 e f2) |
  e1\fermata
  \bar "|."
}

tenor = \relative c' {
  \global
  % Muziek volgt hier.
  R1 |
  a2 a |
  e'1 |
  d |
  f4( e8 d c4. b16 a |
  c2 b) |
  r4 b2 b4 |
  d2 d |
  g,1 |
  r2 d'~ |
  d4 cis cis2~ |
  cis2 r4 a |
  c4 a8( b c d e4~ |
  e4 d) e2~ |
  e1~ |
  e2 r |
  r4 a, e'2~ |
  e f |
  e8( d c b a4) e' |
  f1 |
  d8( c b a g2) |
  a1 |
  r2 a |
  d1 |
  d4 d4.( cis16 b cis4) |
  d4 b4.( a8 g4~ |
  g8 fis16 e g4. a8 b c |
  d4) e2 c4~( |
  c8 b b a16 g a4 g) |
  g2 r4 g~ |
  g4 a2 b4~ |
  b4 b2 c4~( |
  c8 b16 a c4) b2 |
  r2 e, |
  a b~ |
  b e,4 e'~( |
  e8 d c4. b8 a b |
  gis4 a2 gis4) |
  a1~ |
  a~ |
  a\fermata
  \bar "|."
}

bass = \relative c {
  \global
  % Muziek volgt hier.
  R1*2 |
  e2 e |
  b' b |
  a2. a,4~ |
  a4 a e'2~ |
  e1 |
  d |
  c |
  r2 d~ |
  d4 a a2 |
  a'2. c4 |
  a8( b c b a4. g8 |
  f2) e~ |
  e1 |
  r2 e |
  a2. gis4 |
  a2 d, |
  a'4.( b8 c b a g |
  f e d e f2) |
  g4.( f8 e2) |
  d1 |
  r2 d~ |
  d g~ |
  g4 d a'2( |
  g4. fis8 e4. d8 |
  c2) g4 g'~ |
  g e a2( |
  g) c,~ |
  c r |
  c d |
  e1 |
  a,4 a'4.( g8 g fis16 g |
  a4 g8 fis e d c b |
  a b c4) b2~ |
  b r |
  c2. d4 |
  e1 |
  a,4 a'4.( g8 f4~ |
  f8 e d cis d2) |
  a1\fermata
  \bar "|."
}

sopranoVerse = \lyricmode {
  % Liedtekst volgt hier.
  A -- do -- ra -- mus te,
  a -- do -- ra -- mus te,
  a -- do -- ra -- mus te
  Do -- mi -- ne Je -- su __ Chri -- ste
  et be -- ne -- di -- ci -- mus ti -- bi,
  et be -- ne -- di -- ci -- mus ti -- bi:
  qui -- a per san -- ctam cru -- cem,
  qui -- a per san -- ctam cru -- cem tu -- am
  re -- de -- mi -- sti __ mun -- dum,
  re -- de -- mi -- sti mun -- dum, __
  mun -- dum.
}

altoVerse = \lyricmode {
  % Liedtekst volgt hier.
  A -- do -- ra -- mus te, __
  a -- do -- ra -- mus te,
  a -- do -- ra -- mus te
  Do -- mi -- ne __ Je -- su Chri -- ste
  et be -- ne -- di -- ci -- mus ti -- bi,
  et be -- ne -- di -- ci -- mus ti -- bi: __
  qui -- a __ per san -- ctam cru -- cem tu -- am
  re -- de -- mi -- sti mun -- dum,
  re -- de -- mi -- sti mun -- dum, __
  re -- de -- mi -- sti mun -- dum.
}

tenorVerse = \lyricmode {
  % Liedtekst volgt hier.
  A -- do -- ra -- mus te, __
  a -- do -- ra -- mus te
  Do -- mi -- ne __ Je -- su Chri -- ste __
  et be -- ne -- di -- ci -- mus ti -- bi:
  qui -- a per san -- ctam cru -- cem tu -- am
  re -- de -- mi -- sti mun -- dum,
  re -- de -- mi -- sti mun -- dum. __
}

bassVerse = \lyricmode {
  % Liedtekst volgt hier.
  A -- do -- ra -- mus te,
  a -- do -- ra -- mus te
  Do -- mi -- ne Je -- su Chri -- ste __
  et be -- ne -- di -- ci -- mus __ ti -- bi:
  qui -- a __ per san -- ctam cru -- cem tu -- am __
  re -- de -- mi -- sti mun -- dum, __
  re -- de -- mi -- sti mun -- dum.  
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \soprano \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

\book {
  \score {
    <<
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
        \new Staff \with {
          instrumentName = "T."
          \consists "Ambitus_engraver"
        } { \clef "treble_8" \tenor }
        \addlyrics { \tenorVerse }
        \new Staff \with {
          instrumentName = "B."
          \consists "Ambitus_engraver"
        } { \clef bass \bass }
        \addlyrics { \bassVerse }
      >>
  %     \pianoReduction
    >>
    \layout { 
      \context {
        \Voice
        \override Slur #'stencil = ##f
      }
    }
  }
}

% Rehearsal MIDI files:
rehearsalMidi = #(define-music-function
  (parser location name instrument lyrics) (string? string? ly:music?)
  #{
    \unfoldRepeats \new ChoirStaff <<
      \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \soprano }
      \new Staff = "alto" \new Voice = "alto" { s1*0\f \alto }
      \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
      \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
      \context Staff = $name \context Voice = $name {
        \set Score.midiMinimumVolume = #0.5
        \set Score.midiMaximumVolume = #0.5
        \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #1.0
        \set Staff.midiInstrument = $instrument
      }
      \new Lyrics \with {
        alignBelowContext = $name
      } \lyricsto $name $lyrics
    >>
  #})
  
  
#(define output-suffix "soprano")
\book { \score { \rehearsalMidi "soprano" "soprano sax" \sopranoVerse \midi { } } }

#(define output-suffix "alto")
\book { \score { \rehearsalMidi "alto" "soprano sax" \altoVerse \midi { } } }

#(define output-suffix "tenor")
\book { \score { \rehearsalMidi "tenor" "tenor sax" \tenorVerse \midi { } } }

#(define output-suffix "bass")
\book { \score { \rehearsalMidi "bass" "tenor sax" \bassVerse \midi { } } } 
