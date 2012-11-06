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
  \key d \major
  \time 2/4
  \partial 8
}

upperT = \relative c'' {
  \globalT
  r16\f a
  | \voiceOne fis'8. g16 e8. fis16
  | d4 \oneVoice a8 r16 a
  | \voiceOne g'8. a16 fis8. g16
  | e4 \oneVoice a,8 r16 a
  | \voiceOne <a' fis>8. b16 <g e>8. a16
  | <fis d>8. g16 e8. fis16
  | d16. a32 fis16. a32 <fis' d>8 <e cis>
  | <e cis>4( d8)
  \oneVoice r16 a\p
  | \voiceOne g'8. a16 fis8. g16
  | e4 a,8 r16 a
  | <f' d>8. <f d>16 <f d>8. <f d>16
  | <f d>4(\cresc <e cis>8)
  r16 a,\f
  | fis'8. g16 e8. fis16
  | d8. cis16 b16. cis32 d16. e32
  | <fis d>4 <fis d>8 <e cis>
  | <e cis>4( d8)
  \bar "||"
}

lowerT = \relative c'' {
  \globalT
  s8
  | \voiceTwo a4 a
  | <a d,>4 s4
  | cis4 a
  | <e a cis>4 s4
  | s2
  | s4 <g b>
  | s4 a8 g
  | g4( fis8)
  s8
  | e'4 d
  | cis4 s
  | r8 bes a gis
  | \once \override Beam #'positions = #'(-3.5 . -4) a8 \voiceOne \ped a, \man \voiceTwo a'
  s8
  | a4 ais 
  | b4 g
  | a4 a8 g
  | g4( fis8)  
}

basT = \relative c' {
  \globalT
  r8
  | d4 a
  | fis4 r
  | a4 d
  | a4 r
  \showStaffSwitch
  | d4 \man \voiceTwo ais'
  | b4 \ped \oneVoice g,
  | a4 a8 a
  | d8 a d
  r8
  | a8 r a r
  | r8 a cis a
  | R2
  | r8 s r4
  | d4 cis
  | b4 g
  \hideStaffSwitch
  | a16. d32 \man \voiceTwo fis16.[ a32] \oneVoice \ped a,8 a
  | d8 a d  
}

\score { \mkscore \upperT \lowerT \basT }

%%% var 1

globalI = {
  \mark "1. Var."
  \time 2/4
  \key d \major
  \partial 8
}

upperI = \relative c'' {
  \globalI
  gis16_\markup\italic dolce a
  | \voiceOne fis'16 a g fis e g fis e 
  | \oneVoice d16 cis d b a8 \voiceOne r \oneVoice
  | g'16-. e-. a( g) fis-. d-. g( fis)
  | e16 d cis b \voiceOne a8 r \oneVoice
  | a'16 fis b( a) g e a( g)
  | fis16\cresc d g( fis) e b fis'( e)
  | d16 a fis a <fis' d> a, <e' cis> a,
  | \voiceOne <e' cis>4(\f d8)\noBeam
  \oneVoice gis,16_\markup\italic dolce a
  | g'16 e a( g) fis d g( fis)
  | e16 d cis b a8 \voiceOne r
  | d16 f d f d f d f
  | <f d>16 e d f <e cis>8 \oneVoice r
  | \voiceOne fis16 a g fis e 
  \once\override DynamicLineSpanner #'Y-extent = #'(0 . 0)
  g\cresc fis e
  | d16 cis d cis b cis d e
  | <fis d>4\f <fis d>16 a, <e' cis> a,
  | <e' cis>4( d8)
  \bar "||"
}

lowerI = \relative c'' {
  s8
  \voiceTwo
  | d4 cis
  | s2*6
  | g4( fis8) s8
  | s2*4
  | d'4 ais
  | b4 g
  | s2
  | g16( a b cis fis,8)
}


basI = \relative c' {
  \globalI
  r8
  | d4 a
  | d4 \voiceOne fis,16 a \man \voiceTwo d fis
  | \ped \oneVoice a,4 d
  | a4~ \voiceOne a16 \man \voiceTwo g' fis e
  | \ped \oneVoice d4 a
  | b4 g
  | a4 a8 a
  | d16 a b cis d8
  r8
  | a4 a
  | a4~ \voiceOne a16 \man \voiceTwo g' fis e
  | \ped \voiceOne d8 \man \voiceTwo bes' a gis
  | a4 a16 e \ped cis a \oneVoice
  | d4 cis 
  | b4 g
  | \voiceTwo a16 d \man fis a \ped \oneVoice a,8 a
  | d8 a d,
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
  \key d \major
  \time 2/4
  \partial 8
}

varII = \relative c'' {
  \globalII
  a8_\f
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(1 1 1 1)
  \once \override TupletNumber #'Y-offset = #3
  \times 2/3 {
    |
    \pn d,16
    a' fis' fis fis fis
    \override TupletNumber #'stencil = ##f
    \pn a,,
    a' e' e e e
    |
    \pn fis,,
    a' d d d d
    \pn a,
    fis' a a a a
    |
    \pn a,
    cis' g' g g g
    \pn d,
    a' fis' fis fis fis
    |
    \pn a,,
    cis' e e e e
    \pn cis,
    e a a a a
    |
    \pn d,
    fis' a a a a
    ais,
    e' g g g g
    |
    b,
    d fis fis fis fis
    \pn g,,
    b' e e e e
    |
    \pn a,,
    fis' d' d d d
    \pn a,
    e' cis' cis cis cis
    |
    \pn d,
    a' d d d d
  }
  << 
    <d a fis>8
    \\
    { \ped d,8 }
  >> \breathe
  a'8
  |
  \times 2/3 {
    \pn a,16
    e'' g g g g
    \pn a,,
    d' fis fis fis fis
    |
    \pn a,,
    cis' e e e e
    \pn cis,
    e a a a a
    |
    bes d f f f f
    a,\< d f
    gis,\! d' f
    |
    a, d f f f f
  }
  <<
    <e cis a>8
    \\
    { \ped a,,8 }
  >> \breathe
  a'8
  |
  \times 2/3 {
    \pn d,16
    a' fis' fis fis fis
    \pn cis,
    ais' e' e e e
    |
    \pn b,
    b' d d d d
    \pn g,,
    b' e e e e
    |
    \pn a,,
    d' fis fis fis fis
    \pn a,,
    cis' e e e e
    |
    \pn d,
    a' d d d d
  }
  <<
    <d a fis>8
    \\
    { \ped d,8 }
  >>
  \bar "||"
}

\score { \mkscore \varII {\skip2*16} {\skip2*16} }

globalIII = {
  \mark "3. Var."
  \tempo "Tempo I."
  \key d \major
  \time 2/4
  \partial 8
}

upperIII = \relative c'' {
  \globalIII
  r8
  \once \override DynamicText #'X-offset = #-1
  \once \override DynamicLineSpanner #'Y-extent = #'(.5 . .5)
  | d16^\p a d a cis a cis a
  | d16 a fis a d a d fis
  | \voiceOne cis16 e cis e d a d a \oneVoice
  | cis16 a' e cis e a, cis a'
  | \voiceOne fis16 a, d b cis a cis e \oneVoice
  | d16 cis b a g b e g
  | fis16 d' a d, a' a, a' a,
  | \voiceOne cis16 a b cis d8 \oneVoice r
  | \voiceOne cis16 a cis a d a d a \oneVoice
  | cis16 a' e cis a e a cis
  | d16 f bes a gis a bes gis
  | a16 e cis e a, cis e a
  | \voiceOne d,16 a d a \oneVoice cis ais fis' ais
  | b16 fis d b g b e g
  | d16 a a' d, cis a a' cis,
  | \voiceOne a'16 a, b cis d8
  \bar "||"  
}


lowerIII = \relative c'' {
  \globalIII
  \voiceTwo
  s8
  s2*7
  s8 g fis s
  s2*7
  s8 g fis
}

basIII = \relative c' {
  \globalIII
  a8^\mf
  | fis'8. g16 e8. fis16
  | d4 a8[ r16 a]
  \showStaffSwitch
  \override VoiceFollower #'after-line-breaking = ##t
  | \man \voiceTwo g'8. a16 fis8. g16 \ped \oneVoice
  | e4 a,8[ r16 a]
  | \man \voiceTwo a'8. b16 g8. a16 \ped \oneVoice 
  | fis8. g16 e8. fis16
  | d8. e16 fis8 e
  | e4( d8)
  \breathe
  a8
  | \man \voiceTwo g'8. a16 fis8. g16
  | \ped \oneVoice e4 a,8[ r16 a]
  | f'8 f f f
  | e8 a,4 r16 a
  | \man \voiceTwo fis'8. g16 \ped \oneVoice e8. fis16
  | d8. d16 << { b8. e16 } \\ { r8 g, } >>
  | << { fis'8. fis16 } \\ { r8 a, } >> e'8. e16
  | e8 a, d
}

  
  


\score { \mkscore \upperIII \lowerIII \basIII }

globalIV = {
  \mark "4. Var."
  
  \key d \major
  \time 2/4
  \partial 8
}

upperIV = \relative c'' {
  \globalIV
  a8\f
  | <d fis>16 a'32 a, a'16 a <e cis> a32 a, a'16 a
  | <d, a> a'32 a, a'16 a \voiceOne a,8 r \oneVoice
  | <cis e>16 a'32 a, a'16 a <d, fis> a'32 a, a'16 a
  | <cis, e> a'32 a, a'16 a \voiceOne a,8 r \oneVoice
  | <a' fis>16 a32 a, a'16 a <g e> g32 g, g'16 g
  | <fis d>16 fis32 fis, fis'16 fis \voiceOne e e32 e, e'16 e
  | d16 d32 d, d'16 d cis a'32 a, a'16 a
  | d,4~ d8
  \breathe
  \oneVoice a8
  | <g' e>16 a32 a, a'16 a <fis d> a32 a, a'16 a
  | <e cis> a32 a, a'16 a \voiceOne a,8 r \oneVoice
  | \voiceOne <d f>16 f32 f <d f>16 f <d f>16 f32 f <d f>16 f
  | <e cis>16 a32 a, a'16 a a,8 r \oneVoice
  | <d fis>16 a'32 a, a'16 a <ais, e'> g'32 g, g'16 g
  | <b, d> fis'32 fis, fis'16 fis <g, b> e'32 e, e'16 e
  | \voiceOne d16 a'32 a, a'16 a a cis32 cis, cis'16 cis
  | d4 d,8
  \bar "||"
}

lowerIV = \relative c'' {
  \globalIV
  \voiceTwo
  s8
  | s2
  | s4 r16 d32( e fis16) d-.
  | s2
  | s4 r16 a32( b cis16) a
  | s2
  | s4 <g b>
  | <fis a>4 <e g>
  | <fis a>4^~ <fis a>8 s8
  | s2
  | s4 r16 a32( b cis16) a
  | s2
  | s4 r16 a32( b cis16) a
  | s2*2
  | <fis a>4 <a cis>8 <e' g>16 <e g>
  | <d fis>4 <fis, a>8
}

basIV = \relative c' {
  \globalIV
  \showStaffSwitch
  r8
  | d4 a 
  | fis'4 r
  | a,4 d
  | a4 r
  | d4 ais 
  | b4 g
  | a4 a
  \hideStaffSwitch
  | r16 d32 a d16 \man \voiceTwo fis \ped \oneVoice d8 r
  | a4 a
  | a4 r
  | d8 \man \voiceTwo bes' a gis 
  | a4 \ped \oneVoice r16 a,32( b cis16) a
  | d4 cis 
  | b4 g
  | a4 a8 a
  | r16 d32 a d16 \man \voiceTwo fis \ped \oneVoice d8
}


\score { \mkscore \upperIV \lowerIV \basIV }


%%% var 5
globalV = {
  \mark "Mineur. 5. Var."
  \tempo "Adagio."
  \time 2/4
  \partial 8
  \key d \minor
}

upperV = \relative c'' {
  \globalV
  a8\p
  | \voiceOne f'8. g16 e8. f16
  | d8 \oneVoice r16\f \voiceOne a' a8\noBeam \oneVoice a,\p
  | \voiceOne g'8. a16 f8. g16 
  | e8 \oneVoice r16\f \voiceOne a, a8\noBeam \oneVoice c\p
  | r32 \voiceOne c f c f a, f' c \oneVoice r \voiceOne c g' c, g' bes, g' c,
  | \oneVoice r32\f a'16[ gis a g32] f32 e d c bes a g f
  | r16 d g bes \voiceOne a c32 c c16 c
  | g'4( f8) 
  \breathe
  \oneVoice a,8
  | \voiceOne <g' e>8. a16 <d, f>8. g16 
  | <e cis>4 a,16 a8 a16
  | <d f>16 <d f>8 <d f> <d f> <d f>16
  | <d f>4( <e cis>8)\noBeam
  \oneVoice a,8\p
  | r32 f' a f a f a f r e g e g e g e
  | r d f d f d f d r bes es bes es bes es bes
  | <f d'>16 r32 \voiceOne a d16. f32 a16 a32 a a16 a
  | <e cis>4( d8)
  \bar "||"
}

lowerV = \relative c'' {
  \globalV
  \voiceTwo
  s8
  | a4 <g cis>
  | <d a'>8 s16 a' a8 s
  | cis4 d
  | <a cis>8 s16 a, a8 s
  | s32 c'16[ c a c32] s c16[ c bes c32]
  | s2
  | s4 f,8 e
  | <bes' c>4( a8) s
  | r16 a a a r a a a
  | r16 a a a s4
  | s2*4
  | s4 s8 <a cis>
  | g4( f8)  
}

basV = \relative c' {
  \globalV
  s8
  | d4 a
  | <f a>8 r r4
  | a4 a
  | a8 r r4
  | f'4 e
  | f16 e f e d8 r 
  | bes4 c8 c
  | f8 c f, r
  | a4 r
  | r4 a8 a
  | d8 \man \voiceTwo bes' a gis
  | a8 \ped \oneVoice d, a r
  | d8 d a a
  | d8 d g, g
  | a16 r32 a d16. \man \voiceTwo f32 a8 \ped \oneVoice a,
  | d8 a d,  
}


\score { \mkscore \upperV \lowerV \basV }


%%%%%% var 6

globalVI = {
  \mark "CODA. 6. Var."
  \tempo "Allegro."
  \time 3/8
  \partial 8
  \key d \major
}

upperVI = \relative c'' {
  \globalVI
  a8
  | \voiceOne fis'8 fis16( g) e( fis)
  | d8 a \oneVoice a\noBeam
  | <g' e>8 g16( a) <fis d>( g)
  | <e cis>8 a, a\noBeam
  | a'16 fis b( a) \voiceOne ais,[ <e' g>]
  | fis16 d g( fis) r e
  | d16 a fis a <fis' cis>[( e])
  | d4 \oneVoice a8\noBeam
  | <g' e>8 g16( a) <fis d>( g)
  | <e cis>8 a, r
  | \voiceOne r16 d f d f d
  | e16 a gis a g e
  | \oneVoice r16\f a, fis' a, r\voiceOne <e' cis>
  | d4 a16 d
  | \oneVoice r16 e g e r \voiceOne <d fis>
  | <cis e>8 r cis16 e
  | \oneVoice r16 d8 a d16
  | r16 fis8 d fis16
  | \voiceOne a8 a a
  | <d, fis>4 r8
  | g16(\p e) e8 a16( e)
  | <d fis>4\f r8
  | g16(\p e) e8 a16( e)
  | <d fis>4 r8
  | e4 r8
  | d4 r8
  | cis4 r8
  | d4 r8
  | g16(\p e) e8 a16( e)
  | <d fis>4\f r8
  | g16(\p e) e8 a16( e)
  | <d fis>4 r8
  | e4 r8
  | d4 r8_\>
  | cis4\! r8_\>
  | fis8\! fis16( g) e( fis)
  | d8 d e
  | <d fis>8 <d fis> <cis e>
  | \oneVoice r16 d a' d, a' d,
  | r16 d ais' d, ais' d,
  | r16 d b' d, b' d,
  | \voiceOne b'8 b b
  | d8 d d
  | cis8 cis cis
  | d8\noBeam d,,16 d' fis, fis'
  | a8 a a
  | <fis d>8\noBeam fis,16 fis' d, d'
  | a8 cis cis
  | d8 \oneVoice r4 \voiceOne
  | d'4 \oneVoice r8
  | d,,4 r8\fermata
  \bar "|."  
}

lowerVI = \relative c'' {
  \globalVI
  \voiceTwo
  s8
  | a4 g8
  | a8 s4
  | s4.*3
  | s4 s16 <g b>
  | s4 g8
  | <fis a>4 s8
  | s4.*3
  | <cis' a>4 s8
  | s4 s16 g
  | <fis a>4 a8
  | s4 s16 a
  | a8 s cis
  | s4.*2
  | <a cis>8 <a cis> <a cis>
  | a16 fis32 a d,16[ a' d fis]
  | cis8 bes16 g cis8
  | a16 fis32 a d,16[ a' d fis]
  | a,8 bes16 g cis8
  | a16 fis32 a d,16[ a' d fis]
  | <g, b>4 s8
  | <fis a>4 s8
  | <e g>4 s8
  | a16 fis32 a d,16[ a' d fis]
  | cis8 bes16 g cis8
  | a16 fis32 a d,16[ a' d fis]
  | cis8 bes16 g cis8
  | a16 fis32 a d,16[ a' d fis]
  | <g, b>4 s8
  | <fis a>4 s8
  | <e g>4 s8
  | d'4 ais8
  | b8 b <g b>
  | a8 a a
  | s4.*3
  | <d f>8 <d f> <d f>
  | <d fis>8 <d fis> <d fis>
  | <e g>8 <e g> <e g>
  | <d fis>8\noBeam d, fis
  | a8 <cis e> <cis e>
  | a8\noBeam fis8 d
  | s8 <e g> <e g>
  | <fis a>8 s4
  | <d' fis>4 s8
}

basVI = \relative c' {
  \globalVI
  r8
  | d4 a8
  | fis'4 r8
  | a,4 a8
  | a4 r8
  \showStaffSwitch
  | d4 \man \voiceTwo ais'8
  | b4 \ped \oneVoice g,8
  | a4 a8
  | d4 r8
  | a4 a8
  | a8 a a
  | d4 \man \voiceTwo bes'8
  \hideStaffSwitch
  | \ped \oneVoice s4 r8
  | d,4 a8
  | d16 a d \man \voiceTwo fis \ped \oneVoice s8
  | a,4 a8
  | a16 cis \man \voiceTwo e a \ped \oneVoice s8
  | d,8 a d
  | fis8 d fis
  | a,8 a a
  | d4 r8
  | a4 a8
  | d4 r8
  | \ped \oneVoice a4 a8
  | d4 r8
  | \ped \oneVoice r16 g,32 b \man \voiceTwo e16[ g b e]
  | \ped \oneVoice r16 a,,32 fis' \man \voiceTwo a16[ d fis a]
  | \ped \oneVoice r16 a,,32 e' \man \voiceTwo g16[ cis e a]
  | \ped \oneVoice d,,4 r8
  | a4 a8
  | d4 r8
  | a4 a8
  | d4 r8
  | r16 g,32 b \man \voiceTwo e16[ g b e]
  | \ped \oneVoice r16 a,,32 fis' \man \voiceTwo a16[ d fis a]
  | \ped \oneVoice r16 a,,32 e' \man \voiceTwo g16[ cis e a]
  | \ped \oneVoice d,,4 cis8 
  | b8 b g
  | a8 a a
  | fis'4.
  | fis4.
  | g4.
  | gis,8 gis gis
  | a4 a8 
  | a8 a a
  | d8 r4
  | r8 a a
  | d4 r8
  | a8 a a
  | d8 r4
  | d4 r8
  | d,4 r8_\fermata
}

\score { \mkscore \upperVI \lowerVI \basVI }
