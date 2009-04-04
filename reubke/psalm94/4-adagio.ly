\version "2.12.0"

oops = \once \override Staff.NoteColumn #'ignore-collision = ##t

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold { Adagio. }
}

global = { \key c \major }

rh = { \change Staff = "rh" \stemDown }
lh = { \change Staff = "lh" \stemUp }

adagioMusic = {
  % bar ?? - ??
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c' {
      \global
      \tempoMark
      r4 f^(
      _\markup { M. III. }
      e4. \lh \voiceOne b8 |
      <a d>4. gis8 <f~ gis~>4 <f gis c>( |
      <e a> <e gis> <e g> <d fis> |
      f e8 dis b'4. a8 |
      a4 gis2) 
      \rh \oneVoice r4 |
      r a e'4. ais,8~ |
      ais4 b2 r4 |
      r4 
      
    }
    \context Staff = "lh" \context Voice = "lh" \relative c {
      \global
      r2 r4 r8 <<
        {
          \voiceTwo
          <e gis>8( |
          d4 c <b d~> <e, d'> |
          <a c> <e b'> <c c'> <d a'> |
          f fis <b~ dis>2 |
          <e, b'>2.)
        }
        \new Voice {
          \voiceThree
          s8 | s1*2 |
          c'2 fis |
          e2.
        }
        \new Voice {
          \voiceFour
          s8 |
          f2 s |
          s1 |
          a,2
        }
      >>
      \oneVoice
      r4 |
      r4 e'8( fis g4 fis8 e~ |
      e4 dis2) r4 |
      r4
      
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      \global
      R1*4 |
      r2 r4 dis(^\pp
      _\markup { Subbass 16. }
      d cis c2 |
      b2.) ais4( |
      a2 g |
      c4. b8 a4 g |
      d2 g4 b) |
      
    }
  >>
}

%%master: psalm94.ly

