\version "2.12.1"
#(set-global-staff-size 16)
\include "definitions.ly"

global = {
  \key a \minor
  \time 4/4
  \partial 2
}

fermatas = {
  s2 s1*4 s2\fermata
  s2 s1*3 s2\fermata
  s2 s1*4 s2\fermata
  s2 s1*3 s2\fermata
  s2 s1*3 s2\fermata
  s2 s1*3 s2\fermata
}

breaks = {
  s1*9 \bar "" \break
  s1*9 \bar "" \break
}

sop = \relative c' {
  \global
  e2 a b c b a b gis1 e2
  g g f e a a gis a
  e a b c b a b gis1 e2
  g g f e a a gis a
  b c d e e d d c
  e d c b a4( b) c2 b a
  \bar "|."
}

alt = \relative c' {
  \global
  c4( d) e2 e e4( fis) gis2 a f e1 b2
  e e d d c4( b) c( d) e2 e
  c4( d) e2 e e4( fis) g2 a fis e1 b2
  cis d d d c4( d) e2 b c
  d g f e4( f) g2 a g4( f) e2
  a a4( gis) a2 e4( d) c( d) e2. d4 c2
}

ten = \relative c' {
  \global
  a4( b) c2 gis a d e b b1 gis2
  b a a b a a b c
  a4( b) c2 gis a b4( e) e2 dis b1 gis2
  a a gis4( a) b2 a4( b) c( d) e2 e,
  g2 g a4( b) c( d) e( c) c2 b c
  c f e gis, a a gis4( e) e2
}

bas = \relative c {
  \global
  a2 a' e a, b c d e1 e,2
  e' cis d gis, a f' e a,
  a a' e a, e'4( d) c2 b e1 e,2
  a d b gis' a e e, a
  g'4( f) e2 d c c' f, g c,
  a b c4( d) e2 f e4( d) e2 a,
}

organAltChanges = {
  s1*17
  \lh \voiceOne
  s2
  \rh \voiceTwo
}

organTenChanges = {
  s1*17
  \rh \voiceTwo
  s2
  \lh \voiceOne
}

sopText = \lyricmode {
  Mein Gott, dus weißt am al -- ler -- bes -- ten
  das, was mir gut und nütz -- lich sei.
  Hin -- weg mit al -- lem Men -- schen -- we -- sen,
  weg mit dem ei -- ge -- nen Ge -- bäu.
  Gib, Herr, daß ich auf dich nur bau
  und dir al -- lei -- ne __ ganz ver -- trau.
}

tenText = \lyricmode {
  Mein __ Gott, dus weißt am al -- ler -- bes -- ten
  das, was mir gut und nütz -- lich sei.
  Hin -- weg mit al -- lem __ Men -- schen -- we -- sen,
  weg mit dem __ ei -- ge -- nen __ Ge -- bäu.
  Gib, Herr, daß __ ich __ auf __ dich nur bau
  und dir al -- lei -- ne ganz ver -- trau.
}

\layout {
  indent = 2\cm
  \context {
    \Staff
    \override InstrumentName #'self-alignment-X = #LEFT
  }
  \context {
    \PianoStaff
    \override InstrumentName #'self-alignment-X = #LEFT
    %    fontSize = #-1
    %\override StaffSymbol #'staff-space = #(magstep -1)
  }
  \context {
    \Voice
    followVoice = ##t
    \override VoiceFollower #'style = #'dashed-line
  }
  \context {
    \Lyrics
    lyricMelismaAlignment = #-0.7
  }
}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    instrumentName = \markup\column { Soprano "Violino I" }
  } \new Voice = "sop" << \sop \fermatas \breaks >>
  \new Lyrics \lyricsto "sop" \sopText

  \new Staff \with {
    instrumentName = \markup\column { Alto "Violino II" }
  } \new Voice << \alt \fermatas >>

  \new Staff \with {
    instrumentName = \markup\column { Tenore Viola }
  } \new Voice = "ten" << \clef "treble_8" \ten \fermatas >>
  \new Lyrics \lyricsto "ten" \tenText

  \new Staff \with {
    instrumentName = \markup\column { Basso Violoncello "e Basso" }
  } \new Voice << \clef bass \bas \fermatas >>
>>

organPart = \new PianoStaff \with {
  instrumentName = #"Organo"
} <<
  \new Staff = "rh" <<
    \new Voice \with {
      \remove "Slur_engraver"
    } { \voiceOne << \sop \fermatas >> }
    \new Voice \with {
      \remove "Slur_engraver"
    } { \voiceTwo << \alt \organAltChanges >> }
  >>
  \new Staff = "lh" {
    \clef bass <<
      \new Voice \with {
      \remove "Slur_engraver"
    } { \voiceOne << \ten \organTenChanges >> }
      \new Voice \with {
      \remove "Slur_engraver"
    } { \voiceTwo << \bas \fermatas >> }
    >>
  }
>>


\score {
  <<
    \organPart
  >>
}
