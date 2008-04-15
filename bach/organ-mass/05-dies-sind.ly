\version "2.11"

pieceNumber = "5"
pieceTitle = "Dies sind die heil’gen zehn Gebot."

global = {
\key g \mixolydian
\time 4/4
\partial 4
}

sop = \relative c'' {
\global
g4 g g g g g8( a) b4 c\fermata
c d d c g g8( a) b4 c\fermata
c d d c g a g f\fermata
g a b c2\fermata
bes8( a) g( a) bes4\fermata
a g g g2\fermata
\bar"|."
}

alt = \relative c' {
\global
d4 e f e e d4. e16( f) e4\fermata
f8( g) a( g) f4 f4. e8 d4 g8( f) e4\fermata
f4 f f f e e8( f) e4 d\fermata
e f f8( e) e2\fermata
fis4 g8( d) d4\fermata
f f e d2\fermata
\bar"|."
}

ten = \relative c' {
\global
b4 c d d c b8( a) g4 g\fermata
a8( c) f4 a,8( b) c4 c b8( a) g4 g\fermata
a4 a d g, c8( bes) a4 bes8( a) a4\fermata
c c8( d) d4 c2\fermata
d8( c) bes( a) g4\fermata
a d4. c8~( c b16 a) b4\fermata
\bar "|."
}

bas = \relative c' {
\global
g8( f) e( d) c( b) c( d) e( f) g4 g, c\fermata
f8( e) d( e) f( g) a( b) c4 g8( f) e( d) c4\fermata
f8( e) d( c4) b8 c( d) e( d) cis( d4) cis8 d4\fermata
c8( b) a( a'4) gis8 a2\fermata
d,4 e8( fis) g4\fermata
d8( c) b( g) c4 g2\fermata
\bar "|."
}

sopText = \lyricmode {
<< { \set stanza = "1."
Dies sind die heil -- gen zehn Ge -- bot,
die uns gab un -- ser Her -- re Gott
durch Mo -- se, sei -- nen Die -- ner treu,
hoch auf dem Berg Si -- na -- i,
Ky -- ri -- e -- leis. }
\new Lyrics { \set associatedVoice = "s" \set stanza = "2."
Die Gbot all uns ge -- ge -- ben sind,
dass du dein Sünd, o Men -- schen -- kind,
er -- ken -- nen sollst und ler -- nen wohl,
wie man vor Gott le -- ben soll,
Ky -- ri -- e -- leis. }
>>
}

altText = \lyricmode {
<< { \set stanza = "1."
Dies sind die heil -- gen zehn Ge -- bot,
die uns gab un -- ser Her -- re Gott
durch Mo -- se, sei -- nen Die -- ner treu,
hoch auf dem Berg Si -- na -- i,
Ky -- ri -- e -- leis. }
\new Lyrics { \set associatedVoice = "a" \set stanza = "2."
Die Gbot all uns ge -- ge -- ben sind,
dass du dein Sünd, o Men -- schen -- kind,
er -- ken -- nen sollst und ler -- nen wohl,
wie man vor Gott le -- ben soll,
Ky -- ri -- e -- leis. }
>>
}

tenText = \lyricmode {
<< { \set stanza = "1."
Dies sind die heil -- gen zehn Ge -- bot,
die uns gab un -- ser Her -- re Gott
durch Mo -- se, sei -- nen Die -- ner treu,
hoch auf dem Berg Si -- na -- i,
Ky -- ri -- e -- leis. }
\new Lyrics { \set associatedVoice = "t" \set stanza = "2."
Die Gbot all uns ge -- ge -- ben sind,
dass du dein Sünd, o Men -- schen -- kind,
er -- ken -- nen sollst und ler -- nen wohl,
wie man vor Gott le -- ben soll,
Ky -- ri -- e -- leis. }
>>
}

basText = \lyricmode {
<< { \set stanza = "1."
Dies sind die heil -- gen zehn Ge -- bot,
die uns gab un -- ser Her -- re Gott
durch Mo -- se, sei -- nen Die -- ner treu,
hoch auf dem Berg Si -- na -- i,
Ky -- ri -- e -- leis. }
\new Lyrics { \set associatedVoice = "b" \set stanza = "2."
Die Gbot all uns ge -- ge -- ben sind,
dass du dein Sünd, o Men -- schen -- kind,
er -- ken -- nen sollst und ler -- nen wohl,
wie man vor Gott le -- ben soll,
Ky -- ri -- e -- leis. }
>>
}

