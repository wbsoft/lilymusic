\version "2.12.0"

% Edited by Wilbert Berendsen
% 17 sep 2009, to change layout a bit.

#(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  after-title-space = #0
  between-system-padding = #0.1
}

\layout {
  system-count = #9
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Voice
    \override DynamicText #'staff-padding = #0
  }
}

\header {
  title = "The Crown of Roses (Legend)"
  composer = "Peter Ilyich Tchaikovsky"
  copyright = "Copyleft Mark Chapman 2008. Edition may be freely distributed, duplicated, performed or recorded."
  tagline = \markup {
    Engraved at
    \simple #(strftime "%d-%m-%Y" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}
     
global = {
  \key e \minor
  \time 2/4
  \dynamicUp
}

sopMusic = \relative c'' {
  \global
  e4\mf e8 d g,4.\> a8 b4\p b e, r8 b'\mf e4 d g,4.\> a8 b4\p b e,2
  r8 e\pp e\< fis g4.\! fis8\> e4 d\! e2 r8 e\pp\< e fis g4.\! fis8\> e4 d\! e r8 b'\mf
  e4 d g,4.\> a8 b4\p b e,\<( g8) b\mf e4 d g,4.\> a8 b4\p b e,2
  r8 e\pp\< e fis g4.\> fis8 e4\! d e2 r8 e\pp\< e fis g4.\! fis8 e4\> d e2\!
  r8 g\f g a b4 e8 r r e([ g]) fis e4( b8) r r g a a b4 e g fis e4. r8 
  r8 e,\pp e\< fis g4.\! fis8\> e4 d\! e2 r8 e\pp\< e fis g4-_\! r8 fis8 e4\> d e4.\! r8 \fermata
  fis4\p\< fis8 fis g4. g8 a4. a8 b4. b8\ff d4 c b\> e, g fis e4. e8\p\<
  fis4. fis8 g4. g8 a4. a8 b4. b8\ff d4 c b2\>~b8\! r r4 r e,\p g fis e2\>~e8\! r r4\fermata
  \bar "|." 
}

altoMusic = \relative c'' {
  \global
  g4\mf g8 a d,4.\> e8 e4\p dis b r8 e8\mf g4 a d,4\>( e8) e e4\p dis b2 
  r8 b\pp b\< d d4.\! d8\> b4 b\! b2 r8 b\pp\< b d d4.\! d8\> b4 b\! b4 r8 e8\mf
  a( g) fis4 d4.\> e8 e\p( cis) dis( fis) b,4\<( e8) e\mf c'4 a d,4.\> e8 e\p( cis) dis( fis) b,2
  r8 b\pp\< b d d4.\> d8 b4\! b b2 r8 b\pp\< b d d4.\! d8 b4\> b b2\!
  r8 b\f b a d4 e8 r r g([ dis]) dis e4. r8 r b a a d4 e e dis e4. r8 
  r8 b\pp b\< d d4.\! d8\> b4 b\! b2 r8 b\pp\< b d d4-_\! r8 d8 b4\> b b4.\! r8\fermata
  d4\p\< fis8 fis e4. e8 fis4. fis8 g4. d8\ff b'4 a e\> cis e dis b4. b8\p\<
  d4. fis8 e4. e8 fis4. fis8 g4. d8\ff b'4 a e2\>~e8\! r r4 r e\p dis dis b2\>~b8\! r r4\fermata
}

tenorMusic = \relative c' {
  \global
  b4\mf b8 a b4.\> fis8 g4\p fis g r8 g\mf b4 d8( c) b4.\> fis8 g4\p fis g2 
  r8 g8\pp g\< a b4.\! a8\> g4 g\! g2 r8 g8\pp\< g a b4.\! a8\> g4 g\! g r8 g\mf 
  a4 a d8\>([ c b]) a g\p( e) fis( a) g4.\< g8\mf g( g') fis4 d8\>([ c b]) a g\p( e) fis( a) g2 
  r8 g8\pp\< g a b4.\> a8 g4\! g g2 r8 g8\pp\< g a b4.\! a8 g4\> g g2\! 
  e'4\f e8 d g,4~g8 a8 b4 b b4. b8 e4 d g,4~g8 a8 b4. b8 b4. r8 
  r8 g8\pp g\< a b4.\! a8\> g4 g\! g2 r8 g8\pp\< g a b4-_\! r8 a8 g4\> g g4.\! r8\fermata 
  a4\p\< d8 d e4. e8 c4. c8 d4. g8\ff f4 e8( fis) g4\> g,8( a) ais4 b8( a) g4. g8\p\<
  a4. d8 e4. e8 c4. c8 d4. g8\ff f4 e8( fis) g2\>~g8\! r r4 r g,\p a a g2\>~g8 r r4\fermata
}

bassMusic = \relative c {
  \global
  e4\mf e8 fis g4.\> c,8 b4\p b e r8 e\mf e4 fis g8\>([ fis e]) c b4\p b e2 
  r8 e\pp e8\< d g,4.\! d'8\> e4 g4\! e2 r8 e\pp\< e8 d\! g,4. d'8\> e4 g4\! e r8 e\mf 
  c4 d8( c) b\>([ a g]) c b4\p b e8\<([ d c]) b\mf a4 d8( c) b\>([ a g]) c b4\p b e2
  r8 e\pp\< e8 d g,4.\> d'8 e4\! g4 e2 r8 e\pp\< e8 d g,4.\! d'8 e4\> g4 e2\! 
  r8 e\f e fis g4 c,8 r r \set doubleSlurs = ##t <b b'>([ <b a'>]) \set doubleSlurs = ##f
          <b a'> <e g>4. r8 r e fis8 fis g4 c, b4 <b a'> <e g>4. r8 
  r e\pp e8\< d g,4.\! d'8\> e4 g4\! e2 r8 e\pp\< e8 d g,4-_\! r8 d'8 e4\> g4 e4.\! r8 
  d4\p\< d'8 d c4. c8 a4. a8 g4. g8\ff gis4 a b\> b, b b e4. e8\p\<
  d4. d'8 c4. c8 a4. a8 g4. g8\ff gis4 a b4. b,8\p b4 <b, b'> <b b'>4. <b b'>8 <b b'>4. <b b'>8 
          <e e'>2~<e e'>8 r r4\fermata
}

words = \lyricmode {
  \set stanza = "1. "
  When Je- sus Christ was yet a child He had a gar -- den small and wild, 
  Where -- in he cher -- ished ro -- ses fair, And wove them in -- to gar -- lands there.
  \set stanza = "2. "
  Now once, as sum -- mer -- time drew nigh, There came a troop of child -- ren by, 
  And see -- ing ro -- ses on the tree, With shouts they plucked them mer -- ri -- ly.
  \set stanza = "3. "
  'Do you bind ro -- ses in your hair?' They cried, in scorn, to Je -- sus there.
  The boy said hum -- bly: 'Take, I pray, All but the na -- ked thorns a -- way.'
  \set stanza = "4. "
  Then of the thorns they made a crown, and with rough fin -- gers pressed it down,
  Till on his fore -- head fair and young Red drops of blood __ like ro -- ses sprung. __
}

bassWords = \lyricmode { 
  \set stanza = "1. "
  When Je -- sus Christ was yet a child He had a gar -- den small and wild, 
  Where -- in he cher -- ished ro -- ses fair, And wove them in -- to gar -- lands there.
  \set stanza = "2. "
  Now once, as sum -- mer -- time drew nigh, There came a troop of child -- ren by, 
  And see -- ing ro -- ses on the tree, With shouts they plucked them mer -- ri -- ly.
  \set stanza = "3. "
  'Do you bind ro -- ses in your hair?' They cried, in scorn, to Je -- sus there.
  The boy said hum -- bly: 'Take, I pray, All but the na -- ked thorns a -- way.'
  \set stanza = "4. "
  Then of the thorns they made a crown, and with rough fin -- gers pressed it down,
  Till on his fore -- head fair and young Red drops of blood
  like ro -- ses sprung, like ro -- ses sprung. __
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "S."
    } { \sopMusic }
    \addlyrics { \words }
    \new Staff \with {
      instrumentName = "A."
    } { \altoMusic }
    \addlyrics { \words }
    \new Staff \with {
      instrumentName = "T."
    } { \clef "treble_8" \tenorMusic }
    \addlyrics { \words }
    \new Staff \with {
      instrumentName = "B."
    } { \clef bass \bassMusic }
    \addlyrics { \bassWords }
  >>
}
