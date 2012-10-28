\version "2.14.2"

#(set-global-staff-size 18)

\paper {
  indent = 10\mm
  ragged-last-bottom = ##f
}

\header {
  title = "Thême italien"
  subtitle = "varie pour la guitare"
  composer = "Ferdinando Carulli (1770 – 1841)"
  arranger = "Beiaardbewerking: Wilbert Berendsen 2012"
}

man = { \change Staff = "man" }
ped = { \change Staff = "ped" }

mkscore = #
(define-music-function (parser location upper lower pedal)
  (ly:music? ly:music? ly:music?)
  #{
    \new PianoStaff <<
      \new Staff = "man" <<
        #(set-accidental-style 'modern)
        $upper
        $lower
      >>
      \new Staff = "ped" <<
        \clef bass
        #(set-accidental-style 'modern)
        $pedal
      >>
    >>
  #})

%%% thema
globalT = {
  \mark "Thême."
  \tempo "Andante non troppo."
  \key c \major
  \time 2/4
  \partial 8
}

upperT = \relative c'' {
  \globalT
  r16\f g
  | \voiceOne e'8. f16 d8. e16
  | c4 \oneVoice g8 r16 g
  | \voiceOne f'8. g16 e8. f16
  | d4 \oneVoice g,8 r16 g
  | \voiceOne <g' e>8. a16 <f d>8. g16
  | <e c>8. f16 d8. e16
  | c16. g32 e16. g32 <e' c>8 <d b>
  | <d b>4( c8)
  \oneVoice r16 g\p
  | \voiceOne f'8. g16 e8. f16
  | d4 g,8 r16 g
  | <es' c>8. <es c>16 <es c>8. <es c>16
  | <es c>4(\cresc <d b>8)
  r16 g,\f
  | e'8. f16 d8. e16
  | c8. b16 a16. b32 c16. d32
  | <e c>4 <e c>8 <d b>
  | <d b>4( c8)
  \bar "||"
}

lowerT = \relative c'' {
  \globalT
  s8
  | \voiceTwo g4 g
  | <g c,>4 s4
  | b4 g
  | <d g b>4 s4
  | s2
  | s4 <f a>
  | s4 g8 f
  | f4( e8)
  s8
  | d'4 c
  | b4 s
  | r8 as g fis
  | \once \override Beam #'positions = #'(-3.5 . -4) g8 \voiceOne \ped g, \man \voiceTwo g'
  s8
  | g4 gis 
  | a4 f
  | g4 g8 f
  | f4( e8)  
}

basT = \relative c' {
  \globalT
  r8
  | c4 g
  | e4 r
  | g4 c
  | g4 r
  \showStaffSwitch
  | c4 \man \voiceTwo gis'
  | a4 \ped \oneVoice f,
  | g4 g8 g
  | c8 g c
  r8
  | g8 r g r
  | r8 g b g
  | R2
  | r8 s r4
  | c4 b
  | a4 f
  \hideStaffSwitch
  | g16. c32 \man \voiceTwo e16.[ g32] \oneVoice \ped g,8 g
  | c8 g c  
}

\score { \mkscore \upperT \lowerT \basT }

%%% var 1

globalI = {
  \mark "1. Var."
  \time 2/4
  \key c \major
  \partial 8
}

upperI = \relative c' {
  \globalI
  fis16_\markup\italic dolce g
  | \voiceOne e'16 g f e d f e d 
  | \oneVoice c16 b c a g8 \voiceOne r \oneVoice
  | f'16-. d-. g( f) e-. c-. f( e)
  | d16 c b a \voiceOne g8 r \oneVoice
  | g'16 e a( g) f d g( f)
  | e16\cresc c f( e) d a e'( d)
  | c16 g e g <e' c> g, <d' b> g,
  | \voiceOne <d' b>4(\f c8)\noBeam
  \oneVoice fis,16_\markup\italic dolce g
  | f'16 d g( f) e c f( e)
  | d16 c b a g8 \voiceOne r
  | c16 es c es c es c es
  | <es c>16 d c es <d b>8 \oneVoice r
  | \voiceOne e16 g f e d 
  \once\override DynamicLineSpanner #'Y-extent = #'(0 . 0)
  f\cresc e d
  | c16 b c b a b c d
  | <e c>4\f <e c>16 g, <d' b> g,
  | <d' b>4( c8)
  \bar "||"
}

lowerI = \relative c'' {
  s8
  \voiceTwo
  | c4 b
  | s2*6
  | f4( e8) s8
  | s2*4
  | c'4 gis
  | a4 f
  | s2
  | f4( e8)
}


basI = \relative c' {
  \globalI
  r8
  | c4 g
  | c4 \voiceOne e,16 g \man \voiceTwo c e
  | \ped \oneVoice g,4 c
  | g4~ \voiceOne g16 \man \voiceTwo f' e d
  | \ped \oneVoice c4 g
  | a4 f
  | g4 g8 g
  | c16 g a b c8
  r8
  | g4 g
  | g4~ \voiceOne g16 \man \voiceTwo f' e d
  | \ped \voiceOne c8 \man \voiceTwo as' \ped \oneVoice g fis
  | g4 \man \voiceTwo g16 d \ped b g \oneVoice
  | c4 b 
  | a4 f
  | \voiceTwo g16 c \man e g \ped \oneVoice g,8 g
  | c16 g a b c8
}

\score { \mkscore \upperI \lowerI \basI }

%%%%% var 2

pn = #
(define-music-function (parser location n1 n2 n3)
  (ly:music? ly:music? ly:music?)
  #{
    \ped
    \voiceOne
    $n1
    \man
    \voiceTwo
    $n2
    $n3
    \oneVoice
  #})

globalII = {
  \mark "2. Var."
  \tempo "Più mosso."
  \key c \major
  \time 2/4
  \partial 8
}

varII = \relative c'' {
  \globalII
  g8_\f
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(1 1 1 1)
  \once \override TupletNumber #'Y-offset = #3
  \times 2/3 {
    |
    \pn c,16
    g' e' e e e
    \override TupletNumber #'stencil = ##f
    \pn g,,
    g' d' d d d
    |
    \pn e,,
    g' c c c c
    \pn g,
    e' g g g g
    |
    \pn g,
    b' f' f f f
    \pn c,
    g' e' e e e
    |
    \pn g,,
    b' d d d d
    \pn b,
    d g g g g
    |
    \pn c,
    e' g g g g
    gis,
    d' f f f f
    |
    a,
    c e e e e
    \pn f,,
    a' d d d d
    |
    \pn g,,
    e' c' c c c
    \pn g,
    d' b' b b b
    |
    \pn c,
    g' c c c c
  }
  << 
    <c g e>8
    \\
    { \ped c,8 }
  >> \breathe
  g'8
  |
  \times 2/3 {
    \pn g,16
    d'' f f f f
    \pn g,,
    c' e e e e
    |
    \pn g,,
    b' d d d d
    \pn b,
    d g g g g
    |
    as c es es es es
    g,\< c es
    fis,\! c' es
    |
    g, c es es es es
  }
  <<
    <d b g>8
    \\
    { \ped g,,8 }
  >> \breathe
  g'8
  |
  \times 2/3 {
    \pn c,16
    g' e' e e e
    \pn b,
    gis' d' d d d
    |
    \pn a,
    a' c c c c
    \pn f,,
    a' d d d d
    |
    \pn g,,
    c' e e e e
    \pn g,,
    b' d d d d
    |
    \pn c,
    g' c c c c
  }
  <<
    <c g e>8
    \\
    { \ped c,8 }
  >>
  \bar "||"
}

\score { \mkscore \varII {\skip2*16} {\skip2*16} }

globalIII = {
  \mark "3. Var."
  \tempo "Tempo I."
  \key c \major
  \time 2/4
  \partial 8
}

upperIII = \relative c'' {
  \globalIII
  r8
  \once \override DynamicText #'X-offset = #-1
  \once \override DynamicLineSpanner #'Y-extent = #'(.5 . .5)
  | c16^\p g c g b g b g
  | c16 g e g c g c e
  | b16 d b d c g c g
  | b16 g' d b d g, b g'
  | \voiceOne e16 g, c a \oneVoice b g b d
  | c16 b a g f a d f
  | e16 c' g c, g' g, g' g,
  | \voiceOne b16 g a b c8 \oneVoice r
  | b16 g b g c g c g
  | b16 g' d b g d g b
  | c16 es as g fis g as fis
  | g16 d b d g, b d g
  | c,16 g c g b gis e' gis
  | a16 e c a f a d f
  | c16 g g' c, b g g' b,
  | \voiceOne g'16 g, a b c8
  \bar "||"  
}


lowerIII = \relative c' {
  \globalIII
  \voiceTwo
  s8
  s2*7
  s8 f e s
  s2*7
  s8 f e
}

basIII = \relative c' {
  \globalIII
  g8^\mf
  | e'8. f16 d8. e16
  | c4 g8[ r16 g]
  | f'8. g16 e8. f16
  | d4 g,8[ r16 g]
  | g'8. \man \voiceTwo a16 \ped \oneVoice f8. g16 
  | e8. f16 d8. e16
  | c8. d16 e8 d
  | d4( c8)
  \breathe
  g8
  | f'8. g16 e8. f16
  | d4 g,8[ r16 g]
  | es'8 es es es
  | d8 g,4 r16 g
  | e'8. f16 d8. e16
  | c8. c16 << { a8. d16 } \\ { r8 f, } >>
  | << { e'8. e16 } \\ { r8 g, } >> d'8. d16
  | d8 g, c
}

  
  


\score { \mkscore \upperIII \lowerIII \basIII }

globalIV = {
  \mark "4. Var."
  
  \key c \major
  \time 2/4
  \partial 8
}

upperIV = \relative c'' {
  \globalIV
  g8\f
  | <c e>16 g'32 g g16 g <d b> g32 g g16 g
  | <c, g> g'32 g g16 g g,8 r
  | <b d>16 g'32 g g16 g <c, e> g'32 g g16 g
  | <b, d> g'32 g g16 g g,8 r
  | <g' e>16 g32 g g16 g \voiceOne <f d> f32 f f16 f
  | <e c>16 e32 e e16 e d d32 d d16 d
  | c16 c32 c c16 c b g'32 g g16 g
  | c,4~ c8
  \breathe
  \oneVoice g8
  | <f' d>16 g32 g g16 g <e c> g32 g g16 g
  | <d b> g32 g g16 g g,8 r
  | \voiceOne <c es>16 es32 es <c es>16 es <c es>16 es32 es <c es>16 es
  | <d b>16 g32 g g16 g g,8 \oneVoice r
  | <c e>16 g'32 g g16 g <gis, d'> f'32 f f16 f
  | <a, c> e'32 e e16 e <f, a> d'32 d d16 d
  | \voiceOne c16 g'32 g g16 g g b32 b b16 b
  | c4 c,8
  \bar "||"
}

lowerIV = \relative c' {
  \globalIV
  \voiceTwo
  s8
  | s2*5
  | s4 <f a>
  | <e g>4 <d f>
  | <e g>4~ <e g>8 s8
  | s2*6
  | <e g>4 <g b>8 <d' f>16 <d f>
  | <c e>4 <e, g>8
}

basIV = \relative c' {
  \globalIV
  \showStaffSwitch
  r8
  | c4 g 
  | e'4 r16 c32( d e16) c-.
  | g4 c
  | g4 r16 g32( a b16) g
  | c4 \man \voiceTwo gis' 
  | a4 \ped \oneVoice f,
  | g4 g
  | r16 c32 g c16 e c8 r
  | g4 g
  | g4 r16 g32( a b16) g
  \hideStaffSwitch
  | c8 \man \voiceTwo as' g fis 
  | g4 \ped \oneVoice r16 g,32( a b16) g
  | c4 b 
  | a4 f
  | g4 g8 g
  | r16 c32 g c16 \man \voiceTwo e \ped \oneVoice c8
}


\score { \mkscore \upperIV \lowerIV \basIV }


%%% var 5
globalV = {
  \mark "Mineur. 5. Var."
  \tempo "Adagio."
  \time 2/4
  \partial 8
  \key c \minor
}

upperV = \relative c'' {
  \globalV
  g8\p
  | \voiceOne es'8. f16 d8. es16
  | c8 \oneVoice r16\f \voiceOne g' g8\noBeam \oneVoice g,\p
  | \voiceOne f'8. g16 es8. f16 
  | d8 \oneVoice r16\f \voiceOne g, g8\noBeam \oneVoice bes\p
  | \voiceOne r16 es es es r f f f
  | \oneVoice r32\f g16[ fis g f32] es32 d c bes as g f es
  | r16 c f as \voiceOne g bes32 bes bes16 bes
  | f'4( es8) 
  \breathe
  \oneVoice g,8
  | \voiceOne <f' d>8. g16 <c, es>8. f16 
  | <d b>4 g,16 g8 g16
  | <c es>16 <c es>8 <c es> <c es> <c es>16
  | <c es>4( <d b>8)\noBeam
  \oneVoice g,8\p
  | r32 es' g es g es g es r d f d f d f d
  | r c es c es c es c r as des as des as des as
  | <es c'>16 r32 \voiceOne g c16. es32 g16 g32 g g16 g
  | <d b>4( c8)
  \bar "||"
}

lowerV = \relative c'' {
  \globalV
  \voiceTwo
  s8
  | g4 <f b>
  | <c g'>8 s16 g' g8 s
  | b4 c
  | <g b>8 s16 g, g8 s
  | r32 bes'16[ bes g bes] bes[ bes as bes32]
  | s2
  | s4 es,8 d
  | <as' bes>4( g8) s
  | r16 g g g r g g g
  | r16 g g g s4
  | s2*4
  | s4 s8 <g b>
  | f4( es8)  
}

basV = \relative c' {
  \globalV
  s8
  | c4 g
  | <es g>8 r r4
  | g4 g
  | g8 r r4
  | es'4 d
  | es16 d es d c8 r 
  | as4 bes8 bes
  | es8 bes es, r
  | g4 r
  | r4 g8 g
  | c8 \man \voiceTwo as' g fis
  | g8 \ped \oneVoice c, g r
  | c8 c g g
  | c8 c f, f
  | g16 r32 g c16. \man \voiceTwo es32 g8 \ped \oneVoice g,
  | c8 g c,  
}


\score { \mkscore \upperV \lowerV \basV }


%%%%%% var 6

globalVI = {
  \mark "CODA. 6. Var."
  \tempo "Allegro."
  \time 3/8
  \partial 8
  \key c \major
}

upperVI = \relative c'' {
  \globalVI
  g8
  | \voiceOne e'8 e16( f) d( e)
  | c8 g \oneVoice g\noBeam
  | <f' d>8 f16( g) <e c>( f)
  | <d b>8 g, g\noBeam
  | g'16 e a( g) \voiceOne gis,[ <d' f>]
  | e16 c f( e) r d
  | c16 g e g <e' b>[( d])
  | c4 \oneVoice g8\noBeam
  | <f' d>8 f16( g) <e c>( f)
  | <d b>8 g, r
  | \voiceOne r16 c es c es c
  | d16 g fis g f d
  | \oneVoice r16\f g, e' g, r\voiceOne <d' b>
  | c4 g16 c
  | \oneVoice r16 d f d r \voiceOne <c e>
  | <b d>8 r b16 d
  | \oneVoice r16 c8 g c16
  | r16 e8 c e16
  | \voiceOne g8 g g
  | <c, e>4 r8
  | f16(\p d) d8 g16( d)
  | <c e>4\f r8
  | f16(\p d) d8 g16( d)
  | <c e>4 r8
  | d4 r8
  | c4 r8
  | b4 r8
  | c4 r8
  | f16(\p d) d8 g16( d)
  | <c e>4\f r8
  | f16(\p d) d8 g16( d)
  | <c e>4 r8
  | d4 r8
  | c4 r8_\>
  | b4\! r8_\>
  | e8\! e16( f) d( e)
  | c8 c d
  | <c e>8 <c e> <b d>
  | \oneVoice r16 c g' c, g' c,
  | r16 c gis' c, gis' c,
  | r16 c a' c, a' c,
  | \voiceOne a'8 a a
  | c8 c c
  | b8 b b
  | c8\noBeam c,,16 c' e, e'
  | g8 g g
  | <e c>8\noBeam e,16 e' c, c'
  | g8 b b
  | c8 \oneVoice r4 \voiceOne
  | c'4 \oneVoice r8
  | c,,4 r8\fermata
  \bar "|."  
}

lowerVI = \relative c'' {
  \globalVI
  \voiceTwo
  s8
  | g4 f8
  | g8 s4
  | s4.*3
  | s4 s16 <f a>
  | s4 f8
  | <e g>4 s8
  | s4.*3
  | b'4 s8
  | s4 s16 f
  | <e g>4 g8
  | s4 s16 g
  | g8 s b
  | s4.*2
  | <g b>8 <g b> <g b>
  | g4 s8
  | b8 as16 f b8
  | g4 s8
  | g8 as16 f b8
  | g4 s8
  | <f a>4 s8
  | <e g>4 s8
  | <d f>4 s8
  | g4 s8
  | b8 as16 f b8
  | g4 s8
  | b8 as16 f b8
  | g4 s8
  | <f a>4 s8
  | <e g>4 s8
  | <d f>4 s8
  | c'4 gis8
  | a8 a <f a>
  | g8 g g
  | s4.*3
  | <c es>8 <c es> <c es>
  | <c e>8 <c e> <c e>
  | <d f>8 <d f> <d f>
  | <c e>8\noBeam c, e
  | g8 <b d> <b d>
  | g8\noBeam e8 c
  | s8 <d f> <d f>
  | <e g>8 s4
  | <c' e>4 s8
}

basVI = \relative c' {
  \globalVI
  r8
  | c4 g8
  | e'4 r8
  | g,4 g8
  | g4 r8
  \showStaffSwitch
  | c4 \man \voiceTwo gis'8
  | a4 \ped \oneVoice f,8
  | g4 g8
  | c4 r8
  | g4 g8
  | g8 g g
  | c4 \man \voiceTwo as'8
  | \ped \oneVoice g4 r8
  | c,4 g8
  \hideStaffSwitch
  | c16 g c \man \voiceTwo e \ped \oneVoice s8
  | g,4 g8
  | g16 b \man \voiceTwo d g \ped \oneVoice s8
  | c,8 g c
  | e8 c e
  | g,8 g g
  | c16 e,32 g \man \voiceTwo c16[ g' c e]
  | \ped \oneVoice g,,4 g8
  | c16 e,32 g \man \voiceTwo c16[ g' c e]
  | \ped \oneVoice g,,4 g8
  | c16 e,32 g \man \voiceTwo c16[ g' c e]
  | \ped \oneVoice r16 f,,32 a \man \voiceTwo d16[ f a d]
  | \ped \oneVoice r16 g,,32 e' \man \voiceTwo g16[ c e g]
  | \ped \oneVoice r16 g,,32 d' \man \voiceTwo f16[ b d g]
  | \ped \oneVoice c,,16 e,32 g \man \voiceTwo c16[ g' c e]
  | \ped \oneVoice g,,4 g8
  | c16 e,32 g \man \voiceTwo c16[ g' c e]
  | \ped \oneVoice g,,4 g8
  | c16 e,32 g \man \voiceTwo c16[ g' c e]
  | \ped \oneVoice r16 f,,32 a \man \voiceTwo d16[ f a d]
  | \ped \oneVoice r16 g,,32 e' \man \voiceTwo g16[ c e g]
  | \ped \oneVoice r16 g,,32 d' \man \voiceTwo f16[ b d g]
  | \ped \oneVoice c,,4 b8 
  | a8 a f
  | g8 g g
  | e'4.
  | e4.
  | f4.
  | fis8 fis fis
  | g,4 g8 
  | g8 g g
  | c8 r4
  | r8 g g
  | c4 r8
  | g8 g g
  | c8 r4
  | c4 r8
  | c,4 r8_\fermata
}

\score { \mkscore \upperVI \lowerVI \basVI }
