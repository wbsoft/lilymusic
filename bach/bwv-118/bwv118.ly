\version "2.19.82"

#(set-global-staff-size 19)

\header {
  title = "O Jesu Christ, meins Lebens Licht"
  composer = "J.S. Bach (1685-1750)"
  arranger = "Continuo-uitwerking Wilbert Berendsen 2019"
  tagline = \markup \teeny {
    Engraved at
    \simple #(strftime "%d-%m-%Y" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\paper {
  page-count = 2
  system-count = 15
  ragged-last-bottom = ##f
}

\layout {

}


structuur = {
  \tempo "[Andante tranquillo]"
  \key bes \major
  \accidentalStyle PianoStaff.piano
  \time 2/2

  \skip 1
  \mark \markup \musicglyph #"scripts.segno"
  \repeat volta 2 {
    \skip 1*17
    s2 \mark "Fine." s2
    \skip 1*71
  }
  \mark "D.S."
}

breaksContinuo = {
  \skip 1*42
  \pageBreak
}

upperA = \relative {
  f'2~ f4 g8 as
  g1
  <a c,>1
  <f bes>2 <bes d~>
  d4 c8 bes <a c>2~
  <a c>2 bes~
  bes2 c4 bes
  \oneVoice <c, f a>2 <c a'>2~
  \stemUp <c a'>2 <bes g'>~
  <bes g'>2 \voiceOne <g' bes~>
  bes4 a a2
  g1
  \oneVoice
  <c, es g>2 <es g c>
  \voiceOne
  f1
  \oneVoice
  <bes, d f>2 \voiceOne as'2~
  as2 bes4 as
  g4 a <g bes>2~
  bes2 <f a>
  bes2^\fermata
  bes2~
  bes2 bes~
  bes2 bes
  g2. a4
  bes1
  c2. bes4
  a1
  g1
  g2 c~
  c4 b8 a b2
  c4 bes8 as g4 a8 bes
  a2. b8 c
  <b d,>2. <c es,>8 <d f,>
  c4 r <c es>2~
  <c es>4 <bes d>8 <a c> <bes d>2~
  <bes d>4 r4 c2
  a1
  bes1
  c1~
  << { \voiceFour c4 \voiceOne bes8 a8 bes2 } \new Voice { \voiceThree d1 } >>
  a1
  g1
  f2 c'~
  c4 bes2 a4
  <bes f~>1
  \oneVoice <a f c>2 <a, c~ f>
  \voiceTwo c4 bes8 a bes2~
  \oneVoice
  <g bes e>1
  <a f'>2 <f' c'>
  <d d'>2 <f bes>
  \voiceOne
  g2 g
  es4 f g2
  as2. g4
  << { fis4 g2 fis4 } \new Voice { \voiceThree d1 } >>
  \oneVoice
  <g d bes>2 <f d'>
  \voiceOne
  bes2. c4
  d1
  es1
  d1
  c1~
  c1~
  c1~
  c2 \oneVoice <e, g>4 bes'
  <f a>2 \voiceOne c'4 d8 es
  d1
  \oneVoice
  <e, g bes>2 g4 <e g bes>
  <c f bes>4 a'8 g <d f a>2
  g1
  \oneVoice
  <c, es g>2 <es g c>
  \voiceOne
  f1
  \oneVoice
  <bes, d f>2 <bes g'>
  <c a'>2 <f bes~>
  <g bes c~>2 <d a' c~>
  \voiceOne
  c'2 bes
  bes2 a
  \oneVoice
  <bes g d>2 <c, g'>
  \voiceOne
  a'2 bes
  \oneVoice <c, f a>2 \voiceOne a'2~
  a2 g~
  g2 fis
  bes1
  c1
  d1
  c1
  bes1
  bes1
  a2~ a
  bes1~
  bes1~
  bes1~
  bes1~
  bes4 r4 r2
}

upperB = \relative {
  d'2 d
  f2 es~
  es4 es8 d es2~
  es4 d f2
  <es~ bes'> es4 f8 g
  f2. e8 d
  <c g'>1
  \skip 1
  d1
  e1
  <c f>2 <d f>~
  <d f>2 <b es>4 <d f>
  \skip 1
  <c es>2 <a d>4 <c es>
  \skip 2 es2
  f1~
  f4 es des c
  <d f>4 es8 d es4 c
  <d f>2
  f4 es
  d4 es f2
  g2. f4
  es1~
  << {es2. d4}\new Voice { \voiceThree g2 f } >>
  <c f>2 e
  <c f>1
  <d f>2 <b d>
  <c es>2 <es g>
  <es g~>2 <d g>
  <es g>2 <es g~>
  g2 f~
  f4 f8 es f2~
  f4 es g2
  f2. e8 d
  g2~ <g c,~>
  c,4 d8 es d2~
  d4 e8 f e2~
  e4 f8 g f2~
  f2. g4
  c,2 f~
  f4 e8 d <c e>2
  <c es>2 <es f>
  << { d2 c } \new Voice { \voiceThree f1 } >>
  bes,2 d
  \skip 1
  \voiceOne <f, d'>1
  \oneVoice
  \skip 1*3
  \voiceTwo
  bes4 c d2
  es2. d4
  c1~
  c4 bes a2
  \skip 1
  f'4 es8 d es2
  <d a'>2 <b g'>
  c2 c'~
  <as c>2 <g bes~>
  bes4 g e g~
  g4 f2 e4
  f2 <f as>~
  <f as>4 g8 f \skip 2
  \skip 2 a2
  c4 bes8 a bes2
  \skip 1*2
  <d, f>2 <b es>4 <d f>
  \skip 1
  <c es>2 <a d>4 <c es>  
  \skip 1*3
  es2. d4
  <c g'>2 f4 es
  \skip 1
  f2 d4 f
  \skip 2 <c es>2~
  <c es>4 <bes d>2 c4
  <a es'>2 d2
  <bes g'>2 <es g>~
  <es g>4 <c f> f es
  <d f>2 <f g>
  es2 e
  f2 fis
  g2 <g~ c,>
  g4 f8 g <d a'>2
  d4 es2.
  d4 as'2 g4
  f2 <f~ as>2
  <f g>4 bes, <es g>2
  <d f>2 f4 g8 as
}


bas = \relative {
  bes,4( bes bes bes)
  bes4( bes bes bes)
  bes4( bes bes bes)
  bes2. c8 d
  c2. d8 es
  d2. e8 f
  e2. d8 c
  f4( f f f)
  f4( f f f)
  f4( f f f)
  f4 es d c
  b4( b) g( g)
  c4( c bes bes)
  a4( a f f)
  bes4( bes c c)
  d4( d bes bes)
  es4( es e e)
  f4( f f, f)
  %%19
  bes4(_\fermata bes d d)
  g4( g d d)
  es4( es d d)
  d4( d c c)
  g4( g bes bes)
  a4( a g g)
  f4( f a a)
  b4( b g g)
  c4( c es es)
  %28
  g4( g g, g)
  c4( c c c)
  c4( c c c)
  c4( c c c)
  c2. d8 es
  d2. e8 f
  e2. d8 c
  f4( f f, f)
  g4( g g g)
  %37
  a4( a a a)
  bes4( bes bes bes)
  f'4( f d d)
  bes4( bes c c)
  a4( a f f)
  bes4( bes c c)
  d4( d bes bes)
  f4( f f f)
  f4( f f f)
  %46
  f4( f f f)
  f4( f a a)
  bes4( bes d d)
  es4( es b b)
  c4( c es es)
  f4( f es es)
  d4( d d, d)
  g4( g bes bes)
  es4( es g g)
  %55
  fis4( fis f f)
  es4( es as as)
  f4( f g g)
  e4( e c c)
  f4( f) g( g)
  as4( as f f)
  c'4( c c, c)
  f4 f( f f)
  f4( f f f)
  % 64
  f4( f f f)
  f4( es) d( c)
  b4( b g g)
  c4( c bes bes)
  a4( a f f)
  bes4( bes es es)
  es4( es d d )
  e4( e fis fis)
  g4( a) g( f)
  %73
  e4( e f f)
  f4( f e e)
  f4( f f f)
  f4( f fis fis)
  g4( g es es)
  c4( c d d)
  g,4( g g g)
  as4( as a a)
  bes4( bes b b)
  % 82
  c4( c a a)
  d4( d d, d)
  es4( es e e)
  f4( f fis fis)
  g4( g g' g)
  f4( f es es)
  d4( d bes bes)
  es4( es es, es)
  bes'4( bes bes bes)
}

\new PianoStaff
<<
  \new Staff
  <<
    \structuur
    \breaksContinuo
    << \upperA \\ \upperB >>
  >>

  \new Staff
  <<
    \clef bass
    \structuur
    \bas
  >>

>>