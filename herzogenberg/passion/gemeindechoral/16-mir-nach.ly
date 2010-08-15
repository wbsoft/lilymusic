\version "2.12.3"

\include "config.ily"

\relative c' {
  \key d \major
  \time 4/4
  
  \partial 4
  
  d4 | fis g a a g fis e\fermata
  a4 | b cis d cis | b2 a4\fermata
  d,4 | fis g a a g fis e\fermata
  a4 | b cis d cis | b2 a4\fermata
  a4 | d cis b a | g fis e\fermata
  a4 | a fis g a | fis e d\fermata
  \bar "|."
}
\addlyrics {
  \set stanza = "1."
  Mir nach, spricht Chri -- stus un -- ser Held,
  mir nach, ihr Chri -- sten al -- le!
  ver -- leug -- net euch, ver -- lasst die Welt,
  folgt mei -- nem Ruf und Schal -- le,
  nehmt eu -- er Kreuz und Un -- ge -- mach auf euch,
  folgt mei -- nem Wan -- del nach.
}
