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
      _\markup \whiteout { M. III. Salicional und Gedackt 8'. }
      e4. \lh \voiceOne b8 |
      <a d>4. gis8 <f~ gis~>4 <f gis c>( |
      <e a> <e gis> <e g> <d fis> |
      f e8 dis b'4. a8 |
      a4 gis2) 
      \rh \oneVoice r4 |
      r a e'4. ais,8~ |
      ais4 b2 r4 |
      r4 <<
        {
          c( g'4. dis8~ |
          dis4 e fis g |
          b4. a8 g4 fis) |
        }
        \\ {
          c4~ c b~ |
          b c2 b4 |
          <d g> <c fis> b2 |
        }
      >>
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
      r4 \voiceTwo e( f2~ |
      << { f4 e } \new Voice { \voiceOne g2 } >> \oneVoice c,4 d |
      d2. dis4)
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
  % bar ?? - ??
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      a4\p(
      ^\markup { M. II. \italic hervortretend }
      ^\markup { Oboe oder Geigenprinzipal }
      e' d4. b8 |
      g4 a2 b4~ |
      b) e\< fis4. g8 |
      \time 2/4
      a4.\> e8 |
      \time 4/4
      fis2\!
      r4 \clef bass 
      <<
        {
          b,,4~_\ppp
          ^\markup { M. III. }
          |
          b a8 e g4 fis~ |
          fis c'(~  c bes8 f |
          as4 g2) as4 |
          \clef treble
          es'2( f4 <g des'~> |
          des' c bes as8 g |
          f2._\> g8 as)\! |
        }
        \\ {
          s4 |
          e,2( es4.\> d8 |
          c4)\! ges'(\> f2 |
          fes4. es8)\! des4 d |
          des'1~ |
          <des g>2. f8( es~ |
          es4 d c d) |
        }
        \\ {
          % this voice just draws the tie in measure 251-252
          \override NoteColumn #'ignore-collision = ##t
          s4 |
          s1*3 |
          s2. \voiceOne g4_~ |
          \voiceTwo g2.
        }
      >>
    }
    \context Staff = "lh" <<
      \context Voice = "lh" \relative c' {
        \voiceOne
        e2( d |
        e4 fis2 f4) |
        e2. dis4 |
        \time 2/4
        <c~ e> <a c> |
        \time 4/4
        <ais cis>2 d,4\rest^\ppp g,(~ |
        g2~ g4 a~ |
        a2 as~ |
        as4 bes~ bes2) |
        \oneVoice
        as'4(
        _\markup \whiteout \italic { molto cresc. }
        g f g |
        e!2.) \voiceOne c'4 |
      }
      \new Voice \relative c {
        \voiceTwo
        e2(
        _\markup { M. III. \dynamic pp }
        fis4 g |
        b c2 b4)^~ |
        <gis b>(\< a8 g <fis ais>4 b |
        \time 2/4
        a\> g |
        \time 4/4
        fis2)\! d,( |
        cis) c4. d8 |
        es2. d4 |
        des4. es8 fes4 f |
        s1 |
        s2. f'8( g |
        \oneVoice
        as2.
        _\markup \whiteout \italic dimin.
        d,4) |
      }
      \new Voice \relative c' {
        \voiceThree
        a4\rest a2 g4 |
        s1 |
        s4 a
      }
      \new Voice \relative c' {
        % this voice just draws the tie in the 2/4 measure 
        s1*3 |
        \override NoteColumn #'ignore-collision = ##t
        \stemDown a4_~ \stemUp a 
      }
    >>
    \context Staff = "ped" \context Voice = "ped" \relative c {
      c2.( b4 |
      e4. es8 d4 g,) |
      c2.( b4 |
      \time 2/4
      a g |
      \time 4/4
      fis^\> e d)\! r |
      R1*3 |
      es1(^\< |
      << 
        {
          as\! |
          bes) |
        }
        {
          s2. s4^\> | % draw the hairpin like the 1871 score
          s2 s\!
        }
      >>
      
    }
  >>
  
}

%%master: psalm94.ly

