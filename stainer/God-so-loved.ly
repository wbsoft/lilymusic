\version "2.11.61"
\include "../include/merge-rests.ly"

#(set-global-staff-size 19)

\header {
  title = "God so loved the world"
  subtitle = "from The Crucifixion (1887)"
  composer = "Sir John Stainer (1840-1901)"
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
      Copyright © 2008
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
}

\paper {
  ragged-last-bottom = ##f
  system-count = 10
  page-count = 2
}

global = {
  \key d \major
  \time 3/4
}

tempoMark = {
  \override Score.MetronomeMark #'stencil = ##f
  \tempo 4=90
  \once \override Score.RehearsalMark
  #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark
  #'font-series = #'bold
  \once \override Score.RehearsalMark
  #'font-size = #0
  \once \override Score.RehearsalMark
  #'break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark
  #'extra-offset = #'(-0.5 . 0)
  \mark \markup {
    "Andante ma non lento. "
    \fontsize #'-2 {
      \general-align #Y #DOWN
      \note #"4" #.8 "= 90"
    }
  }
}

dyn = {
  \global
  \override DynamicTextSpanner
  #'dash-period = #-1.0
  s2.\p
  s2.*3
  \crescTextCresc
  s2.\<
  s2.*6\!
  s2 s4\mf
  s2.*4
  s2.\p
  s2.
  \crescTextCresc
  s2.\<
  s2 s4\f
  s2.*3
  % For God...
  \mark \default
  s4 s\p s
  s2.*2
  \crescTextCresc
  s4 s2\<
  s2 s4\mf
  s2.*4
  s4\p s2
  s2.*4
  % God so loved...
  \mark \default
  s2.\pp
  s2.*3
  \crescTextCresc
  s2.\<
  s2.*6\!
  s2 s4\mf
  s2.*4
  s2.\p
  s2.
  \crescTextCresc
  s2.\<
  s2 s4\f
  s2.*2
  \crescTextCresc
  s2.\<
  s2.*4\!
  \dimTextDim
  s2.\>
  \override TextSpanner #'bound-details #'left
  #'text = "rall."
  s2.\!\startTextSpan
  s2.\stopTextSpan
  \mark \default
  s2.\pp
  s2.*7
  s2.\ppp
  s2.\startTextSpan
  s2.\stopTextSpan
}

sop = \relative c' {
  \global
  fis2. fis4 e4. e8 a2.~ a4 r r|
  a2. a4 gis4. gis8 cis2.~ cis4 b a|
  d2 cis4 cis b a g2 fis4 b2 b4|
  e e d cis d b b a d, d'2 r4|
  d,2 g4 g-> fis2 fis e'4 d cis b|
  a d fis fis2 e4 d2.|
  % For God...
  r4 fis, fis b a g fis4. g8 fis e d4 fis b|
  d8. cis16 cis4 cis e e d cis4. cis8 d b|
  ais4 b g g8. fis16 fis2|
  fis4 fis fis fis2 fis4 fis cis' b a2(gis4)fis2.|
  % God so loved...
  fis2. fis4 e4. e8 a2.~ a4 r r|
  a2. a4 gis4. gis8 cis2.~ cis4 b a|
  d2 cis4 cis b a g2 fis4 b2 b4|
  e e d cis d b b a d, d'2 r4|
  d,2 g4 g-> fis2 fis e'4 d cis b|
  a d fis fis2 e4 d2 r4|
  R2. r4 d g g2 fis4 e2 d4 cis2.(d2) b4 a2.\fermata|
  % God so loved...
  a b4 a4. a8 d2.~d2 r4|
  fis,2. fis4 e4. e8 a2.~a2 r4|
  fis2. fis4 e fis d2.\fermata
  \bar"|."
}

alt = \relative c' {
  \global
  d2. d4 cis4. cis8 d2.~ d4 r r|
  fis2. fis4 eis4. eis8 fis2.( e4) d cis|
  d( fis) e e d cis b2 cis4 d2 dis4|
  e e fis g g fis e e fis g2 r4|
  d2 d4 e-> e2 cis2 fis4 fis e d|
  fis a a a2 g4 fis2.|
  % For God...
  r4 d d fis e d cis4. d8 cis ais b4 d fis|
  b8. ais16 ais4 fis e e fis g4. g8 fis fis|
  e4 fis d e8. e16 e2|
  fis4 fis fis d(cis) b cis cis d cis2(b4)a2.|
  % God so loved...
  d2. d4 cis4. cis8 d2.~ d4 r r|
  fis2. fis4 eis4. eis8 fis2.( e4) d cis|
  d( fis) e e d cis b2 cis4 d2 dis4|
  e e fis g g fis e e fis g2 r4|
  d2 d4 e-> e2 cis2 fis4 fis e d|
  fis a a a2 g4 fis fis b|
  b2 a4 g g g c2 c4 b2 a4 g2. g g\fermata|
  % God so loved...
  fis e4 fis4. a8 a2.(g2) r4|
  d2. cis4 cis4. e8 e2.(d2) r4|
  cis2. cis4 cis cis d2.\fermata
  \bar"|."
}

ten = \relative c' {
  \global
  a2. a4 a4. a8 a2.~ a4 r r|
  cis2. d4 d4. d8 cis2. a2 a4|
  a2 ais4 ais b cis d2 cis4 b2 b4|
  b b b ais b d c c c b2 r4|
  d2 d4 cis-> cis2 e4( d) cis|
  b ais b d fis d d( b) cis d2.|
  % For God...
  r4 b b d cis b ais4. b8 ais fis b4 b d|
  fis8. fis,16 fis4 ais b b b ais4. ais8 b b|
  cis4 b d cis8. cis16 cis2|
  fis,4 fis fis fis2 fis4 fis fis fis fis2(eis4)fis2.|
  % God so loved...
  a2. a4 a4. a8 a2.~ a4 r r|
  cis2. d4 d4. d8 cis2. a2 a4|
  a2 ais4 ais b cis d2 cis4 b2 b4|
  b b b ais b d c c c b2 r4|
  d2 d4 cis-> cis2 e4( d) cis|
  b ais b d fis d d( b) cis d d d|
  d(e)fis g d d dis2 dis4 e2 fis4 a,2. b e\fermata|
  % God so loved...
  c c4 c4. c8 b2.~b2 r4|
  a2. g4 g4. g8 g2.(fis2) r4|
  a2. a4 g a fis2.\fermata
  \bar"|."
}

bas = \relative c {
  \global
  d2. g4 g4. g8 fis2.~ fis4 r r|
  fis2. b4 b4. b8 a2. g2 g4|
  fis2 fis4 g g a b2 a4 g2 a4|
  g g fis e d d d d d d2 r4|
  d2 b'4 ais-> ais2 ais ais4 b fis g|
  a a a a2 a4 d2.|
  % For God...
  R2.*4 r4 r fis, g g fis e4. e8 d d|
  cis4 d b ais8. ais16 ais2|
  fis'4 fis fis b,(a) gis a a b cis2. fis,|
  % God so loved...
  d'2. g4 g4. g8 fis2.~ fis4 r r|
  fis2. b4 b4. b8 a2. g2 g4|
  fis2 fis4 g g a b2 a4 g2 a4|
  g g fis e d d d d d d2 r4|
  d2 b'4 ais-> ais2 ais ais4 b fis g|
  a a a a2 a4 b b b|
  c2 c4 b b b a2 a4 g2 fis4 e2. d cis\fermata|
  % God so loved...
  d2. d4 d4. d8 d2.~d2 r4|
  d2. d4 d4. d8 d2.~d2 r4|
  a2. a4 a a d2.\fermata
  \bar"|."
}

text = \lyricmode {
  God so loved the world, __
  God so loved the world, __
  that He gave His on -- ly be -- got -- ten Son,
  that who -- so be -- liev -- eth,
  be -- liev -- eth in Him
  should not per -- ish,
  should not per -- ish,
  but have ev -- er -- last -- ing life.

  For God sent not His Son in -- to the world
  to con -- demn the world,
  God sent not His Son in -- to the world
  to con -- demn the world;
  but that the world through Him might be sa -- ved.

  God so loved the world, __
  God so loved the world, __
  that He gave His on -- ly be -- got -- ten Son,
  that who -- so be -- liev -- eth,
  be -- liev -- eth in Him
  should not per -- ish,
  should not per -- ish,
  but have ev -- er -- last -- ing life,
  ev -- er -- last -- ing life,
  ev -- er -- last -- ing,
  ev -- er -- last -- ing life.

  God so loved the world, __
  God so loved the world, __
  God so loved the world.

}

\score {
  \new ChoirStaff \with {
    instrumentName = \markup
    \italic
    \override #'(baseline-skip . 2.5)
    \center-column{
      Quartet or Chorus
    }
  } <<
    \new Staff \with {
      instrumentName = \markup\column{S A}
    } <<
      \new Voice = sop { \voiceOne \tempoMark \sop }
      \new Voice = alt { \voiceTwo << \alt \dyn >> }
    >>
    \new Lyrics \lyricsto alt \text
    \new Staff \with {
      instrumentName = \markup\column{T B}
    } <<
      \clef bass
      \new Voice = ten { \voiceOne \ten }
      \new Voice = bas { \voiceTwo \bas }
    >>
  >>
  \layout {
    \context {
      \Score
      markFormatter = #format-mark-box-letters
    }
    \context {
      \ChoirStaff
      \consists "Instrument_name_engraver"
    }
    \context {
      \Staff
      \override DynamicText
      #'self-alignment-X = #right
      \override DynamicText
      #'extra-offset = #'(-1.5 . 0)
      \override DynamicText
      #'font-size = #-0.5
      \override DynamicText
      #'Y-extent = #'(0 . 0.2)
      \override DynamicLineSpanner
      #'staff-padding = #3.2
      \override DynamicTextSpanner
      #'Y-extent = #'(0 . 0.2)
      \override DynamicTextSpanner
      #'extra-offset = #'(0.5 . 0.5)
      \override DynamicLineSpanner
      #'Y-extent = #'(0 . 0)
      \override VerticalAxisGroup
      #'minimum-Y-extent = #'(-3 . 3)
      \override InstrumentName
      #'self-alignment-X = #right
      \override RestCollision
      #'positioning-done = #merge-rests-on-positioning
    }
    \context {
      \Lyrics
      \override VerticalAxisGroup
      #'minimum-Y-extent = #'(0 . 0)
    }
  }
  \midi { }
}

% \score {
%   \new ChoirStaff <<
%     \new Voice = sop << \sop \dyn >>
%     \new Lyrics \lyricsto sop \text
%     \new Voice = alt << \alt \dyn >>
%     \new Lyrics \lyricsto alt \text
%     \new Voice = ten << \clef "G_8" \ten \dyn >>
%     \new Lyrics \lyricsto ten \text
%     \new Voice = bas << \clef F \bas \dyn >>
%     \new Lyrics \lyricsto bas \text
%   >>
%   \layout {
%     \context {
%       \Staff
%       \override DynamicText #'direction = #UP
%       \override DynamicText #'staff-padding = #0
%       \override DynamicLineSpanner #'direction = #UP
%     }
%   }
% }
