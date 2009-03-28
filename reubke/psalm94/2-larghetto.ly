\version "2.12.0"

global = {
  \key c \minor
}

oops = \once \override Staff.NoteColumn #'ignore-collision = ##t

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold Grave.
}

larghettoMusic = {
  <<
    \context Voice = "rh" \relative c {
      \clef bass
      \global
      \tempoMark
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
    \context Voice = "lh" \relative c {
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
        } \\ {
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
    \context Voice = "ped" \relative c, {
      \clef bass
      \global
      R1*6
    }
  >>
  <<
    \context Voice = "rh" {
      <<
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
    }
    \context Voice = "lh" {
      <<
        \relative c' {
          \voiceOne
          as2.( g4~ |
          g8 as bes c) s2 |
          s4. bes8 a4( as~ |
          as4. g8~ g as d c) |
        }
        \new Voice \relative c {
          \voiceTwo
          d2( des |
          c4 bes8 a \oneVoice as4 g8 f) |
          es8_( bes' \voiceTwo es4)~ es2( |
          d4 des c bes8 a) |
          \oneVoice as2 g
        }
      >>
    }
    \context Voice = "ped" \relative c' {
      R1*5
    }
  >>
  <<
    \context Voice = "rh" \relative c'' {
      \oneVoice
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
    \context Voice = "lh" \relative c, {
      \oneVoice
      r4 \times 2/3 {
        \once \override DynamicText #'X-offset = #-3
        c8^\(
        \p
        _\markup\whiteout\italic { Melodie sehr hervortretend. } 
        ^\markup\whiteout { M. I. V. d. Gamba 8'. }
        d es }
      as4 g |
      f c' d es |
      as g f \times 2/3 { es8 d c } |
      g'4 d2 es4~\) |
      es_\( d des~ \times 2/3 { des8 c bes } |
      as'4 g2 fis4\) |
      f4( c'8. ces16 bes2~) |
      bes8( as g ges) f4 g8 as~ |
      as\( g bes \clef treble es g f c' ces~ |
      ces\) bes4( c8 bes as g ges |
    }
    \context Voice = "ped" \relative c, {
      R1*3 | r2 r4 
      fis4\pp
      ^\markup\whiteout { Subbas 16'. }
      f2.( fes4~ |
      fes es d2) |
      d'2.( des4 |
      c bes8 a as4 g8 f |
      es2.) es'4( |
      d des c bes8 a) |
    }
  >>
  <<
    \context Voice = "rh" {
    }
    \context Voice = "lh" \relative c' {
      << { \voiceOne f4.) g8 } \new Voice { \voiceTwo s4 f,8 g } >>
      
    }
    \context Voice = "ped" {
    }
  >>
}

%%master: psalm94.ly
