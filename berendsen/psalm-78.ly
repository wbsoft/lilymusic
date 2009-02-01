\version "2.12.0"

#(set-global-staff-size 18)

\header {
  dedication = "Voor Mirjam"
  title = "Psalm 78 voor orgel"
  subtitle = "“Mijn God, hoe snel vergeet men zijn bevrijding”"
  composer = "Wilbert Berendsen, mei 2002"
  copyright = \markup \italic \center-column {
    \with-url #"http://www.wilbertberendsen.nl/"
    "© 2002 Wilbert Berendsen (http://www.wilbertberendsen.nl/)"
    "Deze muziek mag worden verspreid onder de voorwaarden van de Creative Commons Licentie"
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/nl/"
    "(http://creativecommons.org/licenses/by-nc-sa/3.0/nl/)."
  }
}

\layout {
  \context {\RemoveEmptyStaffContext}
}

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##f
  bottom-margin = 12 \mm
  line-width = 185 \mm
}

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup \bold {
    Allegro non troppo ( \small \general-align #Y #DOWN \note #"2" #.8 ± 54 )
  }
}

haak = {
  \set PianoStaff.connectArpeggios = ##t
  \once \override PianoStaff.Arpeggio #'extra-offset = #'(0.5 . 0)
  \once \override PianoStaff.Arpeggio #'stencil = #ly:arpeggio::brew-chord-bracket
}

rh = \relative c' {
  #(set-accidental-style 'modern)
  \clef violin
  \override Score.TimeSignature #'style = #'()
  \time 2/2
  \tempoMark
  \set Score.beatLength = #(ly:make-moment 1 4)
  d16^"II fluit 8'"_\markup {\dynamic p \italic leggiero}
  d' a c d g, a c f, a c e, g a e f |
  \repeat unfold 5 { d d' a c d g, a c f, a c e, g a e f | }
  d d' a c d g, a c f, a c e, g a f g | e d' a c d g, a c f, a c e, g a e f |
  \repeat unfold 2 { d d' a c d g, a c f, a c e, g a e f | }
  d d' a c d g, a c f, a c e, g a f g | e d' a c d g, a c f, a c g a c f, g |
  e d' a c d g, a c f, a c e, g a e f | e d' a c d g, a c f, a c g a c f, g |
  \repeat unfold 3 { d d' a c d g, a c f, a c e, g a e f | }
  d d' a c d g, a c f, a c e, g a f g | d d' a c d g, a c f, a c e, g a f g |
  d d' a c d g, a c f, a c e, g a e f | d d' a c d g, a c f, a c e, g a f g |
  c bes a c g a c f, a c e, f a d, f c | c' bes a c g a c f, a c e, f a d, f c |
  c' bes a c g a c f, a c e, f a e f d | e d' a c d g, a c f, a c g a c f, g |
  e d' a c d g, a c f, a c g a c f, g | e d' a c d g, a c f, a c e, g a e f |
  e d' a c d g, a c f, a c e, g a e f \bar ":|"
  e d' a c d g, a c f, a c-\markup \italic "poco cedendo" e, g a f g |
  \haak <f a>2\arpeggio
  _\markup \italic "ben legato"-\tweak #'extra-offset #'(-3 . 0)^"I prestanten 8' (of 8' 4')"
  <gis b>4 <g c> | <fis d'>2 <f a> |
  <<
    { d'4 d c c b2 a2~a1~a } \\ {
      e2 es( dis1) r16 d a c d
      \stemUp \change Staff = lh g, \stemDown \change Staff = rh a c
      \stemUp \change Staff = lh f, \stemDown \change Staff = rh a c
      \stemUp \change Staff = lh e, \stemDown \change Staff = rh g a
      \stemUp \change Staff = lh f  \stemDown \change Staff = rh g |
      \stemUp \change Staff = lh d  \stemDown \change Staff = rh d' a c
      \stemUp d \change Staff = lh g, \change Staff = rh a c
      \change Staff = lh f, \change Staff = rh a c
      \change Staff = lh e, \change Staff = rh g a
      \change Staff = lh f  \change Staff = rh g |
    }
  >>
  \time 3/2
  <bes a'>2 <des g> <es a>
  \time 2/2
  f4 d a' bes <dis,~ a'>2 <dis f g> |
  \set Score.beatLength = #(ly:make-moment 1 4)
  r16 d''^\markup \italic "leggiero, poco martellato" a c d g, a c f, a c e, g a e f |
  d d' a c d g, a c f, a c e, g a e f |
  d^"+mixturen"_\markup \italic "molto crescendo" d' a c d g, a c
  \once \override TextScript #'staff-padding = #3 f,^"+16'" a c e, g a e f |
  d^"+tongw. 16' 8'" d' a c d g, a c f,_\ff a c e, g a e f |
  d d' a c d g, a c f, a c e, g a f g %{was: e f %}| c bes a c g a c f, a c e, f a d, f c |
  f a c e, g a e f d d' a c d g, a c | a c e, f a e g c, r d' a c d g, a c |
  <d, e fis bes d>4-- e16 fis bes c <d, e g bes d>4-- <d e>16 g bes c |
  <d, f as bes d>4-- f16 as bes c <es, as c d>4-- es16 ges bes c |
  <d, e a d>2.-> r4 | <d e a d>8-> r16 <d e a d>-> r g,\p^"II fluit 8'" a c f, a c e, g a e f |
  d d' a c d g, a c f, a c e, g a e f | d d' a c r g a c f, a r e g a e r |
  r d' a c r g r c r a r e g a r8 | r16 d a r r8 r16 c r a r8 g16 a r8 | r4 d16 r8 c16 r a r8 r r16 f |
  r4 r16 g r8 r2 | d16 r r8 r4 f16 r8 e16 r4 | R1 | d8 r r4 r2^\fermata \bar "|."
}

lh = \relative c' {
  #(set-accidental-style 'modern)
  \clef bass
  R1*4 a2^"I of Ped. fluit 4'" a d1 R1*2 a2 a d c4 a c c b a gis2 a~ a4 r4 r2 R1*2
  a2 f4 d a'2 a c4 b a d~d cis d2~d4 r4 r2 R1
  a2 bes4 g a2 f g4 a d, f e2 d2~d4 r4 r2 R1*2 \bar ":|" R1
  << {des'2 e4 es | d2 des2} \\ { \haak bes1\arpeggio | c4 b2 bes4 } >>|
  << { s1 fis2 f~f c\rest } \\ { \tieUp <as' c>2 <f a~> <b, a'>1 \tieDown <f c'>1~<f c'>} >>
  %\time 3/2
  <g c e>2 <bes es g> <c f a>
  %\time 2/2
  <es ges as c>1 <fis a b~>2 <gis b cis> | <a c d f>1~<a c d f>2 r2 R1 r2
  \clef violin
  a' d c a4 f g d f2~ <bes, d f a> e~ <b c e g> |
  << {d16 e fis bes} \\ d,4 >> d'4-- d,16 e g bes c4-- |
  d,16 f as bes d4-- d,16 es ges as c4-- |
  <d, f g b>2.-> r4 | <f, a e' f>8-> r16 <f a d e>-> r4 r2 | R1 |
  a''2^"II" a | d1 R1 a d~d~d2. r4 | r2 r2_\fermata |
}

ped = \relative c {
  #(set-accidental-style 'modern)
  \clef bass
  R1*33 bes1~^"Ped. 16' + I" bes2. r4 |
  \time 3/2 R1. \time 2/2 R1*6
  bes1\ff f r2 g r a R1*2 r16 d' a c d g, a c f, a c e, g a e f | d8-> r16 <d d,>-> r4 r2 | R1*9 |
}

\score {
  <<
    \new PianoStaff <<
      \new Staff = "rh" \rh
      \new Staff = "lh" \lh
    >>
    \new Staff = "ped" \ped
  >>
}
