\version "2.22.0"

#(set-global-staff-size 18)

\header {
  title = "Choral-Meditation on “Veni Creator Spiritus”"
  subtitle = "for organ"
  composer = "Wilbert Berendsen"
  tagline = ##f
  copyright = \markup {
    Copyright © 2021 \with-url #"https://wilbertberendsen.nl/" \line { Wilbert Berendsen. }
    Available under the
    \with-url #"https://creativecommons.org/licenses/by-nd/4.0/deed.nl" \line { Creative Commons BY-DN 4.0 License. }
  }
  tagline = \markup {
    Engraved at
    \simple #(strftime "%d-%m-%Y" (localtime (current-time)))
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }

}

\paper {
  max-systems-per-page = 4
  system-count = 12
  ragged-last-bottom = ##f
}

\layout {
  \context {
    \PianoStaff
    \override StaffGrouper #'staffgroup-staff-spacing = #'
    ((basic-distance . 9)
     (minimum-distance . 7)
     (padding . 1)
     (stretchability . 5))

  }
  \context {
    \Staff
    \consists "Merge_rests_engraver"
    \override VerticalAxisGroup #'staff-staff-spacing = #'
    ((basic-distance . 9)
     (minimum-distance . 7)
     (padding . 1)
     (stretchability . 5))
  }
  \context {
    \Voice
    \override Tie.minimum-length = #4
  }
}

structure = {
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 16)
  \accidentalStyle modern
  \key f \mixolydian
  \numericTimeSignature
  \time 4/4
  \tempo "Adagio" 4=42

  \skip1*19
  \once \override Score.BarLine.extra-spacing-width = #'(-2.5 . 2.5)
  \once \override RehearsalMark.break-visibility = #begin-of-line-invisible
  \skip1*16
  \bar "|."
  \once \override Score.RehearsalMark.direction = #DOWN
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT  
  \once \override Score.RehearsalMark.font-size = #-2
  \mark \markup { (ca 3,5 min) }
}

upperA = \relative {
  \voiceOne
  f''4~^\markup { Sw. Foundations & Célestes 16, 8 (, 4) } _\markup \italic { sempre ben legato } \tuplet 3/2 { f8 g f~ } f8 es bes' c
  a4~ a8 bes \tuplet 3/2 { a8 g f } g4~
  g4~ g8 fis cis' d b4
  \tuplet 3/2 { d8 e d } cis4~  cis8 d \tuplet 3/2 { b8 a b~ }
  \tuplet 3/2 { b8 c b } as8 g~ \tuplet 3/2 { g8 f es } d8 c~
  c8 d4 es8 f g~ \tuplet 3/2 { g8 f e~ }
  e8 f g a~ \tuplet 3/2 { a8 g fis~ } fis8 g
  a8 bes~ \tuplet 3/2 { bes8 a g } <d' bes>4 \tuplet 3/2 { c8 d c }
  f,8 a4 g8 \tuplet 3/2 { c,8 d e~ } e8 f~
  f8 g \tuplet 3/2 { f8 es f } g8 f <a bes> <g c>
  bes4 a8 g~ <g e> <fis d> e d~
  <bes d>8 <as c> <d f> <c~ es> c4~ \tuplet 3/2 { c8 d c }
  e4~ \tuplet 3/2 { e8 fis e }
  a8 c4~ <c e>8~
  <c e>4 d8 c <gis b e> <a d> <gis c> <a b>~
  <es gis b>8~ <es f a>~ <f gis>~ <es f a>~
  <es fis b>8~ <es fis a> <bes d g> <a c fis>~
  \oneVoice
  <c fis a>8 <bes d g>~ <a d fis>~ <g d' f>~ <g bes f'>~ <g bes e>~ <f bes d>~ <g bes c>~
  <g bes es>~ <bes es g>~ <a d g> <g c f>~ <g bes f'>~ <f bes f'>~ <bes es>~ <as es'>~
  \voiceOne
  es'8 d4 c8 bes4 a8 g
  d'8 c f e a_\markup\italic { rit. molto } g d' c\fermata

  r2_\markup\italic { a tempo } r4 c - ~
  <c-\tweak extra-offset #'(-.2 . -.2) ~ e>4 <c~ f> <bes~ c> <bes d~>
  <a d~>4 <bes-\tweak staff-position #7 ~ d> <bes~ es> <as~ bes>
  <as c~>4 <g~ c~> <g a c>~ <g cis>
  \tuplet 3/2 { a8 b bis } <e, cis'>8 <f d'>8
  \tuplet 3/2 { bes8 c d } <fis, dis'>8 <g e'> \tuplet 3/2 { b8 cis d } e8 f d c \tuplet 3/2 { bes4~ <bes d>8 }
  \tuplet 3/2 { <bes d>8 <c es> <bes d> } <a c>8 bes c4~ \tuplet 3/2 { <a c>8 <bes d> <a c> }
  bes8 a4 g8 \tuplet 3/2 { <f as>8 <g bes> <f as>~_\markup\italic { poco rit. } } <f as>8 <es g>
  r8 f8~ \tuplet 3/2 { f8 g f~ } f8 es bes' c
  bes4~ bes8 c bes16 a g f g4~
  g4~ g8 fis \tuplet 3/2 { cis' e d } cis8 b~
  b8 d4 cis c8~ \tuplet 3/2 { c8 ais b~ }
  b8 c <d f>4 b8 c <d f>4
  b8 c <d f>4 b8 c <des f>4
  b8 c \oneVoice <f a>2~ <f, a f' a>4~
  <f a f' a>1^\fermata
}

upperB = \relative {
  \voiceTwo
  r4 bes'2 es4~
  es8 d4. c2~
  c8 d e4 fis2
  g2 fis
  <as, c f>2~ <as es'>4~ <f as>~
  <f as>4~ <as~ c> <as ces> <a d>~
  <a d>4~ <a e'> <bes es> <a d>
  c2 \skip 2
  \voiceFour
  d2 c2
  \voiceTwo
  <bes es>4 <a d> <b e> d
  \tuplet 3/2 { <f a>8 <e g> <d f> } c8 bes( ais4) <fis( b>
  ges4) bes4
  <e, c'>8 d a <g' a>
  s4 b8_\markup \italic { espress. } a g4 e
  \skip1
  <gis b>8 <a c> <b d> c <gis b> <a c> \skip4
  \skip1
  \skip8*7
  \once \omit Stem
  \once \omit Flag
  \once \override Tie.staff-position = #-1
  as8~
  as4 g8 f~ f e d4
  g4 bes2 a4
  r2 f'4~ \tuplet 3/2 { f8 e f~ }
  f8 g c, bes d4. c8
  \tuplet 3/2 { d8 e f~ } f8 g bes,8 as c4~
  c8 bes \tuplet 3/2 { c8 d es( } dis8) e bes a
  <b~ g'>4 \tuplet 3/2 { b8 ais gis~ } \voiceThree gis4 a
  \voiceTwo
  <gis f'>4  <g' cis> <f as>~ \tuplet 3/2 { <f as>8 <es g>4 }
  d4 es2 e4
  d8 c bes4~ bes2
  r4_\markup\italic { a tempo, mysterioso } bes~ <g bes>~ <g\laissezVibrer es'>~
  es'8 d4._\markup\italic { con calore } c2
  d4 e fis2
  g2 gis2
  a4 d a d
  a4 d a des
  a4
}

upperC = \relative {
  \omit Stem
  \omit Flag
  \skip8*5
  \voiceTwo
  es''8_~ es4
  \skip1
  \skip 8*3
  fis8_~ fis2
  \skip1*3
  \skip 8*7 g8~
  \undo \omit Flag
  \undo \omit Stem
  g4 f~ f8 d <e a>4
  a,4 g~ \tuplet 3/2 { <e g>8 f g~ } g8 f
  \skip1
  \skip4*2/3
  \once \omit Flag
  \once \omit Stem
  f'8*2/3\tweak staff-position #4 ^~ \voiceFour f4 \skip2
  \skip2 s8 b,4
  \voiceThree
  \once \omit Stem
  \once \omit Flag
  a8_~
  \voiceFour <a fis>8 <e d'> s4*2/3 \voiceOne \once \omit Flag e'8*2/3~ \voiceFour e4 \voiceTwo g
  \voiceOne f4^~ \voiceThree <f a>4 e2
  \skip1*3
  \skip8*7
  \voiceOne
  \once \omit Stem
  \once \omit Flag
  \once \hide NoteHead
  g,8_~
  \voiceTwo
  g4 s8
  \once \omit Stem
  \once \omit Flag
  \once \hide NoteHead
  e'8~ e4. f8
  \skip1
  s8 \voiceOne
  \once \omit Stem
  \once \omit Flag
  g~ g4~ \voiceFour g8 \voiceTwo a4.~
  \voiceOne a4 s8
  \once \omit Stem
  \once \omit Flag
  g8~ \voiceFour g4. \voiceOne f8_~
  f4 s4 s8
  \once \omit Stem
  \once \omit Flag
  e~ e4
  \voiceFour
  d8 dis gis4 \voiceTwo <d g>8 <b~ f'> \tuplet 3/2 { b8 c cis-\tweak staff-position #1 ^~ }
  \voiceThree
  \once \override Beam.positions = #'(2.5 . 2.25)
  cis8 b \skip 2.
  \voiceTwo
  s4 s8 g'4 a8^~
  \once \omit Stem
  \once \omit Flag
  \once \override NoteColumn.ignore-collision = ##t
  a8*2/3 s4*2/3
  \voiceThree d,2 \skip2
  \skip8*5
  \voiceTwo
  \once \omit Stem
  \once \omit Flag
  es8~ es4
  \skip1
  \skip 8*3
  \once \omit Flag
  \once \omit Stem
  fis8_~ fis2
}

upperD = \relative {
  \skip1*12
  \skip4 \voiceFour c''4-\tweak staff-position #1 ^~
  \voiceThree \once \override Stem.length = #4.3 c8 \voiceOne a4-\tweak staff-position #-1 ^~ <a c>8~
  \voiceTwo <f a c>8^~ <g a e'>~ <a d>_~ <b d>~ <gis b d>8 <a c> <b d> c
  \skip 1*8
  \voiceOne
  \skip 2. g'4~
  \once \omit Stem
  \once \hide NoteHead
  \voiceFour
  g4
}

lowerA = \relative {
  \oneVoice
  r2 \voiceOne g'~
  g2 f4 g
  a4 b2 d4~
  d4 e2 d4
  \oneVoice
  r2 r4^\markup \whiteout \line { Ch. Soft reeds 16, 8} f,4
  g4 f es f
  g4 f bes c
  bes2~ bes8 r r4
  R1
  bes4 f g bes
  c4 bes c d
  c2~ c8 r r4
  R1*2
  r2 r4 bes
  c4 d bes a
  g4 f bes c
  f,4 g bes2~
  bes4~ bes8 r r2
  R1
  R1
  R1
  R1
  R1
  r4 a bes g
  f4 es g g
  a4 g f es
  f2~ f4~ f8 r
  \voiceOne
  g2\repeatTie ^"Sw." f4 g
  a4 b2 d4~
  d4 dis e2
  f2 <d fis>
  g1
  \voiceOne \skip2 b,8 c r4
  f,1^\fermata
}

lowerB = \relative {
  \voiceTwo
  s2 d'4 c
  f4 es2.~
  es4 a g cis
  b2 a
  \skip1*24
  f4 es2.~
  es4 a g cis
  b2 bes
  <a c>1~
  <a c es>2 <bes des f^~>
  \oneVoice
  <c f>8. r16 r4 \voiceTwo <f, a>4 r
  b,8 c a2._\fermata
}

lowerC = \relative {
  \skip1*2
  \override NoteColumn.force-hshift = #0
  \voiceTwo
  \omit Stem
  \hide NoteHead
  a'4~ a \skip2
  \skip1*26
  a4~ a
}

pedalA = \relative {
  R1*4
  d'2_\markup { Soft 16, 8 + Sw. } c
  bes4 as2 d,4
  c2 g4 bes
  es,4 d c c''~
  c4 bes2 a4
  g4. f8 e2
  d4 g fis b,
  es8. f16 ges8. as16 a4 r
  R1
  d2 c~
  \voiceOne
  c2. d8 es~
  es8 d~ d4~ d8 c~ c4~
  c8 f4.~ f4. es8~
  es8 d4 c8~ c2~
  c4~ c8 r
  \oneVoice
  c,,4 r_\fermata
  R1
  R1
  R1
  R1
  f''2 e
  d2. es4
  bes8 a g4 a d,
  e8 fis g4 d es
  r2 d'4 c
  f1~
  f1~
  f1
  r4 c-. r d-.
  r4 c-. r bes-.
  r4 c-. r2
  <f,, c'>1_\fermata
}

pedalB = \relative {
  \skip1*14
  \voiceTwo
  f2 d
  g,4 a8 b c4 d8 e
  f4 es4. d8 c4
  bes4 as g f
  e4 d
}

dynamicsMan = {
  s1\pp
  s1
  s1\<
  s2\mf s2\>
  s1\!
  s1
  s1
  s2\< s2\!
  s4 s\> s s\!
  s1*3
  s1\<
  s1\f
  s1*3
  s2 s2\>
  s2 s2\!
  s2 s2\pp
  s1*2
  s2. s4\<
  s1
  s1\mf
  s2. s4\>
  s2. s4\p
  s2 s2\<
  s2.\mf s4\<
  s2. s4\f
  s4 s2.\>
  s1\pp
  s2. s4\>
  s4 s2.
  s1\ppp
}

<<
  \new PianoStaff
  <<
    \new Staff = "upper"
    <<
      \structure
      \new Voice = "upperA" \upperA
      \new Voice = "upperB" \upperB
      \new Voice = "upperC" \upperC
      \new Voice = "upperD" \upperD
    >>
    \new Dynamics \dynamicsMan
    \new Staff = "lower"
    <<
      \clef treble
      \structure
      \new Voice = "lowerA" \lowerA
      \new Voice = "lowerB" \lowerB
      \new Voice = "lowerC" \lowerC
    >>
  >>
  \new Staff = "pedal"
  <<
    \clef bass
    \structure
    \new Voice = "pedalA" \pedalA
    \new Voice = "pedalB" \pedalB
  >>
>>
