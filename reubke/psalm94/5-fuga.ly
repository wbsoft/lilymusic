\version "2.12.0"

\include "definitions.ly"

global = \key c \minor
  

fugaMusic = {
  % bar 317 - 338
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \oneVoice
      \bar "||"
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
      \noBreak % BUG: because of x-staff slur
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
        c4~( \oneVoice c16 bes a c_~ <c_~ g'>4 <c fis>8. d16) |
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
        c'2.( b8.\< f16 |
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
        <d g bes> <fis a> <f gis> <e g> |
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
      c8.^\fff
      -\tweak #'X-offset #3 ^\markup { Pedal \italic cresc. }
      c'16( bes8. c16 a8. c16 as8. c16 |
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
      <gis b e gis>8.\fff
      ^\markup Cornett.
      \unset crescendoSpanner
      <e gis>16 <e gis b>4~ <e gis b>8. <e gis bis>16 <gis bis e>4~ |
      <gis bis e>8. <a cis e>16 <cis e a>4~ <cis e a>8. <a c dis>16 <c dis a'>8. <b e gis>16 |
      <e gis b>8. <b, e gis>16 <e gis b>4~ <e gis b>8. <e gis bis>16 <gis bis e>4~ |
      <gis bis e>8. <a cis e>16 <cis e a>4~ <cis e a>8. <a cis e>16 <cis e a>8. <c es as>16 |
      <es as c>8. <es, as c>16 <as c es>4~ <as c es>8. <as c e>16 <c e as>4~ |
      <c e as>8. <des f as>16 <f as des>4~ <f as des>8. <des fes as>16 <fes as des>8. <es as c>16 |
      <es as es'>8. <es, as c>16 <as c es>4~ <as c es>8. <as c e>16 <c e as>4~ |
      <c e as>8. <des f as>16 <f as des>4~ <f as des>8. <f as des>16 <as des f>8. <g c e>16 |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c {
      \oneVoice
      <e gis b>8. <e gis>16 <e gis b>4~ <e gis b>8. <e gis bis>16 <gis bis e>4~ |
      <gis bis e>8. <a cis e>16 \clef treble <cis e a>4~ <cis e a>8. <a c dis>16 <c dis a'>8. <b e gis>16 |
      <e gis b>8. \clef bass <b, e gis>16 <e gis b>4~ <e gis b>8. <e gis bis>16 <gis bis e>4~ |
      <gis bis e>8. <a cis e>16 \clef treble <cis e a>4~ <cis e a>8. <a cis e>16 <cis e a>8. <c es as>16 |
      <es as c>8. \clef bass <es, as c>16 <as c es>4~ <as c es>8. <as c e>16 \clef treble <c e as>4~ |
      <c e as>8. <des f as>16 <f as des>4~ <f as des>8. <des fes as>16 <fes as des>8. <es as c>16 |
      <es as c>8. \clef bass <es, as c>16 <as c es>4~ <as c es>8. <as c e>16 \clef treble <c e as>4~ |
      <c e as>8. <des f as>16 <f as des>4~ <f as des>8. <f as des>16 <as des f>8. <g c e>16 |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      e4..
      ^\fff
      -\tweak #'X-offset #3 ^\markup \whiteout { alle Bässe u. Pedalcoppel. }
      e'16 dis4.. e16
      cis4.. e16 a,4.. e'16 |
      e,4.. e'16 dis4.. e16 |
      cis4.. e16 a,4.. es'16 |
      as,4.. as'16 g4.. as16 |
      f4.. as16 des,4.. as'16 |
      as,4.. as'16 g4.. as16 |
      f4.. as16 des,4.. g16 |
    }
  >>
  % bar 383 - 390
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c''' {
      <g c g'>8.[ <c, g'>16]
      _\markup \whiteout { Manualcoppel fort! }
      <c fis>8[-| r16 <c f>] <bes e>8[-| r16 <as des>] <g c>8[-| r16 <f b>] |
      <e bes'>8[-| r16 <e as>] <des g>8[-| r16 <c f>] <bes e>8[-| r16 \clef bass <as des>] <g c>8[ r16 <f b>] |
      bes( g c e, des' bes es g, \clef treble e' des f bes, g' e as des,) |
      bes'( g c e, des' bes es g, e' des f g, g' e gis c,) |
      <cis a'>8[-| r16 <a e'>] <a dis>8[ r16 <a d>] <g cis>8[-| r16 <f bes>] <e a>8[-| r16 <d gis>] |
      <cis g'>8[-| r16 <cis f>] <bes e>8[ r16 \clef bass <a d>] <g cis>8[-| r16 <f bes>] <e a>8[-| r16 <d gis>] |
      g( e a cis, bes' g c e, cis' bes d g, \clef treble e' cis f bes,) |
      g'( e a cis, bes' g c e, cis' bes d e, e' cis eis a,~ |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c'' {
      <g c e>8.[ bes16] a8[-| r16 as] g8[-| r16 f] e8[-| r16 d] |
      \clef bass
      des8[-| r16 c] bes8[-| r16 as] g8[ r16 f] e8[ r16 d] |
      <c e>8[ r16 e,~] <e g bes des>4~ <e g bes des>8. bes'16~ <bes des e g>4~ |
      <bes des e g>8. e16~ <e g bes des>8-| r <e g c>-| r <bes' c e>-| r |
      <a cis e>8[-| r16 g'] fis8[-| r16 f] e8[-| r16 d] cis8[-| r16 b] |
      bes8[-| r16 a] g8[-| r16 f] e8[-| r16 d] cis8[-| r16 b] |
      <a cis>8[ r16 e]~ <e g bes cis>4~ <e g bes cis>8. g16~ <g bes cis e>4~ |
      <g bes cis e>8. cis16~ <cis e g bes>8-| r <e a cis>-| r <a cis>-| r |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      c4 r r r8. g16 |
      c4-| r r r8. g16 |
      c8. g16 bes4~ bes8. e,16 g4~ |
      g8. c,16 des'8-| r c-| r bes-| r |
      a4-| r r r8. e'16 |
      a4-| r r r8. e16 |
      a8. e16 g4~ g8. cis,16 e4~ |
      e8. a,16 bes'8-| r a-| r g-| r |
    }
  >>
  % bar 391 - 394
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      <a d fis>4)-| s2. |
      s1*3 |
    }
    \context Staff = "lh" <<
      \context Voice = "lh" \relative c, {
        r16 \stemUp fis( 
        \once \override Hairpin #'rotation = #'(10 0 0)
        \once \override Hairpin #'extra-offset = #'(0 . 1)
        a\< d fis \rh a d fis\! a) \lh
        \once \override Hairpin #'rotation = #'(10 0 0)
        \once \override Hairpin #'extra-offset = #'(0 . 2)
        \set tieWaitForNote = ##t
        d,,\<( fis a d \rh fis_~ a\! d) | % this slur is not in 1871 score
        <fis, ais d fis>4-.--
      }
      \new Voice \relative c {
        s1 |
        r16 \stemUp ais(
        \once \override Hairpin #'rotation = #'(10 0 0)
        \once \override Hairpin #'extra-offset = #'(0 . 1)
        d\< fis ais \rh d fis ais\! d) \lh
        \once \override Hairpin #'rotation = #'(10 0 0)
        \once \override Hairpin #'extra-offset = #'(0 . 2)
        d,,\<( fis ais d \rh fis d'\! fis) |
        <g, d' g>4-.--
      }
      \new Voice \relative c {
        s1*2 |
        r16 \stemUp b(
        \once \override Hairpin #'rotation = #'(10 0 0)
        \once \override Hairpin #'extra-offset = #'(0 . 2)
        d\< g b \rh d g b\! d) \lh
        \once \override Hairpin #'rotation = #'(10 0 0)
        \once \override Hairpin #'extra-offset = #'(0 . 4)
        \set tieWaitForNote = ##t
        g,,\<( b d g \rh b_~ d\! g) |
        <b, dis g b>4-.--
      }
      \new Voice \relative c {
        s1*3 |
        r16 \stemUp dis(
        \once \override Hairpin #'rotation = #'(10 0 0)
        \once \override Hairpin #'extra-offset = #'(0 . 3)
        g\< b dis \rh g b dis\! g) \lh \clef treble
        \once \override Hairpin #'rotation = #'(15 0 0)
        \once \override Hairpin #'extra-offset = #'(0 . 2)
        b,,\<( dis g b \rh dis g\! b) |
      }
    >>
    \context Staff = "ped" \context Voice = "ped" \relative c {
      fis2(
      \fff
      -\tweak #'X-offset #4 _\markup { Posaune 32' }
      gis,4. a8) |
      ais2( cis,4. d8) |
      b''2( cis,4. d8) |
      dis2( fis,4. g8) |
    }
  >>
  % bar 395 - 398
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      <e g e'>8-|\fff
      -\tweak #'X-offset #4 _\markup { Manualcoppel! }
      r <es fis es'>-| r <d f d'>-| r <c e c'>-| r |
      <b dis b'>-| r <ais cis ais'>-| r <a c a'>-| r <b e g>-| r |
      <ais cis fis>-| r <gis cis eis>-| r <g cis e>-| r <fis b d>-| r |
      <e g cis>-| r <d fis b>-| r <eis b' d>-| r <fis cis'>-| r |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      <e g c>8-| r <es fis>-| r <d f>-| r <c e>-| r |
      <b dis fis>-| r <ais cis fis>-| r <a c fis>-| r <b e g>-| r |
      \clef bass
      <ais cis fis>-| r <gis cis eis>-| r <g cis e>-| r <fis b d>-| r |
      <e g cis>-| r <d fis b>-| r <eis b' d>-| r <fis cis'>-| r |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c' {
      g8( fis, g gis a gis a ais |
      b c cis d dis dis, e eis) |
      fis( g gis a ais cis, d dis |
      e eis fis g gis a ais b)
    }
  >>
  % bar 399 - 405
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      <b e g>4-- s <ais cis fis>-- s8 \voiceOne cis-- |
      \oneVoice <g b e>4..-- <g b>16-- <g b>4~-- <g b>16 b( e g) |
      <b, e g>4-- s <ais cis fis>-- s8 \voiceOne cis-- |
      \oneVoice <a c e>4..-- <fis a>16-- <fis a>4~-- <fis a>16( e' a c) |
      <e, a c>4-- s <dis fis b>-- s8 \voiceOne fis-- |
      \oneVoice <c e a>4..-- <c e>16-- <c e>4~-- <c e>16 e( a c) |
      <e, a c>4-- s <dis fis b>-- s8 \voiceOne fis-- |
      \oneVoice
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      r16_\markup { Manualcoppel fort! } \stemUp
      \once \override Hairpin #'rotation = #'(10 0 0)
      \once \override Hairpin #'extra-offset = #'(0 . 5)
      b(\< cis e g \rh b cis g')\! \lh
      r
      \once \override Hairpin #'rotation = #'(10 0 0)
      \once \override Hairpin #'extra-offset = #'(0 . 5)
      ais,,(\< cis e fis \rh ais cis e)\! \lh % this slur is not in 1871 score
      \stemNeutral
      r b,,( d e g d e g b e, g b e8)-. r |
      r16 \stemUp
      \once \override Hairpin #'rotation = #'(10 0 0)
      \once \override Hairpin #'extra-offset = #'(0 . 5)
      b(\< cis e g \rh b cis g')\! \lh
      r
      \once \override Hairpin #'rotation = #'(10 0 0)
      \once \override Hairpin #'extra-offset = #'(0 . 5)
      ais,,(\< cis e fis \rh ais cis e)\! \lh
      \stemNeutral
      r c,,( e fis a e fis a c fis, a c e4) |
      \clef treble
      r16 \stemUp
      \once \override Hairpin #'rotation = #'(10 0 0)
      \once \override Hairpin #'extra-offset = #'(0 . 2)
      e(\< fis a c \rh e a c)\! \lh
      r
      \once \override Hairpin #'rotation = #'(10 0 0)
      \once \override Hairpin #'extra-offset = #'(0 . 1.5)
      dis,,(\< fis a b \rh dis fis a)\! \lh
      \stemNeutral
      \clef bass
      r e,,( g a c g a c e a, c e a4) |
      \clef treble
      r16 \stemUp
      \once \override Hairpin #'rotation = #'(10 0 0)
      \once \override Hairpin #'extra-offset = #'(0 . 2)
      e(\< fis a c \rh e a c)\! \lh
      r
      \once \override Hairpin #'rotation = #'(10 0 0)
      \once \override Hairpin #'extra-offset = #'(0 . 1.5)
      dis,,(\< fis a b \rh dis fis a)\! \lh
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      cis1 | d | cis | c | fis, | g | fis |
    }
  >>
  % bar 406 - 413
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      <d f a>1~ |
      <d f a>8-| r s2 s8. <d f a>16 |
      <cis f a>1~ |
      <cis f a>8-| r s2 s8. <d f bes>16 |
      <d f bes>1~ |
      <d f bes>8-| r s2 s8. <d f as b>16 |
      <d f as b>1~ |
      <d f as b>8-| r s2 s8. <es as c>16 |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \oneVoice
      <d f a>1~ |
      <d f a>8-| r16
      \clef bass
      <d, f>( \stemUp a' \rh d <f a>)
      \lh <f, a>( d' \rh f <a d>) \lh <a, d>( f'[ \rh a <d f>]) 
      \lh \clef treble <d, f a> |
      <cis f a>1~ |
      <cis f a>8-| r16
      <f, a>16( \stemUp cis' \rh f <a cis>)
      \lh <a, cis>( f' \rh a <cis f>) \lh <cis, f>( a'[ \rh cis <f a>])
      \lh <d, f bes> |
      <d f bes>1~ |
      <d f bes>8-| r16
      <f, bes>( \stemUp d' \rh f <bes d>)
      \lh <bes, d>( f' \rh bes <d f>) \lh <d, f>( bes'[ \rh d <f bes>])
      \lh <d, f as b> |
      <d f as b>1~ |
      <d f as b>8- | r16
      as( \stemUp <b d> \rh as' <b d>)
      \lh <b, d>( as' \rh b <d as'>) \lh <d, as'>( b'[ \rh b %{ d? %} <as' b>])
      \lh <es, as c>16 |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      r8 f( gis a bes a cis d |
      f1) |
      r8 f,( gis a bes a cis e |
      f1) |
      r8 f,( a bes cis d e f) |
      f1 |
      r8 f,( as b cis d es e) |
      f1 |
    }
  >>
  % bar 414 - 417
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \oneVoice
      <es as c>4\fff
      -\tweak #'X-offset #3 _\markup Manualcoppel.
      r8. <es, as c>16 <e as c>4.. <c' e as c>16 |
      <c f as c>4.. <f, as c>16 <fes as c>4.. <c' fes as c>16 |
      <c es as c>4.. <es, as c>16 <e as c>4.. <c' e as c>16 |
      <c f as c>4.. <f, as c>16 <es a c es>4.. <a c es>16 |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \oneVoice
      <es as c>8[ r16 \clef bass c,16]~ <c es as c>4 r8. c16~ <c e as c>4 |
      r8. c16~ <c f as c>4 r8. c16~ <c fes as c>4 |
      r8. c16~ <c es as c>4 r8. c16~ <c e as c>4 |
      r8. c16~ <c f as c>4 r8. c16~ <c fis a c>4 |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c, {
      r8. es16~^\fff <es es'>4 r8. e16~ <e e'>4 |
      r8. f16~ <f f'>4 r8. fes16~ <fes fes'>4 |
      r8. es16~ <es es'>4 r8. e16~ <e e'>4 |
      r8. f16~ <f f'>4 r8. fis16~ <fis fis'>4 |
    }
  >>
  % bar 418 - 429
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c'' {
        \oneVoice
        <g c es g>4-.
        \voiceOne
        fis16( g fis g f g f g e g e g |
        es g es g d g d g des g fes g bes des fes g |
        \oneVoice 
        <c, es as>4)-|
        \voiceOne
        g16( as g as f as f as e as e as |
        \set tieWaitForNote = ##t
        f as f as es as es as d, as' f as b~ d~ f~ as~ |
        \oneVoice
        <b, d f as b>4)-|
        as16 b as b g b g b fis b fis b |
        f b f b b d b d bes d bes d a d a d |
        as d as d c f c f b, f' b, f' es as es as |
        d, as' f as f b f as f b f as f c' as c |
        d( b bes as b as g f as f es d f d c b) |
        d( b bes as b as g f as f es d f d c b) |
        s1*2 |
      }
      \new Voice \relative c' {
        \voiceTwo
        s4 fis f e |
        \mergeDifferentlyDottedOn
        es d des bes'4*1/4 des8.*1/3\noBeam fes8 |
        s4 g, f e |
        f es d b' |
      }
    >>
    \context Staff = "lh" <<
      \context Voice = "lh" \relative c {
        <c es g c>4-.
        _\markup { Manualcoppel fort. }
        \voiceTwo
        fis16( es' g, es' f, d' g, d' e, cis' g cis |
        es, c' g c d, b' g b \oneVoice <des, bes'>4) <fes g des'>( |
        <es as c>)-|
        \voiceTwo
        g16( es' as, es' f, d' as d e, cis' as cis |
        f, d' as d es, c' as c \oneVoice <d, b'>4 <f as b d>~ |
        <f as b d>)-|
        \voiceTwo
        as16 d b d g, d' b d fis, d' b d |
        f, d' b d b f' d f bes, f' d f a, f' d f |
        as, f' d f \clef treble \voiceOne 
        es as f as d, as' f as g c as c |
        f, b f as es as f as d, as' f as c, as' f as |
        \oneVoice
        <b, f' as>1 |
        \clef bass
        R1 |
        \voiceOne d16( b bes a as b as g f g f es d es d c |
        b c b as g as fis as g[ as] \voiceTwo
        f[_\markup \italic riten. g] es f d es) |
      }
      \new Voice \relative c {
        \voiceOne
        s4 fis f e |
        es d s2 |
        s4 g f e |
        f es s2 |
        s4 as g fis |
        f b bes a |
        as \voiceTwo es' d g |
        f es d c |
        s1*2 |
        R1 |
      }
    >>
    \context Staff = "ped" \context Voice = "ped" \relative c {
      <g g'>4 r r r |
      r2 r4 g_~^( |
      <g g'>) r r2 |
      r r4 g_~^( |
      <g g'>)-. r r g_~^( |
      <g b>)-. r r g_~^( |
      <g d'>)-. r r <<
        { g_~ | \voiceTwo g g2 g4~ }
        \new Voice { \oops g4^( \voiceOne f'2) g }
      >>
      \oneVoice
      <g, as'>1 |
      R1*3
    }
  >>
  
}


%%master: psalm94.ly
