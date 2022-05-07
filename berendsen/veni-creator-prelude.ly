\version "2.22.0"

#(set-global-staff-size 18)

\header {
  title = "Prelude on “Veni Creator Spiritus”"
  subtitle = "for organ"
  composer = "Wilbert Berendsen"
  tagline = ##f
  copyright = \markup {
    Copyright © 2022 \with-url #"https://wilbertberendsen.nl/" \line { Wilbert Berendsen. }
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

my-staff-spacing = #'
    ((basic-distance . 9)
     (minimum-distance . 7)
     (padding . 1)
     (stretchability . 5))

fermata-breathe = {
  \once \override BreathingSign.text = \markup {
    \override #'(direction . 1)
    \override #'(baseline-skip . 1.8)
    \dir-column {
      \translate #'(0.155 . 0)
        \center-align \musicglyph "scripts.caesura.curved"
      \center-align \musicglyph "scripts.ufermata"
    }
  }
  \breathe
}

\paper {
  %  page-count = 9
  min-systems-per-page = 4
  max-systems-per-page = 5
  system-count = 35
  ragged-last-bottom = ##f
}

\layout {
  \context{
   \Score
   \override TextScript.baseline-skip = #2.5
  }
  \context {
    \PianoStaff
    \override StaffGrouper.staffgroup-staff-spacing = #my-staff-spacing

  }
  \context {
    \Staff
    \consists "Merge_rests_engraver"
    \override VerticalAxisGroup.staff-staff-spacing = #my-staff-spacing
  }
  \context {
    \Voice
    \override Tie.minimum-length = #3
  }
}

structure = {
  %\override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 16)
  %\accidentalStyle modern
  \key f \mixolydian
  \numericTimeSignature
  \time 4/4
  \tempo "Moderato" 4=66
  \skip 1*28
  \tempo "Poco meno mosso"
  \skip 1*9
  \key fis \mixolydian
  \skip 1*13
  \key f \mixolydian
  \skip 1*2
  \skip 2.
  \tempo "Tempo I"
  \skip 4
  \skip 1*13
  \tempo "Energico"
  \skip 1*2
  \tempo "Maestoso"
  \skip 1*2
  \tempo "Largamente"
  \skip 1*9
  \bar "|."
  \once \override Score.RehearsalMark.direction = #DOWN
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT  
  \once \override Score.RehearsalMark.font-size = #-2
  \mark \markup { (ca 5 min) }
}

upper = \change Staff = "upper"
lower = \change Staff = "lower"

upperA = \relative {
  R1
  r16 f^\markup { Gt. Found. 8, 4 + Sw. } bes f' r g, bes g' r f, bes f' r es, bes' es
  r16 f, bes f' r g, bes g' r f, bes f' r bes, f' bes
  r16 es, bes' es r d, bes' d r c, es c' r bes, es bes'
  r16 bes, es bes' r a, es' a r gis, d' gis r a, es' a
  r16 f bes f' r g, bes g' r f, bes f' r es, bes' es
  r16 f, bes f' r g, bes g' r f, bes f' r bes, f' bes
  r16 es, as es' r d, fis d' r c, ges' c r bes, es bes'
  r16 bes, d bes' r a, cis a' r gis, bis gis' r a, cis a'
  r16 e g e' r dis, fis dis' r d, f d' r cis, e cis'
  r16 cis, e cis' r b, dis b' r b, d b' r c, es c'
  r16 ges beses ges' r f, as f' r e, g e' r es, ges es'
  r16 es, as es' r des, as' des r c, as' c r b, f' b
  r16^\markup { (Gt.+Sw.) } c,_\markup \italic { ben legato } f g \voiceOne c4 d c
  bes4 c d c
  <f d>4 <g e> <f d>2
  r16 a, d c~ c 8 e16 d~ d8 f16 e~ e8 cis16 d~
  d16 es f e~ e g f e~ e cis d fis~ fis dis e g~
  g16 c, d f e d c d  c bes d c bes a g a
  c8 f4 e4 cis d8~
  d8 gis, bes a~ <a c,>4 <d f,>~
  d16 c bes a <g c,>4 c8 e,16 f g8-. gis-.
  r4 ais8-. b-. \voiceTwo gis,16 b cis ais \voiceOne e'4
  f4 d c <bes d,>
  d4 <d f,> e d
  c4 bes c2~
  c1~
  c2 r8 g r_\markup \italic { rit . . . } g
  \oneVoice
  r16 c,^\markup { Ch. Flutes 8, (4) } d f g a c d \voiceOne a'4( b
  c4 a g fis
  e2) <b, e g>4(^\markup \line { Sw. \column { \line { Foundations & } \line { Voix humaine 8,} Tremolo } } <cis fis a>
  \voiceOne <b g'>8 <a fis'> \oneVoice <b e g>4) r2
  \voiceOne
  b''4(^\markup { Ch. } cis d bes
  \omit TupletNumber
  \omit TupletBracket
  as4_\markup\italic { simile } g f2)
  <c, f as>4(^\markup { Sw. } <d g bes> \voiceOne <c as'>8 <bes g'> \oneVoice <c f as>4)
  r2 \voiceOne \tuplet 6/4 4 { 
    c'16^\markup { Ch. } f as c as f d f as d as f 
    es as c es c as c, es as c as es es g a es' a, g f a c f c a
  }
  \tuplet 6/4 4 { fis16 b dis fis ais, b \oneVoice dis eis, fis b cisis, dis }
  \tuplet 6/4 4 { r16 cis, gis' ais fis cis r dis ais' bis gis dis }
  \voiceOne
  cis'4( dis cis8 b cis4
  dis4. cis8 fis4 gis
  fis2) r
  fis4( cis dis fis
  gis4 fis gis ais
  gis2) r4 fis8( gis
  ais4 fis8 eis dis cis fis4
  gis4 cis,8 dis fis4.) r8
  b,2..~\repeatTie <b dis,>8\fermata
  \once \override BreathingSign #'text = #(make-musicglyph-markup "scripts.caesura.curved")
  \breathe
  s1^\markup { Ch. }
  \oneVoice
  \skip 2. r4
  \skip 1
  \voiceOne
  r2 \tuplet 3/2 4 { r8 a'( bes g f es }
  \tuplet 3/2 4 { ges8 ges as ges fes es } ges4~ ges16) r r8
  \skip 1*3
  r8 f4( g f es8~
  es8 f4 g f b8)
  \skip 1*5
  r8 es4( des8) r c4( b8)
  \skip 8 g8([ a g fis g)] r g(
  a8[ g fis g)] r bes[( c bes]
  a8[ bes]) r bes[( c bes a bes])
  r8 <g bes>-! <bes d>4-- r8 <g bes>-! <bes d>4--
  r8 d-! e4-- r8 d-!\noBeam e( d)
  \oneVoice
  r8 <d, fis a>-- <d fis b>-- <d fis a>-- <a d g>-- <d fis a>-- <d fis b>-- <d g a>--
  <d g b d>2-> <e g a e'>->
  \fermata-breathe
  \once \override Slur.positions = #'(4 . 4)
  <e a cis>4(^\markup { Sw. } <d_~ f d'> <d b'> <c! a'>
  \undo \omit TupletBracket
  \undo \omit TupletNumber
  <b g'>4 <d b'> \tuplet 3/2 { <dis b'>4 <e cis'> <d b'> }
  \voiceOne
  a'2 gis)
  \oneVoice
  <f a>1~
  <f a>1~
  <f a>1~
  <f a>1~
  <f a>1~
  <f a>8^\fermata r r4 r2
}

upperB = \relative {
  \voiceTwo
  \skip 1*13
  \skip4 c'''16 a g f~ f g d f~ f4^~
  \voiceThree
  f1
  \voiceTwo
  \skip1
  \skip16 \once \mergeDifferentlyDottedOn
  a8.~ a16 gis8.~ gis16 b8.~ b16 gis8.
  \skip2. cis,4~
  cis8 c f e d c4 <bes e>8~
  \voiceTwo
  bes16 a d c bes a g c f, g a f bes c bes a
  \voiceTwo
  g16 bes a g <f d'>4 g8 a4 d16 c
  <bes~ g'>4 bes8 a8~ a16 g c bes gis_\markup\italic { non legato } b cis ais
  b16 d e cis d f g e \voiceOne f gis g f \voiceTwo r _\markup \italic { legato } a, d c~
  c8 a~ <a f~> <f~ d> f16 es\laissezVibrer g a~ a8 g~
  g16 e g fis r \lower \voiceOne cis \voiceTwo \upper e d r ais' cis bis r d, fisis gis
  r16 c, e f~ f bes, g' f e8 a e f
  bes,2_\markup \italic { poco rit. } r16 _\markup \whiteout \italic { a tempo (senza rigore) } c g' f^~ f bes, dis e~ \tuplet 6/4 4 { e16 c a'^~ a g f^~ f bes, d^~ d dis e } r16^\markup { Sw. } c e d r c es des
  \skip 2 \tuplet 3/2 { f'16_\markup\italic { leggiero } d b } r8 \tuplet 3/2 { f'16 d b } r8
  \tuplet 3/2 { g'16 es c } r8 \tuplet 3/2 { g'16 es c } r8 \tuplet 3/2 { r16 dis b } r8 \tuplet 3/2 { dis16 b a } r8
  \tuplet 3/2 { r16 b g } r8 \tuplet 3/2 { b16 a e } r8 \skip 2
  e4 \skip2.
  \tuplet 3/2 { b''16 g e } r8 \tuplet 3/2 { cis'16 g e } r8 \tuplet 3/2 { d'16 as f } r8 \tuplet 3/2 { bes16 as d, } r8
  \omit TupletNumber
  \omit TupletBracket
  \tuplet 3/2 { as'16 f des } r8 \tuplet 3/2 { g16 f b, } r8 \tuplet 3/2 { r16 des bes } r8 \tuplet 3/2 { d16 b as } r8
  \skip 2 f4 \skip4
  \skip 2 c'4( d
  es4 c) es( f
  fis2) \skip2
  \tuplet 6/4 4 { r16 e, gis ais fis e r fisis gis b gis e r dis e gis e cis r eis fis ais fis cis }
  \tuplet 6/4 4 { r16 fisis gis b gis dis r gis a cis a e r ais b dis b gis r ais b dis cis b~ }
  \tuplet 6/4 4 { b16 gisis ais cis ais fis cis eis fis ais fis cis r b fis' b fis b, r cis fis cis' fis, cis  }
  \tuplet 6/4 4 { r16 gis' a dis a fis r fisis gis b gis eis r gisis ais cis ais dis, r ais' b dis b gis }
  \tuplet 6/4 4 { r16 gis a e' cis a r ais b e b gis r ais b dis b gis r ais cis e dis cis~ }
  \tuplet 6/4 4 { cis16 ais b dis ais b r ais b dis ais b r ais b d ais b } s4
  \skip4 \tuplet 6/4 4 { r16 ais b r gis b r gis a r fis a r gis a dis aisis bis }
  \tuplet 6/4 4 { r16 bis cis e ais, bis r f a b gis a r ais b d ais b cis fisis, gis b dis, e } 
  d4^\markup \center-align { Sw. } dis e eis8 dis
  \skip 1*2
  \oneVoice
  r2 \tuplet 3/2 4 { r8^\markup { Ch. (+Found. 8) } e'_( f d c bes }
  \voiceTwo
  \tuplet 3/2 4 { d8 d es d c bes } c8 bes~ \tuplet 3/2 { bes8 as g) }   
  \tuplet 3/2 4 { beses8 beses ces beses as ges bes16 ges bes d bes ges r d ges bes ges d }
  \oneVoice
  \tuplet 3/2 4 { r16 bes d ges d bes r ges c e c ges r f bes f' bes, f r bes f' bes f bes, }
  \tuplet 3/2 4 { r16 es bes' es bes es, r d bes' d bes d, r c es c' es, c r bes es bes' es, bes }
  \tuplet 3/2 4 { r16 bes es bes' es, bes r a es' a es a, r gis d' gis d gis, r a es' a es a, }
  \voiceTwo
  \tuplet 3/2 4 { r16 f' bes f' bes, f r g bes g' bes, g r f bes f' bes, f r es bes' es bes es, }
  \tuplet 3/2 4 { r16 f bes f' bes, f r g bes g' bes, g r f a f' a, f r b f' b f b, }
  \oneVoice
  \tuplet 3/2 4 { r16 es g es' g, es r d g d' g, d r c es c' es, c r bes es bes' es, bes }
  \tuplet 3/2 4 { r16 bes cis bes' cis, bes r a cis a' cis, a r a bis a' bis, a r ais cis ais' cis, ais }
  \tuplet 3/2 4 { r16^\markup { Ch. +Found. 8, 4 } e' g e' g, e r dis fis dis' fis, dis r d f d' f, d r cis e cis' e, cis }
  \tuplet 3/2 4 { r16 cis e cis' e, cis r b dis b' dis, b r b d b' d, b r c es c' es, c }
  \tuplet 3/2 4 { r16 ges' beses ges' beses, ges r f as f' as, f r e g e' g, e r es ges es' ges, es }
  \voiceTwo
  \tuplet 3/2 4 { r16 es as es' as, es r des as' des as des, r c as' c as c, r b f' b f b, }
  \oneVoice
  r32^\markup { Gt. \column { +Ch. +Sw. } } \voiceTwo g c d g e d c a' e d c g' e d c fis e d c g' e d c r g c d g e d c 
  a'32 e d c g' e d c fis e d c g' e d c r bes es f bes g f es c' g f es bes' g f es
  a32 g f es bes' g f es r bes es f bes g f es c' g f es bes' g f es a g f es bes' g f es 
  r32 d e d <g bes> d e d g <d e> g <d e> g <d e> g <d e> r d e d <g bes> d e d g <d e> g <d e> g <d e> g <d e>
  r32 d f d <bes' d> d, f d <gis b> <d e> <gis b> <d e> <gis b> <d e> <gis b> <d e>  r d f d <bes' d> d, f d <gis b> <e f> <gis b> <e f> <gis b> <e f> <gis b>^~ <e f gis b>
  _\markup \right-align \italic \line { poco tenuto - - - }
  \skip 1*4
  cis4 d dis e
}

upperC = \relative {
  \skip1*13
  \voiceFour
  \skip 2. r16 c'' d bes~
  bes16 a g f~ f bes c d,~ d a' g e'~ e d a' g~
  \voiceTwo
  g16 f c' bes~ bes e, des' c~ c e, f g c bes d, e
  f4 \voiceFour c \tweak staff-position #1 ~ <c d> <f b,>
  \voiceTwo
  <g bes~ bes,>4 <bes f d~> <b g d> <cis a cis,>
  \voiceFour
  <g-\tweak staff-position #5.5 ^~ bes>2 g4 \voiceThree d8 s
  \voiceFour
  f4 g a f
  \voiceFour
  e4 s2.
  s2 d4 f-\tweak staff-position #6 ^~
  f4
}

lowerA = \relative {
  \oneVoice
  <f, f'>1~ ^\markup {
    \whiteout \line { Sw. Foundations & Reeds 8, 4 }
  }
  <f f'>1~
  <f f'~>2. <f' bes~>4
  <g bes~ es>4 <f bes~ d> <g~ bes~ c> <g~ bes~>
  <g bes es~>4 <f a es'> <es gis b> <f a c>
  \voiceTwo
  <f f'>4 <g es'> <f d'> <g c>
  <f d'>4 <g es'> <f f'> <f' g>
  <c es as>4  <a d fis>^( <as c ges'>) <ges bes es>^(
  \voiceOne
  dis'4) cis \oneVoice <dis, fis bis> <e a cis>
  \voiceOne
  g'4 fis eis e~
  e4 dis d <c es>^~
  \voiceTwo
  <c es>2~ <as c>
  <as des>2~ <as c>4^\markup \italic { poco cedendo } <g b>
  <a c>4 \oneVoice r4 r2
  R1*6
  d4~^\markup { Gt. } d16 e d c f e d e d c bes a
  g16 a' g f e f e d c bes a g
  \voiceOne
  e16 d' e cis d f g e f gis ais g \skip 2
  \oneVoice
  r16 c, g' f\laissezVibrer \skip2 \voiceOne r16 fis, a g
  as4 g <gis~ b> <f gis>
  a8 f d a'~ a16 g e a g f c f~
  f16 e a g r bes, dis e \oneVoice <c a'>8 <a f'> <bes d> <g g'>
  <c a'>8 <a f'> <bes d> <g c> <c a'>^\markup { Sw. } <bes g'> <c a'> <b gis'>
  <c a'>8 r r4 r8^\markup { Ch. } \tuplet 3/2 { a''16 f d } a16-. r \tuplet 3/2 { a'16 f d }
  a16-. r \tuplet 3/2 { g'16 es c } a16-. r \tuplet 3/2 { g'16 es c } b16-. r \tuplet 3/2 { g'16 dis b } a16-. r \tuplet 3/2 { fis'16 b, a }
  g16-. r \tuplet 3/2 { e'16 b g } fis16-. r \tuplet 3/2 { b16 a fis } \tuplet 6/4 4 { r16 e b' cis b cis \clef treble r b e b' e, b' }
  \tuplet 6/4 4 { r16 e, b' cis b cis r b e b' e, b' }
  \tuplet 6/4 4 { \stemUp e16[ c ais] \stemDown b16[ g fis] \stemUp e16[ c ais] \stemDown b16[ g fis] }
  \oneVoice e16-. r \tuplet 3/2 { cis'16 b g } e16-. r \tuplet 3/2 { cis'16 b g } f16-. r \tuplet 3/2 { d' bes as } f16-. r \tuplet 3/2 { bes16 as f }
  \omit TupletNumber
  \omit TupletBracket
  des16-. r \tuplet 3/2 { b' as f } d16-. r \tuplet 3/2 { g16 f d } bes16-. r \tuplet 3/2 { g'16 f des } b16-. r \tuplet 3/2 { g'16 f d }
  \tuplet 6/4 4 { r16 c f g f g r c, f c' f, c' r f, c' d c d r c f c' f, c' }
  \tuplet 6/4 4 { \stemUp f16[ des b] \stemDown c16[ as g] \stemUp f16[ des b] \stemDown c16[ as g] }
  \oneVoice
  r8 f-. r c-.
  r8 c'-. r es,-. r c'-. r g-.
  r8 dis'-. r fis,-. \voiceOne <ais, cis fis~>4(^\markup { Sw. }  <bis fis' gis> 
  fis'8 e~ <gis, b e fis>4 <cis gis'> <dis_~ fis>
  <dis b'>4 <cis cis'> <gis' b>2)
  \skip 2 \oneVoice <b, fis' b>4^( <ais e'~ fis>
  \voiceTwo e'8 dis fis eis \voiceOne <e cis'>4 <dis b'>
  \once \override NoteColumn.force-hshift = #.7
  <cis cis'>4 <gis'~ dis'> <gis cis>) cis,
  \oneVoice
  \clef bass
  \tuplet 3/2 { gis16[^\markup { Ch. } b dis] } gis16-. r
  \tuplet 3/2 { gis,16[ b dis] } gis16-. r
  \tuplet 3/2 { gis,16[ b d] } gis16-. r
  \tuplet 6/4 { ais,16[ bis dis] cisis[ \upper \voiceTwo gis' ais] }
  \lower
  \voiceOne
  \tuplet 6/4 4 { fis,16[ ais cisis] dis[ fis \upper \voiceTwo ais] }
  \lower
  \voiceOne
  \clef treble
  b8(^\markup { Sw. } cis dis4 b8 ais
  <gis b,>8 <fis ais,> <b f b,>4 <cis d,> <fis, cis>8[ <gis b,>])
  \tuplet 6/4 4 { gis,16^\markup { Ch. } b cis d b ais \voiceOne r c f dis c b r cis fis e cis c b d_~ <g d> } f8
  \clef bass
  \tuplet 6/4 8 {
     \voiceTwo eis,16[ gis cisis]
     \voiceOne dis[ b fis]
     \voiceTwo gis[ cisis eis]
     \upper
     \voiceOne fis[ dis b]
     \voiceTwo cisis[ eis gis]
     \voiceOne b[ fis dis]
     \voiceTwo eis[ gis cisis]
     \voiceOne dis[ b fis]
     \voiceTwo gis[ cisis eis]
     \voiceOne fis[ dis b]
     \voiceTwo gis[ cisis eis]
     \voiceOne fis[ dis b]
     \voiceTwo gis[ cisis eis]
     \voiceOne fis[ dis b]
     \lower
     \clef treble
  }
  <ais d,_~ ais gis_~>4(^\markup { Sw. }
  \oneVoice
  <b e, d b gis~>4 <gis dis gis,_~> <fis d^~ ais gis> <e d b> 
  <as es as,>4 <as g as,> <bes f bes,> <as es ces>
  <ges des>4 <fes ces> <ges d ges,>2)
  \clef bass
  \voiceOne
  bes,1~
  ^\markup \line { (Sw.) \column { \line { ‒Voix hum., Trem. } \line { +Oboe, Foundations } } }
  ^\markup \italic { poco cedendo } 
  \oneVoice
  <g bes~ es>4 <f bes~ d> <g_~ bes c> <g~ bes~>
  <g bes es~>4 <f a es'> <es gis b> <f a c>
  <f f'>4 <g es'> <f d'> <g c>
  <f d'>4 <g es'> <f a f'~> <g b f'>
  <g~ c es>4  <g b f'> <as c ges'~> <ges bes ges'>^(
  <g~ cis~ fis>) <g cis e> <fis bis dis> <g cis e>
  \voiceOne
  a'!8(^\markup { Sw. +Reeds 8, gradually add more stops } g4 fis8) eis4 e~
  e4 dis d <c es>^~
  \voiceTwo
  <c es>2~ <as c>
  \voiceThree
  des2 c4 b
  \skip 2. g8 g'(
  a8 g fis g)
  g4^\markup { Sw. } a8 g~
  g4 bes,8 bes'( c bes a bes)
  \skip 1
  \voiceOne
  \skip 2 bes4 cis8 b
  \oneVoice
  <a, d fis a>4.--^\markup { Gt. +Found. & Reeds 8, 4, (16) } <a d fis>8-- <a d g>-- <a d fis>4-- <a d e>8--
  <d e g b>2-> <cis g' a cis>->
  \fermata-breathe
  \once \override Slur.positions = #'(2.5 . 6)
  <d~ e g b~>4^\markup { Sw. }  <d~ f gis b~> <d fis^~ a b> <a dis fis>
  \undo \omit TupletBracket
  \undo \omit TupletNumber
  <b e g>4 <gis eis'> \tuplet 3/2 { <a fis'>4 <ais g'> <b fis'> }
  \voiceOne
  \clef bass
  f'!4^\markup \italic { poco riten. - - - } e dis des
  \oneVoice
  <c, f a c>2~ <c f a c>8 r <f a c>4(^\markup \whiteout { Gt. Found. 8, (4) + Sw. }
  \noBreak
  <d g b d>2 <f a c>4 <dis gis b>
  <c f a c>2.) r4
  <c f a c>2.^\markup { Sw. } r4
  <c, a' f'>1~
  <c a' f'>8^\fermata r r4 r2
}

lowerB = \relative {
  \skip1*5
  \voiceOne
  bes1(
  bes1)
  \skip1
  \voiceTwo
  <e, g>2 \skip2
  <ais~ cis>2 <fis~ ais>
  <fis a>2 <f as>4 ges
  \voiceOne
  beses' as g ges~
  ges4 f2.~
  f4 \skip 2.
  \skip 1*7
  \voiceTwo
  \skip 2. e,8-- r
  r8 ais-. b-. r \oneVoice cis-. d-. r4
  \voiceTwo
  s4 r16 f, c' bes^~ <g bes>8 <f es'^\repeatTie> bes,4~
  bes4 b2.
  c2~ <c bes>4 <c a>
  <g bes>4 <ges c> \skip 2
  \skip 1*11
  <fis' ais>4 \skip 4 ais2
  e'2 dis4 cis~
  \oneVoice
  <cis fis>4 r \skip 2
  \voiceOne
  <a gis'~>4 <gis' b~> \voiceTwo b8 ais4 gis8~
  gis8 fis4 e8 dis cis b ais
  \skip 1
  \skip 4 <dis gis>4 <fis~ a> <fis bis,>
  e4 \skip 4 gis8[ fis] d4
  \omit TupletNumber
  \omit TupletBracket
  \voiceTwo
  gis,4 a <g bes> <gis b>8~ <gis b> \fermata
  \once \override BreathingSign.text = #(make-musicglyph-markup "scripts.caesura.curved")
  \breathe
  \skip 1
  \voiceTwo
  \skip 2. g'8 f
  \skip 1*3
  bes,,2. f'4
  \skip 1*2
  \voiceOne
  bes1(
  bes2) \skip 2
  \skip 1*2
  \voiceTwo
  <ais~ cis>2 <fis~ ais>
  <fis a!>2 <f as>4 ges
  \voiceOne
  beses' as g ges~
  ges4 f2.
  \clef treble
  \oneVoice
  <g, c e>2.^\markup { Sw. +Reeds 4, Mixtures } \voiceTwo <c e>4~^\markup { Gt. }
  <c e>2 <bes es>~
  <bes es>4 <es g>2.^\markup { Gt. }
  \oneVoice
  <d g bes>4~^\markup { +Ch. Reeds 8, 4 } <d e g bes> <d g bes>~ <d e g bes>
  <d f bes>4~ <d f gis bes> \voiceTwo <d f>~ <d f gis>
  \skip 1*4
  <g, bes!~>2 <e bes'>
}

lowerC = \relative {
  \skip 1*42
  \skip 8*5
  \omit Stem
  \omit Flag
  \hide NoteHead
  \override NoteColumn.ignore-collision = ##t
  \voiceTwo cis'8^~ \voiceOne cis4
  \skip 1*2
  \skip 2 
  \once \override NoteHead.X-offset = #.5
  << { d4-\tweak staff-position #-5 _~\voiceTwo d }
     \new Voice {
       \omit Stem
       \omit Flag
       \hide NoteHead
       \override NoteColumn.ignore-collision = ##t
       \skip8 
       \voiceTwo 
       fis8^~ 
       \voiceOne 
       \once \override NoteHead.X-offset = #1
       fis
     }
  >>
  \skip 1*16
  \undo \omit Stem
  \undo \omit Flag
  \undo \hide NoteHead
  \voiceTwo
  as,1
  \skip 1*4
  \voiceOne
  \skip 8*5 gis'8-\tweak staff-position #-1.7 ~
  \omit Stem
  \omit Flag
  \hide NoteHead
  gis4
}

pedalA = \relative {
  R1
  d,4_\markup { Found. 16, 8 +Sw. } es f g
  d4 c d d'
  c4 d es g
  f4 f,2 es4
  d4 es f g
  d4 c d d'
  c4 d es ges
  a,2. g4
  fis1
  b2. a4
  as1
  des1
  c4 r r2
  R1*12
  r2 f,~
  f1~
  f4 r r2
  R1
  r2 r8_\markup { - Sw. } b'-. r b,-.
  r8 e-. r e,-. r2
  R1*2
  r8 c''-. r c,-. r f-. r f,-.
  R1*2
  r2 r8 e'-. r dis-.
  r8 cis-. r b-. r e-. r dis-.
  r8 gis_\markup\italic { simile } r a r e r eis
  r8 fis r e r d r cis
  r8 bis r cis r fisis r gis
  r8 a r e r eis r fisis
  r8 gis r fis r eis r ais
  r8 dis, r eis r fis r gis
  r8 cis, r g' r e r e,
  r8 eis r fis r cis' r cis,_\fermata
  \once \override BreathingSign.text = #(make-musicglyph-markup "scripts.caesura.curved")
  \breathe
  R1
  r2 r4 \voiceOne d''(
  e4 bis ais gis
  c4 c d ces
  beses4 as bes2)
  \oneVoice
  r8 f,-. r ges-. r d-. r d'-.
  r8 c-. r d-. r es-. r g-.
  r8 f-. r f,-. r g'-. f-. es-.
  d8-. d,-. es'-. es,-. f'-. f,-. g'-. g,-.
  d'8-. d,-. cis'-. cis,-. d'-. d,-. des''-. des,-.
  c'8-. c,-. d'-. d,-. es'-. es,-. des'-. ges,-.
  a8-. a,-. r e'-. a( a,) r g-.
  fis-. ais'-. e-. g-. r cis,-. fis-. fis,-.
  b8-. b'-. fis-. a-. f-. as-. ces,( beses)
  as-- c'-. ges-. beses-. es,-. ges-. as,-. c-.
  des-- f'( as, des) f, as as,-- d--
  g,8^\markup { +Sw. }  g'( a g fis g) g,-- g'(
  a8 g fis g) g,-- g'( a g
  fis8 g) g,-- g'( a g fis g)
  g,8--^\markup { +Gt. +Ch.} g'-. bes( g) g,-- g'-. bes( g)
  gis,8-- gis'-. b( gis) gis,-- gis'-. b( gis)
  a,16--^\markup { +Reeds 16, 8, 4 } d'( a b fis a d, fis a, b' fis a d, fis b, d
  a16 b' e, g d e b d a d cis b a g fis e)
  \fermata-breathe
  d1~^\markup \column {
    \line { +Found. 32 }
    \line { ‒Reeds, Gt., Ch. }
  }
  \undo \omit TupletBracket
  \undo \omit TupletNumber
  d2 \tuplet 3/2 { cis4 b' a }  
  g2 c
  f,1~
  f1~
  f1~
  f1~
  f1~
  f8_\fermata r r4 r2
}

pedalB = \relative {
  \voiceTwo
  \skip 1*48
  \skip 2. r8 gis-.
  r8 gis-. r eis-. r d-. r b-.
  r8 bes-. r as-. r g-. r as-.
  r8 es-. r as-. r f-- r ges--
}

dynamicsMan = {
  s1\f-\tweak minimum-length #18 -\>
  s1\pp
  \skip 1*5
  s2. s4\<
  s2. s4\mp
  \skip 1
  s2. s4\<
  s2 s2\mf
  s2 s2\>
  s1\p
  \skip 1*6
  s2 s2\<
  s2 s8 s4.\mf
  \skip 1*3
  s2. s4\>
  s2 s2\!
  s4 s2\> s8 s8\pp
  \skip 1*16
  s4 s2\< s4\p
  \skip 1*7
  s4 s2\> s4\pp
  \skip 1*1
  \skip 2. s4\<
  s1\!
  \skip 1
  s2 s\<
  s2 s\mp
  \skip 1
  s2 s\<
  s1\mf
  s4 s2\> s4\p
  \skip 1*2
  s1\<
  s1\f
  s4 s2.\<
  s1\ff
  \skip 1*2
  s4 s2\> s4\!
  \skip 1
  s1\<
  s2 s\>
  s1
  s1\p\>
  s1
  s8\ppp
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
    >>
    \new Dynamics \dynamicsMan
    \new Staff = "lower"
    <<
      \clef bass
      \structure
      \new Voice = "lowerA" \lowerA
      \new Voice = "lowerB" \lowerB
      \new Voice = "lowerC" \lowerC
    >>
  >>
  \new Staff = "pedal" \with {
    \RemoveEmptyStaves
  } <<
    \clef bass
    \structure
    \new Voice = "pedalA" \pedalA
    \new Voice = "pedalB" \pedalB
  >>
>>