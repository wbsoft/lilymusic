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
    \override TextSpanner #'dash-period = #5
    \override TextSpanner #'dash-fraction = #0.15
    
  }
}

scoreSetup = <<
  \new Devnull = "breaks" { }
  \new PianoStaff <<
    \new Staff = "rh" {
      \clef treble
      #(set-accidental-style 'modern)
    }
    \new Staff = "lh" {
      \clef bass
      #(set-accidental-style 'modern)
    }
  >>
  \new Staff = "ped" {
    \clef bass
    #(set-accidental-style 'modern)
  }
>>


\include "1-grave.ly"

gravePart = <<
  \context Devnull \breaks
  \music
>>

\include "2-larghetto.ly"

larghettoPart = <<
  \context Devnull \breaks
  \music
>>

\score {
  {
    \scoreSetup
    \gravePart
    \context Devnull \pageBreak
    \larghettoPart
    
  }
}
