\version "2.12.0"

\include "definitions.ly"

global = {
  \key c \minor
}

larghettoMusic = {
  % bar 53 - 58
  <<
    \context Staff = "rh" \relative c {
      \clef bass
      \global
      \tempoMark #"Larghetto."
      r4 \times 2/3 { c8\p d es } as4( g8[) r16 d] |
      <<
        { f4( c' d es) }
        \\ { f,2 c' }
        \\ { s4 \stemUp \oops c_~ \hideNotes c2 }
      >>
      \clef treble
      <ces as'>4^( <bes g'> <as f'>
      <<
        {
          \voiceOne
          \times 2/3 { es'8 d c } |
          g'4) d2 es4~^( |
          \crescTextCresc
          es^\< d des~ \times 2/3 { des8 c bes } |
          as'4 g2 fis4) |
        }
        \new Voice {
          \voiceTwo
          a,4 c b bes a |
          as2. g4 |
          bes4. c8 d4 a |
        }
        \new Voice {
          s4*2/3
          \once \override Stem #'length = #0
          \oops c4*1/3 ~ |
          \stemDown \oops c4 s2. |
          s2. s4*2/3
          \once \override Stem #'length = #0
          \stemUp \oops bes4*1/3 _~ |
          \stemDown \oops bes4
        }
      >>
    }
    \context Staff = "lh" \relative c {
      \clef bass
      \global
      <<
        {
          r4 as( c bes) |
          as2. \times 2/3 { g8 c d } |
          es2 des4 \times 2/3 { c8 d es~ } |
          es4 d2 c4 |
          b2 bes4~ \times 2/3 { bes8 c des } |
          d4( es d2) |
        }
        \\ {
          c,1~\p
          ^\markup \whiteout { M. II. Salicional und Gedackt 16'. u. 8'. }
          c1~ |
          as'4_( es f fis |
          g2) fis |
          f2. fes4~ |
          fes( es d2) |
        }
      >>
    }
    \context Staff = "ped" \relative c, {
      \clef bass
      \global
      R1*6
    }
  >>
  % bar 59 - 63
  <<
    \context Staff = "rh" <<
      \relative c' {
        \voiceOne
        f4( c'8. b16 bes2~) |
        bes8( as g fis
        \set decrescendoSpanner = #'text
        \set decrescendoText = \markup\whiteout\italic { decresc. molto }
        f4\> g8 as~ |
        as4) g(~ g8 f c' b~ |
        b bes4 c8\! bes as g fis) |
        \oneVoice
        <c fis d'^~>2\pp <f b~ d>4 <g b es> |
        \unset decrescendoSpanner
      }
      \new Voice \relative c' {
        \voiceTwo
        c4 f2 fes4 |
        es2~ <ces es>4. <bes~ d>8 |
        <bes es>4. d8 c4 f~ |
        f fes es2 |
      }
      \new Voice \relative c' {
        s1*2 | s2 s8 \voiceOne \oops f4*1/2 _~ \stemDown \oops f4
      }
    >>
    \context Staff = "lh" <<
      \relative c' {
        as2.( g4~ |
        g8 as bes c) s2 |
        s4. bes8 a4( as~ |
        as4. g8~ g as d c) |
      }
      \\ \relative c {
        d2( des |
        c4 bes8 a \oneVoice as4 g8 f) |
        es8_( bes' \voiceTwo es4)~ es2( |
        d4 des c bes8 a) |
        \oneVoice as2 g
      }
    >>
    \context Staff = "ped" \relative c' {
      R1*5
    }
  >>
  % bar 64 - 73
  <<
    \context Staff = "rh" \relative c'' {
      <as c es>2^\(_\ppp
      ^\markup \whiteout { M. II. Flöte 8'. }
      <es as c>4 << { d'8. es16 } \\ <g, bes>4 >> |
      <as c f>4 <g c es> <fis a d> <g c> |
      <es as ces> <g bes es> <b d as'> <c es g>~ |
      <c es g> <a d fis> <d fis a> <es~ a c~>\) |
      <es as~ c>\( <d as'~ b> 
      <<
        {
          <des as' bes>2~ | 
          <des bes'~>2_( 
          <cis g' bes>4) <d fis a>\) |
        }
        \new Voice {
          \stemUp
          \once \override NoteColumn #'force-hshift = #-1
          \hideNotes
          as'2_~
          \unHideNotes
          as4 g~ \stemDown \oops g 
        }
      >>
      <<
        {
          \voiceOne
          <f as>2.\( <fes g~>4 |
          g8 as bes ces~ ces4. bes8\)~ |
          bes2 <g bes>8 <f as>4.~ |
          <f as>4 <fes g~>( g8 as bes c) |
        }
        \new Voice {
          \voiceTwo
          r4 c,8.( ces16 bes2~) |
          bes8 as s4 s4. d8~ |
          d es4 <d g>8 c4. ces8~ |
          ces bes4 c8 bes8 as s4 |
        }
        \new Voice {
          s1 \voiceThree es'2.. s8
          s1 s2 es
        }
      >>
    }
    \context Staff = "lh" \context Voice = "lh" \relative c, {
      r4 \times 2/3 {
        \once \override DynamicText #'X-offset = #-3
        c8^\(
        \p
        _\markup\whiteout\italic { Melodie sehr hervortretend. } 
        ^\markup\whiteout { M. I. V. d. Gamba 8'. }
        d es
      }
      as4 g |
      f c' d es |
      as g f \times 2/3 { es8 d c } |
      g'4 d2 es4~\) |
      es_\( d des~ \times 2/3 { des8 c bes } |
      as'4 g2 fis4\) |
      f4( c'8. ces16 bes2~) |
      bes8( as g ges) f4 g8 as~ |
      as\( g bes es \clef treble g f c' ces~ |
      ces\) bes4( c8 bes as g ges |
    }
    \context Staff = "ped" \relative c, {
      R1*3 | r2 r4 
      fis4\pp
      ^\markup\whiteout { Subbass 16'. }
      f2.( fes4~ |
      fes es d2) |
      d'2.( des4 |
      c bes8 a as4 g8 f |
      es2.) es'4( |
      d des c bes8 a) |
    }
  >>
  % bar 74 - 80
  <<
    \context Staff = "rh" <<
      \relative c''' {
        c8( bes as g) g f f es |
        es d f( es d c bes a) |
        as4(
        ^\markup \italic { etwas belebter }
        es'8. d16 des4. es8 |
        des ces bes beses as4 bes8 ces) |
        des4( as'8. g16 ges4. as8) |
        ges( fes es d bes' as g f~ |
        f es des c bes as ges f) |
      }
      \\ \relative c'' {
        \set crescendoSpanner = #'text
        \set crescendoText = \markup \whiteout {
          \upright { M. I. u. II. } \italic crescendo
        }
        <d f>4(\< <c es>8 <bes d>) <as c>4( <g bes> |
        <f b> <f c'> fis es~) |
        es8 ces as'4~ as8 fes g4 |
        es2~ es8 as, des4 |
        as'8 fes des'4~ des8 beses c4 |
        as2 d4( b |
        as ges des as)\!
        \unset crescendoSpanner
      }
    >>
    \context Staff = "lh" << 
      \context Voice = "lh" \relative c' {
        \voiceOne
        f4.) g8 s2 |
        s4 c a g8 ges |
        es4 as~ as g |
        as ges~ ges f |
        as( des~ des c) |
        des( ces) f( d |
        c es, f des) |
      }
      \new Voice \relative c {
        \voiceTwo
        s4 f8( g
        \oneVoice
        <as as'>4 <bes bes'> |
        <b b'>)
        \voiceTwo
        c8( es d c bes a) |
        as4( es'8 d des4. es8 |
        des ces bes beses as4 bes8 ces) |
        des4( as'8 g ges4. as8) |
        ges( fes es d bes' as g f~ |
        f es des c bes as ges f) |
      }
    >>
    \context Staff = "ped" \relative c {
      bes2(
      ^\markup { Ped. \italic { poco cresc. } }
      f4 g |
      gis a d, es) |
      f2( bes |
      as4 bes8 c des4. ces8) |
      bes2( es |
      des4 es8 e) f4( g, |
      as a bes b)
    }
  >>
  % bar 81 - 85
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c' {
        <f as c>4( <des f bes>8. f 16
        \voiceOne as8 g) 
        \oneVoice r <e g bes> |
        r8 \voiceOne c'4.( b4) \oneVoice r8 \voiceOne f'( |
        as es4.~ es8 des es f) |
        \set decrescendoSpanner = #'text
        \set decrescendoText = \markup \whiteout {
          \upright { M. II. } \italic { molto decresc. }
        }
        <des es>4.(_\>
        f8~ f es as des |
        c as ges4~ ges8 f g <f as>) |
      }
      \new Voice \relative c' {
        \voiceTwo
        s2 e4 s |
        s8 as( g fis f4) s8 b |
        es c bes beses as4 bes8 ces |
        as( f g4 as c8 f |
        es c bes beses as4 bes8 ces)
      }
    >>
    \context Staff = "lh" \context Voice = "lh" \relative c'' {
      \oneVoice
      r8
      c(^\mf
      _\markup { I. Trompete 8'. }
      bes f as g bes des) |
      f4( es8. c16 es8 d f as) |
      c( as g ges~ ges f g as) |
      es4.(
      _\markup { I. Trompete fort }
      des8~ des c es as |
      g es des c ces4 bes8 as~|
    }
    \context Staff = "ped" \relative c {
      c2. r8 bes |
      as4 r8 as g4 r8 g |
      c4 r8 c des4 r8 d |
      es4 r8 es_\markup { Ped. \italic decresc. } as4 r |
      as,\p r8 c des4 r8 d |
    }
  >>
  % bar 86 - 93
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c'' {
        <as des es~>2.\p es'8 f~( |
        f es des c~ c bes as f~) |
        \oneVoice
        <b, f'>4
        ^\markup\italic { nicht schleppend }
        r r
        \set tieWaitForNote = ##t
        \once \override Tie #'staff-position = #-2
        \times 2/3 { g'8~ b f'~ } |
        <g, c f>4 r r
        \once \override Tie #'staff-position = #-2
        \times 2/3 { g8~ c f~ } |
        <g, des' f>4 r r
        \times 2/3 { g8 des' f~ } |
        <as, d f>4 r r
        \times 2/3 { as8 d f( } |
        <a, d fis>4) r r
        \times 2/3 { a8 d fis( } |
        <c f a>4) r r
        \times 2/3 { c8( f a) } |
      }
      \new Voice \relative c' {
        \voiceTwo
        r8 f^([ es des] 
        \change Staff = "lh"
        \voiceOne
        bes^\> as g4\!)
      }
      \new Voice \relative c'' {
        \voiceOne
        \oops <as des~ es>2*3/2
        \voiceTwo <g des'>4 |
        <ges c>(\pp f8_\markup \italic ritard. es des4)
      }
      \new Voice \relative c'' {
        \voiceFour
        \hideNotes
        \once \override Stem #'length = #0
        as2.^( g4) |
        \unHideNotes
        \voiceThree
        s4 
        \once \override Stem #'length = #4
        \shiftOff \oops f~
        \once \override Stem #'length = #4
        \shiftOn f4.
        \voiceTwo
        c8 |
      }
      \new Voice \relative c'' {
        % this voice tweaks the ties from measure 88 to 93
        % should not be in MIDI output
        \override Voice.NoteColumn #'ignore-collision = ##t
        \set tieWaitForNote = ##t
        \hideNotes
        s1*2 |
        s4*1/3
        \once \override BreathingSign #'extra-offset = #'(0 . -4)
        \breathe
        s4*2/3 s2 s4*1/3
        b~ s |
        b4 s2 s4*1/3
        \once \override Tie #'staff-position = #0.5
        c_~ s |
        c4 s2
        \times 2/3 {
          \once \override Tie #'staff-position = #-2
          g8~
          \once \override Tie #'staff-position = #1
          des'_~ f
        } |
        <g, des' f>4 s2
        \times 2/3 {
          as8~ d_~ f
        } |
        <as, d>4 s2
        \times 2/3 {
          \once \override Tie #'staff-position = #-1
          a8_~
          \once \override Tie #'staff-position = #1
          d_~ fis
        } |
        <a, d>4
      }
    >>
    \context Staff = "lh" <<
      \context Voice = "lh" \relative c'' {
        as8) r8 r4 s2 |
        \voiceOne
        ges,4
        \once \override Slur #'positions = #'(-4 . -4)
        f~( f c'8 as) |
        \set tupletSpannerDuration = #(ly:make-moment 1 4)
        \set tieWaitForNote = ##t
        \override TupletBracket #'direction = #DOWN
        \times 2/3 {
          g8
          \breathe
          \oneVoice
          g,[(_\p
          ^\markup { M. III. 16' 8' u. 4'. }
          b] f' g b f'~ b,~ g~ 
        }
        <g b f'>4) |
        \times 2/3 {
          r8 g,( c f g c f~ c~ g~
        }
        <g c f>4) |
        \times 2/3 {
          r8 g,( des' f g des' f~ des~ g,~
        }
        <g des' f>4) |
        \times 2/3 {
          r8 as,( d f as d f~ d~ as~
        }
        <as d f>4) |
        \times 2/3 {
          r8 a,( d fis a d fis~ d~ a~
        }
        <a d fis>4) |
        \times 2/3 {
          r8 c,( f a c f \clef treble a~ f^~ c~
        }
        <c~ f a~>4) |
      }
      \new Voice \relative c {
        s2
        \clef bass
        \voiceTwo
        r4 r8 bes( |
        a4 bes8 c des2~ |
        des8*2/3)
      }
    >>
    \context Staff = "ped" \context Voice = "ped" \relative c {
      es4 r r2 |
      R1 |
      des1\pp^\markup{ Subbass 16. } |
      c | 
      bes~ |
      bes |
      a |
      f |
    }
  >>
  % bar 94 - 107
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      <fis c'>16-|
      \breathe
      \clef bass
      es,,[(\f
      _\markup { M. I. }
      ^\markup { ohne Mixturen }
      ^\markup \italic { nach und nach schneller }
      \unset crescendoSpanner
      \unset decrescendoSpanner
      d a] c es\< fis a c es d a c es \clef treble fis a\!) |
      c( es d a\> fis bes a es c es d a\! \clef bass fis bes a es) |
      d( a' gis\< d f gis b d \clef treble f a gis d f\! gis b d) |
      f( a\> gis d b e d gis, f a gis d b\! e d gis,) |
      \bar "||" \key g \minor
      g!( d' cis g bes cis\< e g bes d cis g bes cis e\! g) |
      bes( d cis g\> e a g cis, bes d cis g\! e a g cis,) |
      \set crescendoSpanner = #'text
      \set crescendoText = \markup \italic sempre
      c(\< g' fis c es fis a c es g fis es
      \set crescendoText = \markup \italic poco 
      c\< a fis c) |
      \set crescendoText = \markup \italic a
      r a'( g cis,\< e g bes cis e a g e
      \set crescendoText = \markup \italic poco 
      cis\< bes g cis,) |
      \set crescendoText = \markup \italic cre
      r bes'( a es\< fis a c es fis bes a fis es
      \set crescendoText = \markup \italic scen
      c\< a fis) |
      \set crescendoText = \markup \italic do
      a( d c a c f es c es g fis c\< es a fis c) |
      \set crescendoText = \markup \italic "  cre"
      cis(\ff\< a' g e bes e cis bes cis a' g e bes e cis bes) |
      \set crescendoText = \markup \italic scen
      cis(\< bes' g cis, bes e cis bes cis bes' g cis, bes e cis bes) |
      \set crescendoText = \markup \italic do
      cis(\< bes' g cis, bes es cis bes cis bes' g cis, bes es cis bes) |
      cis( bes' g cis, bes es cis bes cis bes' g cis, bes es cis bes) |
      \unset crescendoSpanner
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \oneVoice
      <c fis a>16-|
      \breathe
      r r8
      \clef bass
      \set tieWaitForNote = ##t
      r16 a,~\< c~ es_~ <a, c es fis>8\! r r16 a'~ c~ es~ |
      <a, c es fis>8.( f'16 es d c bes a g fis f es d cis c) |
      b8 r r16 d~\< f~ gis~ <d f gis b>8\! r \clef treble r16 d'~ f~ gis~ |
      <d f gis b>8.( a'16 gis g f e \clef bass d c b a gis g fis f) |
      \key g \minor
      e8 r r16 g~\< bes~ cis~ <g bes cis e>8\! r r16 \clef treble g'~\< bes~ cis~|
      <g bes cis e>8.(\! d'16 cis c bes a g f e d cis c b bes) |
      a8 r r16 c~\< es~ fis~ <c es fis a>8\! r r \clef bass <es, a>(|
      <e bes'>4) \clef treble r16 cis'~ e~ g~ <cis, e g bes>8 r r \clef bass <e, bes'>( |
      <fis c'>4) \clef treble r16 es'~ fis~ a~ <es fis a c>8 r \clef bass r16 fis,( a c |
      es a, c es fis c es fis \clef treble a c, es fis a c, es fis) |
      a( a, cis e g bes, cis e a a, cis e g bes, cis e) |
      \clef bass
      cis( cis, e g bes e, g bes cis cis, e g bes e, g bes) |
      cis( cis, es g bes es, g bes cis cis, es g bes) r a,( a') |
      bes,( bes' b, b' c, c' cis, cis' d, d' es, es' e, e' f, f') |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      d1~\f
      ^\markup Pedalcoppel
      | d4
      ^\markup {
        Pedal \italic { nach und nach immer stärker durch die andern Bässe }
      }
      r r r8 d~ |
      <d d'>1~ |
      <d d'>8 r r4 r r8 d~ |
      \key g \minor
      <d d'>1~ |
      <d d'>8 r r4 r r8 d~ |
      <d d'>2~
      ^\markup { alle Bässe ohne Posaune. } 
      <d d'>8 r8 r d_( |
      d'2)~ d8 r r d,_( |
      d'2)~ d8 r r d,_( |
      d'1)~ |
      d1~ |
      d1~ |
      d1~ |
      d1~ |
    }
  >>
}

%%master: psalm94.ly
