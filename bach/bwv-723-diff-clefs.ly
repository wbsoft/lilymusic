\version "2.14.0"

\header {
  mutopiatitle = "Gelobet seist du, Jesu Christ"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 723"
  mutopiainstrument = "Organ"
  date = ""
  source = "Bach-Album, Ernst H. Wolfram (editor), 6787, C. F. Peters, Leipzig"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Urs Metzger"
  maintainerEmail = "urs@ursmetzger.de"
  lastupdated = "2006/Mar/12"

  title = "Gelobet seist du, Jesu Christ"
  composer = "Johann Sebastian Bach"
  opus="BWV 723"

  footer = "Mutopia-2006/03/13-700"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "deutsch.ly"

\paper {
  ragged-last-bottom = ##f
}

global = {
  \key g \mixolydian
  \time 4/4
  #(set-accidental-style 'default)
}

%#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 18)

halsup = {
  \stemUp
  \tieUp
}

halsdown = {
  \stemDown
  \tieDown
}

staffup = {
  \change Staff = "right" \halsdown
}

staffdown = {
  \change Staff = "left" \halsup
}

restup = {
  \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . 1.0 )
}

restdown = {
  \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -1.0 )
}

restdowndown = {
  \once \override MultiMeasureRest #'extra-offset = #'( 0.0 . -2.0 )
}

restright = {
  \once \override Rest #'extra-offset = #'( 4.0 . 0.0 )
}

sopran = \relative g' {
  \global
  %      \halsup
  R1*4
  %% Takt 5 ==============================================
  R1*5
  %% Takt 10 =============================================
  R1
  g1
  g2 g
  a2 g
  c2 d
  %% Takt 15 =============================================
  c1
  R1
  R1
  R1
  R1
  %% Takt 20 =============================================
  h2 d
  e2 d
  h2 a
  g2 r
  R1
  %% Takt 25 =============================================
  R1
  R1
  R1
  r2 g
  c2 h
  %% Takt 30 =============================================
  d2 a
  g2 e
  d1
  R1
  R1
  %% Takt 35 =============================================
  R1
  R1
  r2 d
  a'2 a
  a2 h
  %% Takt 40 =============================================
  c2 a
  g2 h
  a1
  R1
  R1
  %% Takt 45 =============================================
  g2 g
  g2 g
  g1~
  g1
  \bar "|."

}

alt = \relative d' {
  \global
  \clef treble
  d2 d4 d
  e4 d g a
  g4. g8 d4 e
  fis4 g8 f e4 f
  %% Takt 5 ==============================================
  \clef bass
  e4. f16 e d4. e16 d
  c4. d16 c h8 c d e
  \clef treble
  fis8 d g2 fis4
  g4 fis g f~
  f4 e d2
  %% Takt 10 =============================================
  c4. d16 e f4 e8 d
  e4 d e2
  \clef bass
  d4 e d e8 d
  c4 d8 c h4 c8 d
  e4 \clef treble f~ f g8 f
  %% Takt 15 =============================================
  e8 g f e f4 e8 d
  e4 g a g
  f4 e8 f g4 f
  \clef bass
  e2 d4. c8
  h8 c d2 c4
  %% Takt 20 =============================================
  h4 \clef treble h' fis4 g
  g2 a4 g8 fis
  \clef bass
  g4 d e8 d16 e c4
  h2 r
  R1
  %% Takt 25 =============================================
  R1
  \clef treble
  r4 e g fis
  a4 e d2
  c8 e d c h2
  e1
  %% Takt 30 =============================================
  \clef bass
  d2~ d8 e d c
  h8 d c h c2
  a4 h a4. a8
  h4 h h c
  d4 c8 h a4 c
  %% Takt 35 =============================================
  h2 c4. h8
  c2 c4 d
  c2 h4 d~
  d4 cis8 h cis2
  d2. e4
  %% Takt 40 =============================================
  e2 d8 e d c
  h4 e d4. cis16 d
  e4 d e8 \clef treble g fis e
  fis2 e
  d2 c8 e d c
  %% Takt 45 =============================================
  \clef bass h4 c d c
  d2~ d8 f e d
  e1
  d1
}

tenor = \relative g {
  \global
  R1
  R1
  r4 g g g
  a4 g c d
  %% Takt 5 ==============================================
  c8 g c4~ c8 fis, h4~
  h8 e, a4 g8 a h g
  a4 h a d~
  d8 cis d c h4 c
  h4 c2 h4~
  %% Takt 10 =============================================
  h4 a2 h4
  c4 d c2
  h4 c g2~
  g4 fis g2
  r8 g c h a4 h
  %% Takt 15 =============================================
  c2 a4 h
  c2. c4
  d4 c h a8 h
  c8 h a g fis2
  g4 fis g4. fis8
  %% Takt 20 =============================================
  g4 r r2
  r8 g c h a2
  g2~ g4. fis8
  g4 g c h
  d2 a8 h c d
  %% Takt 25 =============================================
  h4 e2 d4
  c2 d2
  d4 c2 h4
  a2 r4 g4~
  g4 a2 g4~
  %% Takt 30 =============================================
  g8 g fis e fis2
  g2~ g8 g fis e
  fis4 g2 fis4
  g4. d8 g4 fis8 e
  d4 e fis e8 fis
  %% Takt 35 =============================================
  g8 d g2 fis4
  e4 fis8 g a4 g8 fis
  e4 fis g8 fis e d
  e2~ e8 g fis e
  %% Takt 40 =============================================
  fis4 a2 gis4
  a8 g! fis e fis2
  h2 g2~
  g4 fis e a~
  a4 d2 c!4~
  %% Takt 45 =============================================
  c4 h a2
  g2~ g8 f! e4
  f4 g2.
  r8 g f g c, c' h a
  <g h>1
}


right = {
  \clef treble
  <<
    \sopran
  >>
}

left = {
  \clef "bass"
  <<
    \alt
    \\
    \tenor
  >>
}

pedal = {
  \global
  \clef bass
  \relative d {
    R1*4
    %% Takt 5 ==============================================
    R1
    R1
    d2 d4 d
    e4 d g a
    g2~ g4. f8
    %% Takt 10 =============================================
    e4 f d g
    c,4. h8 c d e f
    g4 c, h8 g c h
    a4 d e d
    c2. g'4
    %% Takt 15 =============================================
    c,1~
    c4 r r2
    R1
    r2 h4 d
    e4 d8 c h4 a
    %% Takt 20 =============================================
    g4 g'8 a h a g fis
    e2 fis4 d
    g4. h,8 c h a d
    g,2 r
    r4 d' g fis
    %% Takt 25 =============================================
    g4. fis16 e fis8 e fis g
    a2 h
    fis4 a fis g~
    g4 fis g8 f e d
    c4. d8 e2
    %% Takt 30 =============================================
    h4. c8 d2
    g,2 a4 c~
    c4 h8 c d2
    g,2 r
    R1
    %% Takt 35 =============================================
    r2 d
    a'4 a a h
    c4 h8 a g4 h
    a1
    d4. c8 h4 e
    %% Takt 40 =============================================
    a,2 d
    e4. c8 g'4 h,
    cis4 d2 cis4
    d8 e fis g a h c e,
    fis8 d g2 f4~
    %% Takt 45 =============================================
    f4 e h c~
    c h8 a h2
    c1
    g1
    %% Takt 50 =============================================
  }
}

\score {
  \new PianoStaff \with {
    \override VerticalAlignment #'forced-distance = #10
  }
  {
    <<
      \context Staff = right {
        \set Staff.midiInstrument = "pan flute"
        \context Voice = right \right
      }
      \context Staff = left {
        \set Staff.midiInstrument = "pan flute"
        \context Voice = left \left
      }
      \context Staff = pedal {
        \set Staff.midiInstrument = "pan flute"
        \context Voice = pedal \pedal
      }
    >>
  }
  \layout{}

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }


}


%{
  convert-ly (GNU LilyPond) 2.14.1 Verwerken van `'... toepassen van
  conversie: 2.7.0, 2.7.1, 2.7.2, 2.7.4, 2.7.6, 2.7.10, 2.7.11, 2.7.12,
  2.7.13, 2.7.14, 2.7.15, 2.7.22, 2.7.24, 2.7.28, 2.7.29, 2.7.30,
  2.7.31, 2.7.32, 2.7.32, 2.7.36, 2.7.40, 2.9.4, 2.9.6, 2.9.9, 2.9.11,
  2.9.13, 2.9.16, 2.9.19, 2.10.0, 2.11.2, 2.11.3, 2.11.5, 2.11.6,
  2.11.10, 2.11.11, 2.11.13, 2.11.15,  Niet slim genoeg om
  VerticalAlignment #'forced-distance.  te converterenUse the
  `alignment-offsets' sub-property of NonMusicalPaperColumn #'line-
  break-system-details to set fixed distances between staves. 2.11.23,
  2.11.35, 2.11.38, 2.11.46, 2.11.48, 2.11.50, 2.11.51, 2.11.52,
  2.11.53, 2.11.55, 2.11.57, 2.11.60, 2.11.61, 2.11.62, 2.11.64, 2.12.0,
  2.12.3, 2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18, 2.13.20,
  2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44,
  2.13.46, 2.13.48, 2.13.51, 2.14.0
%}
