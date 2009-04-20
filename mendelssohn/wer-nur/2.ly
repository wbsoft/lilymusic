\version "2.12.0"
#(set-global-staff-size 16)
global = {
  \key a \minor
  \time 4/4
}

violinoOne = \relative c'' {
  \global
  R1 |
  r8 b\p d e f e d e |
  c r a'4 dis,2 |
  e4 g cis,2 |
  % bar 5
  d4 f b2~ |
  b8 gis a d, c4 b |
  a8 e a b c d e4~ |
  e8 e fis gis a2 |
  gis4 g f e |
  % bar 10
  d c b c8 b |
  a2 gis4 e' |
  r8 a, d e f\< e d e |
  c4 a\! dis2-> |
  e8 b\f e d c4 b |
  % bar 15
  a8 gis a e c'2-> |
  b4 r r2 |
  r8 a\p g f e bes' a g |
  fis d g2 f8 a |
  d g, c2 b4 |
  % bar 20
  c8 e d c b f' e d |
  cis a d e f g a4~ |
  a8 fis g e a4. fis8 |
  g b a g f2 |
  e8 g f e d c' b a |
  % bar 25
  g2~ g8 g\< a e |
  f2~\! f8 d f e |
  cis4 e2\f d8 cis |
  d a' g f e bes' a g |
  
}

violinoTwo = \relative c' {
  \global
  r8 e\p a b c b a b |
  gis r gis4 d' gis, |
  a c fis,2 |
  b4 bes e,2 |
  % bar 5
  r8 a d e f e d e |
  c d e f, e a4 gis8 |
  a4 r r d |
  c d8 e e, a fis b |
  e, b' r4 d8 c b e |
  % bar 10
  a, gis a e f4 e |
  r8 a, d e f e d e |
  c4 a r d |
  e c a'4. fis8 |
  b,4. b'8\f b a4 gis8 |
  % bar 15
  a4 e dis8 e fis a |
  gis\p e d c b f' e d |
  cis4 d2 c4~ |
  c8 b e d c e f4~ |
  f8 g f e d a' g d' |
  % bar 20
  e,4 r r b' |
  a b8 cis d e f e |
  b'4. g8 fis4. b,8 |
  e g fis e d c b a |
  g e' d c c4 f~ |
  % bar 25
  f8 f e d c2~\< |
  c8\! e d cis d b d b |
  a4 bes2\f a8 g |
  f f' e d cis g' f e |
  
}

viola = \relative c' {
  \global
  \clef alto % TODO put this in staff def.
  a4\p r r dis |
  e b gis e |
  a8 e a b c b a b |
  gis e g a bes a g a |
  % bar 5
  f r d'4 gis,4. e8 |
  a b c d e4 e, |
  c'2~ c8 b a gis |
  a4 e c' b |
  e a, d gis8 e |
  % bar 10
  f4 e d8 b d4 |
  c2 b8 c d4 |
  e4 r r2 |
  r8 e a b c b a b |
  b4. b,8\f c d e4~ |
  % bar 15
  e8 d c b a4. c8 |
  e,4\p fis g gis |
  a bes g a |
  d,8 d' c b a e' d c |
  b4 c g4. g8 |
  % bar 20
  g'4 f8 e f b e,4 |
  g f8 e a2 |
  fis8 a g b f2 |
  r8 b dis e d,2 |
  e4 c2 d4~ |
  % bar 25
  d8 d' c b a g\< f e |
  d\! c b4. d8 b e |
  e d cis2\f d8 e |
  f r bes2 cis,4 |
  
}

vocal = {
  \dynamicUp
  \autoBeamOff
}  

sop = \relative c' {
  \vocal
  \global
  R1*6 |
  r4 e\p a b |
  c b a b |
  gis e r e |
  % bar 10
  a2. gis4 |
  a b8[ c] d[ c] b4 |
  e2\melisma d\< |
  << c2~ { s4 s4\! } >> c8[ b]\melismaEnd a4 |
  r8 b\f e d c4 b |
  % bar 15
  a8[\< gis]\! a[ e] c'2\> |
  b4\! r r2 |
  R1*2 |
  r4 g\p g f |
  % bar 20
  e a a gis |
  a r r a |
  b^( c8[ b] a[ g]) fis a |
  g4 b d2 |
  c4^( b8[ c] d4.) d8 |
  % bar 25
  g,4 c8[ b] c2~\<\melisma |
  c4\! b\melismaEnd d b |
  cis4 e2\f d8[ cis] |
  d4 r r2 |
  
}

alt = \relative c' {
  \vocal
  \global
  R1*7 |
  r4 e\p e dis |
  e^( d8[ cis] a'4) gis |
  % bar 10
  a e f( e) |
  e r r2 |
  r4 a a gis\< |
  a8[ gis]\! a4 fis4. fis8 |
  b2~\f\melisma b8 a4 gis8 |
  % bar 15
  a4 e dis8[\> e fis a]\melismaEnd |
  gis4\! r r2
  R1*3 |
  % bar 20
  r4 f8[\p e] f[ d] e4 |
  a,4 a'8[ g] f4 e |
  dis( e) c' b |
  g4 r r f 
  e( d8[ e]) f4. d8 |
  % bar 25
  g2 c8([ b\< a g] |
  f4.\! e8 d4) f |
  a bes2\f a8[ g] |
  a4 e2 f8[ g] |
  
}

ten = \relative c' {
  \vocal
  \global
  R1*8 |
  r4 a\p d e |
  % bar 10
  f e d e |
  c a r gis |
  a b8[ c] d[ c]\< b4 |
  e4 a,\! r2 |
  e'4\f b r8 e, e' d |
  % bar 15
  c[\< b] a[\! g] fis[\>\melisma e] dis4\melismaEnd |
  e4\! r r2 |
  R1*4 |
  % bar 21
  r4 d'\p d c |
  b e e dis |
  e( b2) b4 |
  c( g) a( b) |
  % bar 25
  b c8[ d] c2~(\< |
  c4\! d8[ e] f4) d |
  e4 g2\f f8[ e] |
  f4 cis2 d8[ e] |
  
}

bas = \relative c {
  \vocal
  \global
  R1*9 |
  % bar 10
  r2 e\p |
  a b |
  c b |
  a b |
  gis e~\< |
  % bar 15
  << e1~\! { s4. s\> } >> |
  e4\! r r2 |
  R1*6 |
  r2 g\p |
  g f |
  % bar 25
  e a |
  a gis |
  a1~ |
  a1~ |
  
}

sopText = \lyricmode {
  Wer nur den lie -- ben Gott läßt wal -- ten,
  wer nur den lie -- ben Gott läßt wal -- ten,
  wer nur den lie -- ben Gott läßt wal -- ten,

  und hof -- fet auf ihn al -- le -- zeit, 
  und hof -- fet auf ihn,
  auf ihn al -- le -- zeit,
  und hof -- fet auf ihn al -- le -- zeit, 
  
}

altText = \lyricmode {
  Wer nur den lie -- ben Gott läßt wal -- ten,
  wer nur den lie -- ben Gott läßt wal -- ten,
  
  und hof -- fet auf ihn al -- le -- zeit, __
  al -- le -- zeit,
  und hof -- fet auf ihn al -- le -- zeit,
  al -- le -- zeit, al -- le -- zeit, 
  
}

tenText = \lyricmode {
  Wer nur den lie -- ben Gott läßt wal -- ten,
  den lie -- ben Gott läßt wal -- ten,
  wer nur den lie -- ben Gott läßt wal -- ten,
  
  und hof -- fet auf ihn al -- le -- zeit, __
  und hof -- fet __ auf ihn al -- le -- zeit,
  al -- le -- zeit, al -- le -- zeit,
  
}

basText = \lyricmode {
  Wer nur den lie -- ben Gott läßt wal -- ten, __
  und hof -- fet auf ihn al -- le -- zeit, __

}


\score {
  <<
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = #"Violino I"
        } \violinoOne
        \new Staff \with {
          instrumentName = #"Violino II"
        } \violinoTwo
      >>
      \new Staff \with {
        instrumentName = #"Viola"
      } \viola
    >>
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = #"Soprano"
      } \new Voice = "sop" \sop
      \new Lyrics \lyricsto "sop" \sopText
      \new Staff \with {
        instrumentName = #"Alto"
      } \new Voice = "alt" \alt
      \new Lyrics \lyricsto "alt" \altText
      \new Staff \with {
        instrumentName = #"Tenore"
      } \new Voice = "ten" { \clef "treble_8" \ten }
      \new Lyrics \lyricsto "ten" \tenText
      \new Staff \with {
        instrumentName = \markup {
          \override #'(baseline-skip . 2.5)
          \column {
            Basso Violoncello "e Basso"
          }
        }
      } \new Voice = "bas" { \clef bass \bas }
      \new Lyrics \lyricsto "bas" \basText
    >>
  >>
}
