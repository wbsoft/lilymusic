\version "2.13.1"

\paper {
  indent = 2\cm
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
    \line {
      The organ realisation and all tempo and dynamic indications
      are editorial.
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

tempoMark = #(define-music-function (parser location text) (string?)
  #{
    \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
    \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
    \once \override Staff.KeySignature #'break-align-anchor-alignment = #LEFT
    \mark \markup \bold { $text }
  #})

globalOne = {
  \time 4/4
  \key bes \major
  \tempoMark #"Vivace"
  \partial 8
  % keep 32nd notes in their beams
  #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
  
  #(set-accidental-style 'modern)
}

globalTwo = {
  \bar "||"
  \key es \major
  \time 3/2
  \tempoMark #"Andante"
}

globalThree = {
  \bar "||"
  \key bes \major
  \time 2/2
  \tempoMark #"Allegro"
}

violinoOneMusic = \relative c'' {
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
  es,16 es es es g' g g g fis fis fis fis g g g g |
  g g g g fis fis fis fis g g, g32( a bes16) bes g bes32( c d16) |
  % bar 30
  d bes g32( a bes16) bes g d' g g4 r |
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

violinoTwoMusic = \relative c' {
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

continuoMusic = \relative c {
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

sopranoMusic = \relative c'' {
  \globalOne
  r8 |
  R1*9 |
  % bar 10
  r2 r4 r8 bes |
  bes( d16 c) bes8 bes bes( d16 c bes8) bes |
  g' f es4 d r |
  R1 |
  d8 c bes4 a c8 es |
  % bar 15
  d( bes c) es d16( c) d8 d f |
  e( c d) f e16( d) e8 g e |
  f4 f f f |
  f8 d e4 f c8 a |
  d4 c bes d |
  % bar 20
  e8 f e4 f r|
  R1 |
  r2 g8.( f32 es d8) c |
  bes16( d c es d8) c bes4( a16 g) a8 |
  g g16 a bes8 bes a a16 bes c8 c |
  % bar 25
  c r r4 r2 |
  r g'8.( f32 es d8) c |
  bes4( a16 g) a8 g4 d'~ |
  d c fis g |
  g fis g r |
  % bar 30
  R1 |
  \globalTwo
  r2 bes, bes |
  c4 c8 c c2 c |
  bes2 bes bes |
  as4( f') f( d) d bes |
  % bar 35
  bes2 bes4 bes as2 |
  g1 bes2 |
  b4 b b2 b( |
  c) c d |
  es d c |
  % bar 40
  c r r |
  des4 des des2 des |
  des( bes) c |
  des( bes1) |
  as r2 |
  % bar 45
  r bes bes |
  c4 c8 c c2 c |
  bes bes bes |
  a4( c) c( es) es g |
  f2. d8 bes e2 |
  % bar 50
  d1 d2 |
  es4 es bes2 des |
  c c d |
  es d1 |
  es r2 |
  % bar 55
  R1.*6 |
  \globalThree
  bes2 d |
  f1 |
  bes,2 r |
  R1 |
  % bar 65
  r2 es~ |
  es d |
  c2.( es4) |
  d d8 d d4( c8 bes) |
  c4 es8 es es4( d8 c) |
  % bar 70
  d4 d8 d d4( c8 bes) |
  c2 r |
  R1*6 |
  % bar 78
  r4 a8 a a4( g8 f) |
  g4 bes8 bes bes4( a8 g) |
  % bar 80
  a4 c8 c c4( bes8 a) |
  bes4 d g2~\melisma |
  g f~ |
  f es~ |
  es d~ |
  % bar 85
  d c~ |
  c bes\melismaEnd |
  a1 |
  g2 r |
  R1 |
  % bar 90
  r4 d'8 d d4( c8 bes) |
  c4 es8 es es4( d8 c) |
  d2 r |
  c es |
  g1 |
  % bar 95
  as,2 c |
  es1( |
  f,2 a) |
  c1~( |
  c2 b) |
  % bar 100
  c4 g'8 g g4( f8 e) |
  f2 r |
  r4 f8 f f4( es8 d) |
  es2 r |
  d1 |
  % bar 105
  c |
  bes( |
  a) |
  g |
  f2 bes~ |
  % bar 110
  bes a |
  bes4 d8 d d4( c8 bes) |
  c4 es8 es es4( d8 c) |
  d4 d8 d d4( c8 bes) |
  c2 r |
  % bar 115
  bes d |
  f1 |
  bes,2 bes4 d |
  f1 |
  bes,2 r |
  \bar "|."
}

altoMusic = \relative c'' {
  \globalOne
  r8 |
  R1*11 |
  % bar 12
  bes8 bes bes( a) bes4 r8 f |
  f( a16 g) f8 f f( a16 g f8) f |
  f f f( e) f4 f8 f |
  % bar 15
  f4 f f8 f f g |
  g4 g g8 g c c |
  c( bes a) d c( bes a) d |
  c bes g4 a a8 f |
  f4 f g g |
  % bar 20
  g8 a bes4 a r |
  R1 |
  r2 g4. fis8 |
  g4 g g( fis8) fis |
  g g16 fis g8 g f f16 g a8 a |
  % bar 25
  a r r4 r2 |
  r g4 g |
  g( fis8) fis g4 r |
  es'2. d4 |
  a a bes r |
  % bar 30
  R1 |
  \globalTwo
  r2 g g |
  as4 as8 as as2 as |
  g g g |
  f4 as as2 as |
  % bar 35
  g g4 g f2~ |
  f es es |
  as4 as as2 as |
  g g as |
  g g1 |
  % bar 40
  g2 r r |
  f4 f f2 f |
  g( bes) as |
  bes( g bes) |
  as es es |
  % bar 45
  f4 f8 f f2 es |
  es4 es8 es as2 es |
  es es e |
  f4 a a2 c |
  bes2. bes8 bes a2 |
  % bar 50
  bes1 bes2 |
  bes4 bes bes2 bes |
  as as as |
  g f( as) |
  g1 r2 |
  % bar 55
  R1.*6 |
  \globalThree
  R1*2 |
  g2 bes |
  d1 |
  % bar 65
  g,2. g4 |
  a2 bes(~ |
  bes a) |
  bes4 bes8 bes bes4( a8 g) |
  a4 a8 a a4( bes8 c) |
  % bar 70
  bes4 bes8 bes bes2 |
  a r |
  R1*6 |
  % bar 78
  r4 f8 f f4( e8 d) |
  e4 g8 g g4( f8 e) |
  % bar 80
  f4 a8 a a4( g8 fis) |
  g1 |
  a |
  g |
  f( |
  % bar 85
  es) |
  d4 d g2~ |
  g fis |
  g r |
  R1 |
  % bar 90
  r4 bes8 bes bes4( a8 g) |
  a4 c8 c c4( bes8 a) |
  bes2 r |
  r c4 c |
  des( des8 c des4 es8 des |
  % bar 95
  c4 c8 bes c4 as) |
  bes2 bes4 bes |
  a( a8 g f4 a |
  g g8 f g4 as8 g) |
  f4 f8 g f( es d f) |
  % bar 100
  e4 bes'8 bes bes4( a8 g) |
  a2 r |
  r4 as8 as as4( g8 f) |
  g2 r |
  r bes~ |
  % bar 105
  bes a~ |
  a g~ |
  g f~ |
  f es'~ |
  es d |
  % bar 110
  c1 |
  bes4 bes8 bes bes4( a8 g) |
  a4 c8 c c4( bes8 a) |
  bes4 bes8 bes bes4( a8 g) |
  a4 a2 c4 |
  % bar 115
  f,2 f~ |
  f4 a2 c4 |
  f,2 f |
  f4 f2 f4 |
  f2 r |
  \bar "|."
}

tenorMusic = \relative c' {
  \globalOne
  r8 |
  R1*11 |
  % bar 12
  es8 f g( f) f4 r |
  R1 |
  bes,8 c d( c) c4 c8 c |
  % bar 15
  bes( d c) c bes bes b d |
  c( e d) d d c e g |
  f4 f f f |
  f8 f c4 c f8 c |
  bes4 c d bes |
  % bar 20
  c8 c c4 c r8 a16( bes |
  c8) c c d c16( bes a bes c8) d |
  \appoggiatura c8 bes4 a d8( c d) es |
  r4 d8 es d4. c8 |
  bes4 r r r8 a16( bes |
  % bar 25
  c8) c c d c16( bes a bes c8) d |
  \appoggiatura c8 bes4 a d8( c d) es |
  d4 d d g~ |
  g g c, d |
  es d d r |
  % bar 30
  R1 |
  \globalTwo
  r2 es es |
  es4 es8 es es2 es |
  es es es |
  bes4 bes bes2. f'4 |
  % bar 35
  es2 es4 bes bes2 |
  bes1 bes2 |
  d4 d d2 d( |
  c) c c |
  c b c |
  % bar 40
  es c4 g' f2 |
  f f f |
  es1 es2 |
  f es des |
  c c c |
  % bar 45
  d4 d8 d d2 bes |
  as4 as8 as as2 as |
  bes bes bes |
  c4 f f2 a, |
  a f4 f f'2 |
  % bar 50
  f1 f2 |
  es4 es es2 es |
  es es f4( f,) |
  bes2 bes1 |
  bes r2 |
  % bar 55
  R1.*6 |
  \globalThree
  R1*7 |
  r4 f'8 f f2 |
  f4 f8 f f2 |
  % bar 70
  f4 f8 f f4 f
  f,2 a |
  c1 |
  f,2 r |
  R1 |
  % bar 75
  r2 bes~ |
  bes a |
  g2.( bes4) |
  a4 c8 c c2 |
  c4 c8 c c2 |
  % bar 80
  c r |
  d1 |
  d |
  bes~ |
  bes |
  % bar 85
  g2 g~ |
  g d'~ |
  d c |
  bes4 bes8 bes bes4( a8 g) |
  a4 c8 c c4( bes8 a) |
  % bar 90
  bes2 r |
  R1 |
  r4 f'8 f f4( es8 d) |
  es2 r |
  bes1 |
  % bar 95
  es |
  bes |
  c |
  es, |
  as2 g |
  % bar 100
  g r |
  r4 es'8 es es4( d8 c) |
  d2 r |
  r4 es8 es es4( d8) c |
  bes2 d |
  % bar 105
  f1 |
  g,2 bes( |
  d1) |
  es,2 g |
  bes f'~( |
  % bar 110
  f es) |
  d r |
  f r |
  f r |
  r4 c8 c c4( bes8 a) |
  % bar 115
  bes4 bes8 bes bes4( c8 d) |
  c4 c8 c c4( bes8 a) |
  bes4 d8 d d4( c8 bes) |
  c4 a bes c |
  d2 r |
  \bar "|."
}

bassMusic = \relative c' {
  \globalOne
  r8 |
  R1*11 |
  % bar 12
  es8 d c( f,) bes4 r |
  R1 |
  bes8 a g( c) f,4 a8 a |
  % bar 15
  bes4 a bes8 bes b b |
  c4 b c8 c c bes |
  a( d c) bes a( d c) bes |
  a bes c4 f, f8 f |
  bes4 a g g c8 c c4 f, r8 f16( g |
  % bar 20
  a8) a a bes a16( g f g a8) bes |
  \appoggiatura a8 g4 fis bes8( c bes) a |
  g( a bes) c d( c d) d, |
  g4 r r r8 f16( g |
  a8) a a bes a16( g f g a8) bes |
  % bar 25
  \appoggiatura a8 g4 fis bes8( a bes) c |
  d4. c8 bes4 bes8 bes |
  c4 c a bes |
  c d g, r4 |
  R1 |
  % bar 30
  \globalTwo
  r2 es es |
  as4 as8 as as2 as |
  es es es |
  d4 d d2 d |
  es es4 es d2 |
  % bar 35
  es1 g2 |
  f4 f f2 f |
  es es f |
  g1 g2 |
  c, c'4 c a2 |
  % bar 40
  bes bes bes |
  es, es as |
  des, es1 |
  as2 as as |
  as4 as8 as as2 g |
  % bar 45
  as4 as8 as as2 as |
  g g g |
  f4 f f2 es |
  d d4 d c2 |
  bes( bes') as |
  % bar 50
  g4 g g2 g |
  as as f |
  es bes'( bes,) |
  es1 r2 |
  R1.*6 |
  \globalThree
  R1*7 |
  r4 bes'8 bes bes2 |
  f4 f8 f f2 |
  % bar 70
  bes,4 bes'8 bes bes2 |
  f2 r |
  R1 |
  d2 f |
  a1 |
  % bar 75
  d,2. d4 |
  e2 f~( |
  f e) |
  f4 f8 f f2 |
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
  g4 g8 g g4( fis8 e) |
  fis4 a8 a a4( g8 fis) |
  % bar 90
  g2 r |
  R1 |
  r4 d'8 d d4( c8 b) |
  c2 r |
  bes1 |
  % bar 95
  as |
  g |
  f |
  es |
  d2 g |
  % bar 100
  c, r |
  r4 c'8 c c4( bes8 a) |
  bes2 r |
  r4 g8 g g4( bes8) a |
  bes2 d |
  % bar 105
  f1 |
  g,2 bes( |
  d1) |
  es,2 g |
  bes1 |
  % bar 110
  f |
  bes,2 r |
  f' r |
  bes, r |
  r4 es8 es es4( d8 c) |
  % bar 115
  d4 bes'8 bes bes4( a8 g) |
  a4 es8 es es4( d8 c) |
  d4 bes'8 bes bes4( a8 g) |
  a4 f g a |
  bes2 r |
  \bar "|."
}

organo = \relative c' {
  \globalOne
  <d f>8 |
  <d f> <d f> r <d f> <d bes'> <d bes'> r <d bes'> |
  << { g8 bes4 a8 } \\ { g f es4 } >> <d bes'>4 r8 <c g'> |
  <c a'> <c a'> r <c a'> <f a c> <f a c> r <f c'> |
  << { bes8 f4 bes8 } \\ { f es d4 } >> <c a'>4 <c a'>8 <f bes> |
  % bar 5
  <g bes>4 <f bes> <g bes>8 g16 a <g bes>8 <g c> |
  <a c>4 <g c> <a c>8 a16 g f8 <a c> |
  <g bes>4 << { c4 f, } \\ { f8 es d c } >> d <g bes> |
  <d bes'>4 <c a'> <f bes>8 <f a> <f bes> <f a>|
  << { bes4 c8 a } \\ { f8 d f4 } >> <f d'>8 <es c'> <d bes'> <es g> |
  % bar 10
  <d bes'>4 << a' \\ { c,8 es } >> <d bes'>4 r8 <d f> |
  <f bes> <f bes> r <f bes> <d bes'> <d bes'> r <d bes'> |
  << { g bes4 a8 } \\ { g f es4 } >> <d bes'> r8 <d f> |
  <c f> <c f> r <c f> <a f'> <a f'> r <a f'> |
  << { d f4 e8 } \\ { d c bes4 } >> <a f'> << { f'8 c' } \\ f,4 >> |
  % bar 15
  << { d'8 bes c <c, f> } \\ f4. >> <d bes'>4 << { g8 d' } \\ g,4 >> |
  << { e'8 c d <d, g> } \\ g4. >> <e c'>8. d'16 <g, e'>8 <e c'> |
  << { c' bes a d c bes a d } \\ { f,4. f8 f4. f8 } >> |
  <f c'> <d f bes> <e g>4 <c f a> <f a>8 <a c> |
  <f bes d>4 <f c'> <d g bes> <bes d g> |
  % bar 20
  <e g bes>8 <f a> <e g>4 <c f a>4 r8 <c f a> |
  <c f a>4 r8 <d f bes> <c f a>4 r8 <d a'> |
  << { a' g } \\ d4 >> <d fis> << { g4. c8 } \\ { d, es d fis } >> |
  << { bes c d <g, es'> } \\ g4. >> <g bes>8 r <fis a> r |
  <bes, d g>4 r8 <bes c g'> <a c f>4 r8 <a c f> |
  % bar 25
  <c f a>4 r8 <d f bes> <c f a>4 r8 <d a'> |
  << { a' g } \\ d4 >> <d fis> << { d'4. c8 } \\ { g fis g a } >> |
  <g bes>4 <fis a>8 <fis a es'> <g d'>4 <d g d'^~> |
  <es g d'> <es g c> <es fis c'> <d g bes> |
  <g a es'> <fis a d> <g bes d>8 r <d g bes> r |
  % bar 30
  <d g bes>4 <bes d g> <bes d g> r |
  \globalTwo
  <g bes>2 <g bes es> <bes es g> |
  <c es as> <c es> <c es as> |
  <bes es g> <g bes es> <bes es g> |
  <bes f'> <bes f' bes> <f' as bes> |
  % bar 35
  <es g bes> <bes es g> <bes f' as> |
  <bes f' g> <bes es g> <bes es bes'> |
  <d as' b> <d as' b> <d as' b> |
  <c g' c> <c g'> <c d as'> |
  << { g'1 <f g>2 } \\ { <c es> b2. c4 } \\ { s2 d } >> |
  % bar 40
  <c es g> <c es> <c f c'> |
  <des f c'> <des f bes> <des f as> |
  << { <es g> <g bes> } \\ des1 >> <c es as>2 |
  <f bes> <es g> <des g bes> |
  <c es as> <c es> <c es> |
  % bar 45
  <d f> <d f bes> <es bes'> |
  <es as c> <c es as> <es as c> |
  <es bes'> <es bes'> <bes e bes'> |
  <c f a> <f a c> <f a c> |
  << <f f'>1 \\ { c'2 bes } >> <f a es'> |
  % bar 50
  <f bes d> <d f bes> <f bes d> |
  <es bes' es> <es bes'> <es bes' des> |
  <es as c> <es as c> <as d> |
  <g bes es> << <bes d>1 \\ { f2 as } >> |
  <g bes es>1 r2 |
  % bar 55
  <c, es g>1 r2 |
  <d f>1 <d f>2 |
  <es g>1 <es g>2 |
  <d f as>2 r4 <d f> <es g>2 |
  r4 <f c'> << { bes2 as } \\ <d, f>1 >> |
  % bar 60
  <bes es g>1. |
  \globalThree
  <d f bes>2 r |
  r4 <f bes>8 <f bes> <f bes>4 <bes, f'> |
  <bes es g>2 r |
  r4 <d g>8 <d g> <d g>4 <d f> |
  % bar 65
  es4 <es g> <es g c> <es g> |
  <es a>2 << bes' \\ { d,4 f } >> |
  <c g' bes>2 <c f a> |
  <d f bes>4 <f bes d>8 <f bes d> <f bes d>2 |
  <f a c>4 <f a c>8 <f a c> <f a c>2 |
  % bar 70
  <d f bes>4 <f bes d>8 <f bes d> <f bes d>2 |
  <f a c>2 r |
  r4 <c f>8 <c f> <c f>4 <c es> |
  <bes d>2 r |
  r4 <d a'>8 <d a'> <d a'>4 <c a'> |
  % bar 75
  <bes d> <bes g'>8 <c a'> << bes'2 \\ { d,4 g8 f } >> |
  <e bes'>2 <f a>4 <f c'> |
  <f g d'>2 <e g c> |
  <f a>4 <c f a>8 <c f a> <c f a>2 |
  <c e g>4 <e g c>8 <e g c> <e g c>2 |
  % bar 80
  <f a c>2 r4 <fis a> |
  <d g bes>2 <d g d'> |
  <<
    {
      a'1 |
      g2 bes |
      f1 |
      % bar 85
      es |
      d2 g~ |
      g fis |
    }
    \\ {
      g2 f~ |
      f es~ |
      es d~ |
      % bar 85
      d c~ |
      c bes |
      <a d>1 |
    }
  >>
  <bes d g>2 r |
  <d fis a> r |
  % bar 90
  <d g bes>4 <d g bes>8 <d g bes> <d g bes>4 <bes d g> |
  <c f a> <c f a>8 <c f a> <f a c>4 <c f a> |
  <d f bes>2 <d f g b> |
  <es g c> <g c es> |
  <g des'>1 |
  % bar 95
  <es as c> |
  <es bes'> |
  <c f a> |
  <c g' c^~> |
  <f c'>2 <f b> |
  % bar 100
  <e g c>2 <e g bes> |
  <f a> r |
  <d f as> r |
  <es g> r |
  <<
    {
      d'1 |
      % bar 105
      c |
      bes |
      a |
      g2 es'~ |
      es d |
      % bar 110
      c1 |
    }
    \\ {
      f,2 bes~ |
      % bar 105
      bes a~ |
      <a d,> g~ |
      g f~ |
      f es |
      f <f bes>~ |
      % bar 110
      <f bes> <es a> |
    }
  >>
  <d f bes>2 r |
  <f a c> r |
  <f bes d> r |
  <f a c>4 <f a c>2 <f a c>4 |
  % bar 115
  <bes, f' bes> <f' bes d>8 <f bes d> << { d'4 c8 bes } \\ f2 >> |
  <f c'>4 <f a c>2 <f a c>4 |
  <bes, f' bes> <f' bes d>8 <f bes d> << { d'4 c8 bes } \\ f2 >> |
  <f c'>4 << f'2 \\ { <a, c>4 <g bes> } >> <f c' es>4 |
  <f bes d>2 r |
  \bar "|."
}

sopranoText = \lyricmode {
  Lau -- da -- te Je -- ho -- vam, om -- nes gen -- tes!
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes.
  om -- nes, om -- nes po -- pu -- li,
  om -- nes po -- pu -- li,
  om -- nes po -- pu -- li,
  om -- nes po -- pu -- li,
  om -- nes, om -- nes po -- pu -- li!
  Qui -- a va -- li -- da fac -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a e -- jus,
  et ve -- ri -- tas Do -- mi -- ni in æ -- ter -- num,
  in æ -- ter -- num, in __ æ -- ter -- num.
  Qui -- a va -- li -- da fac -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a e -- jus,
  et ve -- ri -- tas Do -- mi -- ni in æ -- ter -- num.
  Al -- le -- lu -- ia,
  \repeat unfold 20 { al -- le -- lu -- ia, }
  al -- le -- lu -- ia.
}

altoText = \lyricmode {
  om -- nes gen -- tes!
  Lau -- da -- te Je -- ho -- vam om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes.
  om -- nes, om -- nes po -- pu -- li,
  om -- nes po -- pu -- li,
  om -- nes po -- pu -- li,
  om -- nes po -- pu -- li,
  om -- nes po -- pu -- li!
  Qui -- a va -- li -- da fac -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a e -- jus,
  et ve -- ri -- tas Do -- mi -- ni in æ -- ter -- num,
  in æ -- ter -- num, in __ æ -- ter -- num.
  Qui -- a va -- li -- da,
  qui -- a va -- li -- da fac -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a e -- jus,
  et ve -- ri -- tas Do -- mi -- ni in æ -- ter -- num.
  Al -- le -- lu -- ia,
  \repeat unfold 16 { al -- le -- lu -- ia, }
  al -- le -- lu -- ia, __
  \repeat unfold 4 { al -- le -- lu -- ia, }
  al -- le -- lu -- ia, __
  al -- le -- lu -- ia,
  al -- le -- lu -- ia.
}

tenorText = \lyricmode {
  om -- nes gen -- tes!
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes.
  Lau -- di -- bus ef -- fer -- te
  om -- nes, om -- nes, 
  om -- nes po -- pu -- li!
  Lau -- di -- bus ef -- fer -- te
  om -- nes,
  om -- nes po -- pu -- li,
  om -- nes, 
  om -- nes po -- pu -- li!
  Qui -- a va -- li -- da fac -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a e -- jus,
  et ve -- ri -- tas Do -- mi -- ni in æ -- ter -- num,
  in æ -- ter -- num, in æ -- ter -- num, in æ -- ter -- num.
  Qui -- a va -- li -- da,
  qui -- a va -- li -- da fac -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a e -- jus,
  et ve -- ri -- tas Do -- mi -- ni in æ -- ter -- num.
  Al -- le -- lu -- ia,
  \repeat unfold 22 { al -- le -- lu -- ia, }
  al -- le -- lu -- ia.
}

bassText = \lyricmode {
  om -- nes gen -- tes!
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes,
  om -- nes gen -- tes,
  om -- nes, om -- nes gen -- tes.
  Lau -- di -- bus ef -- fer -- te
  om -- nes, om -- nes, 
  om -- nes po -- pu -- li!
  Lau -- di -- bus ef -- fer -- te
  om -- nes,
  om -- nes po -- pu -- li,
  om -- nes,
  om -- nes,
  om -- nes po -- pu -- li!
  Qui -- a va -- li -- da fac -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a e -- jus,
  et ve -- ri -- tas Do -- mi -- ni in æ -- ter -- num,
  in æ -- ter -- num, in æ -- ter -- num, in æ -- ter -- num.
  Qui -- a va -- li -- da,
  qui -- a va -- li -- da fac -- ta est
  su -- per nos mi -- se -- ri -- cor -- di -- a e -- jus, __
  et ve -- ri -- tas Do -- mi -- ni in æ -- ter -- num.
  Al -- le -- lu -- ia,
  \repeat unfold 23 { al -- le -- lu -- ia, }
  al -- le -- lu -- ia.
}

violinoOneDynamics = \tag #'dynamics {
  s8\mf |
  s1*30 |
  s1.\p |
  s1.*12 |
  s1.\mp |
  s1.*9 |
  s2 s\p s |
  s1.*6 |
  s1*7 |
  s4 s\f s s |
  s1*43 |
  s1\mf |
  s1*2 |
  s1\f
}

violinoTwoDynamics = \tag #'dynamics {
  s8\mf |
  s1*30 |
  s1 s2\p |
  s1.*12 |
  s1 s2\mp |
  s1.*9 |
  s2 s\p s |
  s1.*6 |
  s1*7 |
  s4 s\f s s |
  s1*43 |
  s1\mf |
  s1*2 |
  s1\f
}

continuoDynamics = \tag #'dynamics {
  s8\mf |
  s1*19 |
  s2.. s8\mp |
  s1 |
  s2 s\mf |
  s1 |
  s4. s8\mp s2 |
  s1 |
  s2 s\mf |
  s1*4 |
  s1.\p |
  s1.*12 |
  s2 s1\mp |
  s1.*10 |
  s1.\p |
  s1.*5 |
  s1\mf |
  s1*6 |
  s4 s\f s s |
  s1*3 |
  s4 s2.\mf |
  s1*5 |
  s4 s2.\f |
  s1*10 |
  s1\mp |
  s1*3 |
  s2 s\f |
  s1*6 |
  s4 s2.\mf |
  s1*3 |
  s1\f |
  s1*7 |
  s1\mf
  s1*2 |
  s1\f
}

sopranoDynamics = \tag #'dynamics {
  s8 |
  s1*9 |
  s2.. s8\mf |
  s1*13 |
  s8 s2..\mp |
  s1 |
  s2 s\mf |
  s1*4 |
  s2 s1\p |
  s1.*13 |
  s2 s\mp s |
  s1.*15 |
  s1\mf |
  s1*6 |
  s4 s2.\f |
  s1*21 |
  s4 s2.\mp |
  s1*2 |
  s1\f |
  s1*6 |
  s4 s2.\mf |
  s1*3 |
  s1\f |
  s1*6 |
  s4 s2.\mf |
  s1*3 |
  s1\f
}

altoDynamics = \tag #'dynamics {
  s8 |
  s1*11 |
  s1\mf |
  s1*11 |
  s8 s2..\mp |
  s1 |
  s2 s\mf |
  s1*4 |
  s2 s1\p |
  s1.*12 |
  s2 s\mp s |
  s1.*16 |
  s1*2
  s1\mf |
  s1*4 |
  s4 s2.\f |
  s1*21 |
  s4 s2.\mp |
  s1*2 |
  s2 s\f |
  s1*6 |
  s4 s2.\mf |
  s1*3 |
  s2 s\f |
  s1*6 |
  s4 s2.\mf |
  s1*3 |
  s1\f
}

tenorDynamics = \tag #'dynamics {
  s8 |
  s1*11 |
  s1\mf |
  s1*7 |
  s2.. s8\mp |
  s1 |
  s2 s\mf |
  s1 |
  s2.. s8\mp |
  s1 |
  s2 s\mf |
  s1*4 |
  s2 s1\p |
  s1.*12 |
  s2 s\mp s |
  s1.*16 |
  s1*7
  s4 s2.\f |
  s1*2 |
  s1\mf |
  s1*6 |
  s4 s2.\f |
  s1*9 |
  s4 s2.\mp |
  s1*5 |
  s1\f |
  s1*6 |
  s4 s2.\mf |
  s1*2 |
  s1\f |
  s1*7 |
  s1\mf |
  s1*2 |
  s1\f
}

bassDynamics = \tag #'dynamics {
  s8 |
  s1*11 |
  s1\mf |
  s1*7 |
  s2.. s8\mp |
  s1 |
  s2 s\mf |
  s1 |
  s2.. s8\mp |
  s1 |
  s2 s\mf |
  s1*4 |
  s2 s1\p |
  s1.*12 |
  s2 s\mp s |
  s1.*16 |
  s1*7
  s4 s2.\f |
  s1*4 |
  s1\mf |
  s1*4 |
  s4 s2.\f |
  s1*9 |
  s4 s2.\mp |
  s1*5 |
  s1\f |
  s1*6 |
  s4 s2.\mf |
  s1*2 |
  s1\f |
  s1*7 |
  s1\mf |
  s1*2 |
  s1\f
}

violinoOne = << \violinoOneMusic \violinoOneDynamics >>
violinoTwo = << \violinoTwoMusic \violinoTwoDynamics >>
continuo = << \continuoMusic \continuoDynamics >>
soprano = << \dynamicUp \sopranoMusic \sopranoDynamics >>
alto = << \dynamicUp \altoMusic \altoDynamics >>
tenor = << \dynamicUp \tenorMusic \tenorDynamics >>
bass = << \dynamicUp \bassMusic \bassDynamics >>

violinoOnePart = \new Staff \with {
  instrumentName = "Violino I"
} \violinoOne

violinoTwoPart = \new Staff \with {
  instrumentName = "Violino II"
} \violinoTwo

continuoPart = \new Staff \with {
  instrumentName = \markup \center-column { Basso Continuo }
} {
  \clef bass
  \continuo
}

sopranoPart = \new Staff \with {
  instrumentName = #"Soprano"
} { \soprano } \addlyrics { \sopranoText }

altoPart = \new Staff \with {
  instrumentName = #"Alto"
} { \alto } \addlyrics { \altoText }

tenorPart = \new Staff \with {
  instrumentName = #"Tenore"
} { \clef "treble_8" \tenor } \addlyrics { \tenorText }

bassPart = \new Staff \with {
  instrumentName = #"Basso"
} { \clef bass \bass } \addlyrics { \bassText }

choirPart = \new ChoirStaff <<
  \sopranoPart
  \altoPart
  \tenorPart
  \bassPart
>>

organoPart = \new PianoStaff \with {
  instrumentName = #"Organo"
}  <<
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol #'staff-space = #(magstep -1)
    \override TimeSignature #'font-size = #2
  } \organo
  \new Staff { \clef bass \dynamicUp \continuo }
>>

%%master: telemann-psalm117-fullscore.ly
