\version "2.12.3"

\include "config.ily"

\relative c' {
  \key f \major
  \time 2/2
  
  r2 f | e f | g g | f g | a\fermata
  
  bes2 | a g | f f | g1 | f2\fermata
  
  f | e f | g g | f g | a\fermata
  
  bes2 | a g | f f | g1 | f2\fermata
  
  f2 | g bes | a f | g e | d\fermata
  
  e2 | c c | g' a | bes g | f\fermata
  
  c'2 | a f | g bes | a( g) | f1
  
  \bar "|."
}
\addlyrics {
  \set stanza = "1."
  Halt im Ge -- dächt -- niss Je -- sum Christ,
  der für dich hat ge -- lit -- ten,
  da er am Kreuz ge -- stor -- ben ist
  und da -- durch hat be -- strit -- ten
  Welt, Sün -- de, Teu -- fel, Höll’ und Tod,
  und dich er -- löst aus al -- ler Noth.
  Dank ihm für die -- se Lie -- be.
}
