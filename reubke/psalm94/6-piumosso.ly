\version "2.12.0"

\include "definitions.ly"

piumossoMusic = {
  % bar 430 - 466
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c' {
      \oneVoice
      \tempoMark #"Più mosso."
      \clef bass
      r4 c-| b4..( g16) |
      bes2.( a8. f16) |
      as4..( d,16 d4 es) |
      b( c d es |
      e f g as) |
      es'2--( fis,4.*10/9 g8*2/3) |
      as2--( b,4~-- \scaleDurations #'(2 . 3) {
        b8 c d) |
        es( c g' c es, f d f c' b f g) |
        as( f c' f c es ces es f as ces, f) |
        \clef treble
        fes( as bes fes' as, bes g as bes es g, as) |
        f( g as des f, g e f g c es, f) |
        d( es f bes d, es c d es a c, d) |
        b( c d es f g as g f c' g c,) |
        fis( g a bes c d es d c g' d g,) |
        a( c a es' bes es fis, a fis d' g, d') |
        d,( f d as' es as b, d b g' c, g' |
        des( g es bes' g es' bes g' es g bes, d) |
        a( c g fis a es d fis c bes d a) |
        g( d' bes a g' es bes g' d c a' g) |
        d( bes' g d' bes g fis a fis d' a fis) |
        f( as f d' g, f e g e c' fis, es) |
        d( g d bes' g d' g, d' bes g' bes, es) |
      }
      <<
        { r4 <es g>-| <d fis>4..( d16) }
        \\ a1_\markup\italic { poco cresc. }
      >> |
      <as d f>2-| \sas <g c e>4..(-| c16) |
      \sas <fis, c' es>4..(-| <es a>16) <es a>4-| <d bes'>-| |
      <c fis>-| <bes g'>-| <es fis a>-| <d g bes>-| |
      <f as b>-| <es g c>-| <f b d>-| <g c es>-| |
      \set crescendoSpanner = #'text
      \set crescendoText = #"poco "
      <bes d g bes>2-|\< << { cis4.( d8) } \\ <g, bes>2 >> |
      \set crescendoText = #"a "
      <g a es'>2-|\< fis4( \times 2/3 { g4 a8 } |
      \set crescendoText = #"poco "
      \sas <cis, e bes'>2)-|\< <cis e a>4.-| e8 |
      \set crescendoText = #"più "
      <c es g>2.(\< \sas <c es fis>4)-| |
      \set crescendoText = #"cre "
      <fis a es'>2-|\< <fis a d>4.-| a8 |
      <f as c>2.( \sas <f as b>4)-| |
      \set crescendoText = #"scen "
      <b d as'>2-|\< r4 <b d g>-| |
      <cis e bes'>2-| r4 <cis e a>-| |
      \set crescendoText = #"do "
      <es fis c'>1~\< |
      <es fis c'>2 r |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c, {
      \oneVoice
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 2/3 {
        c8^\mf
        -\tweak #'X-offset #3 ^\markup { M. II. }
        cis d es f g as b c d es f
      } |
      \scaleDurations #'(2 . 3) {
        g,8( bes c des d es e dis e f b, c) |
        des( es des c des c b bes as g c g) |
        f( g f es g es d g d c g' c) |
        bes( c bes as c as g c g f c' f,) |
        fis( a b c cis d es d c b d es) |
        f( g f es d c b as g f es d) |
      }
      c8-| r as'2(-- g4 |
      f8)-| r es'2(-- d4 |
      des8)-| r des'2(-- c4~-- |
      c bes2-- as4~-- |
      as) g-. fis4..( d16) |
      f2.( e8. c16) |
      es4.( a,8 a4 bes) |
      fis( g a bes |
      b c d es) |
      bes'2( des,4.. d16) |
      es2( fis,4~ \times 2/3 { fis8 g a) } |
      bes4(-. c-. d-. es-.) |
      d8-. r d'2(-- c4~ |
      c b c a) |
      bes( g d es) |
      \scaleDurations #'(2 . 3) {
        c8( es g a bes c d a fis d cis c) |
        b( d f as bes b c g e c b bes) |
        a( c d es e f fis a fis f bes f) |
        es( a es d es d c d c bes c bes) |
        as( bes as g as g f g f es f es) |
        d( g a bes c d es g a bes g d) |
        c( es g a c d es d c bes d a) |
        g( gis a bes g f e f fis g e cis) |
        c( cis d es c bes a c es a bes b) |
        c( cis d es c bes a bes b c a fis) |
        f( fis g as f es d f as d es e) |
        \clef treble
        f( fis g as f es d es e f d g,) |
        g'( gis a bes g f e f fis g e a,) |
        a'_( bes b c a g fis g gis a fis es |
        \clef bass
        c cis d es c a) fis( g gis a fis es) |
      }
    }
    \context Staff = "ped" \context Voice = "ped" \relative c'' {
      \oneVoice
      R1*37
    }
  >>
  % bar 467 - 493
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c {
      \scaleDurations #'(2 . 3) {
        \once \override DynamicText #'extra-spacing-width = #'(-0.1 . 0.5)
        r8\f
        ^\markup { M. I. }
        fis( a es' fis d) r d( fis a d g,) |
        r des( f e as g bes des e f c f,) |
        r c( es beses' c as) r as( c es as des,) |
        r g,( b ais d cis e g ais b fis b,) |
        r gis,( b f'
        _\markup\italic cresc.
        gis e) r e( gis b e a,) |
        r es( g fis b a c es fis g d g,) |
        r d( f ces' d bes) r bes( d f bes es,) |
        r beses( des c f es ges beses c des as des,) |
        r ges,( bes a des c es ges a bes f bes,) |
        r des,( ges f c' bes f' des bes f des bes) |
        r des( ges f des' a f' des a f des as) |
        r_\ff bes( g des' bes f' des g f bes g f |
        e bes' g c bes e c g' e c bes g) |
        r bes( g des' bes f' des g f bes g f) |
      }
      <f g des'>2 <e g c>4. g8 |
      <es fis c'>4 s2. |
      s1*3 |
      \scaleDurations #'(2 . 3) {
        r8 c,( a es' c g' es a g c a g |
        fis d a' fis c' a d c fis d c a) |
        r c( a es' c g' es a g c a g) |
      }
      <g a es'>2( <fis a d>4. a8) |
      <f gis d'>4-| s2. |
      s1*3 |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c {
      c2( b4. g8) |
      << { r4 des'2*1/2( e4 <c f>)-. } \\ { bes2.( a4) } \\ { s4 b'\rest } >> |
      ges2( f4. des8) |
      << { r4 g2*1/2( ais4 \sas <fis b>)-. } \\ { e2.( dis4) } \\ { s4 d'\rest } >> |
      d,2_( cis4. a8) |
      << { r4 es'2*1/2( fis4 \sas <d g>)-. } \\ { c2.( b4) } \\ { s4 c'\rest } >> |
      as2( g4. es8) |
      << { r4 beses'2*1/2( c4 \sas <as des>)-| } \\ { ges2.( f4) } \\ { s4 f'\rest } >> |
      << { r4 ges,2*1/2( a4 \sas <f bes>)-| } \\ { es2.( des4) } \\ { s4 d'\rest } >> |
      <<
        { r4 des,^(_~ <des f>2) | r4 des^(_~ <des f>2) | }
        \\ { c2.( bes4) | a2.( as4) | }
      >>
      <g~ bes~ f'>1^( |
      <g bes e>4)-. r r <g' bes e>-. |
      <g bes f'^~>1 |
      \scaleDurations #'(2 . 3) {
        f'8 \clef treble g( bes des bes g e g bes c bes g) |
        \stemUp
        es( fis a << { \rh es' fis c') } \new Voice c,4 >>
        %\slurDown
        \lh d,8( f b \rh d f b) |
        \lh des,,( g bes \rh des g bes) \lh c,,( f as \rh c f as) |
        \lh b,,( d g \rh b d g) \lh a,,( c fis \rh a c fis) |
        \lh as,,( d f \rh as d f) \lh g,,( c es \rh g c es) |
      }
      \lh \clef bass \stemNeutral \slurNeutral
      <a,,,~ c~ g'>1^( |
      <a c fis>4)-. r r <a' c fis> |
      <a c g'~>1 |
      \scaleDurations #'(2 . 3) {
        g'8 \clef treble a c es c a fis a c d c a |
        \stemUp
        f( gis b << { \rh f' gis d') } \new Voice d,4 >>
        %\slurDown
        \lh e,8( g cis \rh e g cis) |
        \lh es,,( a c \rh es a c) \lh d,,( g bes \rh d g bes) |
        \lh cis,,( e a \rh cis e a) \lh b,,( d gis \rh b d gis) |
        %\slurUp
        \change Staff = "lh"
        \clef bass bes,,( e g \rh bes e g) \change Staff = "lh" a,,( d f \rh a d f) |
      }
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      R1*10 |
      r2 r4 as(\ff |
      des1 |
      c2)-. r4 g-. |
      bes2.( c,4)~ |
      <c c'>1~ |
      <c c'>2( d |
      e f |
      g a |
      b c) |
      es1( |
      d2)-. r4 a-. |
      c2.( d,4)~ |
      <d d'>1~ |
      <d d'>2 e |
      fis g |
      a b |
      cis d |
    }
  >>
  % bar 494 - 503
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c' \scaleDurations #'(2 . 3) {
      r8 d( b' a d b a' d, b' a d, b) |
      r e,( b' a e' b a' e b' a e b) |
      r f( b a f' b, a' f b a f b,) |
      r f( b as f' b, as' f b as f b,) |
      r f( c' as f' c as' f c' as f c) |
      r f,( des' as f' des as' f des' as f des) |
      r f,( d' as f' d as' f d' as f d) |
      r ges,( es' bes ges' es bes' ges es' bes ges es) |
      r g,( e' cis g' e cis' g e' cis g e) |
      r as,( f' des as' f des' as f' c as f) | 
    }
    \context Staff = "lh" \context Voice = "lh" \relative c {
      <d a' b>2-. r |
      <e a b>-. r4 r8 <e a b>-. |
      <f a b>2 r |
      <f as b>-. r |
      <f as c>-. r |
      <f as des>-. r4 r8 <f as des>-. |
      <f as d>2-. r |
      <ges bes es>-. r |
      <g cis e>-. r |
      <as des f>-. r4 <as c f>-. |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      f2-. r |
      e-. r4 r8 b-. |
      d2 r |
      des-. r |
      c-. r |
      ces-. r4 r8 as-. |
      ces2-. r |
      bes-. r |
      a-. r |
      as-. r4 as-. |
    }
  >>
  % bar 504 - 511
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \tempoMark #"Allegro assai."
      <f b f'>2..\fff
      -\tweak #'X-offset #3 _\markup Manualcoppel.
      <c f as>8 |
      <b f' g>2.. <d f b>8 |
      <es g es'>2.. <c es g>8 |
      <a c es fis>2.. <es' fis a>8 |
      <d g d'>2.. <as c f>8 |
      <g b f'>2.. <b f' g>8 |
      <c g' c>2.. <c es>8 |
      <a c es>2.. <es' fis>8 |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \clef treble
      <g b f'>2.. <c f as>8 |
      <b f' g>2.. <b d f g>8 |
      <c es g>2.. <c es g>8 |
      <c es fis>2.. <es fis a>8 |
      <b f' g>2.. <as c f>8 |
      <g b f'>2.. <b f' g>8 |
      <c es g>2.. <c es g>8 |
      <c es fis>2.. <c es fis a>8 | 
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      \set tupletSpannerDuration = #(ly:make-moment 1 2)
      \times 2/3 {
        g4^\fff
        _\markup Pedalcoppel.
        c b es d as' |
        g cis, d ais b fis |
        g d' c f es as |
        g d es b c fis, |
        g c b es d as' |
        g cis, d ais b fis |
        g d' c f es as |
        g d es b c fis, |
      }
    }
  >>
  % bar 512 - 515
  <<
    \context Staff = "rh" \context Voice = "rh" {
      \set tupletSpannerDuration = #(ly:make-moment 1 2)
      \times 2/3 <<
        \relative c''' {
          b4 as g as g e |
          f es d es d c |
          b as g as g e |
          f es d es d c |
        }
        \relative c'' {
          <d f> es d es d des |
          c bes a bes as g |
          f es d es d des |
          c bes a bes as a |
        }
      >>
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \set tupletSpannerDuration = #(ly:make-moment 1 2)
      \times 2/3 {
        <b d g>4 c' b c b bes |
        as g fis g f es |
        d \clef bass c b c b bes |
        as g fis g f <es fis> |
      }
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      g4-| r r2 |
      r r4 g~ |
      <g g'>-. r r2 |
      r r4 g |
    }
  >>
  % bar 516 - 530 (end)
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c' {
      <c es g>1~ |
      <c es g>2.. <d f c'>8 |
      <es g c>1~ |
      <es g c>2.. <f c' d>8 |
      <g c es>1~ |
      <g c es>2.. <c d f>8 |
      <c es g>1~ |
      <c es g>2.. <d f c'>8 |
      <es g c>4-. r <as, es' g as>2~-^ |
      <as es' g as>4-. <as es' g as>2-^ <as b f' as>4-| |
      <as c es as>-| r <bes des g>-| r |
      <as c f>-| r <a c es>-| r8 c-| |
      <g c es g>4-| r r2 |
      <b f' g b>4-| r r r8 <c es g c> |
      <c es g c>1\fermata
      \bar "|."
    }
    \context Staff = "lh" \context Voice = "lh" \relative c {
      <c es g>1~ |
      <c es g>2.. <d f c'>8 |
      <es g c>1~ |
      <es g c>2.. <f c' d>8 |
      <g c es>1~ |
      <g c es>2.. \clef treble <c d f>8 |
      <c es g>1~ |
      <c es g>2.. <d f c'>8 |
      <es g c>4-. r <as, c es g>2~-^ |
      <as c es g>4-. <as es' g>2-^ <as b f'>4-| |
      <as c es>-| r <bes des g>-| r |
      <as c f>-| r \clef bass <a c es>-| r8 c-| |
      <g c es g>4-| r r2 |
      <g b d f g>4-| r r r8 <g c es g> |
      <g c es g>1\fermata
    }
    \context Staff = "ped" \context Voice = "ped" \relative c' {
      \set tupletSpannerDuration = #(ly:make-moment 1 2)
      \times 2/3 {
        g4 as fis g f g |
        e g es g d g |
        c, d b c bes c |
        a c bes c as c |
        g as fis g f g |
        e g es g d g |
        c, c' b c bes c |
        a c bes c as c |
      }
      g4-. r c2~-^ |
      c4-. \sas b(-^ c) d |
      es-| r <e, e'>-| r 
      <f f'>-| r <fis fis'>-| r |
      <g g'>-| r r2 |
      <g g'>4-| r r r8 c,~ |
      <c c'>1\fermata
    }
  >>
}

%%master: psalm94.ly
