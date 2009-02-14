\version "2.12.1"

#(set-global-staff-size 18)
\paper {
  ragged-last-bottom = ##f
  between-system-padding = #0
}
\layout { system-count = #15 }

\header {
  title = "Alleluia Surrexit Dominus"
  subtitle = "(1538)"
  composer = "Jacquet de Mantua (1483-1559)"
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
}

global = {
  \key f \major
  \time 2/2
}

soprano = \relative c' {
  \global
  % Muziek volgt hier.
  f2. e4 d2 c4
  c'2\melisma bes4 a4. g8 a f g4. f8\melismaEnd f2 e4 f2
  R1*3 r2 r4
  bes2 a4 g2 f4 c'2\melisma bes4 a4. g8 a f g4. f8\melismaEnd f2 e4
  a4.\melisma g8 a f\melismaEnd g4.\melisma f8\melismaEnd f2 e4 f1
  R1*4
  % et apparuit
  f4. f8 f4 f e2 g g a4 a a\melisma g8 f\melismaEnd g2 f r4
  f4.\melisma g8 a f\melismaEnd g4 f4.\melisma g8 a f\melismaEnd g2
  r4 c,4.\melisma d8 e c d c\melismaEnd f2 e4 f1
  % exultemus
  R1 r4 f2 c4 f2 e1 r2 r r4 f2 c4 f2 e4 c'2 g4 c2.\melisma bes4 a2\melismaEnd g
  % dies ista
  r4 g a g e e f g c,8\melisma d e c d4\melismaEnd e4 d8\melisma c f4 e f d g f g2 f8 e\melismaEnd d2 c2 r R1*2
  % haec dies
  r4 g' a2 g4 c bes g a\melisma bes g a2\melismaEnd g8\melisma f\melismaEnd e2
  % exultemus
  R1*3 r4 g e f d2 c4 f2\melisma e8 d e4\melismaEnd a2\melisma g8 f g4 a2 g8 f g2\melismaEnd a4 f2\melisma e8 d e4\melismaEnd f4.\melisma e8 d4 \melismaEnd c2 r
  % alleluia
  r4 f2 e4 d2 c4
  c'2\melisma bes4 a4. g8 a f g4. f8\melismaEnd f2 e4 f2
  R1*3 r2 r4
  bes2 a4 g2 f4 c'2\melisma bes4 a4. g8 a f g4. f8\melismaEnd f2 e4
  a4.\melisma g8 a f\melismaEnd g4.\melisma f8\melismaEnd f2 e4 f1~f\fermata
  \bar "|."
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  R1
  r4 f2 e4 d2 c r4 bes2 a4 g2 f
  R1*6 r4
  f'2 e4 d2 c~c r4 g a4. bes8 c4 g a4. bes8 c2
  R1*3
  % et apparuit
  bes4. bes8 bes4 bes a2 c c d r4 d d\melisma c4. bes8 a2\melismaEnd g4 a f8\melisma g\melismaEnd a\melisma f\melismaEnd bes2 a4 r4 bes8\melisma c d bes\melismaEnd f'2 e4 f
  f,8\melisma g a f\melismaEnd c'2 bes4 c1
  % exultemus
  r4 c2 f,4 c'4.\melisma bes8 a g a4. g8 g2 f4\melismaEnd g2
  r4 c2 f,4 c'4.\melisma bes8 a g a4. g8 g2 f4\melismaEnd g2
  r4 c2 a4 f'2.\melisma e4 d2\melismaEnd c1
  % dies ista
  r4 c d c a a bes c f,8\melisma g a f g4\melismaEnd a bes8\melisma f bes4 a bes g c2\melismaEnd b4 c2 r R1
  % haec dies
  r4 c d2 c r4 f e c d\melisma e c d4. c8 c2\melismaEnd bes4 c1. R1
  % exultemus
  r4 c a bes g c2\melisma bes8 a bes4\melismaEnd bes c\melisma a2 g8 f\melismaEnd g4 f8\melisma g\melismaEnd a\melisma f\melismaEnd f'4 r f,8\melisma g a f\melismaEnd f'2 e4 f c2 bes4 c\melisma f,8 g a f\melismaEnd f'2 f,8\melisma g a f\melismaEnd c'2 b4 c2
  % alleluia
  r4 f2 e4 d2 c r4 bes2 a4 g2 f
  R1*6 r4
  f'2 e4 d2 c~c r4 g a4. bes8 c4 g a4. bes8 c2~c1\fermata
}

tenor = \relative c {
  \global
  % Muziek volgt hier.
  R1*4
  r2 r4 f2 e4 d2 c4
  c'2\melisma bes4 a4. g8 a f g4. f8\melismaEnd f2 e4 f2
  r4 bes2 a4 g2 f4 c'2.\melisma a4\melismaEnd bes g2 f4.\melisma e8 d4\melismaEnd c f2 g f1
  % surrexit
  r4 c d e f g a bes c4.\melisma bes8 a g\melismaEnd bes4.\melisma a8 g f \melismaEnd g4 g f1
  r2 bes4. bes8 bes4 bes a2 c c d4 d d2 c bes4 d2 c4 d\melisma bes\melismaEnd c a2\melisma g4 a\melismaEnd f g2 f1.
  % exultemus
  r4 c'2 f,4 c'2.\melisma bes4\melismaEnd c1 r2 r4 c2 f,4 c'2.\melisma bes4 c1\melismaEnd f,4 c'4. a8 d4.\melisma c8 c2 b4\melismaEnd c1
  % dies ista
  R1*4 r4 g a g e e f g c,8\melisma d e f g a bes g a bes c a bes a g f g2 f\melismaEnd
  R1*2 r2 r4 g a2 g4 c bes g a\melisma bes g a2\melismaEnd g8\melisma f\melismaEnd e2 r R1 r2
  % exultemus
  r4 c' a bes g c2\melisma bes8 a bes4\melismaEnd bes c\melisma a2 g8 f g4\melismaEnd a f bes2\melisma a4. g8 g2 f4 g c2 b4 c2\melismaEnd g
  r2 R1
  % alleluia
  r2 r4 f2 e4 d2 c4
  c'2\melisma bes4 a4. g8 a f g4. f8\melismaEnd f2 e4 f2
  r4 bes2 a4 g2 f4 c'2.\melisma a4\melismaEnd bes g2 f4.\melisma e8 d4\melismaEnd c f2 g f1~f\fermata
}

bass = \relative c {
  \global
  % Muziek volgt hier.
  R1*5
  r2 r4 f2 e4 d2 c r4 bes2 a4 g2 f4 f' f e f2 r r4
  f2\melisma c4 d\melismaEnd bes c2 f,4 f'2 e4 d2\melisma c\melismaEnd f, r4
  % surrexit
  f g a bes c d e f g a4.\melisma g8 f e g4. f8\melismaEnd f2 e4
  f4. f8 f4 f c c g'2 g f4 f f2\melisma e d2. bes4 f'2\melismaEnd bes,4
  bes'2 a4 g2 f4 f2 e4 d2\melisma c\melismaEnd f,1
  % exultemus
  r4 f'2 c4 f2.\melisma e4 d2\melismaEnd c1
  r4 f2 c4 f2.\melisma e4 d2\melismaEnd c1
  r4 f2 bes,4 f'2\melisma g\melismaEnd c,1. r2
  % dies ista
  R1*2 r4 g' a g e e f g c,8\melisma d e c d4\melismaEnd c8\melisma d e f g4 e8 f g e\melismaEnd f4\melisma a g f2 e4 d\melismaEnd f c2 r
  % haec dies
  r2 r4 c d2 c r4 f e c d\melisma e c d4. c8 c2\melismaEnd bes4 c2 r
  % exultemus
  r4 g' e f d2 c4 f2\melisma e8 d e4 f2 a4 g2\melismaEnd f4.\melisma e8 d2 c4\melismaEnd f2 bes,4 f'2.\melisma e4 d2\melismaEnd c2
  R1*4
  r2 r4 f2 e4 d2 c r4 bes2 a4 g2 f4 f' f e f2 r r4
  f2\melisma c4 d\melismaEnd bes c2 f,4 f'2 e4 d2\melisma c\melismaEnd f,1~f\fermata
}

sopranoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
  Al -- le -- lu -- ia, al -- le -- lu -- ia, __
  al -- le -- lu -- ia.
  Et ap -- pa -- ru -- it Si -- mo -- ni,
  al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  Ex -- ul -- te -- mus __ et __ læ -- te -- mur,
  et læ -- te -- mur:
  di -- es i -- sta læ -- ti -- ti -- æ, __
  læ -- ti -- ti -- æ. 
  Hæc di -- es, quam fe -- cit Do -- mi -- nus;
  ex -- ul -- te -- mus et læ -- te -- mur in __ e -- a.
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
  Al -- le -- lu -- ia, al -- le -- lu -- ia, __
  al -- le -- lu -- ia. __
}

altoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Al -- le -- lu -- ia, al -- le -- lu -- ia.
  Al -- le -- lu -- ia, __ al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  Et ap -- pa -- ru -- it Si -- mo -- ni,
  al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia. __
  Ex -- ul -- te -- mus et læ -- te -- mur,
  et __ læ -- te -- mur:
  di -- es i -- sta læ -- ti -- ti -- æ, __
  læ -- ti -- ti -- æ. 
  Hæc di -- es, quam fe -- cit Do -- mi -- nus; __
  ex -- ul -- te -- mus et __ læ -- te -- mur in __ e -- a.
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  Al -- le -- lu -- ia, __ al -- le -- lu -- ia,
  al -- le -- lu -- ia. __
}

tenorVerse = \lyricmode {
  % Liedtekst volgt hier.
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia, __
  al -- le -- lu -- ia.
  Sur -- re -- xit Do -- mi -- nus ve -- re, __
  al -- le -- lu -- ia,
  et ap -- pa -- ru -- it Si -- mo -- ni,
  al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia. __
  Ex -- ul -- te -- mus __ et læ -- te -- mur,
  et læ -- te -- mur:
  di -- es i -- sta læ -- ti -- ti -- æ. __
  Hæc di -- es, quam fe -- cit Do -- mi -- nus;
  ex -- ul -- te -- mus et __ læ -- te -- mur in e -- a.
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia, __
  al -- le -- lu -- ia. __
}

bassVerse = \lyricmode {
  % Liedtekst volgt hier.
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  Sur -- re -- xit Do -- mi -- nus ve -- re,
  al -- le -- lu -- ia,
  et ap -- pa -- ru -- it Si -- mo -- ni,
  al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia.
  Ex -- ul -- te -- mus __ et __ læ -- te -- mur,
  et læ -- te -- mur: __
  di -- es i -- sta læ -- ti -- ti -- æ, __
  læ -- ti -- ti -- æ. 
  Hæc di -- es, quam fe -- cit Do -- mi -- nus;
  ex -- ul -- te -- mus et læ -- te -- mur in e -- a.
  Al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia, al -- le -- lu -- ia,
  al -- le -- lu -- ia. __
}

\score {
  \transpose f' a'
  \new ChoirStaff <<
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \sopranoVerse }
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \altoVerse }
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerse }
    \new Staff \with {
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \bassVerse }
  >>
  \layout {
    \context {
      \Voice
      \remove "Note_heads_engraver"
      \consists "Completion_heads_engraver"
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 2)
    }
  }
}

\markup \justify \italic {
  Vertaling: Alleluja! De Heer is waarlijk opgestaan en aan Simon verschenen.
  Laten wij juichen en ons verheugen: dit is de dag die de Heer heeft gemaakt;
  laten wij juichen en ons verheugen in hem. Alleluja!
}
