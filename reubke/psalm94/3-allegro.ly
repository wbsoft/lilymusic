\version "2.12.0"

oops = \once \override Staff.NoteColumn #'ignore-collision = ##t

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold { Allegro con fuoco. }
}

rh = { \change Staff = "rh" \stemDown }
lh = { \change Staff = "lh" \stemUp }

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
  % bar 137 - 154
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c' {
      \oneVoice
      \key c \minor
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
          s4 es,16( des bes g) as'( f \lh ces des \rh bes' g \lh bes, des)
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
          s4 as,16( ges es c) des'( beses \lh fes ges \rh es' c \lh es, ges)
        }
      >> |
      <beses des ges>4-- fes'-- es-- d-- |
      des( ces bes << { as16 ces d~ f~) } \new Voice { \voiceTwo as,4 } >> |
      <d f as>4( ges fes es) |
      \oneVoice
      <f, as~ es'>2^( <as d>4.) as8 |
      ces1^~^^ |
      <<
        { ces4 \voiceOne bes-- es,-- f-- }
        \new Voice {
          \voiceTwo
          s4 bes16( as f d) es( ces \lh ges as \rh f' d \lh f, as)
        }
      >> |
      \oneVoice
      <bes des~ as'>2^( <des g>4.) des8 |
      \voiceOne
      fes1~ |
      <<
        { fes4 es-- as-- bes-- }
        \new Voice {
          \voiceTwo
          s4 es,16( des bes g) as'( fes \lh ces des) \rh bes'( g \lh bes, des)
        }
      >> |
      <fes as des>4 ces'( bes a) |
      as( ges f es16 ges beses~ c~) |
      <beses c es>4( des ces bes) | 
    }
    \context Staff = "lh" \context Voice = "lh" \relative c {
      \oneVoice
      \key c \minor
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
      \oneVoice
      r16
      <<
        {
          \voiceOne
          fes,,16_( beses ces
          \voiceTwo
          des4 bes g) |
          as fes f as |
          s des ces bes |
        }
        \new Voice {
          \voiceOne \slurDown
          s8. des16 fes \rh beses as
          \lh bes, es \rh g bes \lh g, d' \rh g bes |
          \lh as,( des \rh fes as) \lh fes,( ces' \rh fes as)
          \lh f,( bes \rh d f) \lh as,( ces \rh d f) |
          ces'( as f d) \lh des( ges \rh bes des)
          \lh ces,( fes \rh as ces) \lh bes,( es \rh ges bes) |
        }
      >>
      \oneVoice
      r f,( ges as bes ces d es f d ces bes a as f d) |
      r
      \voiceOne
      bes_( es f as \rh ces es f as \lh \clef treble es' f as
      <<
        { \voiceTwo ces f, as ces | es ces as f bes4^-) }
        \new Voice { \voiceOne ces4-- | es-- }
      >>
      \clef bass s2
      \oneVoice
      r16 bes,,,( c des es fes as a bes g fes es d des bes g) |
      r
      \voiceOne
      es_( as bes des \rh fes as bes des \lh \clef treble as' bes des
      <<
        { \voiceTwo fes bes, des fes | as fes des bes) es4-- }
        \new Voice { \voiceOne fes4-- | as-- }
      >>
      \clef bass s2
      \oneVoice
      r16
      <<
        {
          \voiceOne \slurDown
          ces,,,_( fes ges) as( ces \rh fes es)
          \lh f,( bes \rh d f) \lh d,( a' \rh d f) |
          \lh es,( as \rh ces es) \lh ces,( ges' \rh ces es)
          \lh c,( f \rh a c) \lh es,( beses' c es) |
          ges( es c beses) as( des \rh f as) 
          \lh ges,( ces \rh es ges) \lh f,( bes \rh des f) |
        }
        \new Voice {
          \voiceTwo
          s8. as,4 f d |
          es ces c es |
          s as ges f |
        }
      >>
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      \key c \minor
      fes2
      ^\markup \whiteout { starke Bässe und Pedalcoppel fort. }
      es~ |
      es1~ |
      es4 des'( ces bes) |
      beses2 as~ |
      as1~ |
      as4 ges'( fes es) |
      des2-| es-| |
      fes-| f-| |
      ges,-| as4-| bes-| |
      ces2-| bes~ |
      bes1~ |
      bes4 as'( ges f) |
      fes2-| es~ |
      es1~ |
      es4 des( ces bes) |
      as2-| bes-| |
      ces-| c-| |
      des-| es4-| f-| |
    }
  >>
  % bar 155 - 166
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \oneVoice
      r16 \voiceTwo c^( des es f ges a bes c a f ges es c bes a~) |
      <<
        a1 |
        \new Voice {
          \voiceOne 
          c8( des4 es f ges8)~ |
          \oneVoice
          <ges, c ges'>2-| <f c' f>4.-| <c' f>8-| |
        }
      >>
      \oneVoice
      \set doubleSlurs = ##t
      <c f~ c'>2( <b f' b>4)~
      \unset doubleSlurs
      <b f' b>16 as'( f b,) |
      <bes f'>( g as bes c des e f g e c des bes g f e)_~ |
      <<
        \voiceTwo e1 |
        \new Voice {
          \voiceOne
          g8( as4 bes c des8)~ |
          \oneVoice
          <des, g des'>2-| <c g' c>4.-| <g' c>8-| |
        }
      >>
      \oneVoice
      \set doubleSlurs = ##t
      <g c^~ g'>2( <fis c'~ fis~>4)
      \unset doubleSlurs
      <c' fis>16( es fis c') |
      <f, c'>( d es f g as b c d b g as f d c b)_~ |
      <<
        \voiceTwo b1
        \new Voice {
          \voiceOne
          d8( es4 f g as8)~ |
          \oneVoice
          <as, d as'>2-| <g d' g>4.-| <d' g>8-| |
        }
      >>
      \oneVoice
      \set doubleSlurs = ##t
      <d g~ d'>2( <des g des'>4)~
      \unset doubleSlurs
      <des g des'>16( bes' g e) |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \oneVoice
      \clef treble
      <c~ es~ bes'>2^(-^
      ^\markup { \dynamic ff M. I. ohne Coppel. } 
      <c es a>4.) es8 |
      \clef bass
      ges16( es c bes a ges es des c ges' a bes c a ges f) |
      es( ges bes c es c bes ges) f( a c es f es c a) |
      as( c es f as f es c) \clef treble b( d f as b8)-| r8 |
      \clef bass
      <<
        { f2( e4.) bes8 }
        \\ <g bes>1
      >>
      des'16( bes g f e des bes as g des' e f g e des c) |
      bes( des f g bes g f des) c( e g bes c bes g e) |
      es( g bes c es c bes g) fis( a c es fis8) r |
      \clef treble
      <<
        { c'2( b4.) f8 }
        \\ <d f>1
      >>
      as'16( f d c \clef bass b as f es d as' b c d b as g) |
      f( as c d f d c as) g( b d f g f d b) |
      \clef treble
      bes( d f g bes g f d) des e g bes des8-| r |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c' {
      \once \override Script #'avoid-slur = #'around
      ges2(-^
      _\markup { \dynamic ff ohne Pedalcoppel. }
      f4.) r8 |
      r2 r4 r8 f,-| |
      bes2-| a-| |
      es'-| d-| |
      des(-^ c4.) r8 |
      r2 r4 r8 c-| |
      f2-| e-| |
      bes'-| a-| |
      \once \override Script #'avoid-slur = #'around
      as(-^ g4.) r8 |
      r2 r4 r8 g,-| |
      c2-| b-| |
      bes-| e,-| |
    }
  >>
  % bar 167 - 175:1
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c''' {
      bes16( g f e g e des c des bes g e) r c'( f c' |
      bes g f e g e des c des bes g e) r a( c f |
      es c bes a c a ges f ges es c a) r f'( bes f' |
      es c bes a c a ges f ges es c a bes des f bes,) |
      \lh e,( g bes e, g bes des g, bes \rh des e \lh bes
      \rh \oneVoice des e g des |
      e g bes e, g bes des g, bes des e bes des e g des |
      e g bes bes, des e g des e g bes bes, des e g des |
      e g bes bes, des e g des e g bes bes, des e g des)~ |
      <des g bes>4-|
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      <des e bes'>8[ r16 <bes des e>]-| <bes des e>4-| r <as c f>-| |
      <des e bes'>8[ r16 <bes des e>]-| <bes des e>4-| r <a c f>-| |
      <a c ges'>8[-| \clef bass r16 <ges a c>]-| <ges a c>4-| r <des f bes> |
      <ges a es'>8[-| r16 <es ges a>]-| <es ges a>4-| r <des f>-| |
      \voiceTwo r2 r4 \oneVoice r8. e!16( |
      g bes des g, bes des e des \clef treble e g bes e, g bes des e, |
      g bes des des, e g bes e, g bes des des, e g bes e, |
      g bes des des, e g bes e, g bes des des, e g bes des,)~ |
      <des g bes>4-|
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      r2 r4 f( |
      f')-| r r f,( |
      f')-| r r f,( |
      f')-| r r
      f(
      ^\markup Pedalcoppel
      _\markup \italic { Sehr hervortretend. }
      |
      des'4 c8. g16 bes4 e,) |
      as4( g8. des16 f4 e) |
      des( c bes a as g f e |
      es)-|
    }
  >>
  % bar 175:2 - 181:1
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      <<
        {
          \voiceOne
          <c a'>4( <ces as'> <bes g'> |
          \oneVoice
          <as ces fes> <g bes es> \voiceOne d' des) |
          \oneVoice <d gis b>-| \voiceOne <cis ais'>( <c a'> <b gis'> |
          \oneVoice <a c f> <gis b e> \voiceOne dis' d) |
          \oneVoice <es a c>-| <d as' b>( <des e bes'> <c f a> |
          <bes des ges> <a c f> <g bes e> <a c es>) |
          <c es g>8-| r
        }
        \new Voice {
          \voiceTwo
          es2. |
          s2 a, |
          s4 e'2. |
          s2 a, |
        }
      >>
    }
    \context Staff = "lh" \context Voice = "lh" \relative c, {
      \clef bass
      es16_( es' e, e' f, f' fis, fis' g, g' bes, bes' |
      ces, ces' des, des' es, es' e, e' f, f' as, f' des fes ces fes)( |
      \once \override Script #'avoid-slur = #'around
      <b, e>4)-| e,,16_( e' eis, eis' fis, fis' fisis, fisis' gis, gis' b, b' |
      c, c' dis, dis' e, e' eis, eis' fis, fis' a, fis' d f cis f~ |
      <c f>4)-| f,,16( f' fis, fis' g, g' gis, gis' a, a' c, c' |
      des, des' e, e' f, f' a, f' g, e' bes e a, es' c es) |
      <g, c es>8-| r
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      r4 r2 |
      r r4 fes( |
      \once \override Script #'avoid-slur = #'around
      <e e'>)-| r r2 |
      r r4 f~-| |
      <f f'> r r2 |
      r r4 << fis'-| \\ fis,-| >> |
      << g'8-| \\ g,-| >> r
    }
  >>
  % bar 181:2 - 189:1
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \set doubleSlurs = ##t
      \override Script #'avoid-slur = #'around
      <as b f'>2(-^
      _\fff
      ^\markup Manualcoppel
      <g c es>8)[-| r16 c]-| |
      <a c es>8[-| r16 <fis a>]-| <fis a>2~ <fis a>8[-| r16 es]-| |
      <d g>4-| 
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 2/3 {
        r8 c <es a> r d <g b> r  es <g c> |
        r f <b d> r g <c es> r g <d' f> r g, <c es fis> |
      }
      <c es g>8-| r <b f' as>2(-^ <c es g>8)[-| r16 c]-| |
      \unset doubleSlurs
      <c fis>8[-| r16 <fis, a c>] <fis a c>2~ <fis a c>8[-| r16 <g b>]-| |
      <b d>4-| % -| is missing in 1871 print
      \times 2/3 {
        r8 g <c es> r g <d' f> r c <es g> |
        r b <f' as> r c <g' c> r d <g d'> r es <fis c' es> |
      }
      <es g c es>4-|
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \set doubleSlurs = ##t
      \override Script #'avoid-slur = #'around
      <as b f'>2(-^ <g c es>8)[-| r16 c]-| |
      <c es fis>8[-| r16 <c es>]-| <c es>2~ <c es>8[-| r16 <fis, c'>]-| |
      \unset doubleSlurs
      <g b>4-| <c, es a>( <d g b> <es g c> |
      <g b d> <g c es> <g d' f> <g es' fis>) |
      \set doubleSlurs = ##t
      <g es' g>8-| r \clef treble <b f' as>2(-^ <c es g>8)[-| r16 c]-| |
      <c es fis a>8[-| r16 <c es>] <c es>2~ <c es>8[-| r16 <b d>]-| |
      \unset doubleSlurs
      <b d g>4-| <g c es>( <g d' f> <g es' g> |
      <b f' as> <c es g> <bes d g> <as c g'> |
      <g c g'>)-|
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 2/3 { r8^\fff g( as a bes b c cis d } |
      \times 2/3 { es e f fis d es b c d } es8)[ r16 g,]~ |
      <g g'>4-| fis'8( g f g es g |
      d g c, g' bes, g' as, g') |
      g, r \times 2/3 { r8 g( as a bes b c cis d } |
      \times 2/3 { es e f fis d es b c d } es8)[-| r16 g,]~ |
      <g g'>4-| fis'8( g f g es g |
      d g c, g' bes, g' as, g' |
      g,4)-|
    }
  >>
  % bar 189:2 - 196
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c' {
        \voiceOne
        es4(^\markup\italic legato as g8. d16 |
        f4 c' d es |
        as g f es8. c16 |
        g'2 d4) g,( |
        as2. g4~ |
        g fis c'4. b8) |
        f'4( es2 d4 |
        as' g f es)
      }
      \new Voice \relative c' {
        \voiceTwo
        c8-| bes-| as-| c-| b-| r |
        c-| d-| es-| g-| as-| ces-| bes-| a-| |
        c-| b-| bes-| a-| as-| g-| fis-| r |
        c'-| es-| d-| c-| b-| as-| f-| e-| |
        f-| es-| d-| c-| b-| as-| g-| des'-| |
        c-| b-| a-| d-| c-| f-| es-| fis-| |
        b-| as-| g-| c-| a-| fis-| f-| as-| |
        d-| b-| bes-| des-| c-| as-| g-| c-| |
      }
    >>
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \clef bass 
      as8-| g-| f-| es-| d-| g-| |
      as-| bes-| c-| \clef treble es-| f-| as-| g-| fis-| |
      <<
        {
          as-| f-| g-| es-| \clef bass d-| des-| c-| d-| |
          es-| \clef treble c'-| as-| g-| \clef bass f-| es-| d-| des-| |
          c-| bes-| as-| g-| f-| es-| d-| des-| |
          c-| d-| es-| f-| fis-| as-| a-| dis-| |
          b-| d-| es-| c-| a-| c-| b-| as-| |
          d-| f-| e-| des-| c-| f-| es-| c-| |
        }
        {
          f d es c b bes a as |
          g g' f es d c b bes |
          as g f es d c b bes |
          a b c d es f fis a |
          as b c g fis a as f |
          b d des bes as c c g |
        }
      >> 
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      r4 r2 |
      \repeat unfold 7 { <g g'>4-.-^ r r2 | }
    }
  >>
  % bar 197 - 202
  <<
    \context Staff = "rh" \context Voice = "rh" <<
      \oneVoice
      \relative c''' {
        b8-| as-| g-| f-| es-| f-| g-| d-| |
        c-| d-| es-| bes-| as-| bes-| c-| g-| |
        f-| d-| es-| f-| g-| as-| b-| c-| |
        d-| g,-| as-| bes-| c-| d-| es-| f-| |
        g-| g,-| as-| b-| c-| es-| f-| g-| |
        as-| es-| f-| g-| as-| b-| c-| d-| |
      }
      \relative c'' {
        <d f>8 f es d c c d bes |
        as as bes g f f g es |
        c as bes c d es f g |
        as d, es f g as bes c |
        d d, es f g bes c d |
        es bes c d es f g as |
      }
    >>
    \context Staff = "lh" \context Voice = "lh" <<
      \relative c' {
        \clef treble
        f8-| d-| es-| f-| g-| as-| bes-| g-| |
        \clef bass
        es-| f-| g-| es-| c-| d-| es-| c-| |
        as-| f-| g-| as-| b-| c-| d-| es-| |
        f-| b,-| c-| d-| \clef treble es-| f-| g-| as-| |
        b-| b,-| c-| d-| es-| g-| as-| bes-| |
        c-| g-| as-| bes-| c-| d-| es-| f-| |
      }
      \relative c' {
        d8 b c d es c g' bes, |
        c as es' g, as f c' es, |
      }
    >>
    \context Staff = "ped" \context Voice = "ped" \relative c {
      r4 g(^\fff
      _\markup \italic { sehr hervortretend }
      c bes8. g16 |
      as4) es' f g |
      as g f es |
      d c bes as |
      g f' es d |
      c bes as g |
    }
  >>
  % bar 203 - 219
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \repeat unfold 5 <es fis a es'>1~ <es~ fis a es'~> |
      \repeat unfold 2 <es ges bes es>1~ <es~ ges~ bes es~> |
      <es ges c es>4-| r8. <c fis a>16-| <c fis a>4-| r8. <es a c>16-| |
      <es a c>4-| r8. <a, es' fis>16-| <a es' fis>4-| r8. <c es a>16-| |
      <c es a>8-| r <b d as'>-| r <c es g>-| r <a d fis>-| r |
      <as d f>-| r <g bes es>-| r <fis a d>-| r <fis c'>-| r |
      <g c g'>2 r4 r8. <c es g>16 |
      <c es as>2 r4 r8. <c es as>16 |
      <c es fis a>2 r4 r8. <c es fis a>16 |
      <d f b>2 r4 r8. <d f b>16 |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c {
      \set doubleSlurs = ##t
      \clef bass
      <fis c' es fis>1~ | <fis c' es fis>~ | <fis~ c' es~ fis>~ | 
      <fis ces' es fis>~ | <fis ces' es fis>~ |
      \once \override Tie #'staff-position = #7.5
      <fis ces' es_~ fis>( | 
      <ges bes es ges>)~ | <ges bes es ges>~ | <ges bes es ges>~ | 
      <ges c es ges>4 r8. \clef treble <c fis a>16-| <c fis a> 4-| r8. <es a c>16-| |
      <es a c>4-| r8. <a, es' fis>16-| <a es' fis>4-| r8. <c es a>16-| |
      <c es a>8-| r <b d as'>-| r <c es g>-| r <a d fis>-| r |
      \clef bass <as d f>-| r <g bes es>-| r <fis a d>-| r <as c es>-| r |
      <g c es>2 \clef treble r4 r8. <c es g>16 |
      <c es as>2 r4 r8. <c es as>16 |
      <c es fis a>2 r4 r8. <c es fis a>16 |
      <d f b>2 r4 r8. <d f b>16 |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c' {
      \override Script #'avoid-slur = #'around
      c2(-^ a4.) d,8( |
      es4.) fis,8 fis2~-^ |
      fis8 gis a c d es f fis |
      ces'2(-^ ges4.) d8( |
      es4.) ges,8-. ges2~-^ |
      ges8 bes( ces d es f ges a) |
      bes2(-^ ges4.) d8( |
      es4.) ges,8-. ges2~-^ |
      ges8 a bes d es f ges as |
      a f ges d es d es c |
      fis d es b c b c a |
      fis' e f d es cis d ais |
      b( a bes gis a g as g) |
      g'( d es b c g g' g,) |
      as'( d, es b c g as' g,) |
      a'( d, es b c g a' g,) |
      b'( e, f cis d g, b' g,) |
    }
  >>
  
}


%%master: psalm94.ly
