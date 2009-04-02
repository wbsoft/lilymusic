\version "2.12.0"
#(set-global-staff-size 16)

\header {
  title = "Der 94ste Psalm."
  subtitle = "Sonate."
  composer = "Julius Reubke (1834-1858)"
}

\layout {
  \context {
    \Staff
    \override TextScript #'staff-padding = #1
    \override BreathingSign #'text = #(make-musicglyph-markup "scripts.caesura.curved")
  }
  \context {
    \Voice
    \override DynamicTextSpanner #'dash-period = #6
    \override DynamicTextSpanner #'dash-fraction = #0.08
    \override DynamicTextSpanner #'font-size = #0
    extraNatural = ##t
  }
}

scoreSetup = <<
  \new PianoStaff <<
    \new Staff = "rh" \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 3)
    } {
      \clef treble
      #(set-accidental-style 'piano)
    }
    \new Staff = "lh" \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 2)
    } {
      \clef bass
      #(set-accidental-style 'piano)
    }
  >>
  \new Staff = "ped" \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 4)
  } {
    \clef bass
    #(set-accidental-style 'piano)
  }
>>

% temporary
tempKeySetup = <<
  \context Voice = "rh" \key g \minor
  \context Voice = "lh" \key g \minor
  \context Voice = "ped" \key g \minor
>>

\include "1-grave.ly"
\include "2-larghetto.ly"
\include "3-allegro.ly"

\score {
  {
    \scoreSetup
    \graveMusic
    \larghettoMusic
    %\tempKeySetup % delete me
    \allegroMusic
  }
}
