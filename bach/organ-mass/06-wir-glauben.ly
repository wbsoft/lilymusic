\version "2.11"

pieceNumber = "6"
pieceTitle = "Wir glauben all an einen Gott."

global = {
\key e \dorian
\time 4/4
}

sop = \relative c' {
\global
e2( b'4 a b fis) g2 fis\fermata
a( g4) fis e dis e2\fermata
b'4 b e d cis b8( cis) d4( cis) b2\fermata
r4 cis d b b fis g g fis2\fermata
e4 fis g a b a g( fis) e2\fermata
e'4 e fis e fis dis e2 e\fermata
fis4 cis d b b fis g2 fis\fermata
b4 ais b cis d cis b( ais) b2\fermata
cis4( dis) e2 b4 a b fis g2 fis\fermata
a g4( fis e dis e8 fis) g4 fis2 e\fermata
g4( a b cis d cis b2\fermata)
r4 a g( fis e2\fermata)
fis g4 a g fis e dis e1\fermata
\bar"|."
}

alt = \relative c' {
\global
r4 b e8( g4 fis16 e fis4. e16 dis e2~e4) dis\fermata
r4 e8( fis~ fis e4) dis8 e16( d c8) b4 b2\fermata
g'8 fis e4~( e8 fis16 g) fis4 fis4. e8 fis( g4 fis16 e) d2\fermata
r4 fis8( g) a( fis) d( e) fis( e) fis( dis) b( cis16 dis e4~ e8) dis16( cis) dis4\fermata
e4. dis8 b( c16 d) e8( d) d( dis) e( fis) fis( e4 dis8) b2\fermata
cis8( d) e( cis) d4 e8( a) a( b) c( a) b( gis a4~ a8 gis16 fis) gis4\fermata
fis8( gis) ais( fis) b4 dis, e4. dis8 e4.( dis16 cis) dis2\fermata
fis fis4 g~( g8 gis) a( ais) b( b,) cis( e) e( d16 cis) d4\fermata
a'8( g fis a~ a g16 fis) g4 g4. fis8~ fis e4 dis8 e2 fis\fermata
fis4( b,) e8( d c d b c fis, fis' e dis) e2 dis4 b2\fermata
e4( d~ d g8 e fis g a fis g2\fermata)
r4 g8( fis~ fis) e4( dis8 e2\fermata)
dis8( e) fis4~( fis8 e) dis( fis) b, c4 b8~( b cis) b4 b1\fermata
\bar"|."
}

ten = \relative c' {
\global
r4 g8( a) b4( e8 a,~ a g16 fis b4) b2~b\fermata
r4 e,8( b') b4 c8( b16 a g8 a16 g) fis( g a8) a( g16 fis g4\fermata)
e' b~( b8 ais) b4 ais8 d4 cis16( b) ais8( b4 ais8) b2\fermata
r4 a8( g) fis( a) b4 b4. a8 g8.( a16) b4 b2\fermata
g8( a16 b) c8( b16 a) g4. fis8 g( fis) e( c') dis,( b' c b16 a) g2\fermata
a2 a8 b c( a) d( b) fis'4 e8( d4 c8) b2\fermata
b4 fis'8( e) d( e) fis4 b, b b4.( ais8) b2\fermata
b8( cis) d( e) d( cis) b( ais) b4 fis'~( fis8 e) fis4 fis2\fermata
a,4( b) b2 e4. d16( c) b2~ b8 a b( cis) d2\fermata
dis8( e fis4) b,( a8 b gis a b4~ b8 a) b4 c b8( a~ a g16 fis g4)\fermata
c8( b a d b4 e8 cis a4. d8 d2\fermata)
r4 e8( b~ b) c4( b16 a g2\fermata)
b2 b8( c4) b16( a b8 a16 g) a8( g16 fis) g4 fis16( g a8~ a) gis16( fis) gis2.\fermata
\bar "|."
}

bas = \relative c {
\global
r4 e8( fis g e c'4) dis,4.( cis16 b e8 fis g e) b2\fermata
r4 cis8( dis e g,) a( b) c( a) b4 e,2\fermata
e'8( fis) g( e) cis4 d8( e) fis( d) g4 fis8( e fis4) b,2\fermata
r4 fis'8( e) d( fis) g4 dis8( cis) dis( b) e( b) g( e) b'2\fermata
c8( b) a( b) e( d) c( d) g,( a16 b) c8( b16 a) b8( g a b) e,2\fermata
a8( b) cis( a) d4 a'8( c) fis,( g) a( fis) gis( e a4) e2\fermata
d8 e fis4~( fis8 g) a( fis) g( a) b( a) g( fis e4) b2\fermata
d8( e) fis( cis) d4 e~( e8 eis) fis d g4( fis) b,2\fermata
fis'4( b,) e2 e8( d) c( d) g,( a) b4 e,8( fis g e) b'2\fermata
fis'8( e dis fis) e4.( d8~ d c b a g fis e g) a( fis) b4 e,2\fermata
e'4( fis g8 fis e a fis e fis d g2\fermata)
r4 cis,8( dis) e( c a b c2\fermata)
b8( cis dis b) e4 fis~ fis8 e4 dis8 e( ais,) b4 e,1\fermata
\bar "|."
}

sopText = \lyricmode {
Wir __ glau -- ben all __ an ei -- nen Gott,
Schöp -- fer Him -- mels und der Er -- den,
der sich zum Va -- ter ge -- ben hat,
dass wir sei -- ne Kin -- der wer -- den.
Er will uns all -- zeit er -- näh -- ren,
Seel und leib auch wohl be -- wah -- ren,
al -- lem Un -- fall will er weh -- ren,
kein __ Leid soll uns wi -- der -- fah -- ren,
er sor -- get für uns, hüt __ und wacht, __
es steht Al -- les in sei -- ner Macht.
}

altText = \lyricmode {
Wir glau -- ben all __ an ei -- nen Gott,
Schöp -- fer Him -- mels und der Er -- den,
der sich zum Va -- ter ge -- ben hat,
dass wir sei -- ne Kin -- der wer -- den.
Er will uns all -- zeit er -- näh -- ren,
Seel und leib auch wohl be -- wah -- ren,
al -- lem Un -- fall will er weh -- ren,
kein __ Leid soll uns wi -- der -- fah -- ren,
er __ sor -- get für uns, hüt __ und __ wacht, __
es steht __ Al -- les in sei -- ner Macht.
}

tenText = \lyricmode {
Wir glau -- ben __ all an ei -- nen Gott, __
Schöp -- fer __ Him -- mels und der Er -- den,
der sich zum Va -- ter ge -- ben hat,
dass wir sei -- ne Kin -- der wer -- den.
Er will uns all -- zeit er -- näh -- ren,
Seel und leib auch wohl be -- wah -- ren,
al -- lem Un -- fall will er __ weh -- ren,
kein __ Leid soll uns wi -- der -- fah -- ren,
er __ sor -- get für uns, __ hüt __ und __ wacht, __
es steht Al -- les in sei -- ner Macht.
}

basText = \lyricmode {
Wir __ glau -- ben all __ an ei -- nen Gott,
Schöp -- fer Him -- mels und der Er -- den,
der sich zum Va -- ter ge -- ben hat,
dass wir sei -- ne Kin -- der wer -- den.
Er will uns all -- zeit er -- näh -- ren,
Seel und leib __ auch wohl be -- wah -- ren,
al -- lem Un -- fall __ will er weh -- ren,
kein __ Leid soll uns wi -- der -- fah -- ren,
er __ sor -- get für uns, hüt __ und wacht, __
es __ steht Al -- les in sei -- ner Macht.
}

