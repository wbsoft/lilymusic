\version "2.12.0"

\include "defines.ly"

global = {
  \time 4/4
  \key c \major
}

graveMusic = {
  % bar 1 - 7
  <<
    \context Staff = "rh" \relative c' {
      \global
      \tempoMark #"Grave."
      R1*2 |
      r2 r4
      <<
        {
          \voiceOne
          c4~ |
          c2. des4~ |
          \once \override Tie #'staff-position = #-3.5
          <des~ f>\<
        }
        \new Voice {
          \voiceTwo
          bes4~ |
          bes1~ |
          \voiceOne
          \oops bes4
        }
      >>
      \oneVoice
      <beses des~ ges~> <des ges~ des'~> <ges des'~ es>\! |
      <beses des~ ges>2. <as~ des~ f>4 |
      <as des as'>1\fermata
    }
    \context Staff = "lh" \relative c {
      \global
      \clef bass
      r4 bes2.~^\pp
      -\tweak #'X-offset #3 ^\markup \whiteout \italic düster
      ^\markup \whiteout \bold { M. III. 8'. }
      bes1~ |
      <<
        {
          \voiceTwo
          bes1~ |
          bes1~
          _\markup \italic { Manual stärker und heller werdend. }
          |
          \voiceOne
          \oops
          bes4
        }
        \new Voice {
          \voiceOne
          r2 r4 c~ |
          c2. des4~ |
          <des~ f>
          \oneVoice
          <des ges~> <ges beses~> <beses~ des~ es> |
          <beses des~ ges>2. <as des~ f>4 |
          <f des'>1\fermata
          _\markup\italic { decresc. }
        }
      >>
    }
    \context Staff = "ped" \relative c' {
      r4 as2\(
      \p
      -\tweak #'X-offset #3 -\markup \italic { etwas hervortretend. }
      g8. es16 |
      ges8. c,16 c4~ c4. des8\) |
      bes4\( a as g |
      ges f es des~\) |
      <<
        {
          \voiceTwo
          des1~ |
          des~ |
          des \fermata
        }
        \new Voice = "p2" {
          \voiceOne
          des'1 |
          beses'2. as4 |
          as1~\fermata
        }
      >>
    }
  >>
  % bar 8 - 15
  <<
    \context Staff = "rh" \relative c' {
      R1*3 r2 r4 s | s1 | s1\< | s1\! | s1 |
    }
    \context Staff = "lh" \relative c' {
      R1 |
      r4
      <<
        {
          \voiceOne
          g2\(^\p
          -\tweak #'X-offset #3
          ^\markup \whiteout \italic { düster aber hervortretender. }
          ^\markup \bold { 16'. u. 8'. }
          fis8. d16 |
          f8. b,16 \oneVoice b2~ b8 c\) |
          \voiceTwo
          a4\( gis g fis |
          f e d c\) |
          c'~ 
          _\markup \italic { viel stärker werdend. }
          \oneVoice
          <c f~ as~> <f as c~> <as~ c~ d> |
          <as c~ f>2. <g c~ e>4 |
          <e c'>1\fermata
          _\markup\italic { decresc. }
        }
        \new Voice {
          \voiceTwo
          g,2\( fis8. d16 |
          f8.\) r16 s2. |
          \voiceOne
          r2 r4 <a' b~>4 |
          \once \override Dots #'extra-offset = #'(0 . 0.5)
          b2. c4
        }
        \new Voice {
          s2. s1 s2.
          \voiceThree \shiftOff
          \oops a4_~ |
          \shiftOnnn
          \once \override Tie #'staff-position = #4
          a1~ <e a e'>4
          \set followVoice = ##t
          \change Staff = "rh"
          \oneVoice
          f'~ <f~ c'~> <f c'~ d> |
          <as c~ f>2. <g~ c~ e>4 |
          <g c g'>1\fermata
        }
        \new Voice {
          \voiceFour
          s2. s1 s1 |
          d,4\rest d\rest
          \shiftOff
          \override Stem #'length = #5
          \oops f \oops e~ |
          \revert Stem #'length
        }
      >>
    }
    \context Staff = "ped" \relative c' {
      <<
        {
          \voiceOne
          as2._\> a4~\! |
          a1~ a~ a~ a~ |
          a4 as2.~ |
          as2. g4 |
          g1\fermata
        }
        \new Voice {
          \voiceTwo
          R1 |
          r4 a,2.~\pp |
          a1~ a~ a c,~ c~ |
          c\fermata
        }
      >>
    }
  >>
  % bar 16 - 52
  <<
    \context Staff = "rh" \relative c' {
      r8. c16\f
      ^\markup \bold { Man. II. }
      des2( <c f>8)[ r16 f]~ |
      <f c'>4~ <f c'>8[ r16 <c' f as c>]\ff
      ^\markup \bold { Man. I. }
      <c f as c>2 |
      r8. d,16\f
      ^\markup \bold { M. II. }
      es2( <d g>8)[ r16 g]~ |
      <g d'>4~ <g d'>8[ r16 <d' g bes d>]\ff
      ^\markup \bold { M. I. }
      <d g bes d>2 |
      r8. e,16\f
      ^\markup \bold { M. II. }
      f2( <e a>8)[ r16 a]~ |
      <a e'>4~ <a e'>8[ r16 <e' a c e>]\ff
      ^\markup \bold { M. I. }
      <e a c e>2 |
      r4 <e a c e>(-.\fff <e g c e>-. <e fis c' e>-. |
      <e fis b e>-.) <d f gis d'>4.-- <c e a c>8[( <b e g b>8. <ais e' g ais>16)] |
      <ais e' g ais>4-.( <b dis fis b>-. <c e a c>-. <g c e>-.) |
      <<
        {
          <c a'>2( <b b'>4. <b b'>8)
        } \\ {
          e4( dis~ <dis a'> <d as'>)
        } 
      >> |
      <c g' c>4-.( <c f a>-. <g b e>-. <fis a e'>-.) |
      <<
        {
          e'4( d c) \oneVoice <ces f as~>( |
          \voiceOne
          as' g <des f>) <c es>8.
          \oneVoice
          <des, f as des>16
        } \\ {
          <f as>2. s4 |
          <bes es>2 as4.. s16
        }
      >>
      <des, f as des>4-. r r <c f as c>-. |
      <des f as des>4-. r r <c f as c>-. |
      <es fis as es'> r r <d fis c' d>-. |
      <es fis as es'> r r <d fis c' d> |
      g8-| r <as b f'>2( <g c e>8[-|) r16 c] |
      <a c es>8[-| r16 <es fis a>] <es fis a>2~ <es fis a>8. <d g>16( |
      <f b>8)-| r <b f' as>2( <c e g>8[)-| r16 c] |
      <a c fis>8-|[ r16 <fis a c>] <fis a c>2~ <fis a c>8. <g b>16( |
      <as b d>8)-| r <f' as b d>2( <e g cis>8[)-| r16 g] |
      <es fis c'>8-|[ r16 <c es fis>] <c es fis>2.~ |
      <c es fis>4 
      \set decrescendoSpanner = #'text
      \set decrescendoText = "poco"
      <a c es>\(\> <as b d> <g cis>8. <as c>16 |
      <<
        {
          \voiceOne
          \set decrescendoText = "a"
          b4\> bes
        }
        \new Voice {
          \voiceTwo 
          g2
        }
      >>
      <e a>4 <es as>\) |
      \set decrescendoText = " poco"
      g(\f\>
      fis f es~ |
      \set decrescendoText = "decresc."
      es\> d\! cis c |
      \change Staff = "lh"
      <ges ces>^\mf <g bes> a as |
      g)
      s2. | s1*2 |
      \change Staff = "rh"
      \oneVoice
      r2 r4 b'(~ |
      <b as'>1~) |
      <b as'>4 r r2 |
      R1*3 |
    }
    \context Staff = "lh" \relative c {
      r8. <dis fis>16 <e g>2( f8)[ r16 f]( |
      <as c>4~) <as c>8[ r16 <f as c f>] <f as c f>2 |
      r8. <f as>16 <fis a>2( g8)[ r16 g]( |
      <bes d>4~) <bes d>8[ r16 <g bes d g>] <g bes d g>2 |
      r8. <g bes>16 <gis b>2( a8)[ r16 a]( |
      <c e>4~) <c e>8[ r16 <a c e a>] <a c e a>2 |
      r4 <a c e>(-. <g c e>-. <fis a c e>-. |
      <fis b e>-.) <f gis b d>4.-- <e a c>8[( <g b e>8. <ais e' g>16)] |
      <ais e' g>4-.( <b dis fis>-. <c e a>-. <g c e>-.) |
      \clef treble
      <<
        {
          <c a'>2_\( \voiceTwo b\)
        } \\ {
          e4^\( dis~ \voiceOne <dis a'> <d as'>\)
        }
      >> |
      <c e g>4-.( <c f a>-. <g b e>-. \clef bass <fis a e'>-.) |
      <<
        {
          e'4( d c) \oneVoice \clef treble <ces f as^~>^( |
          \voiceOne
          as' g <des f>) <c es>8.
          \oneVoice \clef bass
          c,16( |
          <f as c>8-.)
        } \\ {
          <f as>2. s4 |
          <bes es>2 as4..
        }
      >>
      r16 <c,, f as c> <c f as c>2 r4 |
      r8. <c f as c>16 <c f as c>2 r4 |
      r8. <c fis as c>16 <c fis as c>2 r4 |
      r8. <c fis as c>16 <c fis as c>2 r4 |
      <g' g'>8-| r <as' b f'>2( <g c e>8[-|) r16 c] |
      <c es fis>8[-| r16 <a c>] <a c>2~ <a c>8. <g b>16( |
      <b d>8)-| r \clef treble <b f' as>2( <c e g>8[)-| r16 c] |
      <es fis>8-|[ r16 <c es>] <c es>2~ <c es>8. <b d>16( |
      <d f>8)-| r <f as b d>2( <e g cis>8[)-| r16 g] |
      <es fis c'>8-|[ r16 <es fis a>] <es fis a>2.~ |
      <es fis a>4 fis\( f e8. es16 d4 es cis c\) |
      \clef bass
      <b d>_\( <a c> <as ces> <g bes> |
      <fis a> <f as> <e g> <es as> |
      \voiceTwo
      es2 <cis e>4 <c es> |
      <b d>\)
      <<
        {
          <es g bes>( <cis e a> <c es as> |
          <b d g>) <es g bes>\(^\p <cis e a> <c es as> |
          <as' es'>2
          ^\pp
          -\tweak #'X-offset #3 ^\markup \italic { immer leiser werdend }
          d4. a8\) |
          c2. b4~ |
          <b d>1~^\pppp \voiceTwo \oops <b d>4
        } \\ {
          r4 r \times 2/3 { c,,8( d es } |
          g4) r r \times 2/3 { c,8( d es } |
          <c as'>2 <d a'>) |
          <f'~ as>1\ppp |
          f~ |
          f4
        } \\ {
          s2. | s1 s2 fis
        }
      >>
      as4^\(
      ^\markup \whiteout { Flöte oder Harmonika 8' allein }
      g fis |
      f es d c |
      b as g fis~ |
      fis f es d\) |
      \bar "||"
    }
    \context Staff = "ped" \relative c {
      r4 bes2(^\f a8. f16 |
      as8. d,16~) <d c'^~>2. |
      c'2. b8. g16 |
      bes8. e,16~<e d'^~>2. |
      d'2. cis8. a16 |
      c8. fis,16~<fis e'^~>2. |
      e'4 fis,(\fff g a |
      b2)
      \once \override Tie #'staff-position = #-2
      c\(~ |
      c4 b a g\) |
      fis2_\( f |
      e4 f g a |
      b2 c4 d |
      es2 f~ |
      f4\) r r8. b,16_( c8. as16 |
      f'4) r r8. b,16_( c8. as16 |
      fis'4) r r8. b,16_( c8. as16 |
      fis'4) r r8. b,16_( c8. g16~ |
      <g g'^~>1) |
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 2/3 {
        g'8[ b, c d es f fis d es b c g~] 
      }
      <g g'^~>1 |
      \times 2/3 {
        g'8[ b, c d es f fis d es b c g~] 
      }
      <g g'^~>1 |
      \times 2/3 {
        g'8[ b, c d es f fis d es b c g~] 
      }
      <g g'^~>1 |
      \times 2/3 {
        g'8 b, c d es g,~
      }
      <g g'>2~ |
      <g g'~>4
      \times 2/3 {
        g'8 b, c d es g,~
      }
      <g g'>4~ |
      <g g'~>2.
      \times 2/3 {
        g'8\p b, c | d es g,~
      }
      g'2 \times 2/3 { c,,8(\pp d es) }
      g4 r r2 |
      R1*2 |
      g1~\ppp |
      g~ |
      g4 r r2 |
      R1*3 |
    }
  >>
}

%%master: psalm94.ly
