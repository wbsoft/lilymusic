\version "2.13.1"
\paper {
  ragged-last-bottom = ##f
}

\header {
  title = "Laudate Jehovam, omnes gentes"
  subtitle = "117. Psalm"
  composer = "Georg Philip Telemann (1681-1767)"
  copyright = \markup \center-column {
    \line {
      Engraved by
      \with-url #"http://www.wilbertberendsen.nl/"
      {
        Wilbert Berendsen
        (http://www.wilbertberendsen.nl/)
      }
    }
    \line {
      Copyright © 2009
      \with-url #"http://www.cpdl.org/"
      {
        The Choral Public Domain Library
        (http://www.cpdl.org/)
      }
    }
    \line {
      This edition may be freely distributed,
      edited, performed or recorded.
    }
  }
  tagline = \markup {
    Engraved at
    \simple #(strftime "%d-%m-%Y" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}


\layout {
  \context {
    \Score
    skipBars = ##t
  }
}

globalOne = {
  \time 4/4
  \key bes \major
  \partial 8
}

globalTwo = {
  \key es \major
  \time 3/2
}

globalThree = {
  \key bes \major
  \time 2/2
}

violinoOne = \relative c'' {
  \globalOne
  bes8 bes d16( c) bes8 bes bes d16( c) bes8 bes |
  g' f es4 d16( f) bes,( d) bes,8 c' |
  c es16( d) c8 c c es16( d) c8 c |
  f es d4 c16( f) a,( c) f,8 f' |
  % bar 5 (5 and 6 same in Vln. II)
  g16 a,( bes) g' f a,( bes) as' g d( es) as g es( g) bes |
  a b,( c) a' g b,( c) bes' a e( f) bes a( c) a( f) |
  bes8.\trill a32( g) f8 es d32( bes16.) es32( c16.) f8 g |
  bes,8~\prall bes32 a( bes c) c4\trill bes16( d) c( a) bes( d) c( a) |
  bes'8.\trill a32( g) f8 es d32( bes16.) es32( c16.) f8 g |
  % bar 10
  bes,8~\prall bes32 a( bes c) c4\trill bes r |
  R1 |
  g'16( bes) f( bes) es,4 d16( f) bes,( d) bes,4 |
  R1 |
  d'16( f) c( f) bes,8 e f16( a) c,( f) f,8 c' |
  % bar 15
  d16 e,( f) d' c e,( f) es' d a( bes) es d( g,) d'( f) |
  e fis,( g) c d fis,( g) d' e b( c) f e( g) e( c) |
  f a,( bes) g a( c) d( bes) c( a) bes( g) a( c) d( bes) |
  c f d g e8.(\trill f16) f( a) c,( f) f,8( c') |
  d16 e,( f) d' c e,( f) c' bes fis( g) bes d fis,( g) bes |
  % bar 20
  bes'( g) a( f) g4\trill f16( c) a( c) f,8 r |
  R1 |
  r2 g'8.\prall f32( es) d8 c |
  bes32( d16.) c32( es16.) d16( g) es( c) bes32( g'16.) bes,32( g16.) a16( es') c( a) |
  g4 r r2 |
  % bar 25
  R1 |
  r2 g'8.\prall f32( es) d8 c |
  bes32( g'16.) bes,32( g16.) a16( es') c( a) g32( bes16.) d32( g16.) d16( bes) g( bes) |
  d,16 d d d g' g g g fis fis fis fis g g g g |
  g g g g fis fis fis fis g g, g32( a bes16) bes g bes32( c d16) |
  % bar 30
  d bes g32( a bes16) bes g d' g g4 r |
  \bar "||"
  \globalTwo
  es,8( g bes es) es( bes g es) r2 |
  es8( as c es) es( c as es) r2 |
  es8( g bes es) es( bes g es) r2 |
  f8( bes d f) f( d bes f) r2 |
  % bar 35
  g8( bes es g) g( es bes g) r2 |
  g8( bes es g) g( es bes g) r2 |
  b8( d f as) as( f d b) r2 |
  g8( c es g) g( es c g) r2 |
  g8( c es g) f( d b g) r2 |
  % bar 40
  es8( g c es) es( c g es) r2 |
  f8( bes des f) f( des bes f) r2 |
  es8( g bes des) des( bes g es) r2 |
  f8( bes des f) des( bes g es) r2 |
  c8( es as c) c( as es c) r2 |
  % bar 45
  d8( f bes d) d( bes f d) r2 |
  es8( as c es) es( c as es) r2 |
  es8( g bes es) es( bes g es) r2 |
  a8( c f a) a( f c a) r2 |
  f8( a c f) f( d bes f) r2 |
  % bar 50
  f8( bes d f) f( d bes f) r2 |
  es8( g bes es) es( bes g es) r2 |
  es8( as c es) es( c as es) r2 |
  R1. |
  r2 g g |
  % bar 55
  r g g |
  f8( bes d f) f( d bes f) r2 |
  es8( g bes es) es( bes g es) r2 |
  as r4 f g2 |
  r4 as \grace g2 f1\trill |
  % bar 60
  es1. |
  \bar "||"
  \globalThree 
  R1*7 |
  % bar 68
  r4 d'8 d d4 c8( bes) |
  c4 es8 es es4 d8( c) |
  % bar 70
  d4 d8 d8 d4 c8( bes) |
  c2 r |
  R1*6 |
  % bar 78
  r4 a'8 a a4 g8( f) |
  g4 bes8 bes bes4 a8( g) |
  % bar 80
  a2 r |
  r r4 d |
  a a~ a8 c bes( a) |
  g4 g~ g8 bes a( g) |
  f4 f~ f8 as g( f) |
  % bar 85
  es4 es~ es8 g f( es) |
  d4 d g g~ |
  g8 g f( e) d4 e8( fis) |
  g2 r |
  R1*4 |
  % bar 93
  r4 c,8( d) es( d es f) |
  g4( g,) g'( g,) |
  % bar 95
  r as8( bes) c( bes) c( d) |
  es4( es,) es'( es,) |
  r f8( g) a( f) a( b) |
  c4( c,) c'( c,) |
  r8 c' d( c) b2\trill |
  % bar 100
  c r |
  c r |
  d r |
  es r |
  r4 f bes bes~ |
  % bar 105
  bes8 bes a( g) a4 a~ |
  a8 a g( f) g4 g~ |
  g8 g f( e) f4 f~ |
  f8 f es( d) es4 es~ |
  es8 es d( c) d d c( bes) |
  % bar 110
  c( d) c( bes) c2\trill |
  bes r |
  c r |
  d r |
  c4 es,8 es es4 d8( c) |
  % bar 115
  bes'2 d |
  f4 es,8 es es4 d8( c) |
  bes'2 d |
  f1 |
  bes,2 r |
  \bar "|."
}

violinoTwo = \relative c' {
  \globalOne
  d8 |
  d d r d d d r d |
  bes' bes4 a8 bes( bes,) r bes' |
  a a r a a a r a |
  f c'4 bes8 a( f) r f' |
  % bar 5 (5 and 6 same in Vln. II)
  g16 a,( bes) g' f a,( bes) as' g d( es) as g es( g) bes |
  a b,( c) a' g b,( c) bes' a e( f) bes a( c) a( f) |
  d8( d) c( c) bes r bes( bes) |
  d,( f') a,4\trill bes16( d) c( a) bes( d) c( a) |
  f8( bes) c( c) bes r bes( bes) |
  % bar 10
  d,( f') a,4\trill bes r |
  R1 |
  bes8( bes) bes( a) bes4 r |
  R1 |
  f8( c') d( c) a4 r8 c |
  % bar 15
  d16 e,( f) d' c e,( f) es' d a( bes) es d( g,) d'( f) |
  e fis,( g) c d fis,( g) d' e b( c) f e( g) e( c) |
  f a,( bes) g a( c) d( bes) c( a) bes( g) a( c) d( bes) |
  c8 bes4 g8 a( f) a( c) |
  d16 e,( f) d' c e,( f) c' bes fis( g) bes d fis,( g) bes |
  % bar 20
  e8 f e4\trill f r |
  R1 |
  r2 d8 g,4( fis8) |
  g( g) g( g) g( g) fis( fis) |
  g4 r r2 |
  % bar 25
  R1 |
  r2 g8( g) g( g) |
  g( g) fis( fis) d'( d) d( d) |
  d( d) c( c) c( c) bes( bes) |
  a( a) a( a) bes16 bes, bes32( c d16) d bes g'32( a bes16) |
  % bar 30
  bes g bes32( c d16) d bes g32( a bes16) bes4 r |
  \bar "||"
  \globalTwo 
  r2 r es8( bes g es) |
  r2 r es'8( c as es) |
  r2 r es'8( bes g es) |
  r2 r f'8( d bes f) |
  % bar 35
  r2 r f'8( d bes f) |
  r2 r es'8( bes g es) |
  r2 r as'8( f d b) |
  r2 r as'8( f d c) |
  r2 r f8( d b g) |
  % bar 40
  r2 r es'8( c a f) |
  r2 r bes8( f des bes) |
  r2 r c'8( as es c) |
  r2 r des'8( bes g es) |
  r2 r c'8( as es c) |
  % bar 45
  r2 r es'8( bes g es) |
  r2 r es'8( c as es) |
  r2 r bes''8( g e c) |
  r2 r a'8( f c a) |
  r2 r es'8( c a es) |
  % bar 50
  r2 r f'8( d bes f) |
  r2 r es'8( bes g es) |
  r2 r as8( f d bes)
  R1. |
  r2 es es |
  % bar 55
  r es es |
  r r f'8( d bes f) |
  g,2 r es''8( bes g es) |
  d2 r4 d es2 |
  r4 f \grace es2 d1\trill |
  % bar 60
  es1. |
  \bar "||"
  \globalThree 
  R1*7 |
  % bar 68
  r4 bes'8 bes bes4 a8( g) |
  a4 c8 c c4 bes8( a) |
  % bar 70
  bes4 bes8 bes bes4 a8( g) |
  a2 r |
  R1*6 |
  % bar 78
  r4 f'8 f f4 e8( d) |
  e4 g8 g g4 f8( e) |
  % bar 80
  f2 r |
  r4 d g g~ |
  g8 g f( e) f4 f~ |
  f8 f es( d) es4 es~ |
  es8 es d( c) d4 d~ |
  % bar 85
  d8 d c( b) c4 c~ |
  c8 c bes a bes bes a( g) |
  a( bes) a( g) a2\trill |
  g r |
  R1*5 |
  r4 des'8( c) des( f) es( des) |
  % bar 95
  c4 es, es' as, |
  r bes8( c) bes( des) c( bes) |
  a4 f c' f, |
  r g8( f) g( bes) as( g) |
  f( e) f( g) f( es) d( f) |
  % bar 100
  e2 r |
  a r |
  as r |
  g r |
  r r4 f' |
  % bar 105
  c c~ c8 es d( c) |
  bes4 bes~ bes8 d c( bes) |
  a4 a~ a8 c bes( a) |
  g4 g~ g8 bes a( g) |
  f4 f bes bes~ |
  % bar 110
  bes8 bes a( g) a( bes) g( a) |
  bes2 r |
  a r |
  bes r |
  a4 es8 es es4 d8( c) |
  % bar 115
  d4 d'8 d d4 c8( bes) |
  c4 es,8 es es4 d8( c) |
  d4 d'8 d d4 c8( bes) |
  c4( a) bes( c) |
  bes2 r |
  \bar "|."
}

continuo = \relative c {
  \globalOne
  bes8 |
  bes' bes r a g g r f |
  es d c f bes,4 r8 e |
  f f r f es es r es |
  d a' bes e, f4 f8 d |
  % bar 5
  es es d d es es es e |
  f f e e f f f f 
  g g a a bes bes bes es, |
  f f es es d es d es |
  d g a f bes bes bes es, |
  % bar 10
  f f f, f bes4 r8 bes |
  d d r d g g r g |
  es d c f bes,4 r8 bes |
  a a r a d d r d |
  bes a g c f, f a' a |
  % bar 15
  bes bes a a bes bes b b |
  c c b b c c c bes |
  a d c bes a d c bes |
  a bes c c, f f f f |
  bes bes a a g g g g |
  % bar 20
  c, c c c f,4 r8 f |
  f'4 r8 bes, f'4 r8 fis |
  g g, d' d, bes'' c bes a |
  g a bes c d c d d, |
  g4 r8 e f4 r8 f |
  % bar 25
  f4 r8 bes, f'4 r8 fis |
  g g, d' d, bes'' a bes c |
  d d d c bes bes bes bes |
  c c c c a a bes bes |
  c c d d g, r g r |
  % bar 30
  g g g, g g4 r |
  \bar "||"
  \globalTwo
  es'2 es es |
  as, as as |
  es' es es |
  d d d |
  % bar 35
  es es d |
  es1 g2 |
  f f f |
  es es f |
  g g g |
  % bar 40
  c, c a' |
  bes bes bes |
  es, es as |
  des, es es, |
  as as' as |
  % bar 45
  as as g |
  as as as |
  g g g |
  f f es |
  d d c |
  % bar 50
  bes bes' as |
  g g g |
  as as f |
  es bes' bes, |
  es1 r2 |
  % bar 55
  a,1 r2 |
  bes bes bes |
  bes bes bes |
  bes r4 bes' es,2 |
  r4 as bes2 bes, |
  % bar 60
  es,1. |
  \bar "||"
  \globalThree
  bes''2 r |
  r4 d,8 d d4 d |
  es2 r |
  r4 bes8 bes bes4 b |
  % bar 65
  c c'8 c c4 c |
  f,2 g4 d |
  es2 f |
  bes,4 bes'8 bes bes2 |
  f4 f8 f f2 |
  % bar 70
  bes,4 bes'8 bes bes2 |
  f r |
  r4 a,8 a a4 a |
  bes2 r |
  r4 f8 f f4 fis |
  % bar 75
  g g8 g g4 g |
  c2 d4 a |
  bes2 c |
  f,4 f'8 f f2 |
  c4 c'8 c c2 |
  % bar 80
  f,2 r4 d' |
  g,2 bes |
  d1 |
  es,2 g |
  bes1 |
  % bar 85
  c,2 es |
  g1 |
  d |
  g,2 r |
  d' r |
  % bar 90
  g,4 g' g, g' |
  f f f, f' |
  bes,2 g' |
  c, c' |
  bes1 |
  % bar 95
  as |
  g |
  f |
  es |
  d2 g |
  % bar 100
  c,4 c c c |
  f2 r |
  bes, r |
  es r |
  bes' d |
  % bar 105
  f1 |
  g,2 bes |
  d1 |
  es,2 g |
  bes1 |
  % bar 110
  f1 |
  bes,2 r |
  f' r |
  bes, r |
  f4 es'8 es es4 d8 c |
  % bar 115
  d4 bes'8 bes bes4 a8 g |
  a4 es8 es es4 d8 c |
  d4 bes'8 bes bes4 a8 g |
  a4 f g a |
  bes bes, r2 |
  \bar "|."
}



violinoOnePart = \new Staff \with {
  instrumentName = "Violino I"
} \violinoOne

violinoTwoPart = \new Staff \with {
  instrumentName = "Violino II"
} \violinoTwo

continuoPart = \new Staff \with {
  instrumentName = "Basso Continuo"
} {
  \clef bass
  \continuo
}



\score {
  <<
    %    \violinoOnePart
    % \violinoTwoPart
    \continuoPart
  >>
}
