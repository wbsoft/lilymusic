\version "2.12.0"

\include "definitions.ly"

global = \key c \minor
  

fugaMusic = {
  % bar 317 - 338
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \oneVoice
      \global
      \tempoMark #"Allegro."
      R1*7 |
      r4 g-. fis4.. d16 |
      f2.( e8. c16) |
      es8[-| r16 a,]-| a2-^ bes4 |
      fis( g a bes |
      b c d es) |
      bes'2( cis,4.. d16) |
      es2( \clef bass \stemUp \mergeDifferentlyDottedOn fis,4. \stemNeutral g16 a) |
      bes( a g fis g es d cis d g bes c d b as g) |
      es'( d c b c as g fis g c es f \clef treble g e des c) |
      as'4~ as16( f es d g4)~ g16( es d c |
      f4)~ f16( d c b es4)~ es16( c bes a) |
      \change Staff = "lh" \voiceOne
      \once \override Slur #'positions = #'(-8 . -8)
      as( f r8 c'16 as r8 \change Staff = "rh" es'16 c \oneVoice r8 \voiceOne as'16 f r8 |
      c'16 as r8 as16 f r8 c'16 as r8 es'16 c r8) |
      as'16( f d g f c b d es bes a c d as g b |
      c g f bes as es d g as es d g f c bes es) |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \oneVoice
      \global
      r4^\markup { \dynamic f \hspace #1 M. II. }
      c4-. b4..( g16 |
      bes2. a8. f16) |
      as8[-| r16 d,]-| d2(-^ es4) |
      b( c d es |
      e f g as) |
      es'2( fis,4.. g16) |
      as2( b,4. c16 d) |
      es4~ es16( f g as a gis a b) c4~ |
      c b16 as f es d f g as bes4~ |
      bes a16( fis es d es c a fis g a bes b) |
      c4~ c16( bes c d) es4~ es16( d es e) |
      f4~ f16( es f g) as4~ as16( g b c) |
      des( c bes a bes as g fis g f e es d g a bes) |
      c_( bes a gis a g fis e \rh fis \lh es d cis \stemNeutral d c bes a) |
      g4 r8. a16 bes4 r8. b16 |
      c4 r8. d16 es4 r8. e16 |
      f( g as bes b4) es,16( f g as a4) |
      d,16( es f g as4) c,16( d es f fis4) |
      \voiceTwo
      b,8( d16 g r8 g16 b \oneVoice r8 b16 d r8 \change Staff = "rh" \voiceTwo d16 g |
      r8 g16 b r8 d,16 g r8 g16 b r8 b16 d) |
      \override Script #'avoid-slur = #'around
      r8. bes16[( a8)-| r16 as]( g8)[-| r16 fis( f8)-| r16 d]( |
      es8)[-| b16\rest d( c8)-| \change Staff = "lh" \oneVoice f,16\rest b]( c8)[-| r16 bes( as8)-| r16 g16]( |
      \revert Script #'avoid-slur
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      \global
      R1*22
    }
  >>
  % bar 339 - 349
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c'' {
        \voiceOne
        r4 c-| b4..( g16) |
        bes2.( a8. f16) |
        as8[-| r16 d,16]-| d2(-| es4) |
        b4. c8 d4. es8 |
        e4. f8 g4. as8 |
        <as es'>2-| <es fis>4.-| <es g>8-| |
        <f as>2-| b,4.( c16 d) |
        \oneVoice
        <fis, es'>4~ <fis es'>16 c'( a g fis a es' fis g g, b d) |
        <gis, f'>4~ <gis f'>16 d'( b a gis b f' gis a a, cis e) |
        \voiceOne
        g4~ g16( fis e g cis4)~ cis16( b ais cis) |
        g'4~ g16( d cis e) g4~ g16( e d g) |
      }
      \new Voice \relative c' {
        \voiceTwo
        d16( es f g as f es d) g2 |
        des16( es e fis g e des c) f2 |
        c4 b2( g4) |
        as( g ces bes |
        des c fes es) |
        ges2 c,4. c8 |
        d2 f, |
        s1*2 |
        cis'4~ cis8 r g'4~ g8 r |
        cis4~ cis8 r d4~ d8 r |
      }
    >>
    \context Staff = "lh" \context Voice = "lh" \relative c {
      f2)~ f16 g b es d b g f |
      e2( es16) f a bes c a f es |
      d( es f g as g f e f d b g c bes as g) |
      f( d' as f es c' g es as f' ces as g es' bes g) |
      bes( g' des bes as f' c as des bes' fes des c as' es c) |
      c'( bes as g as f es d) es( c bes as g c es g) |
      b( as f e f es d cis d as g fis g f es d) |
      c( fis a b) c2( b4) |
      d,16( gis b cis) d2( cis4)-. |
      e16( fis g a) bes4~ bes16( b cis d e4)~ |
      e16 \clef treble fis( g a bes4) d,16( fis g a bes4) |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      R1*11
    }
  >>
  % bar 350 - 354
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \oneVoice
      <cis e bes'>4-| r r <c es a>8[-| r16 d]-| |
      <b d as'>4-| r r <bes des g>8[-| r16 c]-| |
      <a c fis>4-| r r <g d' g>-| |
      a16( es d c bes d g bes) c( ges f es d f bes c) |
      d( as g f es g c es) f( ces bes as g bes es f) |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      cis16(
      ^\markup \whiteout { M. I. \dynamic f ohne Manualcoppel u. Cornett. }
      e g a bes g e cis) c( es fis gis a fis es d) |
      b( d f g as f d b) bes( des e fis g e des c) |
      \clef bass
      a( c es f fis es d c es c a fis g f es d) |
      es4( d ges f |
      as g ces bes) |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c' {
      g2(\f fis4.. d16) |
      f2( e4.. c16) |
      es8[-| r16 a,]-| a2( bes4) |
      fis( g a bes b c d es) |
    }
  >>
  % bar 355 - 359
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c''' {
        \voiceOne
        g2( es4.. d16)
        \oneVoice <g, des'>2^( <des bes'>4 \voiceOne a'8. g16) |
        <bes d>4( c8. bes16 a4 bes8. c16) |
        c4~( \oneVoice c16 bes a c_~ <c g'>4 <c fis>8. d16) |
        \voiceOne f4~( \oneVoice f16 es d f \voiceOne c'4 b8. g16) |
      }
      \new Voice \relative c'' {
        \voiceTwo
        des16( c des d es des bes as g fis g a bes g es d) |
        s2. es4 |
        g2.( fis4) |
        g s2. |
        c4 s f2 |
      }
      \new Voice \relative c'' {
        % draw ties
        \override NoteColumn #'ignore-collision = ##t
        s1*4 |
        s4.. \stemDown f4*1/4_~ f2
      }
    >>
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      es2 bes^~ |
      <bes des>16( a bes c des bes g f es g a bes c a f es) |
      d( e fis g a bes c d es4) d |
      es,16( g c es g4)~ g16( a, c g' fis d c a) |
      as( c \clef treble f as c4)~ c16( d, f c' b g f d) |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c' {
      bes2( cis,4.. d16) |
      es2( g,4)-. a-. |
      d,-. r r d'-. |
      es-. r r d-. |
      as'-. r r g |
    }
  >>
  % bar 360 - 366
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c'' {
        \oneVoice
        r16 des( g bes) r c,( f as) r b,( d g) r a,( c fis) |
        r as,( d f) r g,( c es) r f,( b d) r es,( g c)
        \voiceOne
        <es g>4( f8. es16 d4 es8. f16) |
        \voiceTwo f,4~ \voiceOne f16( es d f c'4 b8. g16) |
        bes4(~ bes16 as g bes f'4 e8. c16) |
        \oneVoice
        r16 ges( c es) r f,( bes des) r e,( g c) r d,( f b) |
        r des,( g bes) r c,( f as) r des,( e g) r c,( f as) |
      }
      \new Voice \relative c'' {
        \voiceTwo
        s1*2 |
        c2.( b4) |
        \voiceOne <c f>8 r \voiceTwo s4 f,2~ |
        f4 s bes2 |
      }
      \new Voice \relative c' {
        % draw ties
        \override NoteColumn #'ignore-collision = ##t
        s1*3 |
        s4.. \stemUp f4*1/4~ \stemDown f2 |
        s4.. \stemUp bes4*1/4_~ \stemDown bes2
      }
    >>
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      <des g bes>8-| r <c f as>-| r <b d g>-| r <a c fis>-| r |
      \clef bass
      <as d f>-| r <g c es>-| r <f b d>-| r <es g c>-| r |
      \clef treble
      g16( a b c d es f g as4 g) |
      \clef bass
      r16 c,,( f as c4)~ c16( d, f c' b g f d) |
      des( f bes des f4)~ f16( g, bes f' e c bes g) |
      <ges c es>8-| r <f bes des>-| r <e g c>-| r <d f b>-| r |
      <des g bes>-| r <c f as>-| r bes'4( as) |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      e4( f g a) |
      b( c d es) |
      g,-. r r g'-. |
      as-. r r g,-. |
      des'-. r r c-. |
      a( bes c d) |
      e,( f g as) |
    }
  >>
  % bar 367 - 374
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c'' {
        \voiceOne
        c2.(
        ^\markup Manualcoppel.
        b8. g16 |
        \set crescendoSpanner = #'text
        \set crescendoText = #"poco "
        <e bes'>4 <f as> g\< f8.) f'16 |
        \set crescendoText = #"a "
        c'2.( b8.\< g16 |
        \set crescendoText = #"poco "
        <e bes'>4 <f as> g~\< g8. g16) |
        d'2.( cis8. g16 |
        \oneVoice
        \set crescendoText = #"cresc. "
        <es fis c'>4\< <bes d~ bes'> <a d~ a'> <as d as'>8. <as as'>16) |
        <es' as c es>4 \voiceOne es2( d8. as16 |
        des4 c bes as8. as16) |
      }
      \new Voice \relative c' {
        \voiceTwo
        <f as>4(\ff <e g> <es fis> <d f> |
        c2.) f8. f16 | % the original slur goes until g, which has two stems
        <c' f as>4 <e g> <es fis> <d f> |
        c2. cis4 |
        <d g bes> <fis a> <f as> <e g> |
        s1 |
        s4 <g, bes> <fis a> <as f> |
        <es g> <es as> <des es> <c es> |
      }
    >>
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      r8. c16( bes8. c16 a8. c16 as8. c16 |
      g8. as16 f8. g16 es8. f16 des8. f16) |
      c8. c'16 <bes g'>8. c16 <a fis'>8. c16 <as f'>8. c16 |
      <g e'>8. as16 <f c'>8. g16 <e c'>8. g16 <es cis'>8. g16 |
      <d d'>8. d'16 <c a'>8. d16 <b gis'>8. d16 <bes g'>8. d16 |
      <a fis'>8. bes16 <g d'>8. a16 <fis d'>8. a16 <f d'>8. as16 |
      <es es'>8. es'16 des8. es16 c8. es16 ces8. es16 |
      bes8. c16 as8. bes16 g8. as16 ges8. as16 |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      c8. c'16( bes8. c16 a8. c16 as8. c16 |
      g8. as16 f8. g16 es8. f16 des8. f16 |
      c8.) c'16( bes8. c16 a8. c16 as8. c16 |
      g8. as16 f8. g16 e8. g16 es8. g16 |
      d8.) d'16( c8. d16 b8. d16 bes8. d16 |
      a8. bes16 g8. a16 fis8. a16 f8. as16 |
      es8.) es'16( des8. es16 c8. es16 ces8. es16 |
      bes8. c16 as8. bes16 g8. as16 ges8. as16) |
    }
  >>
  % bar 375 - 382
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \oneVoice
      <gis b e gis>8.\ff <e gis>16
    }
  >>
  
}


%%master: psalm94.ly
