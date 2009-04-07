\version "2.12.0"
#(set-global-staff-size 16)

\header {
  title = "Der 94ste Psalm."
  subtitle = "Sonate."
  composer = "Julius Reubke (1834-1858)"
}

\layout {
  \context {
    \Score
    % \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8)
  }
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
    } \new Voice = "rh" {
      \clef treble
      #(set-accidental-style 'piano)
    }
    \new Staff = "lh" \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 2)
    } \new Voice = "lh" {
      \clef bass
      #(set-accidental-style 'piano)
    }
  >>
  \new Staff = "ped" \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 4)
  } \new Voice = "ped" {
    \clef bass
    #(set-accidental-style 'piano 'Staff)
  }
>>

\include "1-grave.ly"
\include "2-larghetto.ly"
\include "3-allegro.ly"
\include "4-adagio.ly"

music = {
  \scoreSetup
  \graveMusic
  \larghettoMusic
  \allegroMusic
  \adagioMusic
}  

% some (page) breaks to enforce easy page turning etc.
breaks = \new Devnull {
  s1*52  %\pageBreak % 53: Larghetto
  s1*128 \newSpacingSection % 181
  s1*52 \break \newSpacingSection % 233: Adagio
}

\score {
  <<
    \music
    \breaks
  >>
}
