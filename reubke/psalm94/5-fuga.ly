\version "2.12.0"

\include "definitions.ly"

global = \key c \minor
  

fugaMusic = {
  <<
    \context Staff = "rh" \context Voice = "rh" \relative c'' {
      \oneVoice
      \global
      R1*7 |
      r4 g-. fis4.. d16 |
      f2.( e8. c16) |
      es8[-| r16 a,]-| a2-^ bes4 |
      fis( g a bes |
      b c d es) |
      bes'2( cis,4.. d16) |
      es2( \clef bass \stemUp \mergeDifferentlyDottedOn fis,4. \stemNeutral g16 a) |
      bes( a g fis g es d cis d g bes c d b as g) |
      es'( d c b c as g fis g c es f \clef treble g e des c) |
      as'4~ as16( f es d g4)~ g16( es d c |
      f4)~ f16( d c b es4)~ es16( c bes a) |
      \change Staff = "lh" \voiceOne
      \once \override Slur #'positions = #'(-8 . -8)
      as( f r8 c'16 as r8 \change Staff = "rh" es'16 c \oneVoice r8 \voiceOne as'16 f r8 |
      c'16 as r8 as16 f r8 c'16 as r8 es'16 c r8) |
      as'16( f d g f c b d es bes a c d as g b |
      c g f bes as es d g as es d g f c bes es) |
    }
    \context Staff = "lh" \context Voice = "lh" \relative c' {
      \oneVoice
      \global
      r4^\markup { \dynamic f M. II. }
      c4-. b4..( g16 |
      bes2. a8. f16) |
      as8[-| r16 d,]-| d2(-^ es4) |
      b( c d es |
      e f g as) |
      es'2( fis,4.. g16) |
      as2( b,4. c16 d) |
      es4~ es16( f g as a gis a b) c4~ |
      c b16 as f es d f g as bes4~ |
      bes a16( fis es d es c a fis g a bes b) |
      c4~ c16( bes c d) es4~ es16( d es e) |
      f4~ f16( es f g) as4~ as16( g b c) |
      des( c bes a bes as g fis g f e es d g a bes) |
      c_( bes a gis a g fis e \rh fis \lh es d cis \stemNeutral d c bes a) |
      g4 r8. a16 bes4 r8. b16 |
      c4 r8. d16 es4 r8. e16 |
      f( g as bes b4) es,16( f g as a4) |
      d,16( es f g as4) c,16( d es f fis4) |
      \voiceTwo
      b,8( d16 g r8 g16 b \oneVoice r8 b16 d r8 \change Staff = "rh" \voiceTwo d16 g |
      r8 g16 b r8 d,16 g r8 g16 b r8 b16 d) |
      \override Script #'avoid-slur = #'around
      r8. bes16[( a8)-| r16 as]( g8)[-| r16 fis( f8)-| r16 d]( |
      es8)[-| b16\rest d( c8)-| \change Staff = "lh" \oneVoice f,16\rest b]( c8)[-| r16 bes( as8)-| r16 g16]( |
      \revert Script #'avoid-slur
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      \global
      R1*22
    }
  >>
  % bar ?? - ??
  <<
    \context Staff = "rh" <<
      \context Voice = "rh" \relative c'' {
        
      }
      
    >>
    \context Staff = "lh" \context Voice = "lh" \relative c {
       f2)~ f16 g b es d b g f |
    }
    \context Staff = "ped" \context Voice = "ped" \relative c {
      
    }
  >>
  
  
  
  
  
}


%%master: psalm94.ly
