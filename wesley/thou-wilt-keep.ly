\version "2.14.1"

#(set-global-staff-size 18)

\header {
  title = "Thou wilt keep him in perfect peace"
  composer = "Samuel Sebastian Wesley (1810-1876)"
  poet = \markup \column {
    \line { Isaiah 26, 3; Psalms 139, 12; 1 John 1, 5; }
    \line { Psalms 119, 175; Matthew 6, 13 }
  }
}

\layout {
  \context {
    \Voice
    \override DynamicTextSpanner #'style = #'none
  }
}

psostmkup = \markup {
  \dynamic p
  \normal-text \italic { e sostenuto }
}

psost = #(make-dynamic-script psostmkup)

dalign = {
  \once \override DynamicText #'self-alignment-X = #LEFT
}

icc = {
  \once \override NoteColumn #'ignore-collision = ##t
}

global = {
  \key f \major
  \time 4/4
  \tempo "Andante sostenuto"
  \dynamicUp
}

soprano = \relative c' {
  \global
  % Muziek volgt hier.
  f2\pp g
  a4( g8 f) c'4 c\<
  d4( f) e(\> d)
  c2\! c
  c4 f, bes2~(\<
  bes4\! a)\dim g d
  f2.\! e4
  f2 \tempo "Un poco accelerato" r
  R1*20
  \tempo "Tempo I"
  f2\p g
  a4 g8 f c'4 c
  d4(\< f e\> d)
  c2\! c~
  c4 f, bes2~
  bes4 a\dim g( d)
  f4\! f2 e4
  f1~
  f1~
  f4 r c'2
  c4 a\cresc bes2
  bes4\! g4 a f'
  d1
  \tempo "Un poco accelerato"
  c2 r
  R1*3
  r2 r4 a\f
  b4( cis) d f
  f4 g,2 g4
  a4 b c e
  e2 f,~
  f2 e\dim
  e2(\! d4 c~
  c2\p) b
  c2 r
  \tempo "Tempo I"
  f2\p g
  a4( g8 f) c'4 c\<
  d4( f) e(\> d)
  c2\! c
  c4 f, bes2~(\<
  bes4\! a)\dim g d
  f2.\! e4
  \dalign
  f2\psost f
  f1
  f2 \tempo "ritard." f
  f1\fermata
  \bar "|."  
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  r4 f2\pp e4 f2( g)
  f2. f4
  e4(\< g) f(\> es)
  d2\! r
  r4 a\dim d bes
  a4\! bes8( a) g2
  f2 r
  R1*16
  a1\mf
  a2. a4
  b2 b
  cis2 r
  
  r4 f2\p e4
  f2( g)
  f1(
  e4 g) f( es)
  d2 r
  e2 d\dim
  a4(\! bes8 a) g4. g8
  f2 r
  R1
  r4 c' f e
  d2.( bes4)
  f'2 f4 c\cresc
  c4\!( a bes2)
  a4 c d2
  e4( f) g a
  d,2 d4 e
  f4 g a bes
  e,2 d4 cis\cresc
  a'1(
  g4\! f) e d
  g1(
  f1
  b,2 c\dim
  cis2\! d4) as
  g1~\p
  g2 r
  
  r4 f'2\p e4 f2( g)
  f2. f4
  e4(\< g) f(\> es)
  d2\! r
  r4 a\dim d bes
  a4\! bes8( a) g2
  \dalign
  a2\psost cis
  d1\<
  es2\> es4( d)
  c1\!\fermata
  \bar "|."
}

tenorOne = \relative c' {
  \global
  % Muziek volgt hier.
  r4 c(\pp d) c
  c2 c~
  c2 bes
  bes2( a4) f
  d'2 e4(\< d)
  cis2\! d\dim
  c4 d8( c) bes2
  a2\! r
  R1*7
  r2 r4 a\mf
  a2 a
  a2. a4
  a2. a4
  bes2 f
  g2( a)
  bes4( c d2)
  d2. d4
  d2( g,)
  a2( b)
  c4( d) e2
  e2. e4
  e2 r
  
  r4 a,(\p d) c
  c1~
  c2 bes~
  bes4. bes8 a4 f
  d'4(\< f e\> d)
  cis2(\! d\dim
  c4\! d8 c) bes4. bes8
  a4 c f e
  d1
  c2 r
  R1
  r4 r8 c c4 f\cresc
  f2.(\! e4)
  f2 c4(\mf b)
  c2 c4 c
  c4( b8 c) d4 a
  d8 d4. d d8
  d4( cis) d e\cresc
  d4( g f e
  d4\! b) c d
  c4( f e d
  c4 e d) c
  b2( bes~\dim
  bes2) a4( as
  d,4\p e) f2
  e2 r
  
  r4 c'(\p d) c
  c2 c4 c
  c2( bes~
  bes2) a4( f)
  d'2 e4(\< d)
  cis2\! d\dim
  c4 d8( c) bes2
  \dalign
  a2\psost a
  a2( g~
  g4) a bes2
  a1\fermata
  \bar "|."
}

tenorTwo = \relative c' {
  \global
  % Muziek volgt hier.
  r4 a(\pp bes) c
  c4( bes8 a g2)
  a4( f) d2
  g4( c,2) f4
  f4(\< a) g(\> f)
  e2\! g\dim
  c,8\! c4. c2
  c2 r
  R1*7
  r2 r4 a'\mf
  a2 a
  a2. a4
  a2. a4
  bes2 f
  g2( a)
  bes4( c d2)
  d2. d4
  d2( g,)
  a2( b)
  a2. a4
  a2 gis
  a2 r
  
  r4 a(\p bes) c
  c4( bes8 a) g2(
  a4 f) d2
  g4( c,2) f4
  f4(\< a g\> f)
  e2(\! g\dim
  c,2)\! c4. c8
  f2 a
  a4 a bes2
  bes4 g a c
  d1
  c2 c4(\cresc a)
  f2.(\! g4)
  a2 r4 g\mf
  c,4( d) e f
  g4.( a8) b4 cis
  d8 d4. d d8
  a2 b4 cis\cresc
  d4( a2 f4
  d4\! g) a b
  c4( g2 e4
  c4 c' b) a
  g1~
  g2\dim f~(
  f4\p e) d2
  c2 r
  
  r4 a'(\p bes) c
  c4( bes8 a) g4 g
  a4( f) d2
  g4( c,2) f4
  f4(\< a) g(\> f)
  e2(\! g\dim
  c,8) c4. c2
  \dalign
  f2\psost a
  d1~\<
  d4\> c f,( g)
  a1\!\fermata
  \bar "|."  
}

bass = \relative c {
  \global
  % Muziek volgt hier.
  R1
  f2.\pp e4
  d2 g,4 g
  a2 a
  bes2 g\<
  a2\! bes\dim
  c8\! c4. c2
  f,2 c'2
  d1
  f2 d4 d
  c4 c g2
  c1
  d2 e
  f4 g a2
  a2 a4. a8
  a2. r4
  R1*7
  r2 g~(\mf
  g2 f)
  e2 d4( c)
  b2. b4
  a2 r
  
  R1
  f'2.\p e4
  d2( g,)
  a2. a4
  bes2 g
  a( bes)\dim
  c2\! c4. c8
  f,1~
  f1~
  f2 f'4 f
  f1
  f4. f8 f4 f
  f1
  f2 r
  R1
  r2 r4 a\mf
  d,4( e) f g
  a4 a r g\cresc
  f4 e d c
  b4(\! d g f 
  e4 d c b
  a2) d4. d8
  e2( c\dim
  f,2. <d \tweak #'font-size #-1 \parenthesize d'>4
  g2)\p g
  c2 r
  
  R1
  f2.\p e4
  d2 g,4 g
  a2 a
  bes2 g\<
  a2\! bes\dim
  c8 c4. c2
  \dalign
  f,2\psost f
  bes1~
  bes4 bes bes2
  <f f'>1\fermata
  \bar "|."
}

sopranoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep him in per -- fect peace,
  whose mind is stay -- ed on Thee,
  on Thee.
  
  God is light, and in Him is no __ dark -- ness, __
  in Him __ is no dark -- ness at all. __
  
  O let my soul live,
  and it shall praise Thee,
  
  for Thine is the king -- dom
  the pow -- er and the
  glo -- ry __ for ev -- er -- more.
  
  Thou wilt keep him in per -- fect peace,
  whose mind is stay -- ed on Thee,
  on Thee, is stay -- ed on Thee.
}

altoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep __ him in per -- fect peace,
  whose mind is stay -- ed on Thee.
  
  to Thee are both a -- like.
  
  God is light, __ and __ in Him is no dark -- ness at all.
  
  O let my soul __ live,
  it shall praise __ Thee,
  for Thine,
  Thine is the king -- dom, the
  pow -- er and the glo -- ry
  for ev -- er, for ev -- er -- more. __
  
  Thou wilt keep __ him in per -- fect peace,
  whose mind is stay -- ed on Thee,
  is stay -- ed on Thee.
}

tenorOneVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep him __ in per -- fect peace,
  whose mind is stay -- ed on Thee.
  
  The dark -- ness and the light
  to Thee, to Thee are both a -- like,
  to __ Thee are both a -- like.
  
  God is light, __ and __ in Him is no __ dark -- ness at all.
  
  O let my soul live
  and it shall praise __ Thee,
  for __ Thine is the king -- dom, the
  pow -- er and the glo -- ry
  for ev -- er, for ev -- er -- more, __
  ev -- er more.
  
  
  Thou wilt keep him in per -- fect peace,
  whose mind is stay -- ed on Thee,
  is stay -- ed on Thee.
}

tenorTwoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep __ him in per -- fect peace,
  whose mind is stay -- ed on Thee.
  
  The dark -- ness and the light
  to Thee, to Thee are both a -- like,
  to __ Thee are both a -- like.
  
  God is light, __ and __ in Him __ is no __ dark -- ness at all.
  
  O let my soul live,
  and it shall praise Thee,
  shall praise __ Thee,
  for Thine is the king -- dom,
  the pow -- er and the glo -- ry
  for ev -- er, for ev -- er -- more, __
  ev -- er -- more.
  
  Thou wilt keep him in per -- fect peace,
  whose mind is stay -- ed on Thee,
  is stay -- ed on Thee.
}

bassVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep him in per -- fect peace,
  whose mind is stay -- ed on Thee.
  
  The dark -- ness is no dark -- ness with Thee,
  but the night is as clear as the day.
  
  to __ Thee are both a -- like.
  
  God is light, __ and in Him is no __ dark -- ness at all. __
  let my soul live,
  and it shall praise Thee,
  
  for Thine is the king -- dom,
  the pow -- er and the glo -- ry,
  for ev -- er -- more.
  
  Thou wilt keep him in per -- fect peace,
  whose mind is stay -- ed on Thee,
  is stay -- ed on Thee.
}

right = {
  \global
  <<
    \relative c'' {
      s2 \voiceOne g
      a4 g8 f \oneVoice c'4 c
      \voiceOne d4( f e d)
      c1~
      c4 f, bes2~
      bes4 a g d
      f2. e4
    }
    \new Voice \relative c' {
      f2~ \voiceTwo f4 e
      f2 s
      f1
      e2 f4 es
      d2 e4 d
      cis2 d
      c4 d8 c bes2
    }
    
  >>
}

left = \relative c' {
  \global
  r4 <a c>( <bes d> c)
  <<
    { 
      c4 bes8 a g4 g
      \voiceThree a4 \voiceOne f2 bes4~
      bes2 a4 f~
      f2 g4 f
      e2 g
      a4 bes8 a g2
    }
    \new Voice {
      \voiceThree c1~
      \voiceOne c2 \icc <bes d,>
      \voiceTwo g4 c,2 f4
    }
    \new Voice {
      s1
      \voiceOne \icc
      \hideNotes d2_~ d
    }
  >>
  
  
}

pedal = \relative c {
  \global
  R1
  f2. e4
  d2 g,
  \icc
  \once \override NoteHead #'extra-offset = #'(.5 . 0)
  a1
  bes2 g
  a2 bes
  c1
  f,1~
  f1
  
}
      

\score {
  <<
    \new ChoirStaff \with {
      systemStartDelimiterHierarchy = #'
      (SystemStartBracket a b (SystemStartSquare c d) e)
    } <<
      \new Staff \with {
        instrumentName = "S."
        \consists "Ambitus_engraver"
      } { \soprano }
      \addlyrics { \sopranoVerse }
      \new Staff \with {
        instrumentName = "A."
        \consists "Ambitus_engraver"
      } { \alto }
      \addlyrics { \altoVerse }
      \new Staff \with {
        instrumentName = "T. I"
        \consists "Ambitus_engraver"
      } { \clef "treble_8" \tenorOne }
      \addlyrics { \tenorOneVerse }
      \new Staff \with {
        instrumentName = "T. II"
        \consists "Ambitus_engraver"
      } { \clef "treble_8" \tenorTwo }
      \addlyrics { \tenorTwoVerse }
      \new Staff \with {
        instrumentName = "B."
        \consists "Ambitus_engraver"
      } { \clef bass \bass }
      \addlyrics { \bassVerse }
    >>
    \new PianoStaff \with {
      instrumentName = "Org."
    } <<
      \new Staff { \right }
      \new Staff {
        \clef bass
        << \left \\ \pedal >>
      }
    >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}
