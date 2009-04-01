\version "2.12.0"

oops = \once \override Staff.NoteColumn #'ignore-collision = ##t

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold { Allegro con fuoco. }
}

allegroMusic = {
  % bar 108 - 125
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
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
      <<
        { \override Script #'avoid-slur = #'around g4(-^ fis8)-| } 
        \\ <a, es'>4.
      >>
      r16 <g bes d> <fis a es'>4..-^ <g bes d>16 |
      <<
        { \override Script #'avoid-slur = #'around g'4(-^ fis8)-| } 
        \\ <a, es'>4.
      >>
      r16 fis' <cis e bes'>4..-^ <c e a>16 |
      <bes~ e~ a>4-^( <bes e g>8)[-| r16 g'] <es fis c'>4..-^ <d fis bes>16 |
      <c~ fis~ bes>4-^( <c fis a>8)[-| r16 a'] <fis a es'>4..-^ <f a d>16 |
      <es_~ a d>4-^( <es fis c'>8)[-| r16 <d fis bes>] <c_~ es a>4-^( <c fis>8)[-| r16 es] |
      <<
        {
          \override Script #'avoid-slur = #'around
          d4(-^ c8)[-| r16 bes]
          a4(-^ fis8)[-| r16 es]
        }
        \\ { a4~ a8 r es4( c8) r }
      >> |
      <<
        {
          es4..( d16 cis4 \change Staff = "lh" c | \noBreak % cause it breaks the slur
          b4.. bes16 a4 as g8) s
        }
        \\ b2
      >> <d as'>2-^ <es g c>4 |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c {
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
      <c g' a>4 r8 a16[( c
      \once \override Hairpin #'rotation = #'(18 0 0)
      \once \override Hairpin #'extra-offset = #'(2 . 8)
      g'\<
      \change Staff = "rh" c g' a)]
      \change Staff = "lh" <bes,, d g>8[-|\! r16 <bes d g>]-| |
      <c g' a>4 r8 a16[( c
      \once \override Hairpin #'rotation = #'(18 0 0)
      \once \override Hairpin #'extra-offset = #'(2 . 8)
      g'\<
      \change Staff = "rh" c g' a)]
      \change Staff = "lh" <bes,, d g>8[-|\! r16 <bes d g>]-| |
      <<
        { \override Script #'avoid-slur = #'around g'4(-^ fis8)-| } 
        \\ <a, es'>4.
      >>
      r16 <g bes d> <fis a es'>4..-^ <g bes d>16 |
      <<
        { \override Script #'avoid-slur = #'around g'4(-^ fis8)-| } 
        \\ <a, es'>4.
      >>
      r16 fis' <cis e bes'>4..-^ <c e a>16 |
      <bes~ e~ a>4-^^( <bes e g>8)[-| r16 g'] <es fis c'>4..-^ <d fis bes>16 |
      <c~ fis~ bes>4-^^( <c fis a>8)[-| r16 a'] <fis a es'>4..-^ <f a d>16 |
      <es~ a d>4-^^( <es fis c'>8)[-| r16 bes'] a4^~-^ <fis a>8[-| r16 es] |
      <<
        { fis4~ fis8 r \clef bass c4( a8) }
        \\ {
          \override Script #'avoid-slur = #'around
          d4-^( c8)[-| r16 bes] a4-^( fis8)
        }
      >> r8 |
      <<
        { as2 g4 }
        \\ {
          f2 e4 <es as> |
          <d g>4.. <es g>16 <cis e>4 <c es> |
          <b d>8
        }
      >> r8 <as' b>2 <g c>4 |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
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
      c2 r8. fis,16[ a8. bes16] |
      c2-^ r8. g16[ bes8. c16] |
      cis2-^ r8. a16[ c8. d16] |
      es2-^ r8. c,16[ es8. f16] |
      \times 2/3 { fis8 g gis } a4~ \times 2/3 { a8 bes b } c4~ |
      \times 2/3 { c8 cis d } es4~ \times 2/3 { es8( e f } fis4) |
      \times 2/3 { r8 as, g~ } <g g'>2. |
      \times 2/3 { r8 as g~ } <g g'>2. |
      \times 2/3 { r8 g' fis } f2-^ es8. c16 |
    }
  >>
  % bar 126 - 136
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c' {
      <es as c~>4-> <f c' d>8. <g c es>16 <c es g>4-> <d g b>8. <es g c>16 |
      <fis a es'>4..-^ <f as b>16 <es g c>8[ r16 <es g>] <d as'>8[ r16 <des e>] |
      <c f>8[ r16 <as c>] <g b>8[ r16 <d g>] <es as>8[ r16 <c f>] <c es>8[ r16 <c d>] |
      <c es g>4-| r8. <d f c'>16 <es g c>4-| r8. <f c' d>16 |
      <g c es>4-| r8. <c d f>16 <c es g>4-| r8. <d f c'>16 |
      <es g c>8-| r <as, es' g as>4~-^ <as es' g as>8 <as es' g as>4-^ r16 <b f' as>-| |
      <c es as>8. r16 <bes des g>8. r16 <as c f>8. r16 <g c es>8. r16 |
      <f c' d>4 s8 s4.^\markup \italic ten. <g c g'>8[-| r16 <g c>]-| |
      <f c' d>4 s8 s4.^\markup \italic ten. <g c g'>8[-| r16 <g c>]-| |
      <d as' c>8-| r <d as' c>2^- <d as' ces>4~^- |
      <d as' ces>4 <d as' bes>2^- <bes d as'>4^- |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      << { s4^> d8. es16 } \\ { <as, c>4~ <as c> } >>
      <c es g>4-> \clef treble <d g b>8. <es g c>16 |
      <fis a es'>4..-^ <f as b>16 <es g c>8[ r16 c'] b8[ r16 bes] |
      as8[ r16 f] d8[ r16 b] \clef bass c8[ r16 as] g8[ r16 fis] |
      g4-| r8. <f c'>16 <g c>4-| r8. <c d>16 |
      <c es>4-| r8. \clef treble <c d f>16 <c es g>4-| r8. <d f c'>16 |
      <es g c>8-| r <as, es' g>4~-^ <as es' g>8 <as es' g>4 r16 <b f' as>-| |
      <c es as>8. <bes des g>16~ <bes des g>8. <as c f>16~ <as c f>8. <g c es>16~ <g c es>8. <f c' d>16~ |
      <f c' d>4 \clef bass r8 
      d16[( f c' \change Staff = "rh" f c' d])
      \change Staff = "lh" <es,, g c>8[-| r16 <es g c>]-| |
      <d f c'>4 r8 
      d16[( f c' \change Staff = "rh" f c' d])
      \change Staff = "lh" <es,, g c>8[-| r16 <es g c>]-| |
      <d as' c>8-| r <as' c>2-- <as ces>4~-- |
      <as ces> <f bes>2-- <d as'>4-- |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c' {
      as2 g |
      <g, g'>1~ |
      <g~ g'> |
      g8 f'( es d c bes a as |
      g f es d' c bes a as) |
      g r c4-^~ c8[ b->( c) r16 d]-| |
      es8. c16( e8.) c16( f8.) c16( g8.) c16( |
      as'2)~ as8. d,16 es8. c16( |
      as'2)~ as8. d,16 es8. c16( |
      f1)~ |
      f2. f,4
    }
  >>
  % bar 137 - 
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c' {
      \oneVoice
      <des~ as'>2^(
      ^\markup \italic { weniger stark und ruhiger. }
      _\markup { M. II. \dynamic f } 
      <des g>4) r8 des |
      \voiceOne
      fes1~-^ |
      <<
        { fes4-- es-- as-- bes-- }
        \new Voice {
          \voiceTwo
          s4 es,16( des bes g) as'( f 
          \change Staff = "lh" \voiceOne ces des
          \change Staff = "rh" \voiceTwo bes' g 
          \change Staff = "lh" \voiceOne bes, des)
        }
      >> |
      \oneVoice
      <es ges~ des'>2^( <ges c>4.) ges8 |
      \voiceOne
      beses1~-^ |
      <<
        { beses4 as-- des-- es-- }
        \new Voice {
          \voiceTwo
          s4 as,16( ges es c) des'( beses
          \change Staff = "lh" \voiceOne fes ges
          \change Staff = "rh" \voiceTwo es' c 
          \change Staff = "lh" \voiceOne es, ges)
        }
      >> |
      
    }
    \context Staff = "lh" \context Voice = "lh" \relative c {
      \oneVoice
      r16 bes( c des es fes as a bes g fes es d des bes g) |
      r \stemDown es_([ as bes] des
      \stemUp fes[^\markup \italic { R.H. } as bes] des
      \stemNeutral \clef treble as'[^\<_\markup \italic { L.H. }
      bes des] 
      <<
        { \voiceTwo fes bes, des fes)\! | as fes des bes es4^- }
        \new Voice { \voiceOne fes4-^ | as-- }
      >>
      \clef bass s2 |
      \oneVoice
      r16 des,,,( es f ges beses c des es c beses as g ges es c) |
      r \stemUp as_( des es ges
      \change Staff = "rh" \stemDown beses des es ges 
      \change Staff = "lh" \stemUp \clef treble des' es ges
      <<
        { \voiceTwo beses es, ges beses) | des beses ges es as4 }
        \new Voice { \voiceOne beses4-- | des-- as-- }  
      >>
      \clef bass s2
      
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      fes2
      ^\markup \whiteout { starke Bässe und Pedalcoppel fort. }
      es~ |
      es1~ |
      es4 des'( ces bes) |
      beses2 as~ |
      as1~ |
      as4 ges'( fes es) |
      
    }
  >>
}


%%master: psalm94.ly
