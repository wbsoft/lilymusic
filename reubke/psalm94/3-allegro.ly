\version "2.12.0"

oops = \once \override Staff.NoteColumn #'ignore-collision = ##t

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold { Allegro con fuoco. }
}

allegroMusic = {
  <<
    \context Voice = "rh" \relative c'' {
      \set tieWaitForNote = ##t
      cis16 bes'~ g~ d~ 
      \tempoMark
      <bes d g bes>2(-^\fff <cis e a>8[)-| r16 <c es>]-| |
      <bes d g>8[-| r16 <bes d>] <c es>2~-^ <c es>8 <b d>-| |
      <<
        { g'4-> d8. d16 es4-> a,8. a16 }
        \\ { d8 c4 bes8~ bes-. a-. g-. fis-. }
      >> |
      
    }
    \context Voice = "lh" \relative c {
      \set tieWaitForNote = ##t
      fis16 fis' g,~ <bes d>~ <g bes d g>2-^
      -\tweak #'X-offset #3 ^\markup \whiteout Manualcoppel
      <cis e a>8[-| r16 <c es>]-| |
      <bes d g>8[-| r16 g']-| <fis a>2~ <fis a>8 <f as>-| |
      <<
        { g4. f8~ f-. es-. d-. c-. }
        \\ { f8 es4 d8~ d-. c-. bes-. a-. }
      >> |
      
    }
    \context Voice = "ped" \relative c {
      d8 g,~ <g g'>2.~-^\fff
      -\tweak #'X-offset #3 ^\markup Posaune.
      <g g'>1~ |
      <g g'>4 r r2 |
      
    }
  >>
}


%%master: psalm94.ly
