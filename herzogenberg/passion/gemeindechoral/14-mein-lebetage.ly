\version "2.12.3"

\include "config.ily"

\relative c'' {
  \time 4/4
  \key f \major
  
  \partial 4
  
  c4 | d c a c | bes bes a\fermata
  g4 | a bes c a | g2 f4\fermata 
  c'4 | d c a c | bes bes a\fermata
  g4 | a bes c a | g2 f4\fermata 
  
  f4 | g a bes g | a g f\fermata
  f4 | a bes c d | a b c\fermata
  a4 | c d c a | bes2 a4\fermata
  d4 | d d g, c | bes a g\fermata
  bes4 | a g f g | e d c\fermata
  
  c4 | f g a bes | g2 f4\fermata
  \bar "|."
}
\addlyrics {
  Mein Le -- be -- ta -- ge will ich dich
  aus mei -- nem Sinn nicht las -- sen;
  dich will ich stets gleich -- wie du mich
  mit Lie -- bes -- ar -- men fas -- sen.
  Du sollst sein mei -- nes Her -- zens Licht,
  und wenn mein Herz in Stü -- cken bricht,
  sollst du mein Her -- ze blei -- ben.
  Ich will mich dir mein höch -- ster Ruhm
  hier -- mit zu dei -- nem Ei -- gen -- thum
  be -- stän -- dig -- lich ver -- schrei -- ben.
}
