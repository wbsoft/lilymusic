\version "2.14.0"

\include "merge-rests.ily"
\include "carillon.ily"

\header {
  title = "Andantino"
  subtitle = "from Sonata nº III"
  composer = "Jiří Antonín Benda (1722-1795)"
  arranger = "Carillon arrangement by Wilbert Berendsen (*1971)"
  copyright = \markup \center-column {
    \with-url #"http://www.wilbertberendsen.nl/"
    \line {
      Arrangement and engraving © 2011 by Wilbert Berendsen
      (http://www.wilbertberendsen.nl/)
    }
    \line {
      This music may be freely performed, recorded, distributed and modified
      under the provisions of the
    }
    \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/"
    \line {
      Creative Commons License
      (http://creativecommons.org/licenses/by-nc-sa/3.0/).
    }
  }
}

#(set-global-staff-size 19)

\paper {
  top-margin = 15\mm
  bottom-margin = 15\mm
  line-width = 18\cm
  ragged-last-bottom = ##f
}

\layout {
  indent = #8
  \context {
    \Voice
    \override DynamicLineSpanner #'staff-padding = #2.5
    \override DynamicLineSpanner #'Y-extent = #'(-.4 . .6)
  }
}

global = {
  \key a \minor
  \time 6/8
  \tempo "Andantino"
}

topedf = {
  \once \set followVoice = ##t
  \change Staff = "ped"
}

toman = {
  \change Staff = "man"
}

rh = \relative c'' {
  \global
  \mergeRestsOn
  \voiceOne
  | e8. f16 e8 
    \once \override Beam #'positions = #'(1 . 1.25)
    e,8[ \grace { d16_([ e] } f8)] e16[ d]
  | c16 e a c e a c4 \stich #4 b16. c32
  | b8[ a]\prall \times 2/3 { g16[ c a]} g4 f8\prall
  | f4( e8) \oneVoice r16 f d a bes d
  | \slurDown \acciaccatura a8 \voiceOne gis8. f'16 e8 r16 d d( c) c( b)
  | r16
    \once \override Beam #'positions = #'(4.5 . 4)
    c \slurDown \acciaccatura d8 c16^( b) \acciaccatura c8 b16^( a) a4.
  | c8. d16 c8
    \once \override Beam #'positions = #'(0 . .25)
    c,8[ \grace { bes16_([ c] } d8)] c16 bes
  | bes a gis a c d f_( es) es4
  | d8. e16 d8 \stich #1
    \once \override Beam #'positions = #'(4.5 . 4.75)
    d'8[ \acciaccatura fis8 e8] d16 c
  | \grace { b16[ c] 
             \once \override Stem #'stroke-style = #"grace"
             d8 }
    \oneVoice c4(\startTrillSpan b8)\stopTrillSpan r8 r \voiceOne g'-_
  | fis8. e16( d c b a g fis a c)
  | f8. a16( g f e d c b d f)
  | \oneVoice 
    \once \override Script #'X-offset = #3
    \once \override Script #'staff-padding = #1
    e8.\turn g16 c,8 r16. e32[ d16. f32 b,16. d32]
  | \once \override Script #'X-offset = #3
    \once \override Script #'staff-padding = #.5
    c8.\turn e16 g,8 \stich #1 c8. e16 g,8
  | \set tupletSpannerDuration = #(ly:make-moment 1 8)
    \set subdivideBeams = ##t
    \times 2/3 { r16 a-. b-.
      \override TupletBracket #'stencil = ##f
      \override TupletNumber #'stencil = ##f
      c-. b-. a-. a-. g-. f-. e-. d-. a'-. g-. f-. e-. d-. c-. b-.
    }
    \unset tupletSpannerDuration
    \unset subdivideBeams
    \revert TupletBracket #'stencil
    \revert TupletNumber #'stencil
  | b4.( c8) r8 r
  
  | \voiceOne e'8. f16 e8 e \slurDown \acciaccatura g8 f8 e16 d
  | \acciaccatura d8 cis8. e16 d8 \oneVoice r16 bes' g d es g
  | \acciaccatura d8 \voiceOne cis8. bes'16 a8 r16 g g( f) f( e)
  | r16
    \once \override Beam #'positions = #'(6 . 5.5)
    f \slurDown \acciaccatura g8 f16^( e) \acciaccatura f8 e16^( d) d4.
  | fis8. g16 fis8
    \once \override Beam #'positions = #'(5.25 . 5.5)
    fis[ \acciaccatura a8 g8] fis16 e
  | \acciaccatura e8 dis8. fis16 e8 \oneVoice r16 c' a e f a
  | \acciaccatura e8 \voiceOne dis8. c'16 b8 r16 a a( g) g( fis)
  | fis4( g8)\prall fis4 e8
  | <e f>8. g16 <e f>8 <d f> a' g16 f
  | f8 dis e e8. f16 e8
  | <cis e>8. fis16 <cis e>8 e fis dis
  | <b~ dis>4.( <b e>8) r r
  | \grace { e,32[ c a' e] } e'8. f16 e8 
    \once \override Beam #'positions = #'(1 . 1.25)  
    e,8[ \grace { d16_([ e] } f8)] e16[ d]
  | c16 e a c e a c4 \stich #4 b16. c32
  | b8[ a]\prall \times 2/3 { g16[ c a]} g4 f8\prall
  | f4( e8) \oneVoice r16 f d a bes d
  | \slurDown \acciaccatura a8 \voiceOne gis8. f'16 e8 r16 d d( c) c( b)
  | b4( c8 b4) e8-_
  | dis8. c16( b a gis a dis c b a)
  | <b d>8. f'16( e d cis d gis f e d)
  | \oneVoice 
    \once \override Script #'X-offset = #3
    \once \override Script #'staff-padding = #1
    c8.\turn e16 a,8 r16. c32[ bes16. d32 gis,16. b32]
  | \once \override TextScript #'X-offset = #3
    \once \override TextScript #'staff-padding = #.5
    a8.
    ^\markup {
      \override #'(baseline-skip . 0)
      \center-column {
        \musicglyph #"scripts.turn"
        \teeny\sharp
      }
    }
    c16 e,8 \stich #1 a'8. c16 e,8
  | \set tupletSpannerDuration = #(ly:make-moment 1 8)
    \set subdivideBeams = ##t
    \tupletUp
    \times 2/3 { r16 f-. gis-.
      \override TupletBracket #'stencil = ##f
      \override TupletNumber #'stencil = ##f
      a-. g-. f-. f-. e-. d-. \voiceOne c-. b-. f'-. e-. d-. c-. b-. a-. gis-.
    }
    \unset tupletSpannerDuration
    \unset subdivideBeams
    \revert TupletBracket #'stencil
    \revert TupletNumber #'stencil
  | gis4.( a8) r r
  \bar "|."
}

lh = \relative c' {
  \global
  \mergeRestsOn
  \voiceTwo
  | c4 c8 b4 b8
  | s4. r8 <e' a,>8 << { \topedf g,8 \toman } \new Voice { \stemDown e'8 } >>
  | r8 f c r c b
  | c4. s4.
  | \grace s8 s8. gis16 a8 r16 b16 b( a) a( gis)
  | r16 a e( d) d( c) c4.
  | g4 g8 g4 g8
  | s4. r8 r a
  | a4 a8 a4 a8
  | s4. s8 s <b' d>
  | <a c>8. s s s
  | <b d>8. s s s
  | s2.*4
  | g4 g8 g4 g8
  | g4 f8 s4.
  | \grace s8 s8. cis'16 d8 r16 e e( d) d( cis)
  | r16 d a( g) g( f) f4.
  | a4 a8 a4 a8
  | a4 g8 s4.
  | \grace s8 s8. dis'16 e8 r16 fis fis( e) e( dis)
  | dis4( e8) dis4 b,8
  | c4 c8 g'4 <g d'>8
  | <g c>4 g8 g4 g8
  | g4 g8 <g b>4 <a b>8
  | a4.( gis8) r r
  | s4 a8 b,4 b8
  | s4. r8 <e' a,>8 << { \topedf g,8 \toman } \new Voice { \stemDown e'8 } >>
  | r8 f c r c b
  | c4. s4.
  | \grace s8 s8. gis16 a8 r16 b16 b( a) a( gis)
  | gis4( a8 gis4) <gis b>8-_
  | <fis a>8. s s4.
  | gis8. s s4.
  | s2.*2
  | s4. s4 d8
  | d4.( c8) r r
  \bar "|."  
}

ped = \relative c' {
  \global
  
  | a4 a8 gis4 gis8
  | a4 \parenthesize a,8 s4.
  | r8 f'' e r d g
  | c,8. d16 c8 d,4.
  | r8 d'8 c b e e,
  | a4 r8 r4 r8
  | e4 e8 e4 e8
  | f4 \parenthesize f,8 r8 r f'
  | fis4 fis8 fis4 fis8
  | g4( \parenthesize g,8) g'4 g8-_
  | g4. r4 r8
  | g4. r4 r8
  | c4 e,8 f4 g8
  | a4 e8 r4 r8
  | f4 f8 g4 g8
  | c,8.( g'16 e8) c8 r r
  | bes'4 bes8 bes4 bes8
  | a4 bes8 g4.
  | r8 g f e a a
  | d8( d,) r r4 r8
  | c'4 c8 c4 c8
  | b4 c8 a4.
  | r8 a g dis e b'
  | r8 ais ais b a g
  | a4 a8 b4 b8
  | c4 c8 bes4 bes8
  | ais4 ais8 b4 b8
  | e,8. f16 e8 e f e16 d
  | c4 c'8 gis4 gis8
  | a4 \parenthesize a,8 s4.
  | r8 f'' e r d g
  | c,8. d16 c8 d,4.
  | r8 d'8 c gis a e'
  | r8 dis dis( e4) e,8-_
  | e4. r4 r8
  | e4. r4 r8
  | a4 c,8 d4 e8
  | f4 c8 r4 r8
  | d4 d8 e4 e8
  | a4.~a8 r r
  \bar "|."  
}
  
dyn = {
  | s2.\p
  | s4.\< s4.\f
  | s4 s8*2/3 s8*1/3\> s4.
  | s4.\p s4.\f
  | s4. s\decresc
  | s4.\p s
  | s4.\f s
  | s16 s\< s4 s8\! s4\>
  | s4.\! s
  | s4. s
  | s8.\sf s\p s4.
  | s8.\sf s\p s16 s\< s4
  | s4.\f s
  | s4. s4.\pp
  | s4.\f s4.
  | s4.\> s4.\!
  | s4.\p s
  | s4. s\f
  | s4. s4.\decresc
  | s4.\p s
  | s4.\mf s
  | s4. s\f
  | s4. s
  | s4. s\>
  | s4.\mf s
  | s4. s\p
  | s4. s
  | s4.\cresc s
  | s4.\f s
  | s4. s
  | s4 s8\> s4.
  | s4.\p s\f
  | s4. s\decresc
  | s4. s\p
  | s8.\sf s\p s4.
  | s8.\sf s\p s4.\<
  | s4.\f s
  | s4. s\pp
  | s4.\f s
  \once \override DynamicLineSpanner #'Y-extent = #'(0 . 0)
  | s4.\> s\!
}
  
\score {
  \new PianoStaff <<
    \new Staff = "man" <<
      \new Voice = "rh" << \rh \dyn >>
      \new Voice = "lh" \lh
    >>
    \new Staff = "ped" { \clef bass \ped }
  >>
}



