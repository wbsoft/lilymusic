\version "2.18.0"
#(set-global-staff-size 16)

\include "titlepage.ly"
\bookpart { \markup \null } % blank page
\include "psalmtext.ly"
\include "1-grave.ly"
\include "2-larghetto.ly"
\include "3-allegro.ly"
\include "4-adagio.ly"
\include "5-fuga.ly"
\include "6-piumosso.ly"

scoreSetup = <<
  \new PianoStaff <<
    \new Staff = "rh" \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
    } \new Voice = "rh" {
      \clef treble
      #(set-accidental-style 'piano)
    }
    \new Staff = "lh" \with {
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
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

music = {
  \scoreSetup
  \graveMusic
  \larghettoMusic
  \allegroMusic
  \adagioMusic
  \fugaMusic
  \piumossoMusic
}  

breaks = \new Devnull <<
  % page break at larghetto
  { s1*52 \pageBreak }
  
  % line break just before adagio because of decresc. molto sticking out
  { s1*225 \break }
  
  % line break at adagio due to LilyPond x-staff slur bug
  { s1*232 \break }
  
  % measure 247 and above must substract one s2 due to 2/4 measure 246.
  { s2 s1*304 \break }
  
>>

footnote = \context Staff = "ped" {
  s1*144
  \break % just ensure that this linebreak stays here.
  \once \override TextScript #'staff-padding = #4
  \once \override TextScript #'extra-offset = #'(-6 . 0)
  s2_\tenutoFootnote % see definitions.ly
}

\bookpart {
  \paper {
    ragged-last-bottom = ##f
    min-systems-per-page = #4
    max-systems-per-page = #5
    between-system-padding = 1\mm
    
    oddFooterMarkup = \markup {
      \column {
        \fill-line {
          %% Copyright header field only on first page.
          \on-the-fly #part-first-page \fromproperty #'header:copyright
        }
        \fill-line {
          %% Tagline header field only on last page.
          \on-the-fly #part-last-page \fromproperty #'header:tagline
        }
      }
    }
  }
  
  \header {
    dedication = "Herrn Professor Carl Riedel gewidmet."
    title = "Der 94ste Psalm."
    subtitle = "Sonate für die Orgel."
    composer = "Julius Reubke (1834-1858)"
    copyright = \markup \center-column {
      \line {
        Edited, engraved and copyright © 2009 by
        \with-url #"http://www.wilbertberendsen.nl/"
        { Wilbert Berendsen (http://www.wilbertberendsen.nl/) }
      }
      \line {
        This edition may be freely copied, distributed,
        performed and recorded under the provisions of the
      }
      \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/nl/"
      \line {
        Creative Commons License \concat { ( \tiny BY-NC-SA , }
        http://creativecommons.org/licenses/by-nc-sa/3.0/nl/)
      }
    }
    tagline = \markup {
      Engraved at
      \simple #(strftime "%d-%m-%Y" (localtime (current-time)))
      with \with-url #"http://lilypond.org/web/"
      { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
    }
  }

  \score {
    <<
      \music
      \breaks
      \footnote
    >>
    \layout {
      system-count = #129
      \context {
        \Score
        \override BarNumber #'extra-offset = #'(1 . 0)
        \override PaperColumn #'keep-inside-line = ##t 
        \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 3 32)
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
      }
    }
  }
}

\include "remarks.ly"
