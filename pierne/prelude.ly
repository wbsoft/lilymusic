\version "2.12.0"

#(set-global-staff-size 18)

\header {
  dedication = \markup \center-column {
    "A Monsieur Samuel ROUSSEAU"
    \raise #'1 \smaller \line {
      Maître de Chappelle de \concat {S \raise #'0.5 \smaller te} Clothilde
    }
    " "
  }
  title = "Prélude"
  composer = "Gabriel PIERNÉ"
  opus = "Op. 29 Nº 1"
}

rh = \change Staff = rh
lh = \change Staff = lh

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold {
    "Pas vite "
    \small \general-align #Y #DOWN \note #"4." #.8 = 69
  }
}

global = {
  \time 12/8
  \key g \minor
  \tempoMark
}

man = \relative c'' {
  \global
  \once \override DynamicText #'extra-offset = #'(-1 . -4.5)
  g16\mf
  _\markup { \hspace #'-10 \smaller \column { G.O. GREAT } }
  ^\markup \italic legato
  a bes \lh g d bes \rh es f g \lh es bes g
  \rh d' fis g \lh d bes g \rh bes c d \lh \clef bass bes g d |
  \rh c' d es \lh g, es c \rh e' fis g \lh c, g es
  \rh g' b c \lh es, c g \rh c' d es \lh \clef violin g, es c |
  \rh es' c a \lh g es c \rh fis' c a \lh fis es c
  \rh a'' es c \lh a fis es \rh c'' fis, es \lh c a fis |
  \rh bes' g d \lh bes g d \rh c'' a g \lh c, a d,
  \rh d'' bes g \lh d bes d, \rh g' d bes \lh g d bes |
  \rh bes'' g d \lh bes g d \rh g' d bes \lh g d bes
  \rh d' bes g \lh d bes g \rh bes' g d \lh \clef bass bes g d |
  \rh d'' bes g \lh d bes g \rh bes' g d \lh bes g d 
  \rh g' d bes \lh g d bes \rh d' bes g \lh d bes g |
  \rh f'' d a \lh f d a \rh g'' d bes \lh g d bes
  \rh e' d a \lh g e a, \rh f'' cis a \lh g f a, |
  \rh d' fis d' \lh d, a d, \rh e' g e' \lh e, a, d,
  \rh fis' a fis' \lh fis, a, d, \rh g' bes g' \lh  g, bes, d, %{\clef violin%} |
  \rh a''' es c \lh \clef violin a es c \rh bes'' es, c \lh bes es, c
  \rh c'' es, c \lh c es, c \rh g'' es c \lh g es c |
  \rh fis' es c \lh fis, es c \rh g'' es c \lh g es c
  \rh a'' es c \lh a es c \rh es' c a \lh es c a |
  \rh a'' es c \lh a es c \rh bes'' es, c \lh bes es, c
  \rh c'' es, c \lh c es, c \rh g'' es c \lh g es c |
  \rh g'' es b \lh g es b \rh f'' es b \lh f es b
  \rh as'' d, b \lh as d, b \rh b' as d, \lh \clef bass b as d, |
  \rh c'' g es \lh c g es \rh d'' b g \lh d b g
  \rh es'' c g \lh es c g \rh g'' es c \lh g es c |
  \rh a' fis es \lh a, fis es \rh bes'' fis es \lh bes fis es
  \rh c'' fis, es \lh c fis, es \rh es'' c fis, \lh es c fis, |
  \rh d'' bes g \lh d bes g \rh g' e d \lh bes g c,
  \rh bes'' fis d \lh c bes d, \rh a'' fis d \lh c a d, |
  \rh g' a bes \lh \clef violin g d bes \rh es f g \lh es bes g
  \rh d' fis g \lh d bes g \rh bes c d \lh \clef bass bes g d |
  \rh g' a bes \lh \clef violin g d bes \rh es f g \lh es bes g
  \rh d' fis g \lh d bes g \rh bes c d \lh \clef bass bes g d |
  as' bes b \rh d es f \lh \clef violin as bes b \rh d es f
  \lh as, bes b \rh d es f \lh as bes b \rh d es f |
  f b, c d \lh f, g \rh as d, es f \lh b, c
  \rh d f, g as \lh d, es \rh f b, c d b as |
  \lh \clef bass g a b \rh c es fis \lh \clef violin g a b \rh c es fis
  \lh g, a b \rh c es fis \lh g a b \rh c d es |
  es a, bes c \lh c, d \rh es a, bes c \lh fis, g
  \rh a c, d es \lh \clef bass a, bes \rh \stemUp c \lh fis, g a fis es |


}

mann = \relative c' {
  \global
  s1.*30
}


ped = \relative c {
  \global
  g1.~g~g~g f e a4. g a2. d,1.
  c2. bes' a4. g fis2. c bes' as g4. f es d c2. c'4. bes a2. bes 4. c d2.
  g,1.~g f d es c2. c' bes1. a2.~a4. g fis2.~fis4. es d2. d' c2.~c4. bes
  a g fis f e2. es d bes' a as 


}


\score {
  <<
    \new PianoStaff <<
      \new Staff = "rh" \with {
        \override VerticalAxisGroup #'minimum-Y-extent = #'(-6 . 3)
      } \man
      \new Staff = "lh" \with {
        \override VerticalAxisGroup #'keep-fixed-while-stretching = ##t
      } \mann
    >>
    \new Staff = "ped" { \clef bass \ped }
  >>
}

