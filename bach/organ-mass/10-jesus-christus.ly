\version "2.11"

pieceNumber = "10"
pieceTitle = "Jesus Christus, unser Heiland."

global = {
\key f \minor
\time 4/4
}

sop = \relative c' {
\global
f4 c' c( bes c) f,8( g) as4 as as( g) f2\fermata
as4 as as f as bes c( bes as g) f2\fermata
as4 as as f as( bes c) bes as2\fermata
r4 es'4 f es8( des) c( bes) as( bes) c4( bes as) g f2.\fermata r4
\bar"|."
}

alt = \relative c' {
\global
c4 c f8( e f4 e) f8( e) f4 f f4.( e8) c2\fermata
f4 f es des es f8( g) as4.( g8~ g f4 e8) c2\fermata
f4 as8( g) f4 des f8( es f g as4.) g8 es2\fermata
r4 as8( ges) f4 g as8( e) f( es) es( as4 g f) e8 c2.\fermata r4
\bar"|."
}

ten = \relative c' {
\global
as4 g as( g8 f g4) c8( bes) c4 f8( es) d4( g,8 c16 bes) as2\fermata
c4 des as as as8( bes16 c) des4 es8( f16 es des c des8 c4~ c8. bes16) as2\fermata
c8( des) es4 des as as( des es) es8.( des16) c2\fermata
r4 es des8( c) bes4 as8( des) c( bes) as( es' f c) c4( des8 c16 bes) a2.\fermata r4
\bar "|."
}

bas = \relative c {
\global
f4. es8 des2( c8 bes') as( g) f( es) des( c) b4( c) f,2\fermata
f'8( es) des4 c des des8( c) bes4 as( bes c2) f\fermata
f4 c des8( es) f( es) des( c bes4 as) es' as,2\fermata
r4 c des es f4. g8 as( c, d e f as,) bes( c) f,2.\fermata r4
\bar "|."
}

sopText = \lyricmode {
<<
{ \set stanza = "1."
Je -- sus Chri -- stus, un -- ser Hei -- land,
der von uns den Got -- tes -- zorn __ wand,
durch das bitt -- re Lei -- den sein
half er uns aus der Höl -- len -- pein. }
\new Lyrics { \set associatedVoice = "s" \set stanza = "2."
Dass wir nim -- mer des ver -- ges -- sen,
gab er uns sein Leib zu es -- sen,
ver -- bor -- gen im Brot __ so klein
und zu trin -- ken sein Blut __ im Wein. }
>>
}

altText = \lyricmode {
<<
{ \set stanza = "1."
Je -- sus Chri -- stus, un -- ser Hei -- land,
der von uns den Got -- tes -- zorn __ wand,
durch das bitt -- re Lei -- den sein
half er uns aus der Höl -- len -- pein. }
\new Lyrics { \set associatedVoice = "a" \set stanza = "2."
Dass wir nim -- mer des ver -- ges -- sen,
gab er uns sein Leib zu es -- sen,
ver -- bor -- gen im Brot __ so klein
und zu trin -- ken sein Blut __ im Wein. }
>>
}

tenText = \lyricmode {
<<
{ \set stanza = "1."
Je -- sus Chri -- stus, un -- ser Hei -- land,
der von uns den Got -- tes -- zorn __ wand,
durch das bitt -- re Lei -- den sein
half er uns aus der Höl -- len -- pein. }
\new Lyrics { \set associatedVoice = "t" \set stanza = "2."
Dass wir nim -- mer des ver -- ges -- sen,
gab er uns sein Leib zu es -- sen,
ver -- bor -- gen im Brot __ so klein
und zu trin -- ken sein Blut __ im __ Wein. }
>>
}

basText = \lyricmode {
<<
{ \set stanza = "1."
Je -- sus Chri -- stus, un -- ser Hei -- land,
der von uns den Got -- tes -- zorn __ wand,
durch das bitt -- re Lei -- den sein
half er uns aus der Höl -- len -- pein. }
\new Lyrics { \set associatedVoice = "b" \set stanza = "2."
Dass wir nim -- mer des ver -- ges -- sen,
gab er uns sein Leib zu es -- sen,
ver -- bor -- gen im Brot __ so klein
und zu trin -- ken sein Blut __ im Wein. }
>>
}

