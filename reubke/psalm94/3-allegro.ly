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
      <g bes>4-| r8. <g a c>16 <g bes d>4-| r8. <a c g'>16 |
      <bes d g>4-| r8. <c g' a>16 <d g bes>4-| r8. <g a c>16 |
      <g bes d>8-| r <es bes' d es>4~-^ <es bes' d es>8 <es bes' d es>4-^ r16 <es fis c' es>-| |
      <es g bes es>8-| r <f as d>8. r16 <es g c>8. r16 <d g bes>8. r16 |
      <c g' a>4 s8 s4.^\markup\italic ten. <d g d'>8[-| r16 <d g>]-| |
      <c g' a>4 s8 s4.^\markup\italic ten. <d g d'>8[-| r16 <d g>]-| |
      
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
      <g bes>4-| r8. <g a c>16 <g bes d>4-| r8. \clef treble <a c g'>16 |
      <bes d g>4 r8. <c g' a>16 <d g bes>4-| r8. <g a c>16 |
      <g bes d>8-| r <es bes' d>4~-^ <es bes' d>8 <es bes' d>4-^ r16 <es fis c'>-| |
      % TODO: slurs from left hand
      <es g bes>8-| r16 <f as d>~ <f as d>8. <es g c>16~ <es g c>8. <d g bes>16~ <d g bes>8. <c g' a>16~ |
      <<
        {
          <c g' a>4 r8 a16[( c
          \once \override Hairpin #'rotation = #'(20 0 0)
          \once \override Hairpin #'extra-offset = #'(2 . 8)
          g'\<
          \change Staff = "rh" c g' a)]
          \change Staff = "lh" <bes,, d g>8[-|\! r16 <bes d g>] |
          <c g' a>4 r8 a16[( c
          \once \override Hairpin #'rotation = #'(20 0 0)
          \once \override Hairpin #'extra-offset = #'(2 . 8)
          g'\<
          \change Staff = "rh" c g' a)]
          \change Staff = "lh" <bes,, d g>8[-|\! r16 <bes d g>] |
        }
        \new Voice s1*2 % keep the staff alive
      >>
      
    }
    \context Voice = "ped" \relative c {
      d8 g,~ <g g'>2.~-^\fff
      -\tweak #'X-offset #3 ^\markup Posaune.
      <g g'>1~ |
      <g g'>4 r r2 |
      r8 f'( e es d c bes a |
      g f e es d c' bes a |
      g-|) r g4-^~ g8[ fis8(-^ g) r16 a]-| |
      bes8-| r16 g( b8.) g16( c8.) g16( d'8.) g,16( |
      es'2~) es8. a,16 bes8. g16_( |
      es'2~) es8. a,16 bes8. g16 |
      c2 r8. fis,16 a8. bes16 |
      c2-^ r8. g16 bes8. c16 |
      cis2-^ 
    }
  >>
}


%%master: psalm94.ly
