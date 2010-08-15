\version "2.12.3"

\include "config.ily"

\relative c' {
  \key f \major
  \time 4/4
  \partial 4
  
  f4 | a g a d | c( bes) a\fermata
  d4 | c bes a g | a2 r4
  c4 | d e f e d2 c4\fermata
  a4 | bes a g g | f1~ f~ f2-\parenthesize\fermata r4
  \bar "|."
}
\addlyrics {
  \set stanza = "1."
  Ach bleib mit dei -- nem Wor -- te
  bei uns, Er -- lö -- ser werth,
  dass uns beid’ hier und dor -- te
  sei Güt’ und Heil be -- scheert. __
}
