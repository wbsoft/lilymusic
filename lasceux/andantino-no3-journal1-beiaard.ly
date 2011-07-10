\version "2.14.0"

% source:
% http://icking-music-archive.org/ByComposer/Lasceux.php

\header {
  title = "Andantino"
  subtitle = "from: “Nouveau Journal de pièces d'orgue” (Journal nº1, ca. 1783)"
  composer = "Guillaume Lasceux (1740-1831)"
  arranger = "Carillon arrangement by Wilbert Berendsen (*1971)"
  copyright = \markup \fontsize #-1 \center-column {
    \line {
      Engraved © 2011 by Wilbert Berendsen.
    }
    \with-url #"http://icking-music-archive.org/ByComposer/Lasceux.php"
    \line {
      Source: “Nouveau Journal de pièces d'orgue” (Journal nº1, ca. 1783)
      from Werner Icking Music Archive.
    }
    \line {
      This edition may be freely copied, distributed,
      performed and recorded under the provisions of the
    }
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/nl/"
    \line {
      Creative Commons License \concat { ( \tiny BY-NC-SA , }
      http://creativecommons.org/licenses/by-nc-sa/3.0/nl/)
    }
  }

  tagline = \markup {
    Engraved at
    \simple #(strftime "%Y-%m-%d" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\paper {
  ragged-last-bottom = ##f
  two-sided = ##t
  inner-margin = 22\mm
  outer-margin = 12\mm
  
  % make first page left to avoid page turn
  first-page-number = #0
  print-page-number = ##f
}

pat = #(define-music-function (parser location n1 n2 n3)
         (ly:music? ly:music? ly:music?)
#{
 <<
   { \stemDown $n1 \stemUp $n2 $n3 \stemNeutral }
   { s s[ s] }
 >>
#})

man = {
  \change Staff = "upper"
  \voiceTwo
}

ped = {
  \change Staff = "lower"
  \oneVoice
}

global = {
  \key d \minor
  \time 2/4
  \partial 8
  \set Timing.beamExceptions =
  #'(
     (end .
       (
        ((1 . 24) . (3 3 3 3))
        )))
     
}

upper = \relative c'' {
  \global
  
  a8
  | d4~ d8 a'16 f
  | \voiceOne f16 e e4 \oneVoice bes'16 g
  | g16 f f e \voiceOne e d d cis
  \oneVoice
  | d16 e f g a b cis d
  \voiceOne
  | bes4~ bes16 d g, bes
  | a4~ a16 d f, a
  | g16 bes e, g f d a' f
  | f8\prall e \oneVoice r c
  % 9
  | f8. a16 g f e d 
  | c16 bes bes4 bes8
  | g'8. f16 e d c bes
  | bes16\prall a a8 r16 c f e
  | e16 d bes' a a g d' f,
  | f16 e g f e d c bes
  | a c f e d c bes a
  | a4 \grace { g16[ a] } g8 r
  % 17
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \times 2/3 { 
    | \pat c,16 e g \pat e g c \pat g c e \pat c g' e
    \override TupletNumber #'stencil = ##f
    \override TupletBracket #'stencil = ##f

    | \pat c,16 f a \pat f a c \pat a c f \pat c f a
    | \pat c,,16 e g \pat e g c \pat g c e \pat c g' e
    | \pat c,16 f a \pat f a c \pat a c f \pat c f a
    | \pat d, f d \pat bes d bes \pat g bes g \pat e g e
    | \pat f as f \pat des as' f \pat c as' f \pat b, as' f
  }
  \revert TupletNumber #'stencil
  \revert TupletBracket #'stencil
  | e16 bes' bes8~ bes16 d c bes
  | \times 2/3 { a16 f' cis d bes g } f8 \afterGrace e\prall { d16[ e] }
  | e4( f8)\noBeam a
  | a16 g \times 2/3 {
    g16 cis d e d cis bes a g
    \override TupletNumber #'stencil = ##f
    \override TupletBracket #'stencil = ##f
    | f16 f' e d cis d f e d c b a
    \revert TupletNumber #'stencil
    \revert TupletBracket #'stencil
    | \pat e16 gis e'
    \override TupletNumber #'stencil = ##f
    \override TupletBracket #'stencil = ##f
    \pat e,16 gis e' \pat fis, a e' \pat gis, b e
    | \pat a,16 c e \pat e, gis e' \pat fis, a e' \pat gis, b e
    | \pat a,16 cis a' \pat a, cis a' \pat b, d a' \pat cis, e a
    | \pat d,16 f a \pat a, cis a' \pat b, d a' \pat cis, e a
    | \voiceOne r16 f a \oneVoice a g a bes a bes d c bes
    | a16 d, d d f a bes a g f e d
  }
  | \grace e8 d8 cis r a
  | d4~ d8 a'16 f
  | \voiceOne f16 e e4 bes'16 g
  | g16 f f e e d d cis
  | \oneVoice d16 e f g a f e d
  | cis16 d e f g e d cis
  \revert TupletNumber #'stencil
  \revert TupletBracket #'stencil
  \times 2/3 { 
    | \voiceOne d f e d cis d
    \override TupletNumber #'stencil = ##f
    \override TupletBracket #'stencil = ##f
    e g f e d e
    | f a g f e f g bes a g f g
  }
  | a16 d, es g fis a g bes
  | a16 d, cis e d f bes g
  | f16. a32 g f e d \afterGrace e4\prall { d16[ e] }
  | d8. cis'16 d8. cis,16
  | \grace cis8 d4.
  \bar "|."
}


lower = \relative c' {
  \global
  r8
  | r8 <d f> <d f> r
  | r8 << 
    { cis cis }
    \new Voice {
      \man
      a' a
    }
  >>
  r
  | d,8 g
  \man
  a
  \ped
  a,
  | <d f>4 r
  | r8 <<
    { g g }
    \new Voice {
      \man
      bes bes
    }
  >>
  r
  | r8 
  <<
    { f f }
    \new Voice {
      \man
      d' d
    }
  >>
  r
  <<
    | e,
    \new Voice {
      \man
      cis'
    }
  >>
  r
  <<
    d,
    \new Voice {
      \man
      d'
    }
  >>
  r
  \man
  | r16 a gis a
  \ped
  a,8 r
  | r8 <f a> <f a> r
  | r8 <f g> <f g> r
  | r8 <e c'> <e c'> r
  | r8 <f c'> <f c'> r
  | bes8 g bes b
  | c4. e8
  | f8 a, bes8. b16
  | c8 c, c r
  | \skip2*6
  | c'8 <c e> <c e> r
  | f8 bes, c c,
  | f8 c f4 % orig: f octave lower
  | f'8 e16 d cis8 cis
  | d4 d8 dis
  | \skip2*4
  \man
  | d'8
  \ped
  fis, g e
  | f8 f, g gis
  | a8. bes16 a g f e
  | d8 <d' f> <d f> r
  | r8 <<
    { cis cis }
    \new Voice {
      \man
      a' a
    }
  >>
  r
  | <<
    { d, g }
    \new Voice {
      \man
      a bes a
      \ped
      a,
    }
  >>
  | <d f>4 r
  | <e g>4 r
  <<
    {
      | f4 cis
      | d4 e
      | f8 g s4
      | f8 e f g
    }
    \new Voice {
      \man
      | a4 a
      | a4 cis
      | d8 bes <a c> <bes d>
      | d8 g, a bes
      | a8 d <g, cis>
      \ped
      a,8
    }
  >>
  <<
    {
      | d8 a d a
      | d8 a d,

    }
    \new Voice {
      \man
      | r8 e' f e
      | f4.
    }
  >>
  \bar"|."
}


\new PianoStaff <<
  \new Staff = "upper" \upper
  \new Staff = "lower" { \clef bass \lower }
>>

