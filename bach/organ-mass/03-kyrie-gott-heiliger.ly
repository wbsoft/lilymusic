\version "2.11"

pieceNumber = "3"
pieceTitle = "Kyrie, Gott heiliger Geist."

global = {
\key e \phrygian
\time 4/4
}

sop = \relative c'' {
\global
b2 c d\fermata
r4 b d( c) b a g2\fermata
b4 c d b8( c) d4 c b a g\fermata
a a g f e d2\fermata
d4 a' a g a b c b a2 g\fermata
g4( f8 g a4 g) g f e1\fermata
\bar"|."
}

alt = \relative c'' {
\global
g2 g g\fermata
r4 g g4.( a4) g fis8 d2\fermata
g4 a~ a8 g16( fis) g4 g4. fis8 b,16( c d8) e( d16 c) b4\fermata
d4 d8( es) d( cis) d4. cis8 a2\fermata
d4 e a,8 fis'4( e8) fis4. e16( dis) e8( d4) g fis16( e fis4) d2\fermata
d8( e d e f e d g) cis,( a d4 cis) c b2\fermata
\bar"|."
}

ten = \relative c' {
\global
e2 e b\fermata
r4 d d( e8 d) d4 e8( d16 c) b2\fermata
e4 e d4. c8 b4. a8~ a g4 fis8 g4\fermata
f8( g) a( c4) bes8 bes( b) e,( a16 g) fis2\fermata
b4 cis d4. c16( b c8) fis,4 g16( a) g8( a4) g8 e'16( d c4 b16 a) b2\fermata
b8( bes a g f4. e16 d) e8( f16 g a8 b~ b a16 gis a4.) gis16( fis) gis4\fermata
\bar "|."
}

bas = \relative c, {
\global
e4( e'2) d8( c) g'2\fermata
r4 g,8( a) b4( e,8 fis) g( b) c( d) g,2\fermata
e8( e') d( c) b( b'4) a8 g fis e4~( e8 b) c( d) g,4\fermata
d'8( e) f fis g4~( g8 gis) a( a,) d2\fermata
g,8( g'4) fis16( e) fis8( b) e,4.( dis16 cis) dis8 b e( fis g e) c( a) d4 g,2\fermata
g'8( cis, d4 d8 c b bes) a4.( gis8 a b) c( d) e2\fermata
\bar "|."
}

sopText = \lyricmode {
Ky -- ri -- e!
Gott hei -- li -- ger  Geist!
Tröst, stärk uns im Glau -- ben al -- ler -- meist,
dass wir am letz -- ten End
fröh -- lich ab -- schei -- den aus die -- sem E -- lend!
E -- le -- i -- son!
}

altText = \lyricmode {
Ky -- ri -- e!
Gott hei -- li -- ger  Geist!
Tröst, stärk __ uns im Glau -- ben al -- ler -- meist,
dass wir am letz -- ten End
fröh -- lich ab -- schei -- den aus die -- sem E -- lend!
E -- le -- i -- son!
}

tenText = \lyricmode {
Ky -- ri -- e!
Gott hei -- li -- ger __ Geist!
Tröst, stärk uns im Glau -- ben __ al -- ler -- meist,
dass wir am letz -- ten __ End
fröh -- lich ab -- schei -- den aus die -- sem E -- lend!
E -- le -- i -- son!
}

basText = \lyricmode {
Ky -- ri -- e!
Gott hei -- li -- ger  Geist!
Tröst, stärk uns im Glau -- ben al -- ler -- meist,
dass wir am letz -- ten End
fröh -- lich ab -- schei -- den aus die -- sem E -- lend!
E -- le -- i -- son!
}

