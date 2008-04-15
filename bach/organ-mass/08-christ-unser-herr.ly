\version "2.11"

pieceNumber = "8"
pieceTitle = "Christ unser Herr zum Jordan kam."

global = {
\key a \minor
\time 4/4
\partial 4
}

sop = \relative c' {
\global
\repeat unfold 2 { d8( e) f4 g a g c b8( a) a4\fermata
g c b a g f( e) d\fermata }
d g g e a a gis a\fermata
a d d e8( d) c4 d8( c b4) a\fermata
b c b a g a8( g) f4 e\fermata
d8( e) f4 g a8( g) f4 g8( f e4) d\fermata
d' d d e d c( b) a\fermata
\bar"|."
}

alt = \relative c' {
\global
\repeat unfold 2 { a d e f e e e e\fermata
e e e f8( e) d4 a8( d4 cis8) a4\fermata }
a d c8( b) c( d) e4 e e e\fermata
e a g g a8( g) f4( b,8 c16 d) c4\fermata
e e d c8( d) e4 a, d cis\fermata
a d e e8( cis) d4 e8( d cis4) a\fermata
a' g g g a8( d,) e4.( d8) cis4\fermata
\bar"|."
}

ten = \relative c {
\global
\repeat unfold 2 { f8( g) a( b) c4 c c8( b) a4 gis c\fermata
b a b8( cis) d4 d,8( e) f( g a4) f\fermata }
f8( e) d4 g g c b8( a) b4 c\fermata
c c b c8( b) a4 b8( a gis4) e\fermata
gis a8( g) f( g) a( b) cis( d) e4 a, a\fermata
f8( e) d( f) bes4 a bes bes( e,8 f16 g) f4\fermata
d b'8( c) d( b) c( b) a4 a( gis) e\fermata
\bar "|."
}

bas = \relative c {
\global
\repeat unfold 2 { d4 d c f c c8( d) e4 a,\fermata
e' a g f b,8( cis) d4( a) d\fermata }
d8( c) b( a) g4 c b8( a) e'4 e, a\fermata
a'8( g) fis4 g c, f8( e) d4( e) a,\fermata
e' a d,8( e) f4 e8( d) cis4 d a\fermata
d8( c) bes( a) g4 f bes8( a) g4( a) <\parenthesize d d,>\fermata
fis g8( a) b( g) c,4 f e8( d e4) a,\fermata
\bar "|."
}

sopText = \lyricmode {
Christ un -- ser Herr zum Jor -- dan kam
nach sei -- nes Va -- ters Wil -- len,
von Sankt Jo -- hanns die Tau -- fe nahm,
sein Werk und Amt zu ’rfül -- len;
da wollt’ er stif -- ten uns ein Bad,
zu wa -- schen uns von Sün -- den,
er -- säu -- fen auch den bit -- tern Tod
durch sein selbs Blut und Wun -- den.
Es galt ein neu -- es Le -- ben.
}

altText = \lyricmode {
Christ un -- ser Herr zum Jor -- dan kam
nach sei -- nes Va -- ters Wil -- len,
von Sankt Jo -- hanns die Tau -- fe nahm,
sein Werk und Amt zu ’rfül -- len;
da wollt’ er stif -- ten uns ein Bad,
zu wa -- schen uns von Sün -- den,
er -- säu -- fen auch den bit -- tern Tod
durch sein selbs Blut und Wun -- den.
Es galt ein neu -- es Le -- ben.
}

tenText = \lyricmode {
Christ un -- ser Herr zum Jor -- dan kam
nach sei -- nes Va -- ters Wil -- len,
von Sankt Jo -- hanns die Tau -- fe nahm,
sein Werk und Amt zu ’rfül -- len;
da wollt’ er stif -- ten uns ein Bad,
zu wa -- schen uns von Sün -- den,
er -- säu -- fen auch den bit -- tern Tod
durch sein selbs Blut und Wun -- den.
Es galt ein neu -- es Le -- ben.
}

basText = \lyricmode {
Christ un -- ser Herr zum Jor -- dan kam
nach sei -- nes Va -- ters Wil -- len,
von Sankt Jo -- hanns die Tau -- fe nahm,
sein Werk und Amt zu ’rfül -- len;
da wollt’ er stif -- ten uns ein Bad,
zu wa -- schen uns von Sün -- den,
er -- säu -- fen auch den bit -- tern Tod
durch sein selbs Blut und Wun -- den.
Es galt ein neu -- es Le -- ben.
}

