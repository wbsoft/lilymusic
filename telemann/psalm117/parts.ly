\version "2.13.1"

global = {
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
  \global
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
  
  es,8( g) bes( es) es( bes) g( es) r2 |
  es8( as) c( es) es( c) as( es) r2 |
  es8( g) bes( es) es( bes) g( es) r2 |
  f8( bes) d( f) f( d) bes( f) r2 |
  % bar 35
  g8( bes) es( g) g( es) bes( g) r2 |
  g8( bes) es( g) g( es) bes( g) r2 |
  b8( d) f( as) as( f) d( b) r2 |
  g8( c) es( g) g( es) c( g) r2 |
  g8( c) es( g) f( d) b( g) r2 |
  % bar 40
  es8( g) c( es) es( c) g( es) r2 |
  f8( bes) des( f) f( des) bes( f) r2 |
  es8( g) bes( des) des( bes) g( es) r2 |
  f8( bes) des( f) des( bes) g( es) r2 |
  c8( es) as( c) c( as) es( c) r2 |
  % bar 45
  d8( f) bes( d) d( bes) f( d) r2 |
  es8( as) c( es) es( c) as( es) r2 |
  es8( g) bes( es) es( bes) g( es) r2 |
  a8( c) f( a) a( f) c( a) r2 |
  f8( a) c( f) f( d) bes( f) r2 |
  % bar 50
  f8( bes) d( f) f( d) bes( f) r2 |
  es8( g) bes( es) es( bes) g( es) r2 |
  es8( as) c( es) es( c) as( es) r2 |
  R1. |
  r2 g g |
  % bar 55
  r g g |
  f8( bes) d( f) f( d) bes( f) r2 |
  es8( g) bes( es) es( bes) g( es) r2 |
  as r4 f g2 |
  r4 as \grace g2 f1\trill |
  % bar 60
  es1. |
  \bar "||"
  \globalThree 
  
}

\score {
  \violinoOne
}
