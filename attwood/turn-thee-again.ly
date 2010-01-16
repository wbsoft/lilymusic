\version "2.12.0"

#(set-global-staff-size 18)
organPartSize = #-1

\header {
  title = "Turn Thee again, O Lord"
  composer = "Thomas Attwood (1765-1838)"
  copyright = \markup \center-column {
    \line {
      Engraved by
      \with-url #"http://www.wilbertberendsen.nl/" {
        Wilbert Berendsen
        (http://www.wilbertberendsen.nl/)
      }
    }
    \line {
      Copyright © 2008
      \with-url #"http://www.cpdl.org/" {
        The Choral Public Domain Library
        (http://www.cpdl.org/)
      }
    }
    \line {
      This edition may be freely distributed,
      edited, performed or recorded.
    }
  }
  poet = "Psalm 90, 13"
}

\paper {
  page-count = #5
  indent = 2\cm
  ragged-last-bottom = ##f
  between-system-padding = 1
}

global = {
  \key f \major
  \time 3/2
}

ic = \once\override
Staff.NoteColumn #'ignore-collision = ##t

sop = \relative c'' {
  \global
  a2\p^\markup\smallCaps{semichorus}
  a2. bes4 g1 g2 c2.( bes4) a g f1. |
  bes2 bes1 a2 a fis g2. g4( a) bes f2( e) g4 g |
  g2 g g c c4 c d c c( bes) bes bes c bes bes2 a a|
  a c a bes d g, a4 bes a2( g4 f) f1. \bar"||"
  a2^\markup\smallCaps{verse}
  a a a1 a2 c2. c4( b) a gis2 r r |
  e1 b'2 c a r e1 b'2 c a r |
  e' a,2. a4 c1 c2 e a,2. a4 c1 c4 c |
  b2 b b d d4 d c b a2( c b) a1 a2 |
  a a a d d4 d c b a2( c b) a1.\bar"||"
  a2\pp^\markup\smallCaps{chorus}
  a2. bes4 g1 g2 c2.( bes4) a g f1. |
  bes2 bes1 a2 a fis g2. g4( a) bes f2( e) g4 g |
  g2 g g c c4 c d c c( bes) bes bes c bes bes2 a a|
  a c a bes d g, a4 bes a2( g4 f) |
  f2 r r r <<
    \new Voice = sopamen {
      \tag #'choir \voiceOne
      \tag #'organ {\voiceThree \shiftOff}
      r1 r2 g'( c,) \ic f
      s1. r1 r2 g( c,) \ic f
    } {
      \tag #'choir \voiceTwo
      d( g,~ g1.) f2
      \tag #'choir \oneVoice
      r r r
      \tag #'choir \voiceTwo
      \once\override Staff.DynamicText
      #'X-offset = #-5
      d'2(\mf g,~ g1.) f2
      \tag #'choir \oneVoice
    }
  >>
  c'1~c1. c1 a2\pp f1.~f \bar"|."
}

alt = \relative c' {
  \global
  f2\p f2. f4 d1 d2 c1 c4 bes a1. |
  f'2 f1 e2 e es d d2. d4 c1. |
  r2 r g' g f f f e1 f1.~ f |
  f1 f2 f1( e4 f) f1. \bar"||"
  f2 f f g1 f2 e2. e4( d) c b2 r r |
  b e1 e2 c r b e1 e2 c r |
  e f2. f4 e1 e2 g f2. f4 e1 a4 a|
  gis2 gis gis a1 f2 e1( d2) c1 c2|
  e e cis d1 f2 e1( d2) c1.\bar"||"
  f2\pp f2. f4 d1 d2 c1 c4 bes a1. |
  f'2 f1 e2 e es d d2. d4 c1. |
  r2 r g' g f f f e1 f1.~ f |
  f1 f2 f1( e4 f)
  \override Staff.DynamicText #'X-offset = #-3
  f2 a,(\p es') d1. e
  \override Staff.DynamicText #'X-offset = #-5
  f2 a,(\mf es') d1. e
  \override Staff.DynamicText #'X-offset = #-3
  f2 g(\p c,) f g( c,) f r r
  \override Staff.DynamicText #'X-offset = #-5
  r c(\pp d) c1.
  \bar"|."
}

ten = \relative c' {
  \global
  c2\p c2. d4 bes1 bes2 g1 e4 e f1. |
  d'2 d1 cis2 cis a bes bes2. bes4 a2( g) e'4 e|
  d2 d4 d e d c1.~( c1 g2) f1 d'2 |
  es a, c bes bes b c4 bes c2( bes4 a) a1.\bar"||"
  c2 c c cis1 d2 c c f e e e|
  d1 d2 c e e d1 d2 c e r|
  c d2. d4 a1 a2 a a2. a4 a1 a4 a|
  e'2 e e d1 d2 c( a gis) a1 a2|
  cis cis a a1 d2 c( a gis) a1.\bar"||"
  c2\pp c2. d4 bes1 bes2 g1 e4 e f1. |
  d'2 d1 cis2 cis a bes bes2. bes4 a2( g) e'4 e|
  d2 d4 d e d c1.~( c1 g2) f1 d'2 |
  es a, c bes bes b c4 bes c2( bes4 a)
  a2 f'( a,) bes1. bes a2 f'( a,) bes1. bes
  a2 c1~c1. c2 r r r f,1\pp <f a>1.\bar"|."
}

bas = \relative c {
  \global
  f2\p f2. f4 f1 f2 e1 c4 c d1. |
  R1. r2 r c bes bes g c1 c'4 c |
  bes2 bes bes a1 a2 g1( c,2) d1 d2|
  c es es d bes d c4 d c1 f1.\bar"||"
  f2 f f e1 d2 a a d e r r |
  gis1 gis2 a a r gis1 gis2 a a r|
  R1. r2 r a cis, d2. d4 a1 r2|
  r r e' f1 d2 e1. a,1 a'2|
  g g g f1 d2 e1. a,\bar"||"
  f'2\pp f2. f4 f1 f2 e1 c4 c d1. |
  R1. r2 r c bes bes g c1 c'4 c |
  bes2 bes bes a1 a2 g1( c,2) d1 d2|
  c es es d bes d c4 d c1 f1.
  f~\p f f f~\mf f f2 bes1\p a2 bes1 a2 r r
  \override Staff.DynamicText #'X-offset = #-4
  r a,(\pp bes) f1.\bar"|."
}

pedal = \relative c {
  \global
  \tieDown
  s1.*7
  c1.~  c~
  \shiftOff
  \ic c~ \ic c1 s2
  s1.*20
  \shiftOn
  a1.~ a~
  \shiftOff
  \ic a~ \stemDown \ic a2 e1
  s1.*8
  \stemUp \shiftOn
  c'1.~  c~
  \shiftOff
  \ic c~ \ic c1 s2
  s1.*4
  \repeat unfold 8 { \ic f,1.~ }
  \stemDown \ic f2
}

organDynamics = {
  s1.\p
  s1.*35
  s1.\pp
  s1.*22
  s1 s2\pp
}

%% This function accepts one argument: a list of symbols.
%% It returns a music function that removes music events with that names
%% from a music expression.
#(define-public (define-music-event-filter names)
  (define-music-function (parser location music) (ly:music?)
    (music-filter
      (lambda (event) (not (member (ly:music-property event 'name) names)))
      music)))

filtermusic = #(define-music-event-filter '(
    AbsoluteDynamicEvent
    TextScriptEvent
    SlurEvent
))

sopText = \lyricmode {
  Turn Thee a -- gain, O Lord, __ at the last,
  turn Thee, turn Thee, O Lord, at __ the last, __
  and be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants,
  un -- to Thy ser -- vants,
  be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants.
  
  Turn Thee a -- gain, O Lord, at __ the last,
  turn Thee, turn Thee, turn Thee, turn Thee,
  turn Thee a -- gain, O Lord, at the last,
  and be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants,
  be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants.
  
  Turn Thee a -- gain, O Lord, __ at the last,
  turn Thee, turn Thee, O Lord, at __ the last, __
  and be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants,
  un -- to Thy ser -- vants,
  be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants.
  
  A -- men, A -- men, A -- men, A -- men. __
}

altText = \lyricmode {
  Turn Thee a -- gain, O Lord, at the last,
  turn Thee, turn Thee, O Lord, at the last,
  be gra -- cious un -- to Thy ser -- vants,
  Thy ser -- vants.
  
  Turn Thee a -- gain, O Lord, at __ the last,
  turn Thee, turn Thee, turn Thee, turn Thee,
  turn Thee a -- gain, O Lord, at the last,
  and be gra -- cious un -- to Thy ser -- vants,
  be gra -- cious un -- to Thy ser -- vants.
  
  Turn Thee a -- gain, O Lord, at the last,
  turn Thee, turn Thee, O Lord, at the last,
  be gra -- cious un -- to Thy ser -- vants,
  Thy ser -- vants.
  
  A -- men, A -- men, A -- men,
  A -- men, A -- men, A -- men, A -- men.
}

tenText = \lyricmode {
  Turn Thee a -- gain, O Lord, at the last,
  turn Thee, turn Thee, O Lord, at the last, __
  and be gra -- cious un -- to Thy ser -- vants,
  be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants.
  
  Turn Thee a -- gain, O Lord, at the last,
  turn Thee, turn Thee, turn Thee,
  turn, turn Thee, turn Thee,
  turn Thee a -- gain, O Lord, at the last,
  and be gra -- cious un -- to Thy ser -- vants,
  be gra -- cious un -- to Thy ser -- vants.
  
  Turn Thee a -- gain, O Lord, at the last,
  turn Thee, turn Thee, O Lord, at the last, __
  and be gra -- cious un -- to Thy ser -- vants,
  be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants.
  
  A -- men, A -- men, A -- men,
  A -- men, A -- men, A -- men.
}

basText = \lyricmode {
  Turn Thee a -- gain, O Lord, at the last,
  O Lord, at the last,
  and be gra -- cious un -- to Thy ser -- vants,
  be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants.
  
  Turn Thee a -- gain, O Lord, at the last,
  turn Thee, turn Thee, turn Thee, turn Thee,
  O Lord, at the last,
  un -- to Thy ser -- vants,
  be gra -- cious un -- to Thy ser -- vants.
  
  Turn Thee a -- gain, O Lord, at the last,
  O Lord, at the last,
  and be gra -- cious un -- to Thy ser -- vants,
  be gra -- cious,
  be gra -- cious un -- to Thy ser -- vants.
  
  A -- men, A -- men,  A -- men, A -- men, A -- men.
}

tempoMark = {
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
    "Larghetto. "
    \fontsize #'-2 {
      \general-align #Y #DOWN
      \note #"2" #.8 "≈ 69"
    }
  }
}

choirPart = \removeWithTag #'organ
\new ChoirStaff <<
  \new Lyrics = sopamenLyrics \with {
    \override VerticalAxisGroup
    #'minimum-Y-extent = #'(0 . -1)
  } s
  \new Staff \with {
    instrumentName = "Sopranos"
    % keep top lyrics close
    \override VerticalAxisGroup
    #'keep-fixed-while-stretching = ##t
  } \new Voice = sop <<
    \tempoMark
    \sop
  >>
  \new Lyrics \lyricsto sop \sopText
  \new Staff \with {
    instrumentName = "Altos"
  } \new Voice = alt \alt
  \new Lyrics \lyricsto alt \altText
  \new Staff \with {
    instrumentName = "Tenors"
  } \new Voice = ten { \clef "G_8" \ten }
  \new Lyrics \lyricsto ten \tenText
  \new Staff \with {
    instrumentName = "Basses"
  } \new Voice = bas { \clef F \bas }
  \new Lyrics \lyricsto bas \basText
  \context Lyrics = sopamenLyrics
  \lyricsto sopamen { A -- men, A -- men, }
>>

organPart = \removeWithTag #'choir
\new PianoStaff \with {
  instrumentName = \markup\center-column {
    Organ \italic (optional)
  }
} <<
  \new Staff = rh \with {
    \consists "Mark_engraver"
    \override VerticalAxisGroup
    #'minimum-Y-extent = #'(-4 . 6)
    \override DynamicText #'X-offset = #-1
  } {
    #(set-accidental-style 'piano)
    <<
      \tempoMark
      \filtermusic \sop \\
      << \organDynamics \filtermusic \alt >>
    >>
  }
  \new Staff = lh {
    #(set-accidental-style 'piano)
    \clef F
    \filtermusic << \ten \\ \bas \\ \pedal >>
  }
>>

\layout {
  \context {
    \Score
    \override VerticalAlignment #'max-stretch =
    #ly:align-interface::calc-max-stretch
    \override SpacingSpanner
    #'base-shortest-duration = #(ly:make-moment 1 8)
  }
  \context {
    \PianoStaff
    fontSize = #organPartSize
    \override StaffSymbol
    #'staff-space = #(magstep organPartSize)
  }
  \context {
    \Staff
    \override VerticalAxisGroup
    #'keep-fixed-while-stretching = ##f
    \override DynamicText #'X-offset = #-2
    \override DynamicText #'font-size = #-1
  }
  \context {
    \Lyrics
    \override VerticalAxisGroup
    #'minimum-Y-extent = #'(-1 . 0)
  }
}

\score {
  <<
    \choirPart
    % Comment next line to leave out the organ part
    \organPart
  >>
}

\markup\fill-line {
  \line {
    Vertaling: Keer u tot ons,
    \smaller HEER – hoe lang nog?
    Ontferm u over uw dienaren.
    \smallCaps (nbv 2004)
  }
}
