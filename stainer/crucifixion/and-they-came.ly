\version "2.12.0"

global = {
  \key cis \minor
  \time 3/4
}

tenor = \relative c'' {
  \global
  R2.*10
  r4 r gis8\p gis
  bis2 cis8. cis16
  dis4 bis cis8. dis16
  dis8. gis,16 gis8 gis gis ais
  \crescTextCresc
  bis4.\< bis8\! cis dis
  e e4. r4
  e2\p\( dis4 cis2\) gis4
  b2 a4 gis2 r4 R2.*6
  \bar"||"
}

text = \lyricmode {
  And they came to a place nam -- ed Geth -- se ma -- ne,
  and Je -- sus saith to His dis -- ci -- ples:
  Sit ye here, while I shall pray.
}

rh = \relative c'' {
  \global
  <<
    { \voiceOne gis4\( fis a gis dis e }
    \new Voice { \voiceTwo cis2.\p bis2 cis4 }
  >>
  \oneVoice
  <<
    { e2 fis4 gis\) a\( b cis dis cis\) bis cis dis e fis e }
    { cis,2 dis4 e dis e e fis fisis gis gis gis gis a ais }
  >>
  <<
    { \voiceOne dis e fis }
    \new Voice { \voiceTwo b,2. }
  >>
  \oneVoice
  <<
    { gis'2 a4( gis) b( a) gis2 }
    { b,2 bis4 cis d cis bis2 }
  >>
  r4 R2.*5
  <<
    { e2 dis4 cis2 gis4 b2 a4 gis2 }
    { gis2\pp fis4 e2 e4 fis2 e4 dis2 }
    { s2.*2 dis2 cis4 bis2 }
  >>
  r4
  <<
    { gis'2(-> fis4 e2.) }
    { e2 dis4 cis2. }
  >>
  e2(->\pp dis4 cis2) r4 s2.*2
}

lh = \relative c {
  \global
  \clef F
  <<
    {\voiceOne e4 fis2 dis4 gis gis a2. gis4 fis b cis bis cis}
    \new Voice {\voiceTwo cis,4 a fis gis2 cis4 b2. e4 fis gis a2.}
  >>
  \oneVoice
  <gis dis'>4 ais \clef G <bis fis'>
  <<
    { \voiceOne e2. }
    \new Voice { \voiceTwo cis2 c4 }
  >>
  \oneVoice
  <<
    { fis4 e a gis2 fis4 gis gis a gis2 }
    { b,4 cis dis e2 dis4 e eis fis }
  >>
  r4
  \clef F
  gis,,2.~\pp gis~ gis~ gis cis
  <<
    {\voiceOne cis'2 bis4 cis2 }
    \new Voice {\voiceTwo cis,4 e gis a2 e4}
  >>
  \oneVoice
  fis2. gis2 r4
  <<
    {
      \voiceOne bis,2. cis <fis a> <e gis>2 r4
      <cis e a>2 r4 <bis dis gis>2.
    }
    \new Voice {\voiceTwo gis2.~ gis~ gis~ gis~ gis~ gis}
  >>
}


\score {
  <<
    \new Staff \new Voice = tenor \tenor
    \new Lyrics \lyricsto tenor \text
    \new PianoStaff <<
      \new Staff \rh
      \new Staff \lh
    >>
  >>
}

