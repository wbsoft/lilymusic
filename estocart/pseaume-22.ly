\version "2.13.10"

\header {
  title = "Psalm 22"
  composer = "Paschal de l‘Estocart (1539-na 1584)"
  poet = "Berijming 1773"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
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
  
}

\paper {
  indent = 8\mm
  ragged-last-bottom = ##f
}

global = {
  \key g \minor
  \time 2/2
}

soprano = \relative c'' {
  \global
  % Muziek volgt hier.
  R1*3
  bes1 |
  g2 c |
  b b |
  es es |
  d1 |
  c1 |
  bes4 f bes4. c8 |
  d4 d c2 |
  bes1~ |
  bes2 g4 g |
  a2 r4 d |
  es2 r4 c |
  bes8( a g f g4) g |
  fis2 r4 fis |
  g2 c |
  bes2 r4 d |
  c2 a |
  b r4 bes |
  bes c bes d |
  es2. c4 |
  es2 es |
  d r4 bes |
  a bes bes a |
  bes2 bes |
  as4 g g2~( |
  g fis) |
  g1 |
  r2 d' |
  d d |
  g, d' |
  e e |
  f1 |
  es |
  d2( c~ |
  c b |
  c1~ |
  c) |
  d2 r4 bes |
  bes bes a a |
  g1 |
  fis4 f'! f f |
  d f es2 |
  d4 f f c |
  d bes d2 |
  c4 c c c |
  bes a g2 |
  a r4 a |
  bes2 c |
  d f |
  es d |
  c bes |
  c4( bes2 a4) |
  bes4 bes bes4. a8 |
  g4 f e2 |
  f r4 bes |
  as2( g~ |
  g) fis |
  g\breve*1/2
  \bar "|."
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  R1*2 |
  r2 es
  d4 d g2 |
  r g |
  g1 |
  r2 es |
  bes' g |
  g4 g f c |
  d1 |
  r2 f |
  f f |
  g4 g bes2 |
  r2 f |
  g es |
  es4.( d16 c bes4) c |
  d2 r4 d |
  bes2 es |
  d2 r4 d |
  es( g2) fis4 |
  g1~ |
  g |
  r2 g~ |
  g g |
  g d4 d |
  f d es c |
  bes2 f' |
  es d |
  d1 |
  b2 r4 d |
  d2 d g, r4 g' |
  bes2 bes |
  c1 |
  r2 f, |
  g g |
  bes r4 g |
  f2 g es2. as4 |
  g( f2 e4) |
  f4 f f f |
  g g, a2( |
  bes c) |
  d r4 f~ |
  f d es2 |
  f4 a a a |
  bes f f2~ |
  f f |
  d4 d bes2 |
  f' r4 d~ |
  d e2 f4~ |
  f g r d |
  es es f2 |
  r f |
  g f |
  d4 d d4. a8 |
  bes4 bes c2 |
  f, r4 f' |
  es1 |
  d |
  b\breve*1/2
  \bar "|."
}

tenor = \relative c' {
  \global
  % Muziek volgt hier.
  bes1^\markup \italic { c.f. } g c bes2 bes es es d1 c bes R
  f1 bes2 c d1 d c2 bes g1 g a R
  bes1 c2 d g, d' es d c1 c bes R
  d1 c2 bes a1 g R
  d'1 d2 d c1 f, bes2 c d es d1 c R
  d1 d2 d g,1 a bes2 c d c bes1 a R
  f1 g2 a bes bes c d es d c1 bes R
  d1 c a g\breve*1/2
  \bar "|."
}

bass = \relative c {
  \global
  % Muziek volgt hier.
  R1 |
  es |
  c2 c |
  g'1 |
  r2 c, |
  g'1 |
  r2 c, |
  g'4 g g g |
  es2 f |
  bes, bes~ |
  bes4 bes'2 a4 |
  bes2 bes |
  g1 |
  r2 bes, |
  es c |
  es es |
  d r4 d |
  es2 c |
  g'1 |
  R |
  r2 g |
  es4 c g'2 |
  r2 c, |
  c c |
  g r4 g' |
  f g es f |
  bes,2 bes |
  c g |
  d'1 |
  g,~ |
  g |
  r2 g' |
  g g |
  c, c |
  d d |
  es c |
  g' c, |
  r g' |
  as2. f4 |
  c' f, c'2( |
  bes2. a4 |
  g2 f |
  es1) |
  d |
  R |
  r4 f f f |
  bes,2 bes |
  f'2. f4 |
  g d es2 |
  d1 |
  R1*2 |
  r2 bes |
  c d |
  es f |
  g2. f4 |
  es d c2 |
  bes bes |
  c1 |
  d |
  g,\breve*1/2
  \bar "|."
}

rehearsalMarks = {
  s1*17
  \mark\default % bar 18
  s1*13
  \mark\default % bar 31
  s1*13
  \mark\default % bar 44
  s1*6
  \mark\default % bar 50
}

sopranoVerseDutch = \lyricmode {
  Mijn God, mijn God, waar -- om ver -- laat Gij mij,
  en redt mij niet, ter -- wijl ik __ zwoeg en strij’,
  ter -- wijl ik zwoeg __ en strij’,
  en brul -- lend klaag,
  en brul -- lend klaag,
  en brul -- lend klaag,
  in d’_ang -- sten die ik lij’,
  in d’_ang -- sten die ik lij’?
  Dus fel ge -- sla -- gen?
  ’t_Zij ik, mijn God, bij dag moog’ bit -- ter kla -- gen,
  bij dag moog’ bit -- ter kla -- gen.
  Gij ant -- woordt niet,
  ant -- woordt niet;
  ’t_zij ik des nachts moog’ ker -- men,
  ’t_zij ik des nachts moog’ ker -- men.
  Ik heb geen rust, ook vind ik geen ont -- fer -- men,
  ook vind ik geen ont -- fer -- men,
  in mijn __ ver -- driet.
}

sopranoVerseFrench = \lyricmode {
  
}

altoVerseDutch = \lyricmode {
  Mijn God, mijn God,
  mijn God,
  mijn God, waar -- om ver -- laat Gij mij,
  en redt mij niet, mij niet,
  ter -- wijl ik zwoeg __ en strij’,
  en brul -- lend klaag,
  en brul -- lend klaag, __
  en __ brul -- lend klaag,
  in d’_ang -- sten die ik lij’?
  Dus fel ge -- sla -- gen?
  ’t_Zij ik, mijn God,
  ’t_zij ik, mijn God,
  ’t_zij ik, mijn God, bij dag moog’ bit -- ter kla -- gen,
  bij dag moog’ bit -- ter kla -- gen.
  Gij __ ant -- woordt niet,
  Gij ant -- woordt niet;
  ’t_zij ik __ des nachts moog’ ker -- men.
  Ik __ heb geen __ rust,
  ik heb geen rust,
  ik heb geen rust,
  ook vind ik geen ont -- fer -- men,
  in mijn ver -- driet.
}

altoVerseFrench = \lyricmode {
  
}

tenorVerseDutch = \lyricmode {
  Mijn God, mijn God, waar -- om ver -- laat Gij mij,
  en redt mij niet, ter -- wijl ik zwoeg en strij’,
  en brul -- lend klaag in d’_ang -- sten die ik lij’?
  Dus fel ge -- sla -- gen?
  ’t_Zij ik, mijn God, bij dag moog’ bit -- ter kla -- gen.
  Gij ant -- woordt niet; ’t_zij ik des nachts moog’ ker -- men.
  Ik heb geen rust, ook vind ik geen ont -- fer -- men,
  in mijn ver -- driet.
}

tenorVerseFrench = \lyricmode {
  
}

bassVerseDutch = \lyricmode {
  Mijn God, mijn God,
  mijn God, mijn God,
  waar -- om ver -- laat Gij mij,
  en __ redt mij niet, mij niet,
  ter -- wijl ik zwoeg en strij’,
  en brul -- lend klaag,
  en brul -- lend klaag,
  en brul -- lend klaag,
  in d’_ang -- sten die ik lij’?
  Dus fel ge -- sla -- gen? __
  ’t_Zij ik, mijn God, bij dag moog’ bit -- ter kla -- gen,
  bij dag moog’ bit -- ter kla -- gen.
  Gij ant -- woordt niet; ’t_zij ik des nachts moog’ ker -- men.
  Ik heb geen rust, ook vind ik geen ont -- fer -- men,
  in mijn ver -- driet.
}

bassVerseFrench = \lyricmode {
  
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
      << \soprano \rehearsalMarks >> \\
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
          %         midiInstrument = "choir aahs"
          instrumentName = "S."
        } << \soprano \rehearsalMarks >>
        \addlyrics { \sopranoVerseDutch }
        %       \addlyrics { \sopranoVerseFrench }
        \new Staff \with {
          %         midiInstrument = "choir aahs"
          instrumentName = "A."
        } { \alto }
        \addlyrics { \altoVerseDutch }
        %       \addlyrics { \altoVerseFrench }
        \new Staff \with {
          %         midiInstrument = "baritone sax"
          instrumentName = "T."
        } { \clef "treble_8" \tenor }
        \addlyrics { \tenorVerseDutch }
        %       \addlyrics { \tenorVerseFrench }
        \new Staff \with {
          %         midiInstrument = "choir aahs"
          instrumentName = "B."
        } { \clef bass \bass }
        \addlyrics { \bassVerseDutch }
        %       \addlyrics { \bassVerseFrench }
      >>
      %     \pianoReduction
    >>
    \layout {
      \context {
        \Score
        markFormatter = #format-mark-box-letters
      }
      \context {
        \Staff
        \consists "Ambitus_engraver"
      }
    }
  }
}


% MIDI-oefenbestanden:
rehearsalMidi = #(define-music-function
  (parser location name midiInstrument lyrics) (string? string? ly:music?)
  #{
    \unfoldRepeats <<
      \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \soprano }
      \new Staff = "alto" \new Voice = "alto" { s1*0\f \alto }
      \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
      \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
      \context Staff = $name {
        \set Score.midiMinimumVolume = #0.5
        \set Score.midiMaximumVolume = #0.5
        \set Score.tempoWholesPerMinute = #(ly:make-moment 66 2)
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #1.0
        \set Staff.midiInstrument = $midiInstrument
      }
      \new Lyrics \with {
        alignBelowContext = $name
      } \lyricsto $name $lyrics
    >>
#})

#(define output-suffix "soprano")
\book {
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerseDutch
    \midi { }
  }
}

#(define output-suffix "alto")
\book {
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerseDutch
    \midi { }
  }
}

#(define output-suffix "tenor")
\book {
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorVerseDutch
    \midi { }
  }
}

#(define output-suffix "bass")
\book {
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerseDutch
    \midi { }
  }
}
