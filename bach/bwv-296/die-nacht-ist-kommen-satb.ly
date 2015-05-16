\version "2.18.2"

%#(set-global-staff-size 17)
\paper {
  line-width = 18\cm
}

\header {
  title = "Die Nacht ist kommen"
  subtitle = "BWV 296"
  composer = "Johann Sebastian Bach (1685-1750)"
  poet = "Petrus Herbert (1566)"
  tagline = "Doetinchemse Bachvereniging (Gravure WB)"
}

global = {
  \key c \major
  \time 4/4
  \partial 4
  \accidentalStyle Voice.modern
}

soprano = \relative c'' {
  \global
  % Muziek volgt hier.
  g4
  | a4 b c2
  | b2\fermata a4 a
  | gis4 a b2
  | a2\fermata r4 c
  | c4 c8( b) a2
  | d2\fermata r4 b
  | c4 a b a
  | g2\fermata r4 d'
  | d4 d c2
  | a2\fermata r4 c
  | c4 b c8( b) a4
  | a2\fermata r4 d
  | c4 b a2
  | g2.\fermata
  \bar "|."
}

alto = \relative c' {
  \global
  % Muziek volgt hier.
  d4
  | d4 d e( d)
  | d2\fermata e4 d8( c)
  | b4 e f( e8 d)
  | c2\fermata r4 a'
  | g8( f) g4 g8( f16 e f8 g)
  | a2\fermata r4 g
  | g4 a a8([ g)] g( fis)
  | d2\fermata r4 g
  | a8( d,) g4 g8( f g e)
  | f2\fermata r4 g
  | a4 a8( g) g4 g
  | fis2\fermata r4 g
  | g8( fis) g4 g( fis)
  | d2.\fermata
}

tenor = \relative c' {
  \global
  % Muziek volgt hier.
  b4
  | a4 g g( a)
  | g2\fermata g4 f8( e)
  | e4 e8( a) a4( gis)
  | a2\fermata r4 e'
  | e8( d) e4 c8( cis d e)
  | f2\fermata r4 d
  | e4 d d4. c8
  | b2\fermata r4 b
  | a4 b c2
  | c2\fermata r4 e
  | d4 d e8( d) e4
  | d2\fermata r4 d
  | g,8([ a)] b( e) a,( d4 c8)
  | b2.\fermata
}

bass = \relative c {
  \global
  % Muziek volgt hier.
  g'4
  | fis4 f e( fis)
  | g2\fermata cis,4 d
  | d4 c d( e)
  | a,2\fermata r4 a'
  | e4 c f8( g f e)
  | d2\fermata r4 g8( f)
  | e4 fis g d
  | g,2\fermata r4 g'
  | fis4 g8( f) e( d e c)
  | f2\fermata r4 e4
  | fis4 g c, cis
  | d2\fermata r4 b
  | e4 d8( c) d4( d,)
  | g2.\fermata
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Liedtekst volgt hier.
  Die Nacht ist kom -- men,
  drin wir ru -- hen sol -- len;
  Gott walt’s, zu From -- men
  nach sein’m Wohl -- ge -- fal -- len,
  daß wir uns le -- gen
  in sein’m G’leit und Se -- gen,
  der Ruh’ zu pfle -- gen.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Liedtekst volgt hier.
  Treib, Herr, von uns fern
  die un -- rei -- nen Geis -- ter,
  halt die Nacht -- wach’ gern,
  sei selbst un -- ser Schutz -- herr,
  schirm beid Leib und Seel’
  un -- ter dei -- ne Flü -- gel,
  send’ uns dein’ En -- gel!
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Liedtekst volgt hier.
  Laß uns ein -- schla -- fen
  mit gu -- ten Ge -- dan -- ken,
  fröh -- lich auf -- wa -- chen
  und von dir nicht wan -- ken;
  laß uns mit Züch -- ten
  un -- ser Tun und Dich -- ten
  zu dein’m Preis rich -- ten!
}

%{
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Sopraan"
      shortInstrumentName = "S."
    } { \soprano }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Alt"
      shortInstrumentName = "A."
    } { \alto }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Tenor"
      shortInstrumentName = "T."
    } { \clef "treble_8" \tenor }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = "Bas"
      shortInstrumentName = "B."
    } { \clef bass \bass }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
  >>
  \layout { }
  \midi { }
}
%}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      %midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Sopraan" "Alt" }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Staff \with {
      %midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bas" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout {
    system-count = 4
  }
  \midi { \tempo 4=100 }
}
