\version "2.12.0"
% #(set-global-staff-size 16)
\paper {
  ragged-last-bottom = ##f
}

\header {
  title = "Aria \"Schlummert ein\""
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

viola = \relative c' {
  \global
  bes4 bes g4. c8 |
  bes( as4) g8 as( g4) bes8 |
  f'2. d4 |
  es4. c8 bes4 r |
  % bar 5
  f' d bes2~ |
  bes4 g es c' |
  bes8( as) g4 f8( es) d( c) |
  bes'1~ |
  bes8 as4( g8) g2~ |
  % bar 10
  g4 f c'2 |
  bes8( as4) g8 as( g) bes4 |
  as4. g8 f4 bes8( as) |
  g4. c,8 f4 r |
  f'\p d bes r |
  % bar 15
  bes g es r |
  bes' d8 bes g4. c8 |
  bes( as4) g8 as( g4) bes8 |
  f'2. d4 |
  % bar 20
  es4. c8 bes4\fermata r |
  f' d bes2~ |
  bes4 g es c' |
  bes8( as) g4 f8( es) d( c) |
  bes'1~ |
  % bar 25
  bes8 as4( g8) g4 r8 g |
  g( es) r es es4\fermata r |
  R1 |
  R1 |
  bes'4\f bes g4. c8 |
  % bar 30
  bes( as4) g8 as( g4) bes8 |
  f'2. d4 |
  es4. c8 bes4 r |
  f' d bes2~ |
  bes4 g es c' |
  % bar 35
  bes8( as) g4 f8( es) d( c) |
  bes'1~ |
  bes8 as4( g8) g2\fermata |
  R1*12 |
  bes4\p bes g4. c8 |
  % bar 50
  bes( as4) g8 as( g4) bes8 |
  f'2. d4 |
  es4. c8 bes4 r |
  f' d bes2~ |
  bes4 g as8 g( as bes) |
  f d'4 bes8 g4. c8 |
  % bar 55
  bes( as4) g8 as( g4) bes8 |
  f'2. d4 |
  es4. c8 bes4\fermata r |
  f' d bes2~ |
  bes4 g es c' |
  % bar 60
  bes8( as) g4 f8( es) d( c) |
  bes'1~ |
  bes8 as4( g8) g4 r8 g |
  g( es) r es es4\fermata r |
  R1 |
  % bar 65
  r2 bes'4\pp g |
  es2 f16( g as4) g16( f) |
  g4 r r2
  R1*4 |
  % bar 73
  r2 r8 f(\pp a c) |
  f4 r r8 e,( g c) |
  % bar 75
  f as16(\f g f[ es des c]) des8( bes) f( d') |
  c4. bes8 c( des) g,( as) |
  as4\p r8 c des4 r8 f |
  bes,4 es, as8( c) bes( as) |
  g4 r8 c c,4 r8 g' |
  % bar 80
  as8( g) f( as) g( d') c( b) |
  c8 r r4 r2 |
  r r8 e,( g c) |
  f4 r r8 d( b g) |
  c,4.\pp des8 es4 g |
  % bar 85
  as8( f) g( es) es2 |
  \bar "|."
}

continuo = \relative c {
  \global
  es8-. bes( bes bes) c-. c'( bes as) |
  g-. es( es es) as-. es( es es) |
  f-. g( f es) d-. bes( bes bes) |
  c( bes) c( as) bes bes' f d |
  % bar 5
  bes-. bes( bes bes) es, es' bes g |
  es-. es( es es) as-. c( bes as) |
  g( f e ) c-. f-. c'( f es) |
  d( c) bes( c) d-. bes( bes bes) |
  es-. as,( bes) bes es, es' bes g |
  % bar 10
  es( es) bes'( bes) c,-. c'( bes as) |
  g-. es( es es) as-. es( es es) |
  f'-. g( f es) d-. bes( bes bes) |
  c( bes) c( as) bes bes' f d |
  bes-. bes( bes bes) es es, g bes |
  % bar 15
  es-. es,( es es) as-. g'( f es) |
  d-. bes( bes bes) c-. c'( bes as) |
  g-. es( es es) as-. es( es es) |
  f-. g( f es) d-. bes( bes bes) |
  c( bes) c( as) bes4\fermata r |
  % bar 20
  bes8-. bes( bes bes) es, es' bes g |
  es-. es( es es) as-. c( bes as) |
  g( f e ) c-. f-. c'( f es) |
  d( c) bes( c) d-. bes( bes bes) |
  es-. as,( bes) bes es, es' bes g |
  % bar 25
  es es' c as es4\fermata r |
  as'8( g) f( es) d( c) d( bes) |
  g c as bes es es, g bes |
  es-. bes( bes bes) c-. c'( bes as) |
  g-. es( es es) as-. es( es es) |
  % bar 30
  f-. g( f es) d-. bes( bes bes) |
  c( bes) c( as) bes bes' f d |
  bes-. bes( bes bes) es, es' bes g |
  es-. es( es es) as-. c( bes as) |
  g( f e ) c-. f-. c'( f es) |
  % bar 35
  d( c) bes( c) d-. bes( bes bes) |
  es-. as,( bes) bes es,\fermata es' bes g |
  es es'( d c) d-. bes( a g) |
  c-. f,( g a) bes bes' f d |
  bes-. d( c bes) a a' d, g |
  % bar 40
  c,( d) es( c) d( c) bes( a) |
  g g' es c f, f' c a |
  f f' d bes es, es' bes g |
  es es' a, c d( c bes) es |
  d c d d, g a bes c~ |
  % bar 45
  c bes es, d c-. c'( bes a) |
  g( a) b( c) d g b, g |
  c-. bes( a g) fis d g c |
  d( c d) d,-. g-. bes( c d) |
  es-. bes( bes bes) c-. c'( bes as) |
  % bar 50
  g-. es( es es) as-. es( es es) |
  f-. g( f es) d-. bes( bes bes) |
  c( bes) c( as) bes bes' f d |
  bes-. bes( bes bes) es es, g bes |
  es-. es,( es es) as-. g'( f es) |
  % bar 55
  d-. bes( bes bes) c-. c'( bes as) |
  g-. es( es es) as-. es( es es) |
  f-. g( f es) d-. bes( bes bes) |
  c( bes) c( as) bes4\fermata r |
  bes8-. bes( bes bes) es, es' bes g |
  % bar 60
  es-. es( es es) as-. c( bes as) |
  g( f e ) c-. f-. c'( f es) |
  d( c) bes( c) d-. bes( bes bes) |
  es-. as,( bes) bes es, es' bes g |
  es es' c as es4\fermata r |
  % bar 65
  as'8-. g( f es) d( c) d( bes) |
  g c as bes es es, g bes |
  es es, as c es-. es,( es es) |
  es-. es( es es) es-. es'( d c) |
  b-. b( b b) c-. c'( bes as) |
  % bar 70
  g-. g( g g) as-. as,( bes c) |
  des-. c( bes as) es' bes( g es) |
  e-. e( e e) f-. es'( des c) |
  bes b( c) c, f4 r |
  r8 f' des bes f4 r |
  % bar 75
  r8 c'' as f bes,-. bes( bes bes) |
  bes( as) des( des) c( bes c) c-. |
  f-. f,( f f) bes-. f'( bes as) |
  g-. g,( g g) as-. as'( g f) |
  e-. c( c c) f c as c |
  % bar 80
  f( g as) f-. g-. f( es d) |
  c( bes) as( g) f( es) d( c) |
  as' f( g) g c,4 r |
  r8 c' as f c4 r |
  r8 c'(\pp bes as) g-. es( es es) |
  as des es es, as2 |
  \bar "|."
}

basso = \relative c' {
  \global
  \autoBeamOff
  R1*9 |
  g8( as4) g16[ f] es4 r8 es |
  des'( c4) bes8 c( bes4) as16[( g]) |
  as8([ es']) d[( c]) bes[( as]) g[( f]) |
  es[( d es]) as \apup g4 f4 bes,~ |
  bes bes bes es~ |
  es es es r |
  bes8( as'4) g16[ f] es4 r8 es |
  des'( c4) bes8 c( bes4) as16[( g]) |
  as8([ es']) d[( c]) bes[( as]) g[( f]) |
  es[( d es]) as \apup g4 f4\fermata r |
  bes,1~\melisma |
  bes16[ c] des4\melismaEnd c8 c4 r8 f |
  e[ des'] c[ bes] as[ g] as4~ |
  as8 es[ d] c bes[ d] f[ as] |
  g[ f] d[ es] es2~\melisma |
  es~ es8[ des]\fermata\melismaEnd r4 |
  c'16[ bes as8]~ as16[ g f8]~ f es16[ d] c8[ bes]~ |
  bes as'16[ g] c[ bes] as[ g] \appoggiatura f8 es4 r |
  R1*9 |
  g4. a8 bes( f4) g8 |
  es a[ bes c] es,4( d8) r |
  d'4. g,8 fis16[ a c8] r bes |
  a[ fis] g[ a] d,4 r |
  r8 bes'16[( a bes8]) es es[ c] \apup bes4 a4 |
  r8 a16[( g a8]) d d[ bes] \apup a4 g4 |
  r8 c16[( bes c8]) a fis a d c |
  bes4( a)\trill g d'8 g, |
  fis g c bes es,[ d] g16[( a]) bes[( c]) |
  d8 f, g as c,[ b] f'4~ |
  f8 e fis g d[( c']) bes[ a] |
  g4( fis8.[\trill g16]) g4 r |
  %%
  g8( as4) g16[ f] es2~ |
  es2. r4 |
  R1 |
  r2 r4 bes~ |
  bes bes bes es~ |
  es es es r |
  bes8( as'4) g16[ f] es4 r8 es |
  des'( c4) bes8 c( bes4) as16[( g]) |
  as8([ es']) d[( c]) bes[( as]) g[( f]) |
  es[( d es]) as \apup g4 f4\fermata r |
  bes,1~\melisma |
  bes16[ c] des4\melismaEnd c8 c4 r8 f |
  e[( des']) c[ bes] as[ g] as4~ |
  as8 es[ d] c bes[ d] f[ as] |
  g[ f] d[ es] es2~\melisma |
  es~ es8[ des]\fermata\melismaEnd r4 |
  c'16[ bes as8]~ as16[ g f8]~ f es16[ d] c8[ bes]~ |
  bes as'16[ g] c[ bes] as[ g] \appoggiatura f8 es4 r |
  R1 |
  
}

bassoText = \lyricmode {
  Schlum -- mert ein,
  ihr mat -- ten Au -- gen,
  fal -- let sanft und se -- lig zu,
  schlum -- mert ein,
  schlum -- mert ein,
  schlum -- mert ein,
  ihr mat -- ten Au -- gen,
  fal -- let sanft und se -- lig zu,
  schlum -- mert ein,
  ihr mat -- ten Au -- gen, __
  fal -- let sanft und se -- lig zu, __
  fal -- let sanft __ und se -- lig zu.
  Welt, ich blei -- be nicht mehr hier,
  hab' ich doch kein Theil an dir,
  das der See -- le könn -- te tau -- gen,
  das der See -- le könn -- te tau -- gen;
  Welt, ich blei -- be nicht mehr hier,
  hab' ich doch kein Theil an dir,
  das __ der See -- le könn -- te tau -- gen.
  Schlum -- mert ein, __
  schlum -- mert ein,
  schlum -- mert ein,
  schlum -- mert ein,
  ihr mat -- ten Au -- gen,
  fal -- let sanft und se -- lig zu,
  schlum -- mert ein,
  ihr mat -- ten Au -- gen, __
  fal -- let sanft und se -- lig zu, __
  fal -- let sanft __ und se -- lig zu.
  
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

violaPart = \new Staff \with {
  instrumentName = #"Viola."
} \new Voice << \clef alto \viola \marks >>

continuoPart = \new Staff \with {
  instrumentName = #"Continuo."
} \new Voice << \clef bass \continuo \marks >>

bassoPart = <<
  \new Staff \with {
    instrumentName = #"Basso."
  } \new Voice = "basso" << \clef bass \basso \marks >>
  \new Lyrics \lyricsto "basso" \bassoText
>>
  
\book { \score { \continuoPart } }
\book { \score { \violinoOnePart } }
\book { \score { \violinoTwoPart } }
\book { \score { \violaPart } }

