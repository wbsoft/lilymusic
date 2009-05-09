\version "2.12.0"

\paper {
%   ragged-last-bottom = ##f
}

\header {
  title = "Aria \"Schlümmert ein\""
  subtitle = "from Cantata 82"
  composer = "Johann Sebastian Bach"
}

global = {
  \key es \major
  \time 4/4
  #(set-accidental-style 'modern)
  \set beatLength = #(ly:make-moment 1 2)
  \set Score.skipBars = ##t
}

apup = #(define-music-function (parser location note) (ly:music?)
#{
  \once \override Slur #'extra-offset = #'(-.6 . 1)
  \once \override Slur #'rotation = #'(-10 0 0)
  \hideNotes \appoggiatura $note \unHideNotes 
#})

violinoOne = \relative c'' {
  \global
  g8( as4) g16 f es4 r8 es |
  des'( c4) bes8 c( bes4) as16 g |
  as8( es') d( c) bes( as) g( f) |
  es( d) es( as) \apup g4 f4  r |
  % bar 5
  f8( as4) g16 f g4 r |
  bes,8( des4) c16 bes c4 r8 f |
  e( des') c( bes) \apup bes4 as8( g) as4~ |
  as8 (es d\trill c) bes( d f as) |
  g( f) d( es) es2~ |
  % bar 10
  es4 d es2~ |
  es1 |
  c4 as'2 d,4 |
  es4. f8 d4 r |
  d'8(\p f4) es16 d es8( c) bes( as) |
  % bar 15
  g( bes4) as16 g as8 c( d es) |
  f( as,4) g16 f es4 r8 es |
  des'( c4) bes8 c( bes4) as16 g |
  as8( es') d( c) bes( as) g( f) |
  es( d) es( as) \apup g4 f4\fermata  r |
  % bar 20
  f8( as4) g16 f g4 r |
  bes,8( des4) c16 bes c4 r8 f |
  e( des') c( bes) as(\trill g) as4~ |
  as8 es( d c) bes( d f as) |
  g( f) d( es) es( des) r des |
  % bar 25
  des( c) r c c( bes)\fermata r4 |
  R1 |
  R1 |
  g'8(\f as4) g16 f es4 r8 es |
  des'( c4) bes8 c( bes4) as16 g |
  % bar 30
  as8( es') d( c) bes( as) g( f) |
  es( d) es( as) \apup g4 f4  r |
  f8( as4) g16 f g4 r |
  bes,8( des4) c16 bes c4 r8 f |
  e( des') c( bes) as( g) as4~ |
  % bar 35
  as8 (es d c) bes( d f as) |
  g( f) d( es) es2\fermata | % FINE.
  R1*12 |
  g8(\p as4) g16 f es4 r8 es |
  % bar 50
  des'( c4) bes8 c( bes4) as16 g |
  as8( es') d( c) bes( as) g( f) |
  es( d) es( as) \apup g4 f4  r |
  f8( as4) g16 f g8 es( d c) |
  bes( des4) c16 bes c8 c'( d es) |
  % bar 55
  f( as,4) g16 f es4 r8 es |
  des'( c4) bes8 c( bes4) as16 g |
  as8( es') d( c) bes( as) g( f) |
  es( d) es( as) \apup g4 f4\fermata  r |
  f8( as4) g16 f g4 r |
  % bar 60
  bes,8( des4) c16 bes c4 r8 f |
  e( des') c( bes) as( g) as4~ |
  as8 es( d c) bes( d f as) |
  g( f) d( es) es( des) r des |
  des( c) r c c( bes)\fermata r4 |
  % bar 65
  R1 |
  r2 bes16(\pp c des4) c16( bes) |
  c8 c'16( bes as[ g f es]) d( es f4) es16( d) |
  es4 r r2 |
  R1*4 |
  % bar 73
  r2 c'16(\pp des es4) des16( c) |
  des4 r g,16( as bes4) as16( g) |
  % bar 75
  as2~ as8 des16(\f c bes[ as g f]) |
  e'8( f) f,( bes) as( g) e( f) |
  f\p as c4~ c8 bes( g as) |
  bes2~ bes8 as( e f) |
  g2~ g8 f f'( es) |
  % bar 80
  d( es) f4~ f8 b,( c d) |
  g, r r4 r2 |
  r g16(\p as bes4) as16( g) |
  as4 r d,16( es f4) es16( d) |
  es1~\pp |
  % bar 85
  es8( des) des( c) c2 |
  \bar "|."
}

violinoTwo = \relative c' {
  \global
  es4 d es2~ |
  es1 |
  c4 as'~ as8 c( bes as) |
  g4. f8 \apup es4 d4 r |
  % bar 5
  d8( f4) es16 d es4 r |
  g,8( bes4) as16 g as2 |
  bes4 c~ c d8( es) |
  f1 |
  es8 c bes bes bes2~ |
  % bar 10
  bes4 as g4. as8 |
  bes8( c4) des8 c( es) g4~ |
  g8 c,( d es) f2 |
  c bes4 r |
  f'8(\p as4) g16 f g8( as) g( f) |
  % bar 15
  es8( des4) c16 bes c8 es( f g) |
  as( f4) es16 d es2~ |
  es1 |
  c4 as'~ as8 c( bes as) |
  g4. f8 \apup es4 d4\fermata r |
  % bar 20
  d8( f4) es16 d es4 r |
  g,8( bes4) as16 g as2 |
  bes4 c~ c d8( es) |
  f1 |
  es8 c bes bes bes4 r8 bes |
  % bar 25
  bes( as) r as as( g)\fermata r4 |
  R1 |
  R1 |
  es'4\f d es2~ |
  es1 |
  % bar 30
  c4 as'~ as8 c( bes as) |
  g4. f8 \apup es4 d4 r |
  d8( f4) es16 d es4 r |
  g,8( bes4) as16 g as2 |
  bes4 c~ c d8( es) |
  % bar 35
  f1 |
  es8 c bes bes bes2\fermata |
  R1*12 |
  es4\p d es2~ |
  % bar 50
  es1 |
  c4 as'~ as8 c( bes as) |
  g4. f8 \apup es4 d4 r |
  d8( f4) es16 d es8( c) bes( as) |
  g( bes4) as16 g as8 es'( f g) |
  % bar 55
  as( f4) es16 d es2~ |
  es1 |
  c4 as'~ as8 c( bes as) |
  g4. f8 \apup es4 d4\fermata r |
  d8( f4) es16 d es4 r |
  % bar 60
  g,8( bes4) as16 g as2 |
  bes4 c2 d8( es) |
  f1 |
  es8 c bes bes bes4 r8 bes |
  bes( as) r as as( g)\fermata r4 |
  % bar 65
  R1 |
  r2 g16(\pp as bes4) as16( g) |
  as2~ as8 d4 bes16( as) |
  bes4 r r2 |
  R1*4 |
  % bar 73
  r2 a'16(\pp bes c4) bes16( a) |
  bes4 r e,16( f g4) f16( e) |
  % bar 75
  f2~ f8 f16(\f es des[ c bes as]) |
  g8 c f4~ f8 des c c |
  c4\p r8 f f4 r8 f~ |
  f des es4~ es8 f( g as) |
  bes4 r8 e, c2~ |
  % bar 80
  c8 b c f d4 es8( f) |
  g8 r r4 r2 |
  r e16(\p f g4) f16( e) |
  f4 r b,16( c d4) c16( b)|
  c2\pp bes |
  % bar 85
  as8( bes) bes( as) as2 |
  \bar "|."
}

marks = {
  s1*35
  s2 \mark \markup \italic Fine. s
  s1*47
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark \markup \bold Adagio.
  s1*2
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  \mark \markup \italic { Da Capo. }
}

violinoOnePart = \new Staff \with {
  instrumentName = #"Violino I."
} \new Voice << \violinoOne \marks >>

violinoTwoPart = \new Staff \with {
  instrumentName = #"Violino II."
} \new Voice << \violinoTwo \marks >>

\score {
  <<
    \violinoOnePart
    \violinoTwoPart
  >>
}

