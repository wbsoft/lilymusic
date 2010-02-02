\version "2.13.10"

#(set-global-staff-size 17)

\paper {
  ragged-last-bottom = ##f
}

\header {
  title = "Psalm 22"
  composer = "Claude Goudimel (1514-1572)"
  poet = "Berijming 1773"
  tagline = ##f
  copyright = \markup \fontsize #-1 \center-column {
    \line {
      Engraved by
      \with-url #"http://www.wilbertberendsen.nl/" {
        Wilbert Berendsen
        (http://www.wilbertberendsen.nl/)
      }
    }
    \line {
      Copyright © 2010
      \with-url #"http://www.cpdl.org/" {
        The Choral Public Domain Library
        (http://www.cpdl.org/)
      }
    }
    \line {
      This edition may be freely distributed,
      edited, performed or recorded.
    }
    \line {
      Engraved at
      \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
      with \with-url #"http://lilypond.org/web/"
      { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
    }
  }
}

\layout {
  system-count = #5
  \context {
    \Lyrics
    \override VerticalAxisGroup #'inter-loose-line-spacing = #'((minimum-distance . 3.0))
  }
}


global = {
  \key d \minor
  \time 2/2
  \set Score.measureLength = #(ly:make-moment 4 2)
}

soprano = \relative c' {
  \global
  % Muziek volgt hier.
  d2 f bes a4 d, f f f2 e d r
  e d4 e f2 f e4 d b2 d cis r
  d2 e4 f f f f f e2 e d r
  f2 e4 d cis2 d r
  f e4 f d2 f a4 g f f f2 e r
  e f4 f f2 c d4 e f e d2 c r
  c bes4 c d d e f f f e2 d r
  f e4( d2) cis4 d\breve
  \bar "|."
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  bes2 bes d d4 a d d c2 c a r
  a a4 c c2 c c4 a g2 f a r 
  a c4 c bes c d c c2 c a r
  c c4 a a2 a r 
  d cis4 d bes2 a c4 c c d c2 c r
  c c4 c f,2 a a4 c c c a2 a r
  g g4 g bes a c c d c c2 a r
  c bes a a\breve
  \bar "|."
}

tenor = \relative c {
  \global
  % Muziek volgt hier.
  \once \override TextScript #'X-offset = #-3.5
  f2^\markup \italic { c.f. } d g f4 f bes bes a2 g f r
  c f4 g a2 a g4 f d2 d e r
  f g4 a d, a' bes a g2 g f r
  a g4 f e2 d r
  a' a4 a g2 c, f4 g a bes a2 g r
  a a4 a d,2 e f4 g a g f2 e r
  c d4 e f f g a bes a g2 f r
  a g e d\breve
  \bar "|."
}

bass = \relative c {
  \global
  % Muziek volgt hier.
  bes2 bes g d'4 d bes bes f'2 c d r
  a d4 c f2 f, c'4 d g,2 bes a r
  d c4 f bes, f' bes, f c'2 c d r
  f, c'4 d a2 d r
  d a4 d g,2 f f4 c' f bes, f'2 c r
  a f4 f bes2 a d4 c f c d2 a r
  c g4 c bes d c f bes, f c'2 d r
  f, g a d\breve
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Liedtekst volgt hier.
  Mijn God, mijn God, waar -- om ver -- laat Gij mij,
  En redt mij niet, ter -- wijl ik zwoeg en strij’,
  En brul -- lend klaag in d’_ang -- sten die ik lij’?
  Dus fel ge -- sla -- gen?
  ’t_Zij ik, mijn God, bij dag moog’ bit -- ter kla -- gen.
  Gij ant -- woordt niet; ’t_zij ik des nachts moog’ ker -- men.
  Ik heb geen rust, ook vind ik geen ont -- fer -- men,
  In mijn ver -- driet.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Liedtekst volgt hier.
  ’k_Er -- ken noch -- tans, Gij, Gij zijt hei -- lig, \markup\smallCaps Heer,
  En hebt Uw huis, den ze -- tel U -- wer eer.
  Bij Is -- rel, daar Uw lof klinkt keer op keer,
  In gunst doen bou -- wen.
  Op U stond vast der va -- de -- ren be -- trou -- wen:
  Gij zaagt hen aan, Gij hebt, wan -- neer z’_in no -- den
  Tot U om hulp, ver -- trou -- wend, zijn ge -- vlo -- den,
  Hen bij -- ge -- staan.
}

verseFourteen = \lyricmode {
  \set stanza = "14."
  Eer -- lang ge -- denkt hier -- aan het we -- reld -- rond;
  Haast wendt het zich tot God met hart en mond;
  En, waar men ooit de wild -- ste vol -- ken vond,
  Zal God ont -- van -- gen
  Aan -- bid -- ding, eer en dank -- b’re lof -- ge -- zan -- gen,
  Want Hij re -- geert, en zal zijn al -- macht to -- nen:
  Hij heerst, zo -- ver de blind -- ste heid’ -- nen wo -- nen,
  Tot Hem be -- keerd.
}


\score {
  \transpose d g
  \new ChoirStaff <<
    \new Staff \with {
%       midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "S." "A." }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "alto" \verseOne
    \new Lyrics \lyricsto "alto" \verseTwo
    \new Lyrics \lyricsto "alto" \verseFourteen
    \new Staff \with {
%       midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "T." "B." }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\markup\vspace #1
\markup \fontsize #1 {
  \line {
    \hspace #10
    \bold \small 16.
    \override #'(baseline-skip . 2.8) \column {
      \line { Zij komen \italic { aan, door godd’lijk } licht geleid, }
      \line { Om \italic { ’t nakroost, } dat den \italic { \smallCaps Heer wordt } toebereid, }
      \line { Te \italic { melden ’t heil van Zijn } \concat { \italic ge rechtigheid } }
      \line { En \italic grote daden. }
    }
  }
}
