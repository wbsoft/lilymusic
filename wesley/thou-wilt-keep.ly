\version "2.14.1"

\header {
  title = "Thou wilt keep him in perfect peace"
  composer = "Samuel Sebastian Wesley (1810-1876)"
}

\layout {
  \context {
    \Voice
    \override DynamicTextSpanner #'style = #'none
  }
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
  f2.\! e4 f2 r
  R1*20
  
  f2\p g
  a4 g8 f c'4 c
  d4(\< f e\> d)
  c2\! c~
  c4 f, bes2~
  bes4 a\dim g( d)
  f4\! f2 e4
  f1~
  
  
  
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
  
}

sopranoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep him in per -- fect peace,
  whose mind is stay -- ed on Thee,
  on Thee.
  
  God is light, and in Him is no __ dark -- ness, __
  in Him __ is no dark -- ness at all.
  
}

altoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep __ him in per -- fect peace,
  whose mind is stay -- ed on Thee.
  
  to Thee are both a -- like.
  
  God is light, __ and __ in Him is no dark -- ness at all.
  
}

tenorOneVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep him __ in per -- fect peace,
  whose mind is stay -- ed on Thee.
  
  The dark -- ness and the light
  to Thee, to Thee are both a -- like,
  to __ Thee are both a -- like.
  
  God is light, __ and __ in Him is no __ dark -- ness at all.
  
  O let my
  
}

tenorTwoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep __ him in per -- fect peace,
  whose mind is stay -- ed on Thee.
  
  The dark -- ness and the light
  to Thee, to Thee are both a -- like,
  to __ Thee are both a -- like.
  
  God is light, __ and __ in Him __ is no __ dark -- ness at all.
  
  O
  
}

bassVerse = \lyricmode {
  % Liedtekst volgt hier.
  Thou wilt keep him in per -- fect peace,
  whose mind is stay -- ed on Thee.
  
  The dark -- ness is no dark -- ness with Thee,
  but the night is as clear as the day.
  
  to __ Thee are both a -- like.
  
  God is light, __ and in Him is no __ dark -- ness at all.
  
}

\score {
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
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}
