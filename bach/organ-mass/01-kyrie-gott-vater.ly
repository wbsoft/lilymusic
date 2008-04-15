\version "2.11"

pieceNumber = "1"
pieceTitle = "Kyrie, Gott Vater in Ewigkeit."

global = {
\key e \phrygian
\time 4/4
}

sop = \relative c'' {
\global
g2 a b\fermata
a4 c c b a a g2\fermata
a4 a g f e e d2\fermata
d4 a' a g a b c b a2 g\fermata
g4( f8 g a4 g) g f e1\fermata
\bar"|."
}

alt = \relative c' {
\global
e8( f g4~ g8 fis16 e) fis4 g2\fermata
f4 e a g g8( fis16 e) fis4 d2\fermata
f8( e) d( cis) d cis d4~( d8 cis16 b) cis4 a2\fermata
d4 e f16( e d4) e16( d) c8( f4) e8~( e16 fis) g4 g8 g8( fis16 e fis4) d2\fermata
e4( d c8 d e4) e d c( b8 a b2\fermata)
\bar"|."
}

ten = \relative c' {
\global
b4.( c16 d e8 a,) d4 d2\fermata
d4 c8( d) e2~ e8 c a d16( c) b2\fermata
d8( c16 bes) a4 bes a8( d) bes( g ) e( a16 g) f2\fermata
f4 e8( a) a( d16 c) b8( c16 b) a8( c) d( c16 b) a8( g16 a) b8( c16 d) e8( c a d) b2\fermata
c4.( bes8 a b c bes) a( bes4) a8 a4( gis8 fis gis2\fermata)
\bar "|."
}

bas = \relative c {
\global
e4.( d8 c4) d g,2\fermata
d'4 a8( b) c( d) e( d) c( a) d4 g,2\fermata
d'8 e f4~( f8 e) f( bes) g( e) a( a,) d2\fermata
d4. cis8 d8( f4) e8 f( a4) gis8 a( e4) d8 c( a d4) g,2\fermata
c4( d8 e f4 c4) cis d e1\fermata
\bar "|."
}

sopText = \lyricmode {
Ky -- ri -- e!
Gott Va -- ter in E -- wig -- keit!
Gross ist dein’ Barm -- her -- zig -- keit,
al -- ler Ding ein Schöp -- fer und Re -- gie -- rer!
E -- le -- i -- son!
}

altText = \lyricmode {
Ky -- ri -- e!
Gott Va -- ter in E -- wig -- keit!
Gross ist dein’ Barm -- her -- zig -- keit,
al -- ler Ding __ ein __ Schöp -- fer __ und Re -- gie -- rer!
E -- le -- i -- son! __
}

tenText = \lyricmode {
Ky -- ri -- e!
Gott Va -- ter __ in E -- wig -- keit!
Gross __ ist dein’ Barm -- her -- zig -- keit,
al -- ler Ding __ ein __ Schöp -- fer __ und __ Re -- gie -- rer!
E -- le -- i -- son! __
}

basText = \lyricmode {
Ky -- ri -- e!
Gott Va -- ter in E -- wig -- keit!
Gross ist dein’ __ Barm -- her -- zig -- keit,
al -- ler Ding __ ein Schöp -- fer und __ Re -- gie -- rer!
E -- le -- i -- son!
}

