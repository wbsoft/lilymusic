\version "2.13.56"

#(set-global-staff-size 18)

\header {
  dedication = "Dedicated to Roel Smit"
  title = "Mouvement"
  composer = "Wilbert Berendsen"
  poet = \markup \column {
    "Commissioned by"
    "Stichting Kerkconcerten Achterhoek"
  }
  copyright = \markup \center-column {
    \with-url #"http://www.wilbertberendsen.nl/mouvement"
    \line {
      Copyright © 2003 by Wilbert Berendsen (http://www.wilbertberendsen.nl/mouvement)
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
    \simple #(strftime "%d-%m-%Y" (localtime (current-time)))
    with \with-url #"http://lilypond.org/web/"
    { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

\paper {
  ragged-last-bottom = ##f
}

\layout {
  \context {
    \Score
    \override BarNumber #'extra-offset = #'(1 . 0)
    \override SpacingSpanner #'strict-grace-spacing = ##t
  }
  \context {
    \PianoStaff
    \override StaffGrouper #'staffgroup-staff-spacing = #
    '((basic-distance . 8)
      (minimum-distance . 7)
      (padding . 1)
      (stretchability . 1))
    \override StaffGrouper #'staff-staff-spacing = #
    '((basic-distance . 10)
      (minimum-distance . 8)
      (padding . 1)
      (stretchability . 1))
  }
}

global = {
  \time 8/8
  \set Timing.beatStructure = #'(3 3 2)
  \key a \minor
}

rh = \change Staff = rh
lh = \change Staff = lh

rightHand = \relative c' {
  \clef violin
  \global
  \tempo "Allegretto" 4=108
  | R1*7
  | r4. r r8 g\mp
  | a2. b8 c
  | b4. a~ a4~
  | a1~
  | a4. r r8 g
  \voiceTwo \stemUp \tieDown
  | a2. b8 c
  | b4. \grace {c16[ b] } a4.~ a4~
  <<
    \new Voice {
      \stemUp
      | r4. r4. r8 c
      | d1
    }
    {
      \voiceTwo \tieDown
      | a1~
      | a1
    }
  >>
  \oneVoice
  \once \override TextScript #'padding = #2
  | r4._\markup \italic "poco cresc."
  <c e>4. <d g>4
  | <e a>2. <a, d>4
  | <c g'>4. <d a'> <g c>4
  | <a d>1
  | r4.  <c e>4. <b d>4
  | <a c>4. <c, b'>4. <d g>4
  <<
    {
      | a'1~
      | a
    }
    \\
    \repeat unfold 2 {
      | c,8 d16 c d8 c d16 c d8 c d
    }
  >>
  % maat 25
  | r4._\markup { \italic "più" \dynamic f }
  r r8 f
  | g1
  | r4. r4 f8 f g
  | g1
  % maat 29
  | r4 as8_\markup \italic "cresc."
  bes4.~ bes4~
  | bes4. b4. cis8 d8
  | cis4 \grace { d16[ cis16] } b8~ b4.~ b8 d
  <<
    {
      | e1~
      | e~
      | e
      | cis8 d16 cis d8 cis d16 cis d8 cis e
      | d e16 d e8 d e16 d e8 d e
    }
    \\ {
      | s1
      | fis,8 gis16 fis gis8 fis gis16 fis gis8 fis gis
      | gis ais16 gis ais8 gis b16 gis b8 gis b
      | gis b16_\markup \italic "decresc."
      gis b8 gis b16 gis b8 ais cis
      | b r4 r4. r4
    }
  >>
  % maat 37
  | d8 e16 d e8 d e16 d e8 d e
  | d8 e16 d e8 d e16 d e8 d e
  | d8\> e16 d e8 d f16 d f8 d e
  | d8 e16 d e8 d f16 d f8 d\pp e
  | d8 e16 d e8 d e16 d e8 d e
  | d8 e16 d e8 d e16 d e8 d e
  | d8 e16 d e8 d f16 d f8 d e
  | d8 e16 d e8 d e16 d e8 d e
  % maat 45
  | d8 <e d'>16 d <e d'>8 d <e d'>16 d <e d'>8 d <e d'>8
  | d8 <f d'>16 d <f d'>8 d <f d'>16 d <f d'>8 d <f d'>8
  | d8 d'16 d, d'8 d, d'16 d, d'8 d, d'8
  | d,8 <e d'>16 d <e d'>8 d <e d'>16 d <e d'>8 d <e d'>8
  % maat 49
  \repeat unfold 3 {
    | d8 d'16 d, d'8 d, d'16 d, d'8 d, d'8
  }
  | d,8 d'16\> d,
  \once \override TextSpanner #'bound-details #'left #'text = \markup \bold \upright "cedendo "
  \once \override TextSpanner #'bound-details #'right #'text = \markup \bold \upright "a tempo"
  d'8^\startTextSpan d, d'16 d, d'8 d,\! d'8
  % maat 53
  | d,8\p \stopTextSpan <a' d>16 d, <a' d>8 d, <bes' d>16 d, <bes' d>8 d, <c' d>8
  | d,8 <c' d>16 d, <c' d>8 d, <a' d>16 d, <a' d>8 <d, g> <f d'>8
  | <a, c>8 a'16 <a, c> a'8 <a, c>8 g'16 <a, c> g'8 <a, c> f'
  | <a, c>8 e'16 <a, c> e'8 <a, c>8 f'16 <a, c> g'8 <c, a'> bes'
  % maat 57, 61
  \repeat unfold 2 {
    | d,8 <a' d>16 d, <a' d>8 d, <bes' d>16 d, <bes' d>8 d, <c' d>8
    | d,8 <c' d>16 d, <c' d>8 d, <a' d>16 d, <a' d>8 <d, g> <f d'>8
    | <a, c>8 a'16 <a, c> a'8 <a, c>8 g'16 <a, c> g'8 <a, c> f'
    | <a, c>8 e'16 <a, c> e'8 <a, c>8 f'16 <a, c> g'8 <c, a'> bes' |
  }
  % maat 65
  | d,8 <a' d>16 d, <a' d>8 d, <bes' d>16 d, <bes' d>8 d, <c' d>8
  | d,8 <c' d>16 d, <c' d>8 d, <a' d>16 d, <a' d>8 <d, g> <f d'>8
  | <a, c>8 a'16 <a, c> a'8 <a, c>8 g'16 <a, c> g'8 <a, c> f'
  | <a, c>8 e'16 <a, c> e'8 <a, c>8 e'16 <a, c> f'8 <e a,> c
  % maat 69
  | d1~
  | d2. r8 c,
  | d1~
  | d4. r r4
  | r4. c d4~
  | d1~
  | d2. r4
  | r4. r4. \clef bass c,4
  | d1
  | R1
  | R1
  | r4. r r8 c
  | d2. e8 f
  | e4. d4.~ d4~
  | d1~
  | d4. r r8 c
  | d2. e8 f
  | e4 \grace { f16[ e16] } \voiceTwo d8~ d4.~ d4~
  <<
    \new Voice {
      \voiceOne \stemUp
      | b'4.\rest b4.\rest r8 f
      | g1
    }
    {
      \voiceTwo \tieDown
      | d1~
      | d1
    }
  >>
  \oneVoice
  \once \override TextScript #'padding = #3
  | r4._\markup \italic "cresc."
  <f a> <g c>4
  | <a d>2. <d, g>4
  | <f c'>4. <g d'>\< \clef treble <c f>4
  | <d g>2. r8 <f f'>\ff
  % maat 93
  \stemUp
  | <g g'>2. <a a'>8 <bes bes'>
  | <a a'>4 <g g'>8~ <g g'>4. r8 <f f'>
  | <g g'>2. <bes bes'>4
  | <c c'>1
  \stemNeutral
  | r4. <d d'> <c c'>4
  | <bes bes'>4. <a a'> <f f'>4
  <<
    {
      | g'1~
      | g1
    }
    \\ {
      | g,~
      | g1
    }
    \\ {
      | g8 a bes a g a g a
      | bes c a g f g~ g4
    }
  >>
  | r4. <d' d'> <cis cis'>4
  | <b b'>4. <a a'> <fis fis'>4
  <<
    { 
      | fisis'1(
      | gis1) 
    }
    \\ {
      | fisis,1(
      | gis1)
    }
    \\ {
      | ais8 bis cis \stemDown bis dis cis bis cis
      | b cis d fis e d cis d
    }
  >>
  \once \override BreathingSign #'text = \markup \line {
    \musicglyph #"scripts.caesura.curved"
    \translate #'(-1.75 . 1.7) \musicglyph #"scripts.ufermata"
  }
  \breathe
  % maat 105
  \ottava #1
  | a'8\p a'16 ^\markup \italic "(of met 4')" a, a'8 a, a'16 a, a'8 a, a'
  \repeat unfold 3 {
    | a,8 a'16 a, a'8 a, a'16 a, a'8 a, a'
  }
  | a,8 <b a'>16 a <b a'>8 a <b a'>16 a <b a'>8 a <b a'>
  | a8 <c a'>16 a <c a'>8 a <c a'>16 a <c a'>8 a <c a'>
  \repeat unfold 2 {
    | a8 a'16 a, a'8 a, a'16 a, a'8 a, a'
  }
  \ottava #0
  | a,,8\mp <e' a>16 a, <e' a>8 a, <f' a>16 a, <f' a>8 a, <g' a>
  | a,8 <g' a>16 a, <g' a>8 a, <e' a>16 a, <e' a>8 <a, d> <c a'>
  | <e, g>8 e'16 <e, g> e'8 <e, g> d'16 <e, g> d'8 <e, g> c'
  <<
    {
      | s2. d16 e f g
    }
    \\ {
      | g,8 <b g'>16\< g <b g'>8 g <b g'>16 g <c g'>8 g d'
    }
  >>
  <<
    {
      | <a a'>2.^\markup \bold "Grandioso"
      \stemDown <b b'>8 <c c'>
      | \stemUp <b b'>4. <a a'~> \stemDown <a a'>8 <g g'> \stemNeutral
    }
    \\ {
      | c8\f a16 c a8 c a16 c a8 s4
      | b8 c16 b c8 a c16 a c8 s4
    }
  >>
  | <a a'>2. <c c'>4
  | <d d'>2. r8
  _\markup { \italic "meno" \dynamic f }
  g,8
  % maat 121
  | \repeat unfold 10 a1~
  | \repeat unfold 4 <a c>1~
  | \repeat unfold 2 <c, a' c>1~
  | \repeat unfold 2 <c a' c d>1~
  | \repeat unfold 2 <c f a c d>1~
  | <c f a c d>8\fermata r4 r4. r4
  \bar "|."
}

leftHand = \relative c {
  \clef bass
  \global
  <<
    {
      | s1*4^\pp
      \repeat unfold 8 {
        | e8 g16 e g8 e g16 e g8 e g
        | e8 fis16 e fis8 e fis16 e fis8 e fis
      }
      \repeat unfold 2 {
        | e8 g16 e g8 e g16 e g8 e g
      }
      <<
        {
          | fis8 a16 fis a8 fis a16 fis a8 fis a
          | g8 a16 g a8 g a16 g a8 fis a
        } 
        \\ {
          | d,1
          | e
        }
      >>
    }
    {
      \repeat unfold 10 {
        | a,8 c16 a c8 a c16 a c8 a c
        | a8 d16 a d8 a d16 a d8 a d
      }
      | g,8 c16 g c8 g c16 g c8 g c
      | g8 c16 g c8 g c16 g c8 g c
    }
  >>
  % maat 25
  <<
    {
      \repeat unfold 3 {
        | d'8 f16 d f8 d f16 d f8 d f
        | d8 e16 d e8 d e16 d e8 d e
      }
      | d8 f16 d f8 d f16 d f8 d f
      | d8 fis16 d fis8 d fis16 d fis8 d fis
    }
    {
      \repeat unfold 2 {
        | a,8 c16 a c8 a c16 a c8 a c
        | a8 b16 a b8 a b16 a b8 a b
      }
      \repeat unfold 2 {
        | as8 bes16 as bes8 as bes16 as bes8 as bes
        | gis8 b16 gis b8 gis b16 gis b8 gis b
      }
    }
  >>
  % maat 33
  | b8 d16 b d8 b d16 b d8 b d
  | cis d16 cis d8 d e16 d e8 e fis
  | s1
  | s1
  | R1 * 4
  % maat 41
  \clef treble
  | r4. bes'8-.\p bes,-. r8 r4
  | r4. a'8-. a,-. r8 r4
  | r4. f'8-. f,-. r8 r4
  | r4. e'8-. e,-. r8 r4
  | r4. bes''8-. bes,-. r8 r4
  | r4. a'8-. a,-. r8 r4
  | r4. f'8-. f,-. r8 r4
  | r4. e'8-. e,-. r8 r4
  | r4. bes'8-. bes'-. r8 r4
  | r4. a8-. a,-. r8 r4
  | r4. f8-. f'-. r8 r4
  | R1
  % maat 53
  | r4. bes8\mp-. bes,-. r8 r4
  | r4. a'8-. a,-. r8 r4
  | r4. f'8-. f,-. r8 r4
  | r4. e'8-. e,-. r8 r4
  % maat 57
  | r4. bes''8-. bes,-. r8 r4
  | r4. a'8-. a,-. r8 r4
  | r4. f'8-. f,-. r8 r4
  | r4. e'8-. e,-. r8 r4
  % maat 61, 65
  <<
    {
      | r2 d'4 e
      | f e d e
      | d2 e4 f
      | g e d c
      | d2 d4 e
      | f e d e
      | d2 e4 f
      | g e d c
    }
    \\ {
      | r4. bes'8-. bes,-. r8 r4
      | r4. a'8-. a,-. r8 r4
      | r4. f'8-. f,-. r8 r4
      | r4. a'8-. a,-. r8 r4
      | r4. bes'8-. bes,-. r8 r4
      | r4. a'8-. a,-. r8 r4
      | r4. f'8-. f,-. r8 r4
      | r4. e'8-. e,-. r8 r4
    }
  >>
  % maat 69
  \clef bass
  <<
    {
      | d8 f16 d f8 d f16 d f8 d f
      | c8 d16 c d8 c d16 c d8 c d
      \repeat unfold 2 {
        | a8 c16 a c8 a c16 a c8 a c
      }
      % maat 73
      | bes8 c16 bes c8 bes c16 bes c8 bes c
      \repeat unfold 3 {
        | a8 c16 a c8 a c16 a c8 a c
      }
    }
    {
      | a8 bes16 a bes8 a bes16 a bes8 a bes
      | f8 a16 f a8 f a16 f a8 f a
      \repeat unfold 2 {
        | c,8 g'16 c, g'8 c, g'16 c, g'8 c, g'
      }
      % maat 73
      | d8 f16 d f8 d f16 d f8 d f
      \repeat unfold 2 {
        | c8 f16 c f8 c f16 c f8 c f
      }
      | c8 g'16 c, g'8 c, g'16 c, g'8 c, g'
    }
  >>
  % maat 77
  \repeat unfold 7 <<
    {
      | a8 c16 a c8 a c16 a c8 a c
      | a8 b16 a b8 a b16 a b8 a b
    }
    {
      | d,8 f16 d f8 d f16 d f8 d f
      | d8 g16 d g8 d g16 d g8 d g
    }
  >>
  <<
    {
      | a8 c16 a c8 a c16 a c8 a c
      | a8 b16 a b8 a b16 a b8 a c
    }
    {
      | d,8 f16 d f8 d f16 d f8 d f
      | d8 g16 d g8 d g16 d g8 d a'
    }
  >>
  % maat 93
  | <a bes d f>8 \rh <bes' d f>16 \lh <a, bes d f> \rh <bes' d f>8
  \lh <a, bes d f>8 \rh <bes' d f>16 \lh <a, bes d f> \rh <bes' d f>8
  \lh <a, bes d f> r
  | <g a c e>8 \rh <c' e>16 \lh <g, a c e> \rh <a' c e>8
  \lh <g, a c e>8 \rh <a' c e>16 \lh <g, a c e> \rh <a' c e>8
  \lh <g, a c e> r
  | <f g bes d>8 \rh <g' bes d>16 \lh <f, g bes d> \rh <g' bes d>8
  \lh <f, g bes d>8 \rh <g' bes d>16 \lh <f, g bes d> \rh <g' bes d>8
  \lh <f, g bes f'> \rh <bes' f'>
  | \lh <g, c f>8 \rh <c' f>16 \lh <g, c f> \rh <c' f>8
  \lh <g, c e>8 \rh <c' e>16 \lh <g, c e> \rh <c' e>8
  \lh <g, c d> \rh <c' e>
  |
  \lh \clef treble
  <<
    {
      | g8 bes16 g bes8 g bes16 g bes8 g bes
      |d,8 g16 d g8 d g16 d g8 d g
    }
    {
      | bes,8 d16 bes d8 bes d16 bes d8 bes d
      | g,8 bes16 g bes8 g bes16 g bes8 g bes
    }
  >>
  \clef bass
  <<
    {
      | g8 bes16 g bes8 g c16 g c8 g d'
      | bes8 es16 bes es8 bes d16 bes d8 c bes
      | d8 fis16 d fis8 d fis16 d fis8 d fis
      | b,8 d16 b d8 b d16 b d8 b d
      | ais8 cis16 ais cis8 ais cis16 ais cis8 ais cis
      | b8 d16 b d8 a d16 a d8 gis, d'
    }
    {
      | d,8 f16 d f8 d f16 d f8 d f
      | f8 g16 f g8 f g16 f g8 d f
      | fis8 a16 fis a8 fis a16 fis a8 fis a
      | d,8 fis16 d fis8 d fis16 d fis8 d fis
      | e8 g16 e g8 e g16 e g8 e g
      | e8 fis16 e fis8 e fis16 e fis8 e fis
    }
  >>
  \once \override BreathingSign #'text = \markup \musicglyph #"scripts.caesura.curved"
  \breathe
  \clef treble
  % maat 105
  | R1*2
  | f''8-. r4 e8-. r4 r
  | c8-. r4 b8-. r4 r
  | r4. f'8-. f,-. r r4
  | r4. e'8-. e,-. r r4
  | r4. c'8-. c,-. r r4
  | r4. b'8-. b,-. r r4
  | r4. f''8-. f,-. r r4
  | r4. e'8-. e,-. r r4
  | r4. c''8-. c,-. r r4
  | r4. b'8-. b,-. r r4
  | <a, c>8 e'16 <a, c> e'8 <a, c> f'16 <a, c> f'8 <a, c> g'
  | <g, c>8 g'16 <g, c> g'8 <g, c> e'16 <g, c> f' g a b c d
  | <c e>8 <e, g>16 <c' e> <e, g>8 <b' d> <e, g>16 <b' d> <e, g>8 <a c> <e g>
  | <g c>8 d16 <g c> d8 <g b> d16 <g b> d8 <d g>-> r
  % maat 121
  \clef bass
  <<
    {
      | a8 c16 a c8 a c16 a c8 a c
      | a8 b16 a b8 a b16 a b8 a b
      | a8 c16 a c8 a c16 a c8 a c
      | b8 d16 b d8 b d16 b d8 b d
      | a8 c16 a c8 a c16 a c8 a c
      | c8 es16 c es8 c es16 c es8 c es
      | cis8 e16 cis e8 cis e16 cis e8 cis e
      | e8 f16 e f8 e f16 e f8 e f
      | d8 e16 d e8 d e16 d e8 d e
    }
    {
      | c,8 d16 c d8 c d16 c d8 c d
      | d8 g16 d g8 d g16 d g8 d g
      | d8 f16 d f8 d f16 d f8 d f
      | d8 a'16 d, a'8 d, a'16 d, a'8 d, a'
      | es8 g16 es g8 es g16 es g8 es g
      \repeat unfold 2 {
        | g8 a16 g a8 g a16 g a8 g a
      }
      | g8 cis16 g cis8 g cis16 g cis8 g cis
      | g8 bes16 g bes8 g bes16 g bes8 g bes
    }
  >>
  \clef treble
  <<
    {
      \repeat unfold 4 {
        | g'8 bes16 g bes8 g bes16 g bes8 g bes
      }
      \repeat unfold 3 {
        | gis8 b16 gis b8 gis b16 gis b8 gis b
      }
      | a8^\> c16 a c8 a c16 a c8 a c
      \repeat unfold 2 {
        | a8 c16 a c8 a c16 a c8 a c
      }
      | a8 c16 a c8 a c16 a c8 a^\pp c
    }
    {
      | d,8 e16 d e8 d e16 d e8 d e
      | d8 f16 d f8 d f16 d f8 d f
      | d8
      \once \override TextScript #'extra-offset = #'(0 . 1)
      fis16^\markup \italic "poco a poco decresc."
      d fis8 d fis16 d fis8 d fis
      \repeat unfold 2 {
        | dis8 fis16 dis fis8 dis fis16 dis fis8 dis fis
      }
      | e8 fis16 e fis8 e fis16 e fis8 e fis
      | e8 fisis16 e fisis8 e fisis16 e fisis8 e fisis
      \repeat unfold 4 {
        | f8 g16 f g8 f g16 f g8 f g
      }
    }
  >>
  | R1
}

pedal = \relative c {
  \clef bass
  \global
  | a8^\p r4 a8 r4 a8 r
  | a r4 a8 r4 r8 g(
  \repeat unfold 6 {
    | a8) r4 a8 r4 a8 r
    | a r4 a8 r4 r8 g(
  }
  | a8) r4 a8 r4 a8 r
  | a r4 a8 r4 r8 a(
  | g4) r8 g r4 r8 g(
  | fis) r4 fis8 r4 r8 fis(
  | e8) r4 e8 r4 r8 e(
  | d4) r8 d' r4 d,(
  | g4) r8 r4. r8 g
  | c,4 r8 r4 c'8 b4
  | a2. r8 e'
  | d4 r8 d, r4 d'8 r
  % maat 25
  | R1
  | r4. r d8 d,
  | R1
  | r4. r4 d'8 d, e
  | f4 r8 r4. r8 f
  | b8 r4 r4. r8 b
  | f'8 r4 r4. f8 b
  | R1
  | R1 * 20
  % maat 53
  | bes,8(\mf bes') r r4. r4
  | a,8( a') r r4. r4
  | f,8( f') r r4. r4
  | e,8( e') r r4. r4
  % maat 57, 61, 65
  \repeat unfold 3 {
    | bes8( bes') r r4. r4
    | a,8( a') r r4. r4
    | f,8( f') r r4. r4
    | e,8( e') r r4. r4
  }
  % maat 69
  | bes8( bes') r r4. bes,4
  | a8( a') r r4. a,4
  | f8( f') r r4. f,4
  | e8( e') r r4. e,4
  | bes'4. r r4
  | a4. r r4
  | f4. r f4
  | e4. r r4
  | d8  r4 d8 r4 d8 r
  | d r4 d8 r4 r8 c(
  | d) r4 d8 r4 d8 r
  | d r4 d8 r4 r8 c(
  | d8) r4 d8 r4 d8 r
  | d r4 d8 r4 r8 c
  | d d' r8 r16 f,~-> f4 a4
  | g8 r4 d'8 r4 r8 c,(
  | d8) r4 d8 r4 d8 r
  | d r4 d8 r4 r8 c
  | d d' r8 r16 f,~-> f4 a4
  | g8 r4 g'8 r4 r8 d(
  | c4) r8 c r4 r8 c(
  | b) r4 b8 r4 r8 b(
  | a) r4 a8 r4 r8 a(
  | g4) r8 g' r4 d8 r
  % maat 93
  | r4. g8 r4 g,8 r
  | r4. g'8 g, bes c d
  | f g r r16 bes,~ bes4 d
  | c r8 c' r4 r8 c,
  \repeat unfold 4 {
    | f,4 r8 f r4 r8 f'
  }
  | e,4 r8 e r4 r8 e'
  | e,4 r8 e r ais~ ais b
  | d( e) r e, r4 r8 e'
  | e,4 r8 e r4 e'8 r
  \once \override BreathingSign #'text = \markup \musicglyph #"scripts.caesura.curved"
  \breathe
  % maat 105
  | R1*8
  | f,8( f') r r4. r4
  | e,8( e') r r4. r4
  | c8( c') r r4. r4
  | b,8( b') r r4. r4
  | f,8 f'16 f, f'8 f, f'16 f, f'8 f, f'
  | e,8 e'16 e, e'8 e, e'16 e, e'8 e, e'
  | c,8 c''16 c,, c''8 c,, c''16 c,, c''8 c, c'
  | b,8 b'16 b, b'8 b, b'16 a, a'8 <g, g'>-> r8
  % maat 121
  \repeat unfold 16 {
    | f8 f'16 f, f'8 f, r4 r
  }
  | r4. r f'8 f,
  | r4. r f'8 f,
  | R1*3
}

\score {
  <<
    \new PianoStaff <<
      \new Staff = "rh" \rightHand
      \new Staff = "lh" \leftHand
    >>
    \new Staff = "ped" \pedal
  >>
}
% kate: space-indent on; indent-width 2; replace-tabs on; replace-tabs-save on;

