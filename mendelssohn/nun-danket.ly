\version "2.11.46"

#(set-global-staff-size 18)

\header {
  title = "Dankt, dankt nu allen God"
  subtitle = "Nun danket alle Gott"
  subsubtitle = %{Nº 8. %}"from “Lobgesang“ (Hymn of Praise)"
  composer = \markup\override#'(baseline-skip . 2.5)\column\right-align{
    "Felix Mendelssohn-Bartholdy (1809-1847)"
    "melody: Johann Crüger (1598-1662)"
  }
  poet = \markup\override#'(baseline-skip . 2.5)\column{
    "Text: Martin Rinckart (1586-1649)"
    "Dutch translation:"
    "Johannes Riemens Sr. (1843-1908) (vs 1, 2)"
    "Johannes Elias Schröder (1851-1930) (vs 3)"
  }
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


\paper {
  between-system-padding = 0
}

tempoMark = {
  \override Score.MetronomeMark #'stencil = ##f
  \tempo 4=90
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'font-series = #'bold
  \once \override Score.RehearsalMark #'font-size = #0
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature)
  \once \override Score.RehearsalMark #'extra-offset = #'(-0.5 . 0)
  \mark "Andante con moto."
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

sopI = \relative c'' {
  \global
  d4 d d e e d2. \breathe
  d4 c b a b a2 g4\fermata \breathe
  d' d d e e d2. \breathe
  d4 c b a b a2 g4\fermata \breathe
  a a a b d a2. \breathe
  a4 b8( cis) d4 e cis d2. \breathe
  d4 e d c b c2. \breathe
  b4 a g g fis g1
  \bar "||"
}

sopII = \relative c'' {
  \global
  a4 a g c c b2. \breathe
  b4 a g fis g g(fis) g\fermata \breathe
  b c b c8( b) a4 b2. \breathe
  g4 c g a fis a4.( fis8) d4\fermata \breathe
  a' a a a g fis2. \breathe
  d4 b' a g cis b2. \breathe
  b4 b d a b a2. \breathe
  d,4 e8( fis) g4 g d d1
  \bar "||"
}

alt = \relative c' {
  \global
  fis4 fis g g e8( fis) g2. \breathe
  b4 e,8(fis) g4 d d d2 d4\fermata \breathe
  g a b g g8( fis) g2.\breathe
  d4 e8(fis) g4 g8( fis) e( dis) e4( a,) b\fermata \breathe
  fis'4 g fis8( e) d4 d d2. \breathe
  d4 d8( e) fis4 g g8( fis) fis2.\breathe
  fis4 e e a gis a2.\breathe
  g8(fis) e4 b8( c) d4 d d1
  \bar "||"
}

tenI = \relative c' {
  \global
  d4 d g e c d2.\breathe
  g8(f) e4 d d d d(c) b\fermata\breathe
  d4 d d c8(d) e4 b2.\breathe
  b4 c d e b e( d8 c) b4\fermata \breathe
  d4 e d8( cis) b4 b a2.\breathe
  d4 d d d8(cis) b(ais) b2.\breathe
  b4 e e e e e2.\breathe
  d4 c g8( a) b4 c b1
  \bar "||"
}

tenII = \relative c' {
  \global
  d4 d d c g8( a) b2.\breathe
  b4 c d c b c8( b a4) b\fermata \breathe
  b a g g c d2. \breathe
  g,4 g8( a) b4 c fis, e8( g fis4) g\fermata \breathe
  a a d d d fis,2. \breathe
  a4 g a b e d2. \breathe
  d4 b a8( b) c4 d c2.\breathe
  g4 c b8( g) g4 a g1
  \bar "||"
}

bas = \relative c' {
  \global
  d4 c b c c, g'2. \breathe
  <<
    { g4 a b8( c) d4 g, }
    { g,4 a b8( c) d4 g, }
  >>
  d'2 <g, g'>4\fermata \breathe
  g'4 f f e8( d) c4 g'2. \breathe
  g8( fis) e4 d c b c(d) <g, g'>4\fermata \breathe
  d'4 cis d g,8(a) b(cis) d2.\breathe
  fis4 g fis e fis b,2.\breathe
  b'8(a) gis4 fis8(gis) a4 e a,2.\breathe
  b4 c e d d g,1
  \bar"||"
}

versOne = \lyricmode {
  \set stanza = "1."
  Dankt, dankt nu al -- len God
  met blij -- de feest -- ge -- zan -- gen!
  Van Hem is't heug' -- lijk lot,
  het heil dat wij ont -- van -- gen.
  Hij ziet in Chris -- tus ons
  al -- tijd ge -- na -- dig aan,
  en heeft ons dag aan dag
  met goed -- heid o -- ver -- laân.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup\column{ "Soprano 1" "Soprano 2" }
      %shortInstrumentName = \markup\column{ S.1 S.2 }
    } <<
      \new Voice = "sop1" { \voiceOne \tempoMark \sopI }
      \new Voice = "sop2" { \voiceTwo \sopII }
    >>
    \new Lyrics \lyricsto "sop1" \versOne
    \new Staff \with {
      instrumentName = "Alto"
      %shortInstrumentName = "A."
    } \alt
    \new Lyrics \lyricsto "sop1" \versOne
    \new Staff \with {
      instrumentName = "Tenor 1"
      %shortInstrumentName = "T.1"
    } { \clef "G_8" \tenI }
    \new Lyrics \lyricsto "sop1" \versOne
    \new Staff \with {
      instrumentName = "Tenor 2"
      %shortInstrumentName = "T.2"
    } { \clef "G_8" \tenII }
    \new Lyrics \lyricsto "sop1" \versOne
    \new Staff \with {
      instrumentName = "Bass"
      %shortInstrumentName = "B."
    } { \clef bass \bas }
  >>
  \header {
    opus = "op. 52 nr. 8"
  }
  \layout {
    indent = 20\mm
    %short-indent = 7\mm
    \context {
      \Staff
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 4)
    }
  }
}


\markup \fill-line {
  \line {
    \bold "2. "
    \column {
      \line { Hij, d’eeuwig rijke God, }
      \line { "  " wil ons reeds in dit leven }
      \line { zijn vreed’ en heilgenot, }
      \line { "  " als aan zijn kind’ren geven. }
      \line { Hij zal ons door zijn Geest }
      \line { vermeerd’ren licht en kracht, }
      \line { en ons uit allen nood }
      \line { verlossen door zijn macht. }
      \line { " " }
    }
  }
}

verseThree = \lyricmode {
  \set stanza = "3."
  Lof, eer en prijs zij God
  door al -- ler scheps’ -- len ton -- gen,
  op zij -- nen he -- mel -- troon
  aan -- bid -- dend toe -- ge -- zon -- gen:
  den Va -- der en den Zoon, __
  die met den Heil’ -- gen Geest,
  Drie -- e -- nig God, steeds blijft, __
  en im -- mer is ge -- weest! __
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "SATB"
    } <<
      \new Voice \relative c'' {
        \key g \major
        \repeat unfold 2 {
          R1 r2 r4 d d d e e d2 r4 d c b a b a2 g
        }
        R1 r4 a a a b8( cis) d4 a2~a r4
        a b8( cis) d4 e cis d2. r4
        R1*2
        r4 d e d c b c2~c r \break
        R1 r2 r4
        \voiceOne
        b a g g fis g1~g4
        \oneVoice
        r r2 R1*3
        \bar"|."
      } \addlyrics { \verseThree }
      \new Voice \relative c'' {
        \key g \major
        s1*24 s2.
        \voiceTwo
        g8(f) e4 c d c b1~b4
      }
    >>
    \new Staff \relative c' {
      \clef bass
      \key g \major
      R1*24 r2 r4
      <<
        { d4 c g b a g1~g4 }
        \\
        { g4 c, e d d <g g,>1 ~ <g g,>4 }
      >>
      r4 r2 R1*3
    }
  >>
  \layout {
    \context {
      \RemoveEmptyStaffContext
    }
    \context {
      \Score
      skipBars = ##t
      \override VerticalAxisGroup #'remove-first = ##t
    }
  }
}
