\version "2.14.1"

\header {
  title = "RONDO"
  composer = "Carl Philipp Emanuel Bach (1714-1788)"
  arranger = "Carillon arrangement by Wilbert Berendsen (*1971)"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
  copyright = \markup \fontsize #-1 \center-column {
    \line {
      Engraved © 2011 by Wilbert Berendsen.
    }
    \with-url #"http://imslp.org/wiki/Collection_of_5_Pieces_(Bach,_Carl_Philipp_Emanuel)"
    \line {
      Source: Collection of 5 Pieces (A Bach-család zongoramuzsikája, EMB, ca. 1970)
    }
    \line {
      This edition may be freely copied, distributed,
      performed and recorded under the provisions of the
    }
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/nl/"
    \line {
      Creative Commons License \concat { ( \tiny BY-NC-SA , }
      http://creativecommons.org/licenses/by-nc-sa/3.0/nl/)
    }
  }
}

global = {
  \key b \minor
  \time 2/4
  \partial 4
}

upper = \relative c'' {
  \global
  
  d16( e g fis)
  | fis16( cis) cis8~ cis16 dis( fis e)
  | e16( b) b8~ b16 cis( e d)
  | d16( b' b, cis) <<
    { \voiceOne cis8( e32 d cis b) }
    \new Voice {
      \voiceTwo
      b8 r
    }
  >>
  \oneVoice
  | b16( ais gis\prall fis)
  d'( e g fis)
  | fis16( cis) cis8~ cis16 dis( fis e)
  | e16( e') e8~ e16 cis( b\prall ais)
  | cis16( b) a32\( g fis e d8( 
  \once \override Script #'avoid-slur = #'outside
  \once \override Script #'staff-padding = #1.5
  cis)\prall\turn
  | b4\)
  d'16( b a\prall g
  | fis16 eis d' cis) r16 e,( g fis
  | e16 cis e d) cis(\prall b fis' a,)
  | a16( fis g g' fis e d cis
  | b16 ais gis\prall fis d') d'( cis b
  | bis16 cis eis, fis) r fis( a c
  | ais16 b dis, e) r16 e,( e' ais,
  | cis16 b g' e d8 cis\prall\turn
  | b4)
  d16( fis, a gis
  | b8 a16 
  \once \override TextScript #'script-priority = #-100
  \once \override TextScript #'Y-extent = #'(-.6 . .6)
  b\prall\turn^\markup\teeny\sharp c) e,( g fis
  | a8 g16\prall\turn d') g,8( fis16\prall\turn d')
  | fis,8( e16\prall\turn b') b b,( cis d)
  | d16( cis b\prall a)
  fis''16( g b a)
  | a16( e) e8~ e16 fis( a g)
  | g16( d) d8~ d16 d'( b g)
  | g16( fis e b' d,8 cis\prall\turn
  | d4)
  a'16( fis cis d)
  | fis16( e) e8~ e16 g( fis cis)
  | e16( d) d8 r16 fis( ais, b)
  | b( c g g' fis e d c
  | b8
  \once \override TextScript #'script-priority = #-100
  \once \override TextScript #'Y-extent = #'(-.2 . .6)
  \once \override Script #'avoid-slur = #'outside
  ais)\prall\turn^\markup\teeny\sharp
  d16( e g fis)
  | fis16( cis) cis8~ cis16 dis( fis e)
  | e16( e') e8~ e16 cis( b\prall ais)
  | cis16( b) a32( g fis e d8
  \once \override Script #'avoid-slur = #'outside
  cis\prall\turn
  | b4)
  
}

lower = \relative c' {
  \global
  
  b4
  | ais4 a
  | gis4 g
  | fis4 eis
  | fis4
  b4
  | ais4 a
  | gis4 g
  | fis8 e fis4
  | b8 b,
  b'4
  | cis4 ais
  | b4 d,8 dis
  | e4. eis8
  | fis4
  b4
  | ais4 a
  | gis4 g
  | fis8 e fis4
  | b8 b,
  b'4
  | c4 a
  | b4 a
  | g4 gis
  | a4
  d4
  | cis4 c
  | b4 b,
  | a8 g a4
  | d8 d,
  d''4
  | cis4 ais
  | b4 d,
  | e2
  | fis4
  b4
  | ais4 a
  | gis4 g
  | fis8 e fis4
  | b8 b,
  r4
  | 
  
}

  
\new PianoStaff <<
  \new Staff = "upper" { \upper }
  \new Staff = "lower" { \clef bass \lower }
>>

