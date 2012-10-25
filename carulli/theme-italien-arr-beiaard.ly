\version "2.14.2"

\header {
  title = "Thême italien"
  subtitle = "varie pour la guitare"
  composer = "G. Carulli"
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
        $upper
        $lower
      >>
      \new Staff = "ped" <<
        \clef bass
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
