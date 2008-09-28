\version "2.11.58"
\include "../include/merge-rests.ly"

#(set-global-staff-size 18)

\header {
  title = "3. Die Könige"
  subtitle = "from “Weihnachtslieder” op. 8"
  composer = "Peter Cornelius (1824-1874)"
  poet = \markup \column {
    \line { Peter Cornelius (1824-1874) }
    \line { Text and melody “Wie schön leuchtet der Morgenstern” (1599) }
    \line { by Philipp Nicolai (1556-1608) }
  }
  copyright = \markup {
    \center-column {
      \line { Arranged and typeset by
        \with-url #"http://www.wilbertberendsen.nl/"
        {Wilbert Berendsen (http://www.wilbertberendsen.nl/)}
      }
      \line { Copyright © 2008
        \with-url #"http://www.cpdl.org/"
        {The Choral Public Domain Library (http://www.cpdl.org/)}
      }
      \line {This edition may be freely distributed, edited, performed or recorded.}
      \null
    }
  }
}

global = {
  \key g \major
  \time 3/4
  \partial 4.
  #(set-accidental-style 'modern)
}

\paper {
  ragged-last-bottom = ##f
  between-system-padding = #0
}

soloVoice = \relative c' {
  \global
  \dynamicUp
  % Muziek volgt hier.
  d8\p b' fis |
  a(g) b, c e8. d16 |
  \time 4/4
  d4 r8 d g a b a16 g |
  g8 c g4 r8 g b c |
  d b16 a g8 fis16 g e8 b'4 a8 |
  g a b ais16 b d8 cis16(b) a4 |
  r8 a gis a c a b a16 g |
  c8 g b a16(g) e8(fis) g d |
  \time 2/4
  e8 fis16(e) d4
  \time 3/4
  r4 r8
  d8 b' fis |
  a(g) b, c e8. d16 |
  \time 4/4
  d4 r8 d g a b a16 g |
  g8 c g4 r8 g b c |
  d b16 a g8 fis16(g) e8 b' b a8 |
  g(a) b ais16(b) d8 cis16(b) a4 |
  r8 a gis a c a b a16 g |
  c8 g b a16(g) e8(fis g) d |
  e8 fis16(e) d4~d8 r8 r4 |
  r4 r8 d b'8. c16 b4 |
  g8 fis e g fis2 |
  r8 d c'8. a16 e'8(d) b(g) |
  r8 g g e b'2 |
  r8^\markup\italic"un poco piú mosso" c b g e fis16 e dis8 e |
  fis c' b a16 g e8 fis16 e dis8 e fis fis c' b a g16(e)
  d8^\markup\italic"rit." d'16 c |
  b4^\markup\italic"a tempo" b8 a16 g d'8(b) g(fis) |
  e fis16(g) d4 r2
  e4\p d8. d16 b'2\fermata
 \bar"|."
}

verseSoloVoice = \lyricmode {
  % Liedtekst volgt hier.
  Drei Kön’ -- ge wan -- dern aus Mor -- gen -- land;
  ein Stern -- lein führt sie zum Jor -- dan -- strand.
  In Ju -- da fra -- gen und for -- schen die drei, wo der
  neu -- ge -- bo -- re -- ne Kö -- nig_ sei?
  Sie wol -- len Weih -- rauch, Myr -- rhen und Gold
  dem Kin -- de __ spen -- den zum Op -- fer -- sold.

  Und hell er -- glän -- zet des Ster -- nes Schein,
  zum Stal -- le ge -- hen die Kön’ -- ge ein;
  das Knäb -- lein schau -- en sie won -- nig -- lich,
  an -- be -- tend nei -- gen die __ Kön’ -- ge __ sich;
  sie brin -- gen Weih -- rauch, Myr -- rhen und Gold
  zum Op -- fer __ dar __ dem Knäb -- lein hold. __

  O Men -- schen -- kind! hal -- te treu -- lich Schritt!
  Die Kön’ -- ge wan -- dern, o wand -- re mit!
  Der Stern der Lie -- be, der Gna -- de Stern,
  er -- hel -- le dein Ziel, so du suchst den Herrn,
  und feh -- len Weih -- rauch, Myr -- rhen und Gold,
  schen -- ke dein Herz __ dem __ Knäb -- lein hold!
  schenk ihm dein Herz!
}

soprano = \relative c'' {
  \global
  \dynamicUp
  % Muziek volgt hier.
  r8 r4 r r
  g\p d' b g d' e e d2 r4 d e fis g fis e e d2 r4 b e d c b a2 g
  r4 r r
  g d' b g d' e e d2 r4 d e fis g fis e e d2 r4 b e d c b a2 g
  d' b R1 d2 b R1 c4 b a b c b a b c c8(b) a2 g\<
  g8\f(g'4) fis8~fis e4 d\> c b8 a2\p g\fermata

}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  r8 r4 r r
  e g fis e g g g g2 r4 g g b b b b a8(g) fis2 r4 g g g g8(fis) g4 g(fis) d2
  r4 r r
  e g fis e g g g g2 r4 g g b b b b a8(g) fis2 r4 g g g g8(fis) g4 g(fis) d2
  fis g R1 fis2 g R1 dis4 e e fis8(e) dis4 e e fis8(e) dis4 e e(d) d(g)
  g g g g fis g g(fis) d2
}

tenor = \relative c' {
  \global
  % Muziek volgt hier.
  r8 r4 r r
  c b d b g8( d') c4 c b2 r4 d b dis e b d cis d2 r4 d c b a8(d) d4 e(d8 c) b2
  r4 r r
  c b d b g8( d') c4 c b2 r4 d b dis e b d cis d2 r4 d c b a8(d) d4 e(d8 c) b2
  a4(d) d2 b4(cis) d2 c4( a8 d) d2 b4(cis) dis2
  fis,4 g e a8(g) fis4 g e a8(g) fis4 g g4.(fis8) g(b cis4)
  d d c b d d e(d8 c) b2
}

bass = \relative c' {
  \global
  \dynamicDown
  % Muziek volgt hier.
  r8 r4 r r
  g\p g, d' e b c c g'2 r4 b g fis e d g a d,2 r4 g c, g' a8(d,)g(b,) c4(d) g2
  r4 r r
  g g, d' e b c c g'2 r4 b g fis e d g a d,2 r4 g c, g' a8(d,)g(b,) c4(d) g2
  d g g4(\<e)\> b2\! a4(d) g2 g4(\<e)\> b2\!
  a4 g c b a g c b a g c(d) g(\<e)
  b\f b' c g\> a b c8(\p c, d4) <g g,>2
}

verseChoir = \lyricmode {
  % Liedtekst volgt hier.
  Wie schön leuch -- tet der Mor -- gen -- stern
  voll Gnad und Wahr -- heit von dem Herrn,
  die sü -- ße Wur -- zel Jes -- se.

  Du Sohn Da -- vids aus Ja -- kobs Stamm
  mein Hei -- land und mein Bräu -- ti -- gam,
  hast mir mein Herz be -- ses --

  \set associatedVoice = "tenor"
  sen.
  Lieb -- lich, lieb -- lich,
  freund -- lich, freund --
  \set associatedVoice = "alto"
  lich,
  schön und herr -- lich, groß und ehr -- lich,
  reich an Ga -- ben, __
  hoch und sehr präch -- tig er -- ha -- ben.

}

\score {
  <<
    \new Staff \with {
      instrumentName = "Solo"
    } { \soloVoice } \addlyrics { \verseSoloVoice }
    \new ChoirStaff \with {
      \consists "Instrument_name_engraver"
      instrumentName = "SATB"
    } <<
      \new Staff \with {
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 6)
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Staff = "men" \with {
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
      \new Lyrics \with {
        alignAboveContext = "men"
        \override VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
      } \lyricsto "alto" { \verseChoir }

    >>
  >>
  \layout {
    system-count = #11
    \context {
      \Staff
      \override RestCollision
      #'positioning-done = #merge-rests-on-positioning
    }
  }
  \midi { }
}

