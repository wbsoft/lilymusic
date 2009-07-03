\version "2.13.1"
% #(set-global-staff-size 16)
% Some suggestions to the performance of Reubke's Der 94ste Psalm

#(define text-width-override (cons 'line-width 57))
#(define music-width-override (cons 'line-width 45))

arrow = \markup {
  \general-align #X #-0.8
  \rotate #270 \fontsize #3 \char ##x27B1
}

bullet = \markup \char ##x2022

notesGlobal = {
  \override Script #'avoid-slur = #'around
  \override Staff.TimeSignature #'stencil = ##f
  \key c \minor
  \time 4/4
  \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 2)
  \set Staff.fontSize = #-2
  \override Staff.StaffSymbol #'staff-space = #(magstep -2)
}

fragmentAText = \markup \justify {
  Measure 176, left hand, last beat, third sixteenth:
  C instead of C-flat:
}
fragmentA = \relative c' {
  \notesGlobal
  \partial 4.
  \clef bass
  \hideNotes b,8_( \unHideNotes
  des'!16 fes c!^\arrow fes)( | <e! b!>4)-|
}

fragmentBText = \markup \justify {
  Measure 181, left and right hand, fourth beat:
  E instead of E-flat (like measure 33).
  This way the upper voice better reflects the main theme.
  (One could argue to also play measure 185 with E instead of E-flat 
  like measure 35 but I think that is not necessary, as the curve
  of the upper voice is not affected.)
}
fragmentB = \new PianoStaff <<
  \new Staff = "rh" \relative c'' {
    \notesGlobal
    <c es g!>8-| r8
    \set doubleSlurs = ##t
    \override Script #'extra-offset = #'(0 . 0.5)
    <as b f'>2-^(_\fff <g c e>8[)-|^\arrow
    \revert Script #'extra-offset
    r16 c]-| |
    <a c es!>8[-| r16 <fis a>]-|
  }
  \new Staff = "lh" \relative c' {
    \notesGlobal
    \clef bass
    <g c es>8-| r8
    \set doubleSlurs = ##t
    \override Script #'extra-offset = #'(0 . 0.5)
    <as b f'>2-^( <g c e>8[)-|
    \revert Script #'extra-offset
    r16 c]-|
    <c es! fis>8[-| r16 <c es>]-|
  }
>>

fragmentCText = \markup \justify {
  Measure 411, right hand, last beat, second sixteenth:
  D instead of F:
}
fragmentC = \new PianoStaff <<
  \new Staff = "rh" \relative c'' {
    \notesGlobal
    \partial 4.
    s8 s8. <d f as b>16 |
    
  }
  \new Staff = "lh" \relative c' <<
    \notesGlobal
    \partial 4.
    {
      \hideNotes f8( \unHideNotes
      bes16[ \change Staff = "rh" d^\arrow <f bes>])
    }
    \new Voice {
      s8 s8. <d, f as b>16
    }
  >>
>>

fragmentDText = \markup \justify {
  Measure 413, right hand, last beat, second sixteenth:
  D instead of B:
}
fragmentD = \new PianoStaff <<
  \new Staff = "rh" \relative c'' {
    \notesGlobal
    \partial 4.
    s8 s8. <es as c>16 |
    
  }
  \new Staff = "lh" \relative c'' <<
    \notesGlobal
    \partial 4.
    {
      \hideNotes g8( \unHideNotes
      b16[ \change Staff = "rh" d^\arrow <as' b>])
    } \new Voice {
      s8 s8. <es, as c>16
    }
  >>
>>

\bookpart {
  \paper {
    top-margin = 2.5\cm
    bottom-margin = 2.5\cm
    left-margin = 3\cm
    line-width = 15\cm
    ragged-right = ##t
  }
  
  \header {
    tagline = ##f
  }
  
  \markup {
    \fontsize #0.5
    \column {
      
      \fill-line {
        \fontsize #4 \line { About this edition }
      }

      \strut
      \justify {
        
        I created this score to deepen my understanding of, and as a tribute to,
        both Reubke’s splendid Organ Sonata, and the LilyPond development
        community’s truly amazing LilyPond music typesetter.

        This edition exactly follows its source: the 1871 score from the
        \with-url #"http://www.imslp.org/"
        { International Music Score Library Project (http://imslp.org/); }
        only where the original sometimes writes the music for both hands
        in one staff, I use both staffs to improve readability.
      }
      
      \strut
      \justify {
        The performer should have a thorough understanding of how the stops
        sound on a typical German organ from the second half of the 19th century
        and find matching registrations at the organ on which the piece is
        performed.
        The original score has a “Vorbemerkung” which notes that, if stops
        are named without “allein” (only) appended, some other stops may be
        added as well, to create a good balance with the foreground melody.
        Some registrations possibly refer to the new Ladegast organ of Merseburg
        Cathedral, where Reubke played the premiere of this piece on June 17th, 1857.
        The Aeoline 16' on that organ was a soft free reed stop and the Posaune 32'
        had a warm-round sound, not very loud.
      }
      
      \strut
      \justify {
        Hairpins most times denote the use of a swell box, while
        directions like \italic cresc. and \italic dim. in most cases
        refer to the adding resp. removing of stops.
        The \italic slanted hairpins that sometimes appear below ranges of 16th
        notes do not refer to swell or adding stops, but rather mean that the
        performer should \italic suggest an increasing tension by playing the notes
        a little over-legato (tenuto).
      }
      
      \strut
      \fill-line { \null \line { Wilbert Berendsen, Easter 2009 } }
      
      \strut
      \justify {
        \smallCaps { Some suggestions: }
        Aside from some missing clefs, all notes, slurs, articulations, dynamics,
        registrations, etc. are exactly copied from the source.
        At a few places however, the original text contains ambiguities or
        possibly small errors. Those are listed below, with a suggested alterative.
      }
      
      \strut
      \fill-line \vcenter {
        \line { \bullet \override #text-width-override \fragmentAText }
        \override #music-width-override \fill-line {
          \score {
            \fragmentA
            \layout { }
          }
          \null
        }
      }
      
      \strut
      \fill-line \vcenter {
        \line { \bullet \override #text-width-override \fragmentBText }
        \override #music-width-override \fill-line {
          \score {
            \fragmentB
            \layout { }
          }
          \null
        }
      }
      
      \strut
      \fill-line \vcenter {
        \line { \bullet \override #text-width-override \fragmentCText }
        \override #music-width-override \fill-line {
          \score {
            \fragmentC
            \layout { }
          }
          \null
        }
      }
      
      \strut
      \fill-line \vcenter {
        \line { \bullet \override #text-width-override \fragmentDText }
        \override #music-width-override \fill-line {
          \score {
            \fragmentD
            \layout { }
          }
          \null
        }
      }

      \strut
      \line { \smallCaps Translations of some German terms: }
      
      \fill-line {
        \column {
          \line { \italic { alle Bässe } all bass stops }
          \line { \italic allein only }
          \line { \italic düster dark, gloomy }
          \line { \italic { etwas belebter } more lively }
          \line { \italic heller brighter }
          \line { \italic hervortretend on the foreground }
          \line { \italic { leiser werdend } becoming softer }
        }
        \column {
          \line { \italic { nach und nach schneller } accellerate bit by bit }
          \line { \italic { nicht schleppend } do not slow down }
          \line { \italic oder or }
          \line { \italic ohne without }
          \line { \italic schwächer weaker }
          \line { \italic { Trompete fort } remove Trumpet }
          \line { \italic { (viel) stärker } (much) louder }
        }
      }
      
      \strut
      \line {
        \italic { \bold NB on page 10: }
        Hold the notes from the broken
        chords as long as possible
      }
    }
  }
}
