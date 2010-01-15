\version "2.12.0"

#(set-global-staff-size 18)

\paper {
  ragged-last-bottom = ##t
  top-margin = 10\mm
  bottom-margin = 10\mm
}

\header {
  title = "When I survey the wondrous cross"
  subtitle = "Gezang 48 Herv. Bundel: “Als ik het wond’re kruis aanschouw”"
  subsubtitle = \markup \strut
  poet = "After Isaac Watts (1674-1748)"
  meter = \markup \tiny ROCKINGHAM
  composer = "Edward Miller (1731-1807), melody and first verse"
  arranger = "Wilbert Berendsen (* 1971), verse 2, 3 and 4"
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
  }
  tagline = \markup {
    Engraved at
    \simple #(strftime "%d-%m-%Y" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\layout {
  indent = #10
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

stanzaOne = \lyricmode {
  \set stanza = "1."
  Als ik het wond’ -- re kruis aan -- schouw,
  waar Chris -- tus stierf, die ’t_al vol -- bracht,
  dan voel ik, hoe_’k mijn trots be -- rouw
  en_’t rijkst ge -- win slechts scha -- de acht.
}

stanzaTwo = \lyricmode {
  \set stanza = "2."
  Ver -- bied mij dan elk pra -- lend woord
  voor al wat niet uw kruis is Heer,
  en laat mij wat m’_op aard’ be -- koort,
  ten of -- fer leg -- gen voor U neer.
}

stanzaFour = \lyricmode {
  \set stanza = "4."
  Lof Hem, die door zijn kruis en dood
  ge -- nâ voor zon -- daars heeft be -- reid!
  Lof Hem en zij -- ne lief -- de groot,
  al -- om en tot in eeu -- wig -- heid!
}

global = {
  \key d \major
  \time 3/4
  \partial 4
  #(set-accidental-style 'modern)
}

mel = \relative c' {
  \global
  d4 fis( g) e d2 fis4 a2 b4 a2
  a4 d2 cis4 b2 a4 a( g) fis fis( e)
  e a2 b4 cis2 a4 d( fis,) gis a2
  d,4 g2 fis4 e2 d4 d( fis) e d2\fermata
}


% EEN
sop = {
  \mel
  \bar "||"
}

alt = \relative c' {
  \global
  d4 d2 cis4 d2 d4 d2 d8( e) fis2
  fis4 d2 fis4 g2 d4 e2 d4 d( cis)
  cis e2 e4 e2 cis4 d2 d4 cis2
  d4 d( cis) d b2 d4 d2 cis4 d2
}

ten = \relative c {
  \global
  fis4 a( b) a fis2 a4 a( d) b8( cis) d2
  d4 a2 a4 b2 d4 a2 a4 a2
  a4 a2 gis4 a2 a4 a2 e4 e2
  a4 g2 a4 b2 a4 fis( a4.) g8 fis2
}

bas = \relative c {
  \global
  d4 d( g,) a d2 d4 fis2 g4 d2
  d4 fis2 d4 g2 fis4 cis2 d4 a2
  a4 cis2 e4 a2 g4 fis( d) e a,2
  fis'4 e2 d4 g,2 fis4 a2 a4 d2\fermata
}

scoreOne = \new ChoirStaff <<
  \new Staff \with {
    instrumentName = \markup\center-column{ S. A. }
  } << 
    \new Voice = "sop" { \voiceOne \sop }
    \new Voice = "alt" { \voiceTwo \alt }
  >>
  \new Lyrics \lyricsto "sop" \stanzaOne
  \new Staff \with {
    instrumentName = \markup\center-column{ T. B. }
  } <<
    \clef bass
    \new Voice = "ten" { \voiceOne \ten }
    \new Voice = "bas" { \voiceTwo \bas }
  >>
>>

\score { \scoreOne }

% TWEE
sopOne = \relative c' {
  \global 
  d4 a'2 a4 a( b) cis d2 d4 d( cis)
  b a( d) e fis2 dis4 e2 d4 d( cis)
  cis8( d) e2.~ e4 d cis d2 d4 cis2
  d4 a2 a4 a( b) cis d( b) a8( g) fis2\fermata
  \bar "||"
}

sopTwo = \relative c' {
  \global
  d4 fis( g) e d2 fis4 a2 b4 a2
  a4 d2 cis4 b2 a4 a( g) fis fis( e)
  e a2 b4 cis2 a4 d( fis,) gis a2
  d,4 g2 fis4 e2~ e8 d d4( fis) e d2\fermata
}

alt = \relative c' {
  \global
  d4 d2 d4 cis2 cis4 b2 b4 g'2
  g4 fis2 fis4 dis2 b4 e2 e4 a,2
  b4 cis( e) gis a2 g4 fis2 eis4 fis2
  b,4 cis2 d4 a2 g4 fis( g) a d2\fermata
}

stanzaTwoSop = \lyricmode {
  \set stanza = "2."
  Ver -- bied mij dan elk pra -- lend woord
  voor al wat niet uw kruis is Heer,
  en laat __ %{mij,%} wat m’_op aard’ be -- koort,
  ten of -- fer leg -- gen voor U neer.
}

scoreTwo = \new ChoirStaff <<
  \new Staff \with {
    instrumentName = "S. I"
  } { \sopOne } \addlyrics { \stanzaTwoSop }
  \new Staff \with {
    instrumentName = "S. II"
  } { \sopTwo } \addlyrics { \stanzaTwo }
  \new Staff \with {
    instrumentName = "A."
  } { \alt } \addlyrics { \stanzaTwo }
>>

\score { \scoreTwo }

% DRIE
soprano = \relative c'' {
  \global
  r4 R2. R2. r2
  a4 cis( d) b a2 cis4 e2 fis4 e2 \breathe
  a,4 d2 cis4 b2 a4 a( g) fis fis( e) r
  r2 b'4 e2 fis4 g( fis) e 
  <<
    { \voiceOne a( a, b cis d) e fis2.~( fis4 e) }
    \new Voice {
      \once \override Slur #'positions = #'(-2 . -2)
      \voiceTwo a( a,2~ a4 b) cis d2.~( d4 cis)
    }
  >> \breathe
  \oneVoice
  d4 g2 fis4 e2 d4 d( fis) e d2.~ <d a>2\fermata
  \bar "||"
}

alto = \relative c' {
  \global
  r4 R2. r2
  d4 fis( g) e a2 gis4 g2 g4 e2 \breathe
  g4 g2 e4 a2.~( a4 g) fis d2.( dis4 e) fis g2 \breathe
  gis4 a2 d4 d( cis) b a2. g fis 
  R2. r2
  fis4 b2 b4 a d c~( c b) g fis2\fermata
}

tenor = \relative c' {
  \global
  r4 r2
  g4 b( c) a g( d') cis e( d2~ d4 cis b~ b a) d d( cis b a2) \breathe
  a4 d2 cis4 b2 a4 a( g) fis e2 \breathe
  e4 e'2.~( e4 b) cis d2. a2 \breathe
  a4 d2 cis4 b2 a4 g2 a4 b2 \breathe
  e4 fis2.~( fis4 d) e a,2\fermata
}

bass = \relative c {
  \global
  d4 fis( g) e d2 fis4 b2 g4 fis2( f4 e2) d4 cis2 b4~ b a g' fis2.( g2) \breathe
  a4 d2 cis4 b2 a4 a( g) d cis2 \breathe
  b4 a( a') g4 fis2. e d2 \breathe
  d4 g2 fis4 e2 d4 g2( gis4 a2.~ a4 g) g, d'2\fermata
}

sopranoVerse = \lyricmode {
  \set stanza = "3."
  Te klein is ’t_of -- fer, dat ik bood,
  al waar’ al_’t goed der aard’ mijn deel.
  Uw won -- d’re lief -- de, godd’ -- lijk groot, __
  eist al -- les, ja mij -- zelf ge -- heel. __
}

altoVerse = \lyricmode {
  \set stanza = "3."
  Te klein is ’t_of -- fer, dat ik bood,
  al waar’ al ’t_goed __ der aard’ __ mijn deel.
  Uw won -- d’re lief -- de, godd’ -- lijk groot,
  eist al -- les, ja mij -- zelf __ ge -- heel.
}

tenorVerse = \lyricmode {
  \set stanza = "3."
  Te klein is ’t_of -- fer, dat __ ik bood, __
  al waar’ al_’t goed der aard’ mijn deel.
  Uw won -- d’re lief -- de, %godd’ -- lijk groot,
  eist al -- les, ja mij -- zelf ge -- heel,
  mij -- zelf __ ge -- heel.
}

bassVerse = \lyricmode {
  \set stanza = "3."
  Te klein is ’t_of -- fer, dat ik bood, __
  is ’t_of -- fer dat ik bood, __
  al waar’ al_’t goed der aard’ mijn deel.
  Uw won -- d’re lief -- de %{, godd’ -- lijk%} groot,
  eist al -- les, ja mij -- zelf __ ge -- heel.
}

scoreThree = \new ChoirStaff <<
  \new Staff \with {
    instrumentName = "S."
  } { \soprano }
  \addlyrics { \sopranoVerse }
  \new Staff \with {
    instrumentName = "A."
  } { \alto }
  \addlyrics { \altoVerse }
  \new Staff \with {
    instrumentName = "T."
  } { \clef "treble_8" \tenor }
  \addlyrics { \tenorVerse }
  \new Staff \with {
    instrumentName = "B."
  } { \clef bass \bass }
  \addlyrics { \bassVerse }
>>

\score { \scoreThree }

% VIER

descant = \relative c' {
  \global
  d4 a'( b) cis d( cis) b a( d) g g( fis)
  e d( e) fis b,( cis) d e( a,8 b) cis( d) d4( cis)
  cis8( d) e4( cis) b b( ais) b8( cis) d4( fis) e d( cis)
  c b( cis) d g,( a) b e,8( fis g a) b( cis) d2\fermata
  \bar "|."
}

organRight = <<
  \relative c' {
    \global
    \voiceOne
    d4 |
    a' b cis |
    d cis b |
    <a~ cis,> <d a d,> \oneVoice <g~ d g,> |
    \voiceOne
    g fis e |
    d e fis |
    b, cis d |
    e a,8 b cis d |
    <d fis,>4 <cis e,> cis8 d |
    e4 cis b~ |
    b ais b8 cis |
    d4 fis e |
    d cis c |
    b cis d |
    g2 e4 |
    d b a'8 g |
    <fis d>2\fermata
  }
  \\ \relative c' {
    \voiceTwo
    d4 |
    d2 g4 |
    fis2~ <fis d>4 |
    s2. |
    <d' a>2 a4 |
    b2 a4 |
    a g a |
    a g fis |
    s2 e4 |
    e2 e4 |
    fis2 g4 |
    fis2 gis4 |
    a2 a4 |
    g2 fis4 |
    g a b |
    a~ <a fis> <g cis> |
    fis2
  }
>>

organLeft = \relative c {
  \global
  d4 |
  fis g e |
  d2 gis4 |
  a2 b4 |
  a2 <a e'>4 |
  <<
    { fis'2 cis4 | d2 a4 }
    \\ { fis4 gis a | d, e fis }
  >> |
  <a e>2 <a d,>4 |
  a2 e4 |
  <a e>2 <b cis,>4 |
  <cis fis,>2 <a e>4 |
  << { b cis } \\ fis,2 >> <b d>4 |
  <e e,>2 <d d,>4 |
  << { d e d } \\ { g,2 fis4 } >> |
  <e b' e>2 <e b' d>4 |
  <fis a d> <d g> <e a cis e> |
  <fis a d>2\fermata
}

organPedal = \relative c {
  \global
  d4 |
  d g, a |
  b2 b4 |
  fis2 g4 |
  d'2 cis4 |
  b2 fis'4 |
  g2 fis4 |
  cis2 d4 |
  a2 a4 |
  g2 g4 |
  fis2 e4 |
  b' d e |
  a g fis~ |
  fis e b |
  g2 gis4 |
  a2. |
  <d d,>2\fermata
}

scoreFour =   <<
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \center-column {
        Descant (Sopranos)
      }
    } { \descant } \addlyrics { \stanzaFour }
    \new Staff \with {
      instrumentName = \markup\center-column {
        \line { All other } voices
      }
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-7 . 4)
    } { \mel }
  >>
  \new PianoStaff \with {
    instrumentName = #"Organ"
  } <<
    \new Staff { \organRight }
    \new Staff { \clef bass \organLeft }
  >>
  \new Staff { \clef bass \organPedal }
>>

\score {
  \scoreFour
  \layout {
    indent = #20
  }
}

