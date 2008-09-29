\version "2.11.57"

\header {
  title = "Machet die Tore weit"
  composer = "Andreas Hammerschmidt (1612-1675)"
  poet = "Psalm 24, 7 – 10"
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

global = {
  \key g \mixolydian
  \time 3/4
}

rehearsalMarks = {
  s2.*13
  \mark \default
  s2.*6
  \mark \default
  s2.*10
  \mark \default \bar "||"
  s2.*16
  \mark \default
  s2.*7
  \mark \default \bar "||"
  s2.*10
  \mark \default
  s2.*9
  \mark \default
}

sopranoOne = \relative c'' {
  \global
  % Muziek volgt hier.
  d4. d8 d4 d4. d8 d4 r d d c2 c4 b4.( c8 d4) b a2 g4
  g a b b c d2. a4 a b c c d e4. d8 c4 b2 a4
  e'4. e8 e4 e4. e8 e4 r e e c4. d8 e4 e f2 e2 r4
  R2.*3 r4 a, b c c d e2. b4 b cis dis2 dis4 e e4.( dis8) e2.

  e4 b b b cis d cis cis r R2.*3
  d4 d d b2 r4 r e e c2 c4 a a a d d d b2 b4 r e e c4. d8 e4 d2 r4

  e4. e8 e4 e4. e8 e4 r e e d2 d4 c4.( d8 e4) c b2 a r4

  R2.*10 b4(c)d b(c)d b(c)d e2 e4 e2 e4 e2 e4 e2( d4) e4.(f8 g4) e d2 c4
  e e d2 d4 g,4(a) b c(d) e d4.(c8 b4) e d2 d2.
  \bar"|."
}

sopranoTwo = \relative c'' {
  \global
  % Muziek volgt hier.
  b4. b8 b4 b4. b8 b4 r b b a2 a4 g4.( a8 b4) g g(fis) g2 r4
  R2. r4 d e f f g a2. e2 fis4 gis2 a4
  c4. c8 c4 c4. c8 c4 r c c a4. b8 c4 c c( b) c2 r4
  R2.*5 r4 e, fis g g a b2 b4 b b2 b2.

  gis4 gis gis gis a b a a r R2.*3
  b4 b b g2 r4 r g g a2 a4 fis fis fis b b b g2 g4 r c c a4. b8 c4 b2 r4

  c4. c8 c4 c4. c8 c4 r c c b2 b4 a4.( b8 c4) a a( gis) a2 r4

  R2.*10 g4(a)b g(a)b g(a)b c2 c4 c2 c4 c2 c4 c2(b4) c4.( d8 e4) c c(b) c4
  c c b2 b4 e,( fis) g a(b) c b4.( a8 g4) c a2 b2.
}

alto = \relative c'' {
  \global
  % Muziek volgt hier.
  g4. g8 g4 g4. g8 g4 r g g e2 e4 g2. g4 d2 g r4
  R2.*6
  g4. g8 g4 g4. g8 g4 r g g a4. a8 g4 g f2 g4
  c, d e e f g2. d4 d e f2. e r4 e e e e e fis2 fis4 g fis2 e2.

  R2.*2 a4 e e e fis g fis2 g4 g4 g4.( fis8) g2 r4
  d d d e2. r4 e e d2 d4 fis fis fis g2. r4 e e f4. f8 g4 g2 r4

  g4. g8 g4 g4. g8 g4 r g g g2 g4 e2. e4 e2 e r4

  R2.*4 e4( f) g e( f) g e( f) g g2 g4 e4.( f8 g4) g g4.( fis8) g2 r4
  g2 g4 g2 g4 e( f) g e( f) g e( f) g g2 g4
  g2. g4 g2 g4 g4 g4 g2 g4 g2 g4 c,2 c4 g'2. g4 g4.( fis8) g2.
}

tenor = \relative c' {
  \global
  % Muziek volgt hier.
  d4. d8 d4 d4. d8 d4 r d b c2 c4 d2. e4 a,2 b r4
  r4 g4 a b b c d2. a4 a b c c d e2 a,4
  e'4. c8 c4 c4. c8 c4 r c c c4. c8 c4 c d2 e r4
  R2.*5 r4 c c b b b b2 b4 b b2 b2.

  e4 e e e2 e4 cis cis cis cis d e a,2 d4 e d2 b r4 b b b g2.
  r4 c c d2 d4 d d d e2. r4 c c c4. c8 c4 d2 r4

  c4. c8 c4 c4. c8 c4 r c c d2 d4 a2. a4 b2 cis r4

  R2. b4(c)d b(c)d b(c)d e2 e4 e2 e4 e2 e4 e2 d4 c4. d8 e4 d d2 d r4
  R2.*2 e2 e4 e2 e4 e2 e4 e2 b4 e4.( d8 c4) c d2 e4
  c c d2 d4 c2 d4 e2 c4 d2. e4 a,( d) d2.
}

bassOne = \relative c' {
  \global
  % Muziek volgt hier.
  b4. b8 b4 b4. b8 b4 r g g c2 c4 g2. g4 d'( d,) g2 r4
  R2.*6
  g4. g8 g4 g4. g8 g4 r g g f4. f8 g4 g d'2 g,2 r4
  R2. r4 g a b b c d2. a2. r4 g g g g g fis2 fis4 e fis2 gis2.

  R2.*2 e4 a a a d cis d2 g,4 c a2 g r4
  g g g e2. r4 a a d2 a4 b b b e,2. r4 g g a4. a8 g4 g2 r4

  g4. g8 g4 g4. g8 g4 r g g g2 g4 c4.( b8 a4) e e2 a r4

  R2. g4( a) b g( a) b g( a) b c2 c4 c2 c4 c2 c4 c2 b4 c4. c8 c4 b a2 g2 r4
  R2.*2 c2 c4 c2 c4 c2 c4 c2 g4 c2. g4 g2 c4
  g g g2 g4 g2 g4 c2 a4 d2. g,4 d'( a) g2.
}

bassTwo = \relative c' {
  \global
  % Muziek volgt hier.
  g4. g8 g4 g4. g8 g4 r g g a2 a,4 b2. c4 d2 g, r4
  R2.*6
  c4. c8 c4 c4. c8 c4 r c c f4. f8 e4 e d2 c2 r4
  r c d e e f g2. d r4 a b c c d e2. b e4 b2 e2.

  R2.*2 a,4 a a a a a d2 b4 c d2 g r4 R2.*3
  d4 d d b2. r4 e e c2 c4 f4. f8 e4 g2 r4

  c,4. c8 c4 c4. c8 c4 r c c g'2 g,4 a2. a4 e'2 a, r4

  d( e) fis g2 g4 g2 g4 g2 g4 c,( d) e c( d) e c( d) e e( f) g c,2. g'4 d2 g r4
  R2.*2
  c,4( d) e c( d) e c( d) e e( f) g c,2. c4 g'2 c,4
  c c g'2 g,4 c2 b4 a2 a4 b2. c4 d2 g2.
}

sopranoOneVerse = \lyricmode {
  % Liedtekst volgt hier.
  Ma -- chet die To -- re weit und die Tü -- ren in __ der Welt hoch,
  daß der Kö -- nig der Eh -- ren, daß der Kö -- nig der Eh -- ren ein -- zie -- he.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch,
  daß der Kö -- nig der Eh -- ren, daß der Kö -- nig ein -- zie -- he.

  Wer ist der -- sel -- bi -- ge Kö -- nig?
  Es ist der Herr, stark und mäch -- tig,
  es ist der Herr, stark und mäch -- tig,
  stark und mäch -- tig im Streit.

  Ma -- chet die To -- re weit und die Tü -- ren in __ der Welt hoch!

  Ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na,
  dem __ Soh -- ne Da -- vids,
  ho -- si -- an -- na,
  ho -- si -- an -- na in __ der Hö -- he.
}

sopranoTwoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Ma -- chet die To -- re weit und die Tü -- ren in __ der Welt __ hoch,
  daß der Kö -- nig der Eh -- ren ein -- zie -- he.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt __ hoch,
  daß der Kö -- nig der Eh -- ren ein -- zie -- he.

  Wer ist der -- sel -- bi -- ge Kö -- nig?
  Es ist der Herr, stark und mäch -- tig,
  es ist der Herr, stark und mäch -- tig,
  stark und mäch -- tig im Streit.

  Ma -- chet die To -- re weit und die Tü -- ren in __ der Welt __ hoch!

  Ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na,
  dem __ Soh -- ne Da -- vids,
  ho -- si -- an -- na,
  ho -- si -- an -- na in __ der Hö -- he.
}

altoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch,
  daß der Kö -- nig der Eh -- ren, daß der Kö -- nig, daß der Kö -- nig der Eh -- ren ein -- zie -- he.

  Wer ist der -- sel -- bi -- ge Kö -- nig der Eh -- ren?
  Es ist der Herr, stark und mäch -- tig,
  es ist der Herr,
  stark und mäch -- tig im Streit.

  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch!

  Ho -- si -- an -- na,
  ho -- si -- an -- na in __ der Hö -- he.
  Ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
}

tenorVerse = \lyricmode {
  % Liedtekst volgt hier.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch,
  daß der Kö -- nig der Eh -- ren, daß der Kö -- nig ein -- zie -- he.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch,
  daß der Kö -- nig der Eh -- ren ein -- zie -- he.

  Wer ist der -- sel -- be,
  wer ist der -- sel -- bi -- ge Kö -- nig der Eh -- ren?
  Es ist der Herr, stark und mäch -- tig,
  es ist der Herr,
  stark und mäch -- tig im Streit.

  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch!

  Ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
  Ho -- si -- an -- na,
  ho -- si -- an -- na in __ der Hö -- he,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
}

bassOneVerse = \lyricmode {
  % Liedtekst volgt hier.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt __ hoch.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch,
  daß der Kö -- nig der Eh -- ren, daß der Kö -- nig der Eh -- ren ein -- zie -- he.

  Wer ist der -- sel -- bi -- ge Kö -- nig der Eh -- ren?
  Es ist der Herr, stark und mäch -- tig,
  es ist der Herr,
  stark und mäch -- tig im Streit.

  Ma -- chet die To -- re weit und die Tü -- ren in __ der Welt hoch!

  Ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
  Ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
}

bassTwoVerse = \lyricmode {
  % Liedtekst volgt hier.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch.
  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch,
  daß der Kö -- nig der Eh -- ren, daß der Kö -- nig der Eh -- ren ein -- zie -- he.

  Wer ist der -- sel -- bi -- ge Kö -- nig der Eh -- ren?
  Es ist der Herr, stark und mäch -- tig,
  mäch -- tig im Streit.

  Ma -- chet die To -- re weit und die Tü -- ren in der Welt hoch!

  Ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
  Ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he,
  ho -- si -- an -- na,
  ho -- si -- an -- na in der Hö -- he.
}
