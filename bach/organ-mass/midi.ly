\version "2.11"

loud = {
  \set Staff.midiMinimumVolume = #1
  \set Staff.midiMaximumVolume = #1
  \set Staff.midiInstrument = "soprano sax"
  s4\f
}

soft = {
  \set Staff.midiMinimumVolume = #0.5
  \set Staff.midiMaximumVolume = #0.5
  \set Staff.midiInstrument = "acoustic grand"
  s4\p
}

sopM = #(define-music-function (parser location) ()
#{
  \unfoldRepeats \new ChoirStaff
  <<
    \new Staff \new Voice << \pieceTempo \loud \sop >>
    \new Staff \new Voice << \soft \alt >>
    \new Staff \new Voice << \soft \ten >>
    \new Staff \new Voice << \soft \bas >>
  >>
#})

altM = #(define-music-function (parser location) ()
#{
  \unfoldRepeats \new ChoirStaff
  <<
    \new Staff \new Voice << \pieceTempo \soft \sop >>
    \new Staff \new Voice << \loud \alt >>
    \new Staff \new Voice << \soft \ten >>
    \new Staff \new Voice << \soft \bas >>
  >>
#})

tenM = #(define-music-function (parser location) ()
#{
  \unfoldRepeats \new ChoirStaff
  <<
    \new Staff \new Voice << \pieceTempo \soft \sop >>
    \new Staff \new Voice << \soft \alt >>
    \new Staff \new Voice << \loud \ten >>
    \new Staff \new Voice << \soft \bas >>
  >>
#})

basM = #(define-music-function (parser location) ()
#{
  \unfoldRepeats \new ChoirStaff
  <<
    \new Staff \new Voice << \pieceTempo \soft \sop >>
    \new Staff \new Voice << \soft \alt >>
    \new Staff \new Voice << \soft \ten >>
    \new Staff \new Voice << \loud \bas >>
  >>
#})

tutM = #(define-music-function (parser location) ()
#{
  \unfoldRepeats \new ChoirStaff
  <<
    \new Staff \new Voice << \pieceTempo \loud \sop >>
    \new Staff \new Voice << \loud \alt >>
    \new Staff \new Voice << \loud \ten >>
    \new Staff \new Voice << \loud \bas >>
  >>
#})

\score { \tutM \midi { } }
\score { \sopM \midi { } }
\score { \altM \midi { } }
\score { \tenM \midi { } }
\score { \basM \midi { } }
