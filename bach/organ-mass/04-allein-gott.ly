\version "2.11"

pieceNumber = "4"
pieceTitle = "Allein Gott in der Höh’ sei Ehr."

global = {
\key f \major
\time 4/4
\partial 4
}

sop = \relative c' {
\global
\repeat volta 2 {
f8( g) a4 bes c bes a g a\fermata
a a g8( a) bes( a) g4 f8( d e4) f\fermata } \tag #'nopiano \break
f4 g a bes a g8.( a16) a4\trill g\fermata
g a bes c bes a g a\fermata
f g a bes8( a) g4 f8( d e4) f\fermata
\bar"|."
}

alt = \relative c' {
\global
\repeat volta 2 {
c4 f f e d8( e) f( e) d4 cis\fermata
d c8( d) e4 f4. e8 f4( c) c\fermata }
c8( d) e4 fis g8( g,) c( d) g,( g'4) fis8 d4\fermata
c c f e8( fis) g4 f8( e) d4 cis\fermata
a8( b) c( d) e4 d4. c16( bes) f'4( c) c\fermata
\bar"|."
}

ten = \relative c' {
\global
\repeat volta 2 {
a8( bes) c4 d8( f,) g( a) bes( c) d( a) bes4 e,\fermata
f8( g) a( bes) c4 d4. c16( bes) c8( bes16 a g4) a\fermata }
a g c d8( es) es( d) d16( c d8 es) d16( c) bes4\fermata
g f f8( g) a4 d, d'8( a) bes4 e,\fermata
f e a8( g) f4. e8 c'( bes16 a g4) a\fermata
\bar "|."
}

bas = \relative c, {
\global
\repeat volta 2 {
f4 f'8( e) d4 c g d'8( c) bes4 a\fermata
d8( e) f4 e d8( c) bes( g) a( bes c4) f,\fermata }
f' c8( c') bes( a) g4 f es8( bes) c( d) g,4\fermata
e' f8( e) d4 a bes8( c) d( c) bes4 a\fermata
d c cis d8( c) bes( g) a( bes c4) f,\fermata
\bar "|."
}

sopText = \lyricmode {
<<
{ \set stanza = "1." Al -- lein Gott in der Höh’ sei Ehr
und dank für sei -- ne Gna -- de, }
\new Lyrics	{ \set associatedVoice = "s"
da -- rum, dass nun und nim -- mer -- mehr
uns rüh -- ren kann kein Scha -- de.
Ein Wohl -- ge -- fall’n Gott an uns hat,
nun ist gross Fried ohn’ Un -- ter -- lass,
all’ Fehd’ hat nun ein En -- de. }
\new Lyrics { \set associatedVoice = "s" \set stanza = "2."
Wir lo -- ben, preis’n, an -- be -- ten dich
für dei -- ne Ehr; wir dan -- ken, }
\new Lyrics { \set associatedVoice = "s"
dass du, Gott Va -- ter e -- wig -- lich
re -- gierst ohn’ al -- les Wan -- ken.
Ganz un -- ge -- mess’n ist dei -- ne Macht,
fort g’schieht, was dein Will’ hat be -- dacht; 
wohl uns des fei -- nen Her -- ren! } 
>>
}

altText = \lyricmode {
<<
{ \set stanza = "1." Al -- lein Gott in der Höh’ sei Ehr
und dank für sei -- ne Gna -- de, }
\new Lyrics	{ \set associatedVoice = "a"
da -- rum, dass nun und nim -- mer -- mehr
uns rüh -- ren kann kein Scha -- de.
Ein Wohl -- ge -- fall’n Gott an uns hat,
nun ist gross Fried ohn’ Un -- ter -- lass,
all’ Fehd’ hat nun ein En -- de. }
\new Lyrics { \set associatedVoice = "a" \set stanza = "2."
Wir lo -- ben, preis’n, an -- be -- ten dich
für dei -- ne Ehr; wir dan -- ken, }
\new Lyrics { \set associatedVoice = "a"
dass du, Gott Va -- ter e -- wig -- lich
re -- gierst ohn’ al -- les Wan -- ken.
Ganz un -- ge -- mess’n ist dei -- ne Macht,
fort g’schieht, was dein Will’ hat be -- dacht; 
wohl uns des fei -- nen Her -- ren! } 
>>
}

tenText = \lyricmode {
<<
{ \set stanza = "1." Al -- lein Gott in der Höh’ sei Ehr
und dank für sei -- ne Gna -- de, }
\new Lyrics	{ \set associatedVoice = "t"
da -- rum, dass nun und nim -- mer -- mehr
uns rüh -- ren kann kein Scha -- de.
Ein Wohl -- ge -- fall’n Gott an __ uns hat,
nun ist gross Fried ohn’ Un -- ter -- lass,
all’ Fehd’ hat nun ein En -- de. }
\new Lyrics { \set associatedVoice = "t" \set stanza = "2."
Wir lo -- ben, preis’n, an -- be -- ten dich
für dei -- ne Ehr; wir dan -- ken, }
\new Lyrics { \set associatedVoice = "t"
dass du, Gott Va -- ter e -- wig -- lich
re -- gierst ohn’ al -- les Wan -- ken.
Ganz un -- ge -- mess’n ist dei -- ne Macht,
fort g’schieht, was dein Will’ hat be -- dacht; 
wohl uns des fei -- nen Her -- ren! } 
>>
}

basText = \lyricmode {
<<
{ \set stanza = "1." Al -- lein Gott in der Höh’ sei Ehr
und dank für sei -- ne Gna -- de, }
\new Lyrics	{ \set associatedVoice = "b"
da -- rum, dass nun und nim -- mer -- mehr
uns rüh -- ren kann kein Scha -- de.
Ein Wohl -- ge -- fall’n Gott an uns hat,
nun ist gross Fried ohn’ Un -- ter -- lass,
all’ Fehd’ hat nun ein En -- de. }
\new Lyrics { \set associatedVoice = "b" \set stanza = "2."
Wir lo -- ben, preis’n, an -- be -- ten dich
für dei -- ne Ehr; wir dan -- ken, }
\new Lyrics { \set associatedVoice = "b"
dass du, Gott Va -- ter e -- wig -- lich
re -- gierst ohn’ al -- les Wan -- ken.
Ganz un -- ge -- mess’n ist dei -- ne Macht,
fort g’schieht, was dein Will’ hat be -- dacht; 
wohl uns des fei -- nen Her -- ren! } 
>>
}

