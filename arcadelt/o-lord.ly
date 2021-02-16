\version "2.18.2"

#(set-global-staff-size 20)

\header {
  title = "O Lord, my God, to thee"
  subtitle = "from Psalms 25 & 26"
  composer = "Attributed to: Jacques Arcadelt (c. 1510-1568)"
  copyright = \markup \italic \center-column {
    \line {
      Edition © 2007 by
      \with-url #"http://www.wilbertberendsen.nl/"
      { Wilbert Berendsen (www.wilbertberendsen.nl) }
    }
    \line {
      Based on John Henry Fowler’s edition "CPDL#4513," with a
      few obvious errors corrected.
    }
    \line {
      This music may be freely copied and performed under the
      provisions of the CPDL license
      \with-url #"http://www.cpdl.org/"
      {(www.cpdl.org)}
    }
  }
}

\paper {
  #(set-paper-size "a4")
  line-width = 185 \mm
  bottom-margin = 12 \mm
  ragged-last-bottom = ##f
  system-count = 9
}


global = {
  \time 4/4
  \key f \major
  \partial 4
  #(set-accidental-style 'modern-voice)
}


sop = \relative c'' {
  \global
  a4 | g a f g a2 a4 c c2 bes4 a g2 r4
  a | g( a) f( g) a2 g4( a) bes8( a) g f g2 f r4
  f | c' c d e f2 e4 c c d e f~( f8 e) d( c) d4. d8 c4
  f, c' c | d e f2 e4 c c d e f~( f8 e) d c d2 c |
  r4 f f e d2 cis c d d c4 bes8 a bes2 a4
  a | c2 d4 c bes2 a g4 a bes8( a) g( f) g2 f |
  f4( a) c2 d4( c) bes2 a2 g4 a bes8( a) g( f) g2 f1 f f^\fermata
  \bar "|."
}

alt = \relative c' {
  \global
  f4 | e c d e f2 f4 f f2 f4 f e2 r4
  f | e( c) d( e) f2 e4( f) f d8 d e2 f r4
  f | f f f a a2 a4 e e g g a( g) e g g e
  f f f | f a a2 a4 e e g g a( g) e8 e g2 e
  r4 a a a f2 e e f f f4 f8 f f2 f4
  f | f2 f4 f d2 f c4 c d a c2 c
  c4( f) e2 f d f c4 c d a c2 a1 d c
}

ten = \relative c' {
  \global
  c4 | c a a c c2 c4 a a2 d4 c c2 r4
  c4 | c( a) a( c) c2 c d4 a8 a c2 a r4
  a | a a a cis d2 c4 c c b c c~c c b b | c
  a a a | a cis d2 c4 c c b c c2 c8 c c4( b) c2 |
  r4 c4 c c a2 a g bes bes a4 c8 c d2 c4
  c | a2 bes4 a g2 a c4 f, f f f( e) f2
  a4( f) g2 bes4( a) g2 a c4 f, f f f( e) f1 bes a
}

bas = \relative c {
  \global
  f4 | c f d c f2 f4 f f2 bes,4 f' c2 r4
  f | c( f) d( c) f2 c4( f) bes, d8 d c2 f2 r4
  f | f f d a d2 a'4 a a g c, f( c) a' g g c,
  f f f | d a d2 a'4 a a g c, f( c) a'8 a g2 c, |
  r4 f f a d,2 a c bes bes f'4 f8 f bes,2 f'4
  f | f2 bes,4 f' g2 d e4 f bes, d c2 f,
  f'4( d) c2 bes4( f') g2 d e4 f bes, d c2 f,1
  \arpeggioBracket < bes f' >\arpeggio < f f' >\arpeggio _\fermata
}

% switch associatedVoice now and then to get correct display of
% melismas in different voices
ava = \set associatedVoice = "a"
avs = \set associatedVoice = "s"
avt = \set associatedVoice = "t"

text = \lyricmode {
  O Lord, my God, to thee do I lift up my soul.
  O Lord, __ in __ thee, in __ thee __ have I trust -- ed.
  Let me not be a -- sham -- ed,
  Let not my foes tri -- \ava umph __ o -- ver me.
  \avs O lead me in a plain path;
  cast me not off, nei -- ther \avt for --  sake __ me.
  Teach me thy way, Lord, Lead me, lead me in a plain path.
  O hide not thy face, Hide not \avs thy face __ \avt far __ from __ me.
  Lord __ God, Lord __ God, Hide not \avs thy face __ \avt far __ from __ me.
  A -- men.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = \markup \column {S. A.}
    } <<
      \new Voice = "s" { \voiceOne \sop }
      \new Voice = "a" { \voiceTwo \alt }
    >>
    \new Staff ="2" \with {
      instrumentName = \markup \column {T. B.}
    } <<
      \new Voice = "t" { \voiceOne \clef bass \ten }
      \new Voice = "b" { \voiceTwo \bas }
    >>
    \new Lyrics \with {
      alignAboveContext = "2"
    } \lyricsto "s" \text
  >>
}


midiMusic = <<
  \new Staff = "sopraan" \sop
  \new Staff = "alt" \alt
  \new Staff = "tenor" \ten
  \new Staff = "bas" \bas
>>

\book {
  \bookOutputSuffix "sopraan"
  \score {
    <<
      \midiMusic
      \context Staff = "sopraan" {
        \set Staff.midiMaximumVolume = #1
      }
    >>
    \midi {
      \tempo 4=104
      \context {
        \Staff
        midiMaximumVolume = #.2
      }
    }
  }
}

\book {
  \bookOutputSuffix "alt"
  \score {
    <<
      \midiMusic
      \context Staff = "alt" {
        \set Staff.midiMaximumVolume = #1
      }
    >>
    \midi {
      \tempo 4=104
      \context {
        \Staff
        midiMaximumVolume = #.2
      }
    }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    <<
      \midiMusic
      \context Staff = "tenor" {
        \set Staff.midiMaximumVolume = #1
      }
    >>
    \midi {
      \tempo 4=104
      \context {
        \Staff
        midiMaximumVolume = #.2
      }
    }
  }
}

\book {
  \bookOutputSuffix "bas"
  \score {
    <<
      \midiMusic
      \context Staff = "bas" {
        \set Staff.midiMaximumVolume = #1
      }
    >>
    \midi {
      \tempo 4=104
      \context {
        \Staff
        midiMaximumVolume = #.2
      }
    }
  }
}

