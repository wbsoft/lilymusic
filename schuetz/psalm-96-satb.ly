\version "2.11.46"

\header {
  title = "“Singet dem Herrn ein neues Lied”"
  subtitle = "Psalm 96"
  composer = "Heinrich Schütz (1585-1672)"
  opus = \markup \column \right-align {
    \line { SWV 194, from the \concat { \italic { Becker Psalter } , } op. 5, }
    \line { Freiberg, 1628; revised Dresden, 1661}
  }
  poet = "Statenberijming 1773"
  copyright = \markup \center-align {
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

global = {
  \key a \minor
  \time 3/4
}

sop = \relative c'' {
  \global
  c4 c c b2 b4 a2 b8( a) gis2 gis4 \breathe
  a c d e2 c4 c b2 c c4 \breathe
  g g g d'2 d4 c2 d8( c) b2. \breathe
  a4 c d e2 a,4 d b2 a2.
  \bar"|."
}

alt = \relative c' {
  \global
  e4 e fis g2e4 e2 d4 e2 e4
  c f d g2 g4 f2 f4 e2 e4
  e e e g2 g4 g2 fis4 g2.
  c,4 f d g2 f4 f e2 e2.
}

ten = \relative c' {
  \global
  c4 c c d2 b4 c2 a4 b2 b4
  a a a b2 c4 d2 d4 g,2 g4
  c c c d2 b4 c2 a4 d2.
  a4 a a b(c) d a2 gis4 a2.
}

bas = \relative c' {
  \global
  a4 a a g2 g4 f2 f4 e2 e4
  f f f e2 e4 d2 d4 c2 c4
  c' c c b2 b4 a2 a4 g2.
  f4 f f e2 d8(e)f(d) e2 a,2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  Zingt, zingt een nieuw ge -- zang den \markup \smallCaps Hee -- \markup \smallCaps re,
  zing, aar -- de, zing dien God ter e -- re!
  Looft \markup { ’s \smallCaps Hee } -- \markup \smallCaps ren naam met hart en mond,
  ver -- meldt Zijn heil op_’t we -- reld -- rond!
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Nu moet uw tong de heid’ -- nen no -- den;
  meldt al -- le vol -- ken Zijn ge -- bo -- den,
  ver -- telt Zijn won -- d’ren en Zijn eer!
  Groot en prijs -- waar -- dig is de \markup \smallCaps Heer!
}

verseFive = \lyricmode {
  \set stanza = "5."
  Geeft d’eer aan ’t_eeu -- wig Op -- per -- we -- zen!
  Zijn Naam wordt nooit ge -- noeg ge -- pre -- zen.
  Ver -- heft Zijn deug -- den, blij te moê,
  brengt in Zijn huis Hem of -- fer toe.
}

verseNine = \lyricmode {
  \set stanza = "9."
  ’t_Juich’ al voor ’t_Aan -- ge -- zicht des \markup \smallCaps Hee -- \markup \smallCaps ren!
  Hij komt, die d’aar -- de zal re -- ge -- ren
  en rich -- ten vol van ma -- jes -- teit,
  van waar -- heid en ge -- rech -- tig -- heid.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \column { S A }
    } <<
      \new Voice ="sop" {
        \voiceOne
        \sop
      }
      \new Voice = "alt" {
        \voiceTwo
        \alt
      }
    >>
    \new Lyrics \lyricsto "sop" \verseOne
    \new Lyrics \lyricsto "sop" \verseTwo
    \new Lyrics \lyricsto "sop" \verseFive
    \new Lyrics \lyricsto "sop" \verseNine
    \new Staff \with {
      instrumentName = \markup \column { T B }
    } <<
      \clef bass
      \new Voice ="ten" {
        \voiceOne
        \ten
      }
      \new Voice = "bas" {
        \voiceTwo
        \bas
      }
    >>
  >>
  \layout {
    system-count = 3
    \context {
      \Score
      \override InstrumentName #'self-alignment-X = #right
    }
  }
}
