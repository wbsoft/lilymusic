\version "2.14.2"

#(set-global-staff-size 16)
organPartSize = #-1

\header {
  title = "Hallelujah"
  subtitle = "from Messiah, 1741"
  poet = "Revelation 11:15b, 19:6b, 16b"
  composer = "Georg Friedrich Händel (1685-1759)"
  copyright = \markup
  \fontsize #-1
  \override #'(baseline-skip . 2.2)
  \center-column {
    \with-url #"http://www.wilbertberendsen.nl/mouvement"
    \line {
      Copyright © 2011 by Wilbert Berendsen(http://www.wilbertberendsen.nl/)
    }
    \line {
      Based upon the Deutsche Händelgesellschaft edition by Friedrich Chrysander, 1892.
    }
    \line {
      This edition may be freely copied, distributed,
      performed and recorded under the provisions of the
    }
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/nl/"
    \line {
      Creative Commons License \concat {( \tiny BY-NC-SA , }
      http://creativecommons.org/licenses/by-nc-sa/3.0/nl/).
    }
  }
  tagline = \markup {
    Engraved at
    \simple #(strftime "%d-%m-%Y" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

global = {
  \tempo "Allegro"
  \key d \major
  \numericTimeSignature
  \time 4/4
}

soprano = \relative c'' {
  \global
  \autoBeamOff
  | R1*3
  | d4. a8 b a r4
  | d4. a8 b a r d16 d
  | d8 d r d16 d d8 d r d
  | cis( d4) cis8 d4 r
  | e4. a,8 fis' e r4
  | e4. a,8 fis' e r e16 e
  | fis8 e r e16 e fis8 e r e
  | fis[ e] d4 cis r
  | a2 b4 cis
  | d8 d, d'4. d8 cis4
  | b2 a4 r8 e'16 e
  | d8 cis r e16 e d8 cis r e16 e
  | fis8 e r e16 e fis8 e r4
  | R1*2
  | r2 r4 r8 d16 d
  | d8 d r d16 d d8 d r d16 d
  | d8 d r d16 d d8 d r4
  | d2 e4 fis
  | g8 g, g'4. g8 fis4
  | e2 d4 r8 d16 d
  | cis8 a r cis16 cis d8 d16 d e8 e
  | a,4 r8 d16 cis b8 b r e
  | d[ cis] d[ e16 d] cis8 cis16 cis e8 cis
  | r a16 a d8 a r cis16 cis e8 cis
  | r a16 a fis'8 d r cis16 cis d8 a
  | r b16 b e8 e r cis16 cis d8 d
  | d4 cis d d
  | d d d2
  | r r4 a
  | a g fis e8.[ d16]
  | d1
  | r2 fis4 e8.[ d16]
  | d2. fis'4
  | e d d cis
  | d4. cis8 d4 d
  | cis4. a8 b4 cis
  | d2 r
  | R1*6
  | r2 r4 d
  | a' cis, fis a,
  | d cis8 b cis4 \melisma b8.[ a16]\melismaEnd
  | a2 a4 a
  | a1~
  | a
  | r4 a a a
  | a1~
  | a
  | r2 d4 d
  | d1~
  | d~
  | d4 d e e
  | e1~
  | e~
  | e2 fis4 fis
  | fis1~
  | fis~
  | fis4. fis8 g4 g
  | g1~
  | g4. g8 fis[ e] fis[ g]
  | e2 r8 cis d e
  | a,4 r r2
  | r r4 a
  | d fis, b d,
  | g fis8 e fis4 \melisma e8.[ d16]\melismaEnd
  | d2 r
  | r4 r8 d' g fis r d
  | g fis r4 r2
  | r4 r8 d16 d g8 fis r d16 d
  | g8 fis r a, a4 d
  | fis d d a8 a
  | cis4 d8 d d4( cis)
  | d r a a
  | d r8 a a4 a
  | d r a a
  | d r8 a a4 a
  | d r r a
  | d fis b, d
  | g fis8 e e2
  | d4 r d d
  | d r8 d d4 d
  | d r8 d16 d d8 d r d16 d
  | d8 d r d16 d d8 d r d16 d
  | d8 d r4 r d
  | d2. d4
  | d1
}

alto = \relative c'' {
  \global
  \autoBeamOff
  | R1*3
  | a4. a8 g fis r4
  | a4. a8 g fis r a16 a
  | b8 a r a16 a b8 a r a
  | g[ fis e] e fis4 r
  | a4. a8 a a r4
  | a4. a8 a a r a16 a
  | a8 a r a16 a a8 a r a
  | a4. gis8 a4 r
  | a2 b,4 cis
  | d8 d d4. d8 cis4
  | b2 a4 r8 a'16 a
  | a8 a r a16 a a8 a r a16 a
  | a8 a r a16 a a8 a r4
  | d,2 e4 fis
  | g8 g, g'4. g8 fis4
  | e2 d4 r8 a'16 a
  | b8 a r a16 a b8 a r a16 a
  | b8 a r a16 a b8 a r4
  | R1
  | r2 r4 r8 a16 a
  | g8 e a a a a16 a fis8 d
  | r e16 e cis8 a r g'16[ fis] e8 a16[ g]
  | fis4 r8 b16 a gis8 e a4~
  | a gis a r8 e16 e
  | a8 fis r fis16 fis e8 cis r4
  | d2 e4 fis
  | g8 g, g'4. g8 fis4
  | e2 d8 a'16 a fis8 d
  | r b' b b a2
  | r r4 fis
  | e d d cis
  | d1
  | r4 d2 cis4
  | d2. a'4
  | a d, fis e8.[ d16]
  | d4. e8 fis4 gis
  | a4. a8 g4 g
  | a2 r
  | R1*4
  | r4 a d, fis
  | b d, g fis8 e
  | fis4 \melisma e8.[ d16]\melismaEnd d8 a' fis d
  | r e a e r4 r8 cis
  | d[ b'] a2 gis4
  | a e a a
  | a1~
  | a
  | r4 a a a
  | a1~
  | a~
  | a2 r
  | r4 r8 a b a r a
  | b a r a16 a b8 a r a16 a
  | b8 a r4 r2
  | r4 r8 e a gis r e
  | a gis r e16 e a8 gis r e16 e
  | a8 gis r4 r2
  | r4 r8 fis b ais r fis
  | b ais r fis16 fis b8 ais r fis16 fis
  | b4 fis r2
  | r b4 b
  | a4. a8 a4 a
  | a2 r
  | r r8 fis gis a
  | d,[\melisma cis] d[ e16 d cis8]\melismaEnd e a g
  | fis4. \melisma e8 d4. \melismaEnd d8
  | d[ cis] d d d4( cis)
  | d2 d4 d
  | d r8 a' b a r a
  | b a r d, d4 d
  | d r8 a'16 a b8 a r a16 a
  | b8 a r4 r a
  | d, a' b d,
  | g fis8 e e2
  | fis4 r fis fis8.[ g16]
  | a4 r8 fis fis4 fis8.[ g16]
  | a4 r fis fis
  | a r8 fis fis4 fis8.[ g16]
  | a4 r r fis
  | fis fis d a'
  | e a8 a a2
  | a4 r8 a b a r a
  | b a r a b a r a
  | b a r a16 a b8 a r a16 a
  | b8 a r a16 a b8 a r a16 a
  | b8 a r4 r fis
  | g2. g4
  | fis1
}

tenor = \relative c' {
  \global
  \autoBeamOff
  | R1*3
  | fis4. d8 d d r4
  | fis4. fis8 d d r d16 d
  | g8 fis r d16 d g8 fis r d
  | e( a,4) a8 a4 r
  | cis4. e8 d cis r4
  | cis4. e8 d cis r e16 e
  | d8 cis r e16 e d8 cis r e
  | d[ e fis] d e4 r
  | a,2 b4 cis
  | d8 d, d'4. d8 cis4
  | b2 a4 r8 a16 a
  | fis'8 e r e16 e fis8 e r e16 e
  | d8 cis r e16 e d8 cis r4
  | d2 e4 fis
  | g8 g, g4. g8 fis4
  | e2 d4 r8 d'16 d
  | g8 fis r d16 d g8 fis r d16 d
  | g8 fis r d16 d g8 fis r4
  | r r8 d16 d cis8 a r d16 d
  | b8 b r e16 e cis8 a d4~
  | d cis d8 fis16 fis a8 fis
  | a,2 b4 cis
  | d8 d, d'4. d8 cis4
  | b2 a8 e'16 e cis8 a
  | r d16 d fis8 d r e16 e cis8 a
  | d2 e4 fis
  | g8 g, g'4. g8 fis4
  | e2 d4. fis8
  | g4. g8 fis2
  | r r4 d
  | a d, a'4. a8
  | a1
  | r2 a4 g8.[ fis16]
  | fis2. d'4
  | e g a,4. a8
  | a4. g8 a4 d
  | e4. d8 d4 e
  | fis2 r
  | R1
  | r2 r4 d
  | a' cis, fis a,
  | d cis8 b cis4 \melisma b8.[ a16] \melismaEnd
  | a4 r r8 a d d
  | d4 r8 b e[ cis] d d
  | d4( cis) d r
  | r2 r8 d cis a
  | fis'( e4) fis8 e e r e
  | e4 cis r2
  | r4 r8 e fis e r e
  | fis e r e16 e fis8 e r e16 e
  | fis8 e r4 r2
  | r4 r8 e fis e r e
  | fis e r e16 e fis8 e r e16 e
  | fis8 e r4 r2
  | r4 r8 d g fis r d
  | g fis r d16 d g8 fis r d16 d
  | g8 fis r4 r2
  | r4 r8 b, cis b r b
  | cis b r b16 b cis8 b r b16 b
  | cis8 b r4 r2
  | r4 r8 cis d cis r cis
  | d cis r cis16 cis d8 cis r cis16 cis
  | d4 d r2
  | r d4 d
  | e4. e8 d[ cis] d[ e]
  | cis2 r
  | r8 a b cis fis, a a4~
  | a gis a r
  | r8 a d cis b4. a8
  | g4 a8 b a2
  | a d4 d
  | d1~
  | d4. d8 d4 d
  | d1~
  | d4 r8 fis fis4 d
  | d d b a8 a
  | g4 a8 a a2
  | a4 r d d8.[ e16]
  | fis4 r8 d d4 d8.[ e16]
  | fis4 r d d
  | fis r8 d d4 d8.[ e16]
  | fis4 r r d
  | d a b a
  | cis d8 d d4( cis)
  | fis r8 d g fis r d
  | g fis r d g fis r d
  | g fis r d16 d g8 fis r d16 d
  | g8 fis r d16 d g8 fis r d16 d
  | g8 fis r4 r a,
  | b2. b4
  | a1
}

bass = \relative c {
  \global
  \autoBeamOff
  | R1*3
  | d4. fis8 g d r4
  | d4. fis8 g d r fis16 fis
  | g8 d r fis16 fis g8 d r fis
  | e[ d a'] a d,4 r
  | a'4. cis8 d a r4
  | a4. cis8 d a r cis16 cis
  | d8 a r cis16 cis d8 a r cis
  | d[ cis] b4 a r
  | a2 b4 cis
  | d8 d, d'4. d8 cis4
  | b2 a4 r8 cis16 cis
  | d8 a r cis16 cis d8 a r cis16 cis
  | d8 a r cis16 cis d8 a r4
  | d,2 e4 fis
  | g8 g, g'4. g8 fis4
  | e2 d4 r8 fis16 fis
  | g8 d r fis16 fis g8 d r fis16 fis
  | g8 d r fis16 fis g8 d r4
  | R1*2
  | r4 r8 a'16 a fis8 d r4
  | a'2 b4 cis
  | d8 d, d'4. d8 cis4
  | b2 a4 r8 a16 a
  | fis8 d r d'16 d cis8 a r4
  | r r8 d16 d cis8 a r d16 d
  | b8 g r e16 e a8 a r b16 b
  | g8 e a8. g16 fis4 r8 d'16 d
  | b8 g b cis d2
  | r r4 d,
  | cis b a g'8.[ fis16]
  | fis1
  | r2 a,4. a8
  | d2. d'4
  | cis b a g8.[ fis16]
  | fis4. e8 d4 b'
  | a4. fis8 g4 e
  | d4. a'8 d4 fis,
  | b d, g fis8 e
  | e2-\trill d4 r
  | r r8 a' d d, r fis
  | b[ gis] a4 r8 e d e
  | cis a' g a fis4 r8 fis
  | g d r4 r r8 g
  | a a, r a' fis d r d' cis a r cis d d, r fis
  | b[ gis] a d, e e r e
  | cis4 a r2
  | r4 r8 cis' d a r cis
  | d a r cis16 cis d8 a r cis16 cis
  | d8 a r4 r2
  | r4 r8 cis d a r cis
  | d a r cis16 cis d8 a r cis16 cis
  | d8 a r4 r2
  | r4 r8 fis g d r fis
  | g d r fis16 fis g8 d r fis16 fis
  | g8 d r4 r2
  | r4 r8 gis a e r gis
  | a e r gis16 gis a8 e r gis16 gis
  | a8 e r4 r2
  | r4 r8 ais b fis r ais
  | b fis r ais16 ais b8 fis r ais16 ais
  | b4 b, r2
  | r b'4 b
  | cis4. cis8 d4 d,
  | a'4. a,8 a'4 cis,
  | fis a, d cis8 cis
  | b2 a4 r
  | r2 r8 d g fis
  | e4 fis8[ g] a4 g8 a
  | fis4 d d' d
  | d r8 fis, g d r fis
  | g d r d' d4 d
  | d r8 fis,16 fis g8 d r fis16 fis
  | g8 d r d d'4 fis,
  | b d, g fis8 fis
  | e4 d8 d a'2
  | d,4 r d d
  | d' r8 d, d4 d
  | d' r d, d
  | d' r8 d, d4 d
  | d' r8 d, d'4 fis,
  | b d, g fis8 fis
  | e4 d8 d a'2
  | d,4 r8 fis g d r fis
  | g d r fis g d r fis
  | g d r fis16 fis g8 d r fis16 fis
  | g8 d r fis16 fis g8 d r fis16 fis
  | g8 d r4 r d
  | g2. g4
  | d1
}

sopranoLyrics = \lyricmode {
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,~Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah!
  The king -- dom of this world is be -- come
  the king -- dom of our Lord and of his Christ, and of his Christ,
  and He shall reign for e -- ver and e -- ver,
  King of Kings, __ and Lord of Lords, __
  King of Kings, __ and Lord of Lords, __
  King of Kings, __ and Lord of Lords, __ and Lord of Lords,
  and He shall reign,
  and He shall reign for e -- ver and e -- ver, for e -- ver and e -- ver,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  and He shall reign for e -- ver, for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  King of Kings, and Lord of Lords,
  and He shall reign for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah.
}

altoLyrics = \lyricmode {
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah,~Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah,~Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah!
  The king -- dom of this world is be -- come
  the king -- dom of our Lord and of his Christ, and of his Christ,
  and He shall reign for e -- ver and e -- ver,
  for e -- ver and e -- ver, for e -- ver and e -- ver,
  King of Kings, __ and Lord of Lords, __
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  King of Kings, and Lord of Lords,
  and He shall reign, __ and He shall reign __ for e -- ver and e -- ver,
  King of Kings, for e -- ver and e -- ver,
  and He shall reign, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  and He shall reign for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  King of Kings, and Lord of Lords,
  and He shall reign for e -- ver and e -- ver,
  for e -- ver and e -- ver, for e -- ver and e -- ver,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah.
}

tenorLyrics = \lyricmode {
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah,~Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah!
  The king -- dom of this world is be -- come
  the king -- dom of our Lord and of his Christ, and of his Christ,
  and He shall reign for e -- ver and e -- ver,
  and He shall reign for e -- ver and e -- ver,
  and He shall reign for e -- ver and e -- ver,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  King of Kings, and Lord of Lords,
  and He shall reign, and He __ shall reign,
  and He shall reign for e -- ver and e -- ver,
  King of Kings, __ and Lord of Lords, __
  and He shall reign for e -- ver, for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  King of Kings, and Lord of Lords,
  and He shall reign for e -- ver and e -- ver,
  for e -- ver and e -- ver, for e -- ver and e -- ver,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah.
}

bassLyrics = \lyricmode {
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for the Lord God om -- ni -- po -- tent reign -- eth,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,~Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah,~Hal -- le -- lu -- jah!
  The king -- dom of this world is be -- come
  the king -- dom of our Lord and of his Christ, and of his Christ,
  and He shall reign for e -- ver and e -- ver, for e -- ver and e -- ver,
  and He shall reign, and He shall reign for e -- ver,
  for e -- ver and e -- ver, for e -- ver and e -- ver,
  for e -- ver, for e -- ver and e -- ver,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  for e -- ver and e -- ver, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  King of Kings, and Lord of Lords,
  and He shall reign for e -- ver and e -- ver,
  and He shall reign for e -- ver and e -- ver,
  King of Kings, for e -- ver and e -- ver,
  and He shall reign, Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  and He shall reign for e -- ver, for e -- ver and e -- ver,
  King of Kings, and Lord of Lords,
  King of Kings, and Lord of Lords,
  and He shall reign for e -- ver and e -- ver, and e -- ver,
  for e -- ver and e -- ver, for e -- ver and e -- ver,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah, Hal -- le -- lu -- jah,
  Hal -- le -- lu -- jah.
}

toUpper = { \change Staff = "upper" \voiceTwo }
toLower = { \change Staff = "lower" \oneVoice }

keyboardUpper = \relative c'' {
  \global
  <<
    { | d4. <a' fis>8 <b g>8[ <a fis>8] } \\
    { | <fis, a>8 g a d d[ d] }
  >> r4
  | <d' fis, a>4. <fis, d a>8 <g cis, g> <fis d a> r <a a, d>
  | << { g fis e4 } \\ { cis8 <d a>4 <cis e,>8 } >> <d fis,>8 <a fis> <b g> <cis e,>
  | <d fis,>4 r <d d,>4. <a fis d>8
  | <fis d a> <d a fis> r4 <d'' d,>4. <a d,>8
  | <d, b> <fis a, d>16 <fis a, d> <g b, d>8 <fis a, d>
  r <a fis d>16 <a fis d> <b g d>8 <a d,>
  | r4 r8 <e cis a> <fis d a> <a d, a> <g cis, e> <fis d a>
  | <e cis a>4 r <a a,>4. <e cis a>8
  | <cis a e>4 r r8 <e cis a>16 <e cis a> <fis d a>8 <e cis a>
  | r <cis' e, a>16 <cis e, a> <d fis, a>8 <cis e, a>
  r <cis e, a>16 <cis e, a> <d fis, a>8 <cis e, a>
  | << { fis,8 a4 gis8 } \\ { <a, d>8 <a e'> <d b>4 } >>
  <a' cis, e>8 <e cis a>16 <e cis a> <fis d a>8 <e cis a>
  | a,2 b4 cis
  | d8 d, d'2 cis4
  | b2 a4 r8 <a' e>16 <a e>
  | <d fis, a>8 <cis e, a> r <a e>16 <a e>
  <d fis, a>8 <cis e, a> r <a e>16 <a e>
  | <d fis, a>8 <cis e, a>16 <cis e, a> <cis e, a>8 <a e>16 <a e>
  <d fis, a>8 <cis e, a> r4
  | d,,2 e4 fis
  | g8 g, g'2 fis4
  | e2 d4 r8 <a'' d,>16 <a d,>
  | <b g d>8 <a fis d> r <d a d,>16 <a d,>
  <b g d>8 <a fis d> r <d a d,>16 <a d,>
  | <b g d>8 <d fis, a>16 <d fis, a> <d fis, a>8 <d a d,>16 <a d,>
  <b g d>8 <a fis>16 <a fis> <fis, a>8 <fis a>16 <fis a>
  | << { d'2 e4 fis } \\ { <fis, d>4 r r8 a16 a fis4 } >>
  | g'8 g, << { g'2 fis4 } \\ { b,4 a r8 a16 a } >>
  | << e'2 \\ { g,8 e a a } >>
  d8 <a' fis>16 <a fis> << { a8 d16 d } \\ { fis,8 <d fis> } >>
  | cis'8 <a e>16 <a e> <cis, e a>8 <fis cis'>16 <e cis' a>
  <d d' fis,>8 <g d>16 <fis d> <e a, cis>8 <a e cis>16 <g e cis>
  | <a, fis'>8 <a' fis>16 <g e> <fis d>8 <d' b>16 <cis a>
  <b gis e>8 <gis e>16 fis
  << { a4~ a gis } \\ { <e cis>8[ fis16 e] <d fis>8[ <cis fis>8] d e16 d } >>
  <cis a'>8 <e cis a>16 <e cis a> <a e cis>8 <e cis a>
  | <a d,> <a fis>16 <a fis> <d a fis>8 <a fis d>
  <e a> <a cis, e>16 <a cis, e> <a e cis>8 <e cis a>
  <<
    { | d2 e4 fis g g2 \voiceTwo fis4 e4 } \\
    {
      | r8 <a, fis>16 <a fis> <fis a>8 <a fis>16 <a fis>
      <a e>8 <cis a>16 <cis a> <d a>8 <d a>16 <d a>
      | <d g,>8 <b d>16 <b d> <e b>8 <e g,>16 <e g,>
      <e cis>8 <cis' e,>16 <cis e,> \voiceOne d8 d
      | <d b>8[ <d g,>8]
    }
  >> <cis e,>8. <cis e,>16
  <d a d,>8 <a d, fis>16 <a d, fis> <fis a, d>8 <d fis a,>16 <d fis a,>
  | << { g8 <b g> <b g> <b g> } \\ { d,8 d16 d d8 e } >>
  <a fis>8 <a fis a,>16 <a fis a,> <fis d a>8 <d a fis>
  | <g d g,> <g d g,>16 <g d g,> <b g d>8 <b g d> <a fis d>4 <a, fis>
  | << { a4 g fis e8. d16 } \\ { e4 d2 cis4 } >>
  | d2. <a' fis>4
  | << { a g fis e8. d16 } \\ { e4 d2 cis8. d16 } >>
  | d2. <a'' fis d>4
  | <a e> <g d> <fis d a> <e cis a>8. d16
  | <d a fis>4. <e cis g>8 <fis d a>4 <gis d b>
  | <a cis, e>4. <a d, fis>8 <b d, g!>4 <cis g e>
  | <d fis, a>2 r
  | R1
  | r2 r4 d,,
  | a' cis, fis a,
  | d cis8 b cis4 b8. a16
  | a4 a' d fis,
  | b4 d, g fis8 e
  | << { fis4 e8. d16 r4 d' } \\ { d,4 cis d8 a' fis s } >>
  | a'4 \voiceOne cis, \oneVoice fis a,
  | << { d <cis a>8 b <cis a>4 b8. a16 } \\ { fis8 b e, <fis a> e4 <e gis> } >>
  | << { a2 } \\ { e4 <cis e> } >> r2
  | r4 r8 <a'' e> <d fis, a> <cis e, a> r <a e>
  | <d fis, a> <cis e, a> r <a e>16 <a e> <d fis, a>8 <cis e, a> r <a e>16 <a e>
  | <d fis, a>8 <cis e, a> r4 r2
  | r4 a8 <a e> <d fis, a> <cis e, a> r <a e>
  | <d fis, a> <cis e, a> r <a e>16 <a e> <d fis, a>8 <cis e, a> r <a e>16 <a e>
  | <d fis, a>8 <cis e, a> a16 g fis e d4 d
  | d4. <a' d,>8 <b g d> <a fis d> <d a fis> <a fis d>
  | <b d,> <a fis d> r <a d,>16 <a d,> <b g d>8 <a fis d> r <a d,>16 <a d,>
  | <b g d>8 <a fis d> d,4 e e
  | e4. <b' e,>8 <cis a e> <b gis e> <e, b gis'> <b' gis e>
  | <cis a e> <b gis e> <e, gis,> <b' gis e>16 <b gis e>
  <cis a e>8 <b gis e> r <b gis e>16 <b gis e>
  | <cis a e>8 <b gis e>~ e,4 fis fis
  | fis4. <cis' fis,>8 <d b fis> <cis ais fis> <fis, cis ais'> <cis' fis,>
  | <d b fis> <cis ais fis> <fis, cis ais> <cis' fis,>16 <cis fis,>
  <d b fis>8 <cis ais fis> r <cis fis,>16 <cis fis,>
  | <d b fis>4 <d, fis>8 fis g4 g
  | g2 <d' d, g>4 <d d, g>
  | <a e>8 <e a,> <e a,> <g e a,> <fis d a> <e cis a> <fis d a> <g e a,>
  | <e cis a>2 r8 cis d e
  | a, a[ b cis] << { r8 fis gis a } \\ { fis, a e' a,  } >>
  | << { d8 cis d e16 d <cis a>4 a'4 } \\ { a,4 gis } >>
  | d''4 fis, b d,8 <d a>
  <<
    { | g4 fis8 e <fis d>4 <e cis>8. d16 } \\
    { | d8 cis <a d> <b d> a2 }
  >>
  | d2 r2
  | r4 r8 <a' d,> <b g d> <a fis d> r <a d,>
  | <b g d> <a fis d> r4 r2
  | r4 r8 <a d,>16 <a d,> <b g d>8 <a fis d> r <a d,>16 <a d,>
  | <b g d>8 <a fis d> r a fis16 e fis g << a4 \\ { d,16 g fis e } >>
  | << { d'4 fis, b d, } \\ { d16 cis d e d cis b a b a b g a8 a' } >>
  | <g cis e,>4 <fis d' a>8 <e d' a> << { d'4 cis } \\ { <e, a>4. <a d,>8 } >>
  | << { d8 fis,16 g } \\ { fis16 e d e } >> <a fis> <g e> <fis d> <e cis>
  <d fis>8 <d a fis'>16 <d a fis'> <fis d a>8 <fis d a>16 <g e a,>
  | <a fis>8 <fis d>16 <g e> <a fis>8 <b g>16 <cis e,>
  <d fis, d>8 <d, fis>16 <e g> <fis a d,>8 <fis d>16 <g e>
  | <a fis d>8 <fis d>16 <g e> <a fis>8 <b g>16 <cis e,>
  <d fis, d a'>8 <d, fis>16 <e g> <fis a d,>8 <fis d>16 <g e>
  | <a fis d>8 <fis d>16 <g e> <a fis>8 <b g>16 <cis e,>
  <d fis, a d,>8 <d, fis>16 <e g> <fis a d,>8 <fis d>16 <g e>
  | <a fis>8 <fis d>16 <g e> <a fis>8 <b g>16 <cis e,>
  d8 fis,16 g << a4 \\ { d,16 g fis e } >>
  <<
    { | d'4 fis, b d, } \\
    { | d16 cis d e d cis b a <d b> a b g a8 a' }
  >>
  <<
    { | g4 fis8 e e4. d8 } \\
    { | <cis e>4 <a d>8 <a d> <d a>8 a16 a <cis a>8 a }
  >>
  | << { d4 r8 <a' d,> } \\ { fis,8 d16 d fis8 a16 a } >>
  <b' g d>8 <a fis d> d, <a' d,>
  | <b g d> <a fis d> <a fis> <a d, fis> <b g d> <a fis d> d, <a' d,>
  | <b g d> <a fis d>16 <a fis d> <d fis, a>8 <a d, fis>16 <a d, fis>
  <b g d>8 <a fis d>16 <a fis d> <d fis, a>8 <a d, fis>16 <a d, fis>
  | <b g d>8 <a fis d>16 <a fis d> <d fis, a>8 <a d, fis>16 <a d, fis>
  <b g d>8 <a fis d>16 <a fis d> <d fis, a>8 <a d, fis>16 <a d, fis>
  | <b g d>8 <a fis d> r4 r <a fis d>
  | <b g d>2. <b g d>4
  | <a fis d>1
}

keyboardLower = \relative c {
  \global
  | d8 e fis d g d fis a
  | d, e fis d e d r fis
  | e d a' a, d4 r
  | d8 d e fis g d r4
  | d8 d e fis g d r fis16 fis
  | g8 d r fis16 fis g8 d r fis
  | e d a' a, d fis e d
  | a'4. cis8 d a r4
  | a4. cis8 d a r cis16 cis
  | d8 a r cis16 cis d8 a r cis
  | d cis b4 a r
  | a2 b4 cis
  | d8 d, d'2 cis4
  | b2 a4 r8 <a cis>16 <a cis>
  | d8 a r <a cis>16 <a cis> d8 a r <a cis>16 <a cis>
  | d8 a16 a a8 <a cis>16 <a cis> d8 a r4
  | d,2 e4 fis
  | g8 g, g'2 fis4
  | e2 d4 r8 <d fis>16 <d fis>
  | <d g>8 d r <d fis>16 <d fis> <d g>8 d r <d fis>16 <d fis>
  | <d g>8 d16 d d8 <d fis>16 <d fis> <d g>8 d16 d d8 d16 d
  | d4 r8 d'16 d cis8 a r d16 d
  | b8 b r e16 e cis8 a d4~
  | d cis8 a16 a fis8 d d' d,
  | a'2 b4 cis
  | d8 d, d'2 cis4
  | b2 a4 r8 a16 a
  | fis8 d r d'16 d cis8 a cis a
  | d4. d16 d cis8 a r d16 d
  | b8 g r e16 e a8 a r b16 b
  | g8 e a8. g16 fis4 r8 d'16 d
  | b8 g b cis d d,16 d d8 d
  | b b16 b g8 g d'4 <d d'>
  | <cis a'> <b d> <a a'> <g' a>
  | <fis a>2. <d d'>4
  | <cis a'> <b d> << { a' g8. fis16 } \\ { a,4. a8 } >>
  | <d fis a>2. d'4
  | cis b a g
  | fis4. e8 d4 b'
  | a4. fis8 g4 e
  | d4. a'8 d4 fis,
  | b d, g fis8 e
  | e2 d4 r
  | r r8 a' d d, r fis
  | b gis a4 r8 e d e
  | cis a' g a <<
    { r8 a d d d4 r8 b e cis d4 } \\
    { fis,4 r8 fis g d r4 r r8 g }
  >>
  | a a, r a' fis d r << fis' \\ d >>
  | <e cis> <cis a> \toUpper a' \toLower <e cis> d <d d,> cis <a fis>
  | <d b> <e gis,> a, d, e e, r e'
  | cis4 a r2
  | r4 r8 cis' d a r cis
  | d a r cis16 cis d8 a r cis16 cis
  | d8 a r4 r2
  | r4 r8 cis d a r cis
  | d a r cis16 cis d8 a r cis16 cis
  | d8 a r4 r2
  | r4 r8 fis g d r fis
  | g d r fis16 fis g8 d r fis16 fis
  | g8 d r4 r2
  | r4 r8 gis a e r gis
  | a e r gis16 gis a8 e r gis16 gis
  | a8 e r4 r2
  | r4 r8 ais b fis r ais
  | b fis r ais16 ais b8 fis r ais16 ais
  | b4 b, r2
  | r b'4 b
  | cis4. cis8 d4 d,
  | a'4. a,8 a'4 cis,
  | fis a, d cis
  | b2 a8 \toUpper e'' a g
  | \toLower fis a, d <cis e> <d b> d, g fis
  | e4 fis8 g a4 g8 a
  | fis4 d d'4-| d-|
  | d4.-| fis,8 g d r fis
  | g d r d'-| d4-| d-|
  | d4.-| fis,16 fis g8 d r fis16 fis
  | g8 d16 d d8 d d'4 fis,
  | b d, g fis8 fis
  | e4 d8 d a'8 a16 a a8 a
  | d,4 r d d
  | d' r8 d, d4 d
  | d' r d, d
  | d' r8 d, d4 d
  | d' r8 d, d'4 fis,
  | b d, g fis8 fis
  | e4 d8 d a'2
  | d,4 r8 fis g d r fis
  | g d r fis g d r fis
  | g d r fis16 fis g8 d r fis16 fis
  | g8 d r fis16 fis g8 d r fis16 fis
  | g8 d r4 r d
  | g,2. g4
  | d1
}


choir = \new ChoirStaff <<
  \new Staff = "sop" \with {
    instrumentName = #"Soprano"
  } { \soprano \bar "|." } \addlyrics { \sopranoLyrics }
  \new Staff = "alt" \with {
    instrumentName = #"Alto"
  } { \alto } \addlyrics { \altoLyrics }
  \new Staff = "ten" \with {
    instrumentName = #"Tenor"
  } { \clef "treble_8" \tenor } \addlyrics { \tenorLyrics }
  \new Staff = "bas" \with {
    instrumentName = #"Bass"
  } { \clef bass \bass } \addlyrics { \bassLyrics }
>>

keyboard = \new PianoStaff <<
  \new Staff = "upper" {
    \keyboardUpper
  }
  \new Staff = "lower" {
    \clef bass
    \keyboardLower
  }
>>

\layout {
  \context {
    \PianoStaff
    fontSize = #organPartSize
    \override StaffSymbol #'staff-space = #(magstep organPartSize)
  }
}

\paper {
  ragged-last-bottom = ##f
  systems-per-page = #3
}

\score {
  <<
    \choir
    \keyboard
  >>
}

%\markup \italic \wordwrap {
%  Halleluja! De Heer, onze God, de Almachtige, heeft het koningschap op zich genomen.
%  Nu begint de heerschappij van onze Heer over de wereld, en die van zijn messias.
%  Koning der koningen en Here der heren, hij zal heersen tot in eeuwigheid.
%}
