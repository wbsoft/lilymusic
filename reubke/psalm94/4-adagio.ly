\version "2.12.0"

\include "definitions.ly"

global = { \key c \major }

adagioMusic = {
  % bar 232 - 242
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c' {
      \global
      \tempoMark #"Adagio."
      r4 f^(
      _\markup \whiteout { M. III. Salicional und Gedackt 8'. }
      e4. \lh \voiceOne b8 | \noBreak % because of the x-staff slur
      <a d>4. gis8 <f~ gis~>4 <f gis c>( |  \noBreak % because of the x-staff slur
      <e a> <e gis> <e g> <d fis> |  \noBreak % because of the x-staff slur
      f e8 dis b'4. a8 |  \noBreak % because of the x-staff slur
      a4 gis2)
      \rh \oneVoice r4 |  \noBreak % because of the x-staff slur
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
          \once \override Slur #'positions = #'(-2 . -4)
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
      r2 r4
      _\markup { Subbass 16. }
      dis(^\pp |
      d cis c2 |
      b2.) ais4( |
      a2 g |
      c4. b8 a4 g |
      d2 g4 b) |
    }
  >>
  % bar 243 - 257
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      a4\p(
      ^\markup { M. II. \italic hervortretend }
      ^\markup { Oboe oder Geigenprinzipal }
      e' d4. b8 | \noBreak % because of the markup
      g4 a2 b4~ |
      b) e\< fis4. g8 |
      \time 2/4
      a4.\> e8 |
      \time 4/4
      fis2\!
      r4
      ^\markup { M. III. }
      \clef bass 
      <<
        {
          b,,4~ |
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
      \once \override Slur #'positions = #'(2.5 . 1)
      as4(\p
      ^\markup { M. II. }
      ^\markup { Oboe oder Geigenprinzipal (Aeoline 16'.) }
      es' des4. bes8 | \noBreak % because of the markup
      ges4 as2 bes4)~ |
      bes\< es( f ges |
      bes,\> as8 ges des'2)\pp
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
        <ais cis>2
        \once \override DynamicText #'extra-offset = #'(0 . 2)
        d,4\rest^\ppp g,(~ |
        g2~ g4 a~ |
        a2 as~ |
        as4 bes~ bes2) |
        \oneVoice
        as'4(
        _\markup \whiteout \italic { molto cresc. }
        g f g |
        e!2.) \voiceOne c'4 |
        s1 |
        es2( des |
        es4 f2 fes4) |
        \once \override Slur #'positions = #'(4 . 4)
        es2( d4 des |
        \clef treble ges es as2) |
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
        s2.
        \once \override Slur #'positions = #'(-2.5 . -1.5)
        f'8( g |
        \oneVoice
        as2.
        _\markup \whiteout \italic dimin.
        d,4) |
        \voiceTwo
        es2(
        _\markup { M. III. \dynamic p }
        f4 ges |
        bes ces2 bes4) |
        g as8 ges <f as>4 ges |
        bes c ges'\pp f
      }
      \new Voice \relative c' {
        \voiceThree
        a4\rest a2 g4 |
        s1 |
        s4 a s2 |
        s2 |
        s1*7 |
        as2. ges4 |
        s2.
        \voiceTwo
        \once \override NoteColumn #'ignore-collision = ##t
        bes4^~ |
        \voiceThree
        bes4 as
      }
      \new Voice \relative c' {
        % this voice just draws some ties
        \override NoteColumn #'ignore-collision = ##t
        \hideNotes
        s1*3 |
        \stemDown a4_~ \stemUp a
        s1*9 |
        s4 \voiceOne as~ \voiceTwo as 
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
      ces2.(\pp bes4 |
      es4. d8 des4 ges,) |
      ces2._( bes4 |
      es as des,) r |
    }
  >>
  % bar 258 - 288
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c''' {
        \oneVoice r4
        ^\markup { M. III. Harmonika 8' allein }
        \voiceOne
        cis2(_\ppp b8 ais~ | \noBreak % because of the markup
        ais4 b8 cis dis4. e8)~ |
        e dis4 d8 cis4 gis8 ais |
        b4 ais8 eis fis4 eis8 dis |
        gis2
        \oneVoice
        r4
        \clef bass
        b,,\mf
        ^\markup { M. I. }
        \voiceOne
        bes1~_\markup \whiteout { \italic düster 16' 8' u. 4'. } |
        bes4 ces8 des es4 fes |
        \clef treble
        as( g8 as bes4 ces8 des) |
        es1~ |
        es2~ es4. f8 |
        ges4 \oneVoice r r2 |
        R1*3 |
        r4 <fis, c'>^(_\pp
        ^\markup { M. III. Salicional. }
        <g b>4. g8 |
        <g bes>4. <cis, e>8 \voiceOne e4 f) % continues in left hand
        \oneVoice
        s1*2 |
        s2. r4 |
        r \oops <d' f>(
        ^\markup { Harmonika 8' allein. }
        \voiceOne <b e>4. b8 |  \noBreak % because of the markup and the x-staff slur
        <bes d>4. a8 gis4 a |
        a gis g fis) |
        f e8 dis b'4. a8 |
        a4 gis2 \oneVoice r4 |
        r4 \voiceOne a(
        ^\markup { Salicional u. Gedackt. }
        e'4. ais,8 |
        ais4 b2) \oneVoice r4 |
        r \voiceOne c(
        ^\markup { Harmonika allein. }
        g'4. dis8 |
        dis4 e2) \oneVoice r4 |
        \tempoMark #"Lento."
        r \voiceOne e,( fis g |
        b4. a8 g4 fis |
        e1)\fermata
      }
      \new Voice \relative c''' {
        \voiceTwo
        s4 gis fisis2( |
        gis4 fisis\< fis fisis |
        gis\! a gis)\> cis, |
        fis eis8\! r r4 bis~ |
        bis cis s2 |
        r4 a, as2~ |
        as4 g2 as8 bes |
        <ces fes>4( <bes es> <des as'> <fes as>) |
        es1~ |
        es2~ es4. f8 |
        ges4 s2. |
        s1*4 |
        s2 cis,2 |
        s1*3 |
        s4
        % FIXME: tricky!
        \once \override Slur #'positions = #'(-4 . -20)
        a'(\ppp gis4. gis8 |
        g4 f e \change Staff = "lh" \oneVoice <a, d> |
        <a cis> <e b'> <c c'> <d a'>) | % continues in left hand
        \change Staff = "rh"
        s1*2 |
        \voiceTwo
        s4
        \once \override Slur #'positions = #'(-4 . -4)
        e'8(\< fis g4 fis8 e~ |
        e4\> dis2)\! s4 |
        s 
        \once \override DynamicText #'extra-offset = #'(0 . -2)
        c'~\ppp c b~ |
        b c2 s4 |
        s4 b,
        _\markup \whiteout \italic { immer schwächer werdend. } 
        cis2 |
        d4 c b b |
        b1
      }
      \new Voice \relative c'' {
        \voiceThree
        s1*8 |
        as4_( g ges g)~ |
        g as2
        \voiceFour
        \once \override Tie #'staff-position = #0.5
        ces4~ |
        \voiceTwo \oops ces s2. |
        s1*10 |
        e,2. d4 |
        c2 dis |
        e2.
      }
      \new Voice \relative c'' {
        % just draw some ties
        \override NoteColumn #'ignore-collision = ##t
        s1*3 |
        s2. s8 \stemUp dis4*1/2^~ |
        \stemDown dis4 s2. |
        s1*17 |
        s4. \stemUp dis,4*1/2_~ \stemDown dis2
      }
    >>
    \context Staff = "lh" <<
      \context Voice = "lh" \relative c'' {
        \voiceOne
        r4 gis( ais b8 cis |
        cisis4 dis4~ dis cis) |
        b bis cis gis |
        fis8( gis ais2 gis8 fis~ |
        fis4 eis) \oneVoice r \clef bass r |
        r <ges,, c>( <f bes>2) |
        fes( es4 des |
        d es fes as |
        es) des'( ces bes |
        as1)~ |
        as4 r^\markup { M. II. } r as^(_~^\p |
        <as ces d ges>2) r |
        r r4 as^(~^\pp |
        <as c d fis>2) r |
        r4 s2. |
        s1 |
        \voiceOne
        d'4 cis c b |
        bes a8 g f4. g8 |
        g4 <d a'>2 \oneVoice r4
        r4 s2. |
        s1*2 |
        \voiceOne
        a'2 \oneVoice <b, b'~> |
        <e b'>2. r4 |
        r e8_( fis g4 fis8 e |
        fis2.) r4 |
        r e f2_~ |
        << { \voiceTwo f4 e2 } \new Voice { \voiceOne g4~ g2 } >>
        \oneVoice r4
        r4 b,( ais a |
        d2. <dis a'>4) |
        <e~ gis>1_\fermata
      }
      \new Voice \relative c' {
        \voiceTwo
        e1~ |
        e4 dis b' ais |
        gis fis eis2 |
        dis4( cisis dis gis |
        cis,2) s
        s1*9 |
        s4 d2.( |
        es4. <g, bes>8 <g bes>4 a |
        <f a> <e g>) <es g> <d g> |
        <d f> <c e> <bes d>4. <g d'>8 |
        <g d'>4 <d a'>2 s4 |
        s1*3 |
        f'4 fis
      }
    >>
    \context Staff = "ped" \context Voice = "ped" \relative c {
      R1*5 |
      r4 es2(
      _\markup { Posaune 16'. }
      _\markup \italic hervortretend.
      d8. bes16 |
      des4 g,2 as4) |
      fes'( es8. bes16 des4 as'~ |
      as g8. es16 ges4 g8 des'~ |
      des4 c ces as |
      d1~)_\>_\markup { Posaune fort. } |
      d2. as4\pp |
      d1~\> |
      d2. as4 |
      d1~_\ppp_\markup { Subbass allein } |
      \repeat unfold 5 d1~ |
      d2. r4 |
      R1*2 |
      r2 r4 dis,( |
      d cis c2 |
      b2. ais4 |
      a2 g |
      c2. b4 |
      a g fis e |
      d2 g4 b |
      e1)_\fermata
    }
  >>
  % bar 289 - 
  <<
    \context Staff = "rh" {
      R1*2 |
      s1*2 |
      <<
        \context Voice = "rh" \relative c'' {
          \voiceOne
          s2 g4. a8 |
          c2. b4 |
          d1
        }
        \new Voice \relative c' {
          \voiceOne
          s4 c_~ \voiceTwo <c g'>2~ |
          <c g'~>2. <d g>4~ |
          <d g>1
        }
      >>
    }
    \context Staff = "lh" <<
      \context Voice = "lh" \relative c {
        \voiceOne
        e1~ 
        ^\markup \whiteout { Salicional u. Gedackt 16' u. 8'. }
        e~ |
        \voiceFour e_~ |
        \crescTextCresc
        << e_~ { s2. s4\< } >> |
        \voiceTwo <b e>4 <c es~> es2~ |
        \oneVoice es2. <d g>4~ |
        <d g~ b>1\> |
      }
      \new Voice \relative c {
        \voiceTwo
        r4
        \once \override DynamicText #'Y-extent = #'(-1 . -1)
        \once \override TextScript  #'Y-extent = #'(1 . 1)
        d2(\pp
        _\markup \italic düster
        cis8. a16 |
        c8. fis,16 fis2^~ fis8 g |
        e2.) fis4~ |
        fis2. g4
      }
      \new Voice \relative c {
        \voiceThree
        s1*2
        e2. \voiceOne fis4~ |
        fis2. g4~ |
        <g~ b> g2.~ |
        \oops \voiceTwo g2.
      }
    >>
    \context Staff = "ped" \context Voice = "ped" \relative c' {
      R1 |
      r2 r4 r8 g(\pp |
      e4 dis d cis |
      c b a g~) |
      g1~ | g~ | g | 
    }
  >>
  % bar 296 - 303
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c' {
        \oneVoice
        s4 s2.
        ^\markup { Aeoline 16'. }
        R1 |
        s1*2 |
        \voiceOne
        d4 es_~ \voiceTwo <es bes'>2~ |
        <es bes'~>2. <d bes'~>4 |
        <f_~ bes^~>1 |
        <f bes>2 \oneVoice r |
      }
      \new Voice \relative c'' {
        s1*4 |
        s2 \voiceOne bes4. c8 |
        es2. d4( |
        f1~) |
        f2
      }
    >>
    \context Staff = "lh" <<
      \context Voice = "lh" \relative c' {
        \voiceOne
        g1~\! |
        g~ |
        \voiceFour
        \once \override Tie #'staff-position = #2
        g~ |
        \once \override Tie #'staff-position = #2
        g~ |
        \voiceOne 
        g4
      }
      \new Voice \relative c {
        \voiceTwo
        r4 fis^\markup \whiteout \italic { etwas heller } f e8. c16 |
        es8. a,16 a2~ a8 bes |
        \crescTextCresc
        g2. a4~ |
        a2. bes4\< |
        d \oneVoice <es ges>( <ges bes>2)~ |
        <ges bes~>2. <f_~ bes>4 |
        <f bes d>1~\> |
        <f bes d>2 r\!
      }
      \new Voice \relative c' {
        s1*2 |
        \voiceOne 
        g2.( a4~ |
        a2.)
        bes4_( |
        \rh bes2)
      }
    >>
    \context Staff = "ped" \context Voice = "ped" \relative c {
      R1 |
      r2 r4 r8 bes'( |
      g4 fis f e |
      es d c bes~) |
      bes1~ |
      bes1~ |
      bes1~ |
      bes2. a4( |      
    }
  >>
  % bar 304 - 316
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c'' {
        \oneVoice r4 \voiceOne 
        c2(
        ^\markup \italic{ sehr weich, singend }
        c4~ |
        c4 bes~ bes8[ as g8. fis16]) |
        fis4( g as c, |
        f2 g4. g8 |
        \oneVoice <as, as'>4) <as des f>( \clef bass <es as c> <f c'> |
        \voiceOne c' bes as \clef treble fes' |
        fes es deses beses'~) |
        beses as g2~ |
        g4 f8 e es2~ |
        es4 des2 c4 |
        g'2.( as4) |
        as1~ |
        as2\fermata \oneVoice r\fermata
      }
      \new Voice \relative c' {
        \voiceTwo
        s4 f(\pp g as |
        g2~ g8[ f es8. d16] |
        d2) f4 c~ |
        c b2 bes4 |
        s1 |
        fes2. des'4 |
        ces2 beses4 ges' |
        \set decrescendoSpanner = #'text
        \set decrescendoText = \markup \whiteout \italic { "dimin. " }
        fes2( e4)\> des |
        c2~ c |
        as1 |
        c2\ppp b~ |
        b1~\pppp |
        b2_\markup \italic smorz.
      }
      \new Voice \relative c' {
        % draw ties
        \override NoteColumn #'ignore-collision = ##t
        s1*9 |
        s2. \stemUp c4~ |
        \stemDown c2
      }
    >>
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      r4 d2.
      _\markup \whiteout { ohne Gedackt und Aeoline 16'. }
      |  \noBreak % because of markup text
      des2~ des8 c4.~ |
      c4 b c g |
      f2. fes4 |
      es des,_( es <f d'> |
      <<
        {
          \voiceTwo
          g2 as4 bes |
          ces2 des4 es) |
          fes2( e4) e |
          f2 as, |
          des1 |
          g,1~ |
          g1~ |
          g2 \oneVoice r\fermata
        }
        \new Voice {
          \voiceOne
          des'2. aeses'4 |
          ges2. deses'4 |
          ces2( b4) bes |
          a2 as4 ges |
          f1~ |
          f1~ |
          f1~ |
          f2\fermata
        }
      >>
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      as2 g4 f |
      e2 f4 g8. as16 |
      as4 g f es' |
      d2. des4 |
      c) r r2 |
      R1*7 |
      R1-\fermataMarkup
    }
  >>
  
  
}

%%master: psalm94.ly

