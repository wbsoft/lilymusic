\version "2.13.1"
#(set-global-staff-size 18)
\header {
  title = "Personent Hodie"
  composer = "Gustav Holst (1874-1934)"
  poet = "from Piae Cantiones (1582)"
  copyright = \markup {
    \override #'(baseline-skip . 2.5)
    \center-column {
      \line { Typeset by
        \with-url #"http://www.wilbertberendsen.nl/"
        {Wilbert Berendsen (http://www.wilbertberendsen.nl/)}
      }
      \line { Copyright © 2008
        \with-url #"http://www.cpdl.org/"
        {The Choral Public Domain Library (http://www.cpdl.org/)}
      }
      \line {This edition may be freely distributed, edited, performed or recorded.}
      \null
    }
  }
}

\paper {
  between-system-padding = #1
  ragged-last-bottom = ##f
}

global = {
  \key f \dorian
  \time 4/4
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  % Muziek volgt hier.
  R1*2
  f4 f c'2 bes4 bes c2
  c4 c4 f2 d4 es c2
  bes4 c es2 bes4 c as2
  g4 f g es f2 f
  g4 as bes es, f2 f

  <<
    {
      g4 as bes2 bes bes
      as4 bes c2 c c
      g4 as bes2
    }
    {
      es,4 f g2 g g
      f4 g as2 as as
      es4 f g2
    }
  >>
  as4 g f2 g4 f f es f2 f
  \bar":|"
}

verseOne = \lyricmode {
  % Liedtekst volgt hier.
  \notemode {
    \set stanza = \markup {
      \hcenter-in #12
      \normal-text (Tutti) 1.
    }
  }
  Per -- so -- nent ho -- di -- e
  vo -- ces pu -- e -- ru -- læ,
  lau -- dan -- tes ju -- cun -- de
  qui no -- bis est na -- tus,
  sum -- mo De -- o da -- tus,
  et de vir, vir, vir,
  et de vir, vir, vir,
  et de vir -- gi -- ne -- o
  ven -- tre pro -- cre -- a -- tus.
}

verseTwo = \lyricmode {
  \notemode {
    \set stanza = \markup {
      \hcenter-in #12
      \normal-text (S/A) 2.
    }
  }
  In mun -- do na -- sci -- tur,
  pan -- nis in -- vol -- vi -- tur
  præ -- se -- pi po -- ni -- tur
  sta -- bu -- lo bru -- to -- rum,
  rec -- tor su -- per -- no -- rum,
  per -- di -- dit, dit, dit,
  per -- di -- dit, dit, dit,
  per -- di -- dit spo -- li -- a
  prin -- ceps in -- fer -- no -- rum.
}

verseThree = \lyricmode {
  \notemode {
    \set stanza = \markup {
      \hcenter-in #12
      \normal-text (T/B) 3.
    }
  }
  Ma -- gi tres ve -- ne -- runt,
  par -- vu -- lum in -- qui -- runt,
  Beth -- le -- hem a -- de -- unt
  stel -- lu -- lam se -- quen -- do,
  ip -- sum a -- do -- ran -- do,
  au -- rum, thus, thus, thus,
  au -- rum, thus, thus, thus,
  au -- rum, thus, et myrr -- ham
  e -- i of -- fe -- ren -- do.
}

verseFour = \lyricmode {
  % Liedtekst volgt hier.
  \notemode {
    \set stanza = \markup {
      \hcenter-in #12
      \normal-text (Tutti) 4.
    }
  }
  Om -- nes cle -- ri -- cu -- li,
  pa -- ri -- ter pu -- e -- ri,
  can -- tent ut an -- ge -- li:
  Ad -- ve -- ni -- sti mun -- do,
  lau -- des ti -- bi fun -- do.
  Id -- e -- o, o, o,
  Id -- e -- o, o, o,
  Id -- e -- o glo -- ri -- a
  in ex -- cel -- sis De -- o.
}


right = \relative c' {
  \global
  % Muziek volgt hier.
  R1*2
  <as c f>4 <as c f> <c g' c>2
  <es bes'>4 <es g bes> <es as c>2
  <f as c>4 <f as c>
  <<
    <f f'>2 \\ { bes4 as }
  >>
  <g d'>4 <es bes' es>
  <<
    <es c'>2 \\ { bes'4 as }
  >>
  <es g bes>4 <es as c> <es bes' es>2
  <f bes>4 <es g c>
  <<
    <c as'>2 \\ { g'4 f }
  >>
  <bes, d g>4 <d f> <bes d g> <c es>
  <as c f>2 <as c f>
  <g d' g>4 <c es as> <bes es bes'> <g c es>
  <bes d f>2 <bes d f>
  <<
    {
      r4
      <<
        { es'' d c bes as g f }
        { bes as g f es d c }
      >>
      r4
      <<
        { es' d c bes as g f }
        { bes as g f es d c }
      >>
      r4 <as' es'> <g d'> <es bes'>
      c' <c f> <as es'> <f c'>
    }
    \\
    <<
      {
        g,4 as bes2 bes bes
        as4 bes c2 c c
        g4 as bes2 as4 bes c2
      }
      {
        es,4_\ff f g2 g g
        f4 g as2 as as
        es4 f g2 f4 g as2
      }
    >>
  >>
  <g bes es g>4 <f f'> <f g c f> <es es'>
  <f a c f>2 <f a c f>
}

left = \relative c' {
  \global
  % Muziek volgt hier.
  r4^\f
  <<
    {
      f es d c bes as g |
      f d es c g' es as g |
      f es d c bes g as c |
      es as g es d c f d |
      g bes g
      g
      | f es d c bes as g c |
      bes as g f | es1~es es~es es es
    }
    {
      f'4 es d c bes as g |
      f d es c g' es as g |
      f es d c bes g as c |
      es as g es d c f d |
      g bes g
      c
      | f, es d c bes as g c |
      bes as g f | es1~es es~es es es
    }
  >>
  <es' es'>4 r <c c'> r
  <f a c f>2 <f a c f>
}

\score {
  <<
    \new Staff \with {
      instrumentName = "Voices"
    } { \sopranoVoice }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour }
    \new PianoStaff \with {
      instrumentName = "Accompt."
      % fontSize = #-1
      % \override StaffSymbol #'staff-space = #(magstep -1)
    } <<
      \new Staff = "right" \right
      \new Staff = "left" {
        \clef bass
        \left
      }
    >>
  >>
  \layout { }
}

\markup {
  \override #'(font-size . -1)
  \override #'(baseline-skip . 2.2)
  \line {
    \column {
      \line {
        \hcenter-in #3 \bold 1.
        \override #'(line-width . 55)
        \wordwrap {
          Laten heden kinderstemmen klinken
          die op zoete toon Hem prijzen die voor ons
          geboren is, door de allerhoogste God aan ons
          gegeven, en voortgekomen uit de schoot van
          de Maagd.
        }
      }
      \line { \hspace #10 }
      \line {
        \hcenter-in #3 \bold 2.
        \override #'(line-width . 55)
        \wordwrap {
          In de wereld wordt hij geboren, in doeken
          wordt hij gewikkeld, in een kribbe in de
          stal van beesten wordt hij neergelegd, Hij,
          de bestuurder der hemelbewoners.
          De vorst der duisternis is zijn buit
          kwijtgeraakt.
        }
      }
    }
    \hspace #4
    \column {
      \line {
        \hcenter-in #3 \bold 3.
        \override #'(line-width . 55)
        \wordwrap {
          Drie wijzen gingen op weg,
          zij vragen naar het kind,
          gaan naar Bethlehem door de ster te volgen
          om Hem te aanbidden,
          en goud, wierook en mirre aan Hem
          aan te bieden.
        }
      }
      \line { \hspace #10 }
      \line {
        \hcenter-in #3 \bold 4.
        \override #'(line-width . 55)
        \wordwrap {
          Laten alle priesters en alle kinderen
          nu zingen, net als de engelen:
          tot de wereld bent U gekomen,
          lofzangen stort ik voor U uit.
          Daarom zij glorie aan God in den hoge!
        }
      }
    }
  }
}
