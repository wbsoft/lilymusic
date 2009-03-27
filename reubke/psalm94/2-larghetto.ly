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
    \context Staff = "rh" \relative c {
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
          es d des~ \times 2/3 { des8 c bes } |
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
    \context Staff = "ped" \relative c, {
      \clef bass
      \global
      R1*6
    }
  >>
  <<
    \context Staff = "rh" {
      <<
        \relative c' {
          f4( c'8. b16 bes2~) |
          bes8( as g fis f4 g8 as~ |
          as4) g(~ g8 f c' b~ |
          b bes4 c8 bes as g fis) |
          \oneVoice
          <c fis d'^~>2 <f b~ d>4 <g b es> |
        }
        \\ \relative c' {
          c4 f2 fes4 |
          es2~ <ces es>4. <bes~ d>8 |
          <bes es>4. d8 c4 f~ |
          f fes es2 |
        }
        \\ \relative c' {
          s1*2 | s2 s8 \voiceOne \oops f4*1/2 _~ \stemDown \oops f4
        }
      >>
    }
    \context Staff = "lh" {
      <<
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
    }
    \context Staff = "ped" \relative c' {
      R1*5
    }
  >>
}

%%master: psalm94.ly
