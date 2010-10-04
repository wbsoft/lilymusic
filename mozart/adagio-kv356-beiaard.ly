\version "2.13.34"

global = {
  \time 2/2
  \key c \major
}

\include "merge-rests.ily"

\header {
  title = "ADAGIO"
  subtitle = "K. 356"
  composer = "Wolfgang Amadeus Mozart (1756-1791)"
  arranger = "Carillon arrangement by Wilbert Berendsen (*1971)"
  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }  
}

\layout {
  \context {
    \Voice
    \override VoiceFollower #'style = #'dashed-line
  }
}

toManual = {
  \change Staff = "manual"
  \voiceTwo
}

toPedal = {
  \change Staff = "pedal"
  \oneVoice
}

plusDown = #(define-music-function (parser location note) (ly:music?)
	      #{ << $note \new Voice { \voiceTwo $note } >> #})
plusUp = #(define-music-function (parser location note) (ly:music?)
	      #{ << $note \new Voice { \voiceOne $note } >> #})

upper = \relative c'' {
  \tempo "Adagio"
  \global
  \voiceOne
  \repeat volta 2 {
    <e g>2.( <d f>4) |
    <d f>2( <c e>4) r
    f8( e f g a g f e) |
    e2( d8 e f fis) |
    
    <e g>2.( <d f>4) |
    <d f>2( e) |
    <%{\tweak #'duration-log #1%} d f>16( g f \plusDown e f g a f) e4 d |
    <b d>2( c4) r |
  }
  \repeat volta 2 {
    g'2~ g8 \plusDown fis16 g \plusDown fis g a g |
    fis4( c'2 b4) |
    bes4.( c16 \plusDown bes a4 g) |
    fis8( g \plusDown a bes \plusDown b c \plusDown cis d) |
    d8( e16 d c8 b) b( a) r g |
    
  } 
  
}

middle = \relative c'' {
  \repeat volta 2 {
    s1*2
    \voiceTwo
    d8 cis d e f e d c |
    c2 b4 r |
    
    s1 |
    s2 c4 << cis \\ bes >> |
    a2 c4 b |
    f2( e4) r |
  }
  \repeat volta 2 {
    <c' e>2( <b d>) |
    <a c> << d \\ g, >> |
    <cis e>1 |
    d4 r r2 |
    
    
  }
}

bass = \relative c' {
  \showStaffSwitch
  \repeat volta 2 {
    \toManual
    c4( e g gis) |
    a2.( g4) |
    \toPedal
    f4.( e8 d e f fis) |
    g2. r4 |
    
    \toManual
    c,4( e g gis) |
    a2. \toPedal g4 |
    f2 g |
    <c, g'>2~ <c g'>4 r |
  }
  
}

\score {
  \new PianoStaff <<
    \new Staff = "manual" <<
      \clef treble
      \mergeRestsOn
      \new Voice = "upper" \upper
      \new Voice = "middle" \middle
    >>
    \new Staff = "pedal" <<
      \mergeRestsOn
      \clef bass
      \new Voice = "bass" \bass
    >>
  >>
}

  