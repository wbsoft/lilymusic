\version "2.11"

pieceNumber = "7"
pieceTitle = "Vater unser im Himmelreich."

global = {
\key d \minor
\time 4/4
\partial 4
}

sop = \relative c'' {
\global
a4 a f g a f e d\fermata
a' a g c a f g a\fermata
a8( b) c4 d8( e) f4 e d cis d\fermata
d e d c b a gis a\fermata
d c b c a a g f\fermata
a bes a8( g) f4 g f e d\fermata
\bar"|."
}

alt = \relative c' {
\global
f4 e d cis d8( e) f4 cis a\fermata
f' e d e f f e8( d) e4\fermata
e a g f g f8( e) e4 f\fermata
f e b' e, e8( d) c( d) e4 e\fermata
g g f g f f e c\fermata
d d e d d d cis a\fermata
\bar"|."
}

ten = \relative c' {
\global
d4 a a g d' d a f\fermata
d' a bes c c d8( cis) d4 cis4\fermata
c c8( a) b( cis) d( c) bes4 b a a\fermata
b b8( a4) gis8 a4 gis a b c\fermata
b c d e d d8( c) bes4 a\fermata
a g8( f) e4 a g8( a) b4 e,8( f16 g) fis4\fermata
\bar "|."
}

bas = \relative c {
\global
d4 cis d e f8( g) a4 a, d\fermata
d c bes a8( c) f4 bes bes a\fermata
a8( g) f4. e8 d4 g gis a d,\fermata
g c, b a e' f e a,\fermata
g'8( f) e4 d c d8( c) bes4 c f\fermata
fis g cis, d8( c) bes( a) gis4 a d\fermata
\bar "|."
}

sopText = \lyricmode {
<< { \set stanza = "1."
Va -- ter un -- ser im Him -- mel -- reich,
der du uns al -- ler heis -- sest gleich
Brü -- der sein und dich ru -- fen an
und willst das Be -- ten von uns han:
gib, dass nit bet al -- lein der Mund,
hilf, dass es geh von Her -- zens -- grund. }
\new Lyrics { \set associatedVoice = "s" \set stanza = "2."
Es komm dein Reich zu die -- ser Zeit
und dort her -- nach in E -- wig -- keit.
Der Hei -- lig Geist uns woh -- ne bei
mit sei -- nen Ga -- ben man -- cher -- lei;
des Sa -- tans Zorn und gross Ge -- walt
zer -- brich, vor ihm dein Kirch er -- halt. }
>>
}

altText = \lyricmode {
<< { \set stanza = "1."
Va -- ter un -- ser im Him -- mel -- reich,
der du uns al -- ler heis -- sest gleich
Brü -- der sein und dich ru -- fen an
und willst das Be -- ten von uns han:
gib, dass nit bet al -- lein der Mund,
hilf, dass es geh von Her -- zens -- grund. }
\new Lyrics { \set associatedVoice = "a" \set stanza = "2."
Es komm dein Reich zu die -- ser Zeit
und dort her -- nach in E -- wig -- keit.
Der Hei -- lig Geist uns woh -- ne bei
mit sei -- nen Ga -- ben man -- cher -- lei;
des Sa -- tans Zorn und gross Ge -- walt
zer -- brich, vor ihm dein Kirch er -- halt. }
>>
}

tenText = \lyricmode {
<< { \set stanza = "1."
Va -- ter un -- ser im Him -- mel -- reich,
der du uns al -- ler heis -- sest gleich
Brü -- der sein und dich ru -- fen an
und willst das Be -- ten von uns han:
gib, dass nit bet al -- lein der Mund,
hilf, dass es geh von Her -- zens -- grund. }
\new Lyrics { \set associatedVoice = "t" \set stanza = "2."
Es komm dein Reich zu die -- ser Zeit
und dort her -- nach in E -- wig -- keit.
Der Hei -- lig Geist uns woh -- ne bei
mit sei -- nen Ga -- ben man -- cher -- lei;
des Sa -- tans Zorn und gross Ge -- walt
zer -- brich, vor ihm dein Kirch er -- halt. }
>>
}

basText = \lyricmode {
<< { \set stanza = "1."
Va -- ter un -- ser im Him -- mel -- reich,
der du uns al -- ler heis -- sest gleich
Brü -- der sein und dich ru -- fen an
und willst das Be -- ten von uns han:
gib, dass nit bet al -- lein der Mund,
hilf, dass es geh von Her -- zens -- grund. }
\new Lyrics { \set associatedVoice = "b" \set stanza = "2."
Es komm dein Reich zu die -- ser Zeit
und dort her -- nach in E -- wig -- keit.
Der Hei -- lig Geist uns woh -- ne bei
mit sei -- nen Ga -- ben man -- cher -- lei;
des Sa -- tans Zorn und gross Ge -- walt
zer -- brich, vor ihm dein Kirch er -- halt. }
>>
}

