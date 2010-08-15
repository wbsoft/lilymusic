\version "2.12.3"

\include "config.ily"

\relative c'' {
  \time 4/4
  \key es \major
  \autoBeamOff
  
  \partial 2
  
  g4 f | es f g bes | as2 g \breathe |
  bes4 g as g8[ f] | es4 g f2 | es \breathe
  g4 f | es f g bes | as2 g \breathe |
  bes4 g as g8[ f] | es4 g f2 | es \breathe
  
  bes'4 c | es es d bes | c2 bes \breathe |
  bes4 c es es | d bes c2 | bes \breathe
  
  f4 g | as as g f | g2 f \breathe |
  g4 bes as g | f es f2 | es2. 
  \bar "|."
}
\addlyrics {
  \set stanza = "1."
  Schmü -- cke dich, o lie -- be See -- le,
  lass die dunk -- le Sün -- den -- höh -- le,
  komm an’s hel -- le Licht ge -- gan -- gen,
  fan -- ge herr -- lich an zu pran -- gen.
  
  Denn der Herr voll Heil und Gna -- den
  will dich jetzt zu Ga -- ste la -- den.
  Der den Him -- mel kann ver -- wal -- ten
  will jetzt Her -- berg in dir hal -- ten.
}
