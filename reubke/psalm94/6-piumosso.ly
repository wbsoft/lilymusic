\version "2.12.0"

\include "definitions.ly"

piumossoMusic = {
  % bar 430 - 
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
      as2--( b,4~ \scaleDurations #'(2 . 3) {
        b8 c d) |
        es( c g' c es, f d f c' b f g) |
        as( f c' f c es ces es f as ces, f) |
        \clef treble
        fes( as bes fes' as, bes g as bes es g, as) |
        f( g as des f, g e f g c es, f) |
        d( es f bes d, es c d es as c, d) |
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
      <as d f>2-| <g c e>4..(-| c16) |
      <fis, c' es>4..( <es a>16) <es a>4-| <d bes'>-| |
      <c fis>-| <bes g'>-| <es fis a>-| <d g bes>-| |
      <f as b>-| <es g c>-| <f b d>-| <g c es>-| |
      <bes d g bes>2-| << { cis4.( d8) } \\ <g, bes>2 >> |
      <g a es'>2-| fis4( \times 2/3 { g4 a8 } |
      <cis, e bes'>2)-| <cis e a>4.-| e8 |
      <c es g>2.( <c es fis>4)-| |
      <fis a es'>2-| <fis a d>4.-| a8 |
      <f as c>2.( <f as b>4)-| |
      <b d as'>2-| r4 <b d g>-| |
      <cis e bes'>2-| r4 <cis e a>-| |
      
      
    }
    \context Staff = "lh" \context Voice = "lh" \relative c, {
      \oneVoice
      \set tupletSpannerDuration = #(ly:make-moment 1 4)
      \times 2/3 { c8 cis d es f g as b c d es f } |
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
        
        
      }
    }
    \context Staff = "ped" \context Voice = "ped" \relative c'' {
      \oneVoice
      R1*35
    }
  >>
  
}

%%master: psalm94.ly
