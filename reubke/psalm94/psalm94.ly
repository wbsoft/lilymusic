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
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-2 . 2)
  }
  \context {
    \Voice
    \override DynamicTextSpanner #'dash-period = #6
    \override DynamicTextSpanner #'dash-fraction = #0.08
    
  }
}

scoreSetup = <<
  \new Devnull = "breaks" { }
  \new PianoStaff <<
    \new Staff = "rh" \new Voice = "rh" {
      \clef treble
      #(set-accidental-style 'piano)
    }
    \new Staff = "lh" \new Voice = "lh" {
      \clef bass
      #(set-accidental-style 'piano)
    }
  >>
  \new Staff = "ped" \new Voice = "ped" {
    \clef bass
    #(set-accidental-style 'piano)
  }
>>

\include "1-grave.ly"
\include "2-larghetto.ly"


\score {
  {
    \scoreSetup
    \graveMusic
    \larghettoMusic
    
  }
}
