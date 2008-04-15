\version "2.11"

pieceNumber = "2"
pieceTitle = "Christe, aller Welt Trost."

global = {
\key e \phrygian
\time 4/4
}

sop = \relative c' {
\global
e2( d) g a4( b) c c c2\fermata
c4 c b a g a b b b2\fermata
e,4( d g) a8( b) c4 c c2\fermata
c4 c b( a) g\fermata
a a g f e d2\fermata
d4 a' a g a b c b a2 g\fermata
g4( f8 g a4 g) g f e1\fermata
\bar "|."
}

alt = \relative c' {
\global
b4( c8 b a4 b8 c d f) e( d) c( d16 e) f4 e16( f g4) f8~(f e16 d e4\fermata)
e16( fis g8~ g) fis~( fis e16 d) cis( b) a8 d( c4) a'( g8) fis16( e) fis8 e2\fermata
c4.( b8 c d16 e) f( e f8) e4( f~ f8) e16( d) e4\fermata
e8 a16( gis) a4~( a8 g4 fis8) d4\fermata
f8( g) a g16( f) f8( e4 d) cis8 a2\fermata
a4 d16( e f8) f4.( e8~e16 d) e( g) f( e) fis( a) g8( d) d( g4 fis16 e) fis4 d2\fermata
e4( f8 e f4. e16 d) e4.( d16 c b8 d) c2 b4\fermata
\bar "|."
}

ten = \relative c' {
\global
g4( a8 g fis4 g~ g8 d') c( b) a4.( g16 f g8) c16( bes) a4 g2\fermata
a4 a b8( g) e'( d16 c) b8( c16 bes) a8( d16 c) b8( d~ d16 c) b( a) g2\fermata
g4 g g( c8 d g,4 a~ a8) g16( f) g4\fermata
c8 d e4~( e8 d e d16 c) b4\fermata
d~( d8 cis) d a a4( bes8) a16( g) f2\fermata
f8( g) a( d) d( b) g( c16 b) a4. g16( fis) e8( a) b( e4 c8) a( d16 c) b2\fermata
c4.( bes8 c16 bes c8 d g,) c( bes a b16 a gis4) a2 gis4\fermata
\bar "|."
}

bas = \relative c {
\global
e8( d c2 b8 a b4) e2 d4 e f c2\fermata
a4 d g,8 g'4 f8~( f e) f( fis) g( b,16 c) d8( dis) e2\fermata
e8( c g' f e4.) d8 c( b) a( b) c2\fermata
a8( b) c( d) e( b c d) g,4\fermata
d'8( e) f( a,) b( cis) d( f,) g( a) < \parenthesize d d,>2\fermata
d8( e) f( d) bes b c4~( c8 cis) d( dis) e( fis g e) c( a) d4 g,2\fermata
c8( bes a g f a bes b) c( cis d4~ d8 c16 b) c8( d) e2\fermata
\bar "|."
}

sopText = \lyricmode {
Chris -- te, al -- ler Welt Trost!
Uns Sün -- der al -- lein du hast er -- löst;
Je -- su, Got -- tes Sohn!
Un -- ser Mitt -- ler bist in dem höch -- sten Thron,
zu dir schrei -- en wir aus Her -- zens Be -- gier!
E -- le -- i -- son!
}

altText = \lyricmode {
Chris -- te, al -- ler Welt Trost! __
Uns __ Sün -- der al -- lein du __ hast er -- löst;
Je -- su, __ Got -- tes Sohn!
Un -- ser Mitt -- ler bist in dem höch -- sten Thron,
zu dir schrei -- en wir aus Her -- zens __ Be -- gier!
E -- le -- i -- son!
}

tenText = \lyricmode {
Chris -- te, al -- ler Welt Trost!
Uns Sün -- der al -- lein du __ hast __ er -- löst;
Je -- su, Got -- tes Sohn!
Un -- ser Mitt -- ler bist __ in dem höch -- sten Thron,
zu dir schrei -- en __ wir aus Her -- zens __ Be -- gier!
E -- le -- i -- son!
}

basText = \lyricmode {
Chris -- te, al -- ler Welt Trost!
Uns Sün -- der al -- lein __ du hast __ er -- löst;
Je -- su, Got -- tes Sohn!
Un -- ser Mitt -- ler bist in dem höch -- sten Thron,
zu dir schrei -- en wir __ aus Her -- zens Be -- gier!
E -- le -- i -- son!
}

