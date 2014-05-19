\version "2.18.0"

\include "merge-rests.ily"

\header {
  title = "Verleih uns Frieden gnädiglich"
  composer = "Felix Mendelssohn Bartholdy (1908-1847)"
  arranger = "arr. 2vl, vc, org: Wilbert Berendsen (*1971)"
  copyright = \markup \center-column {
    \line {
      Copyright © 2014 by Wilbert Berendsen (http://www.wilbertberendsen.nl/mouvement)
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
    with \with-url #"http://lilypond.org/"
    \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
  }
}

global = {
  \time 3/4
  \tempo "Andante" 4=80
  \key es \major
  \compressFullBarRests
  \accidentalStyle modern
  \override Voice.DynamicTextSpanner.dash-period = #-1
}

letters = {
  \skip 2.*15
  \mark \default
  \skip 2.*26
  \mark \default
  \skip 2.*28
  \mark \default
  \skip 2.*21
  \mark \default
}

pedolce = #(make-dynamic-script #{ \markup { \dynamic p \normal-text \italic { e dolce } } #})
pdim = #(make-dynamic-script #{ \markup { \dynamic p \normal-text \italic dim. } #})

vioolEen = \relative {
  \global
  | r8 bes(\p g bes es f
  | g2) f8( g
  | as8\<) es( c es c' des
  | es4.\!) es8( d c
  | bes4.\>) c8( bes as
  | g8\<) bes( g bes es d)
  | c4\cresc( bes as8 g)
  | as(\< bes c d) es4~
  | es8\! g4( f8 c d)
  | es4.( d8 c d)
  | es4.( d8 c d
  | es8) c(\dim des2)~
  | des8 bes( c2)~
  | c8 c(\p f c bes as)
  | as4( g8 f g as)
  | bes4(\pp es4. d8)
  | es8(\< f g as bes\sf g)
  | es8( g4\> f8 c d\!)
  | es4 bes8( c des4)
  | c8 r e( f g4)~
  | g8 f( es bes) c4~
  | c8\p d( es) c~ c( b)
  | c8( g es\< g c d
  | es8)\! g4(\cresc f es8)
  | d8(\! bes f\< bes d es
  | f8)\! as4( g f8)
  | es8( bes g bes\cresc es des)
  | c4. f4\dim es8~
  | es8 des4 c8( bes f')
  | e8(\p\< f g e\> c d)
  | e8(\< f g e\> c as)
  | g8(\dim e)\! r4 r
  | r4 r c'8(\cresc d
  | es8\< f g as bes\sf g)
  | es2 r4
  | r4 r8 d(\p c d
  | es4.) d8( c d
  | es8) c( des2)~
  | des8\dim bes( c2)~
  | c8\p\< c( f c\> bes as)\!
  | as4( g8 f g as)
  | bes4(\pp es4. d8)
  | es8(\< f g as bes\! g)
  | es8( g4 f8 c d)
  | es4 bes8( c des4)
  | c8 r e( f g4)~
  | g8( f es bes) c4~
  | c8( d es) c~ c( b)
  | c8( g es g c d)
  | es8 g4(\cresc f es8)
  | d8( bes f bes d es
  | f8) as4( g f8)
  | es8( bes g\cresc bes es des)
  | c8 des es f4 es8~
  | es8 des4 c8 bes f'
  | e8( f g e c d)
  | e8( f g e c as)
  | g8( e) r4 r
  | r4 r c'8\cresc d
  | es8 f g as bes\sf g
  | es2 r4
  | r4 r8 d\p c d
  | es4. d8 c d
  | es8\< c des2~\>
  | des8\! bes c2~
  | c8\cresc c(-> bes as g f)
  | es8( d' es c bes as')
  | g8( f bes as g) es'~
  % melodie
  | es8 c(\f bes as g f)
  | es4(\mf g f)
  | es2 es4
  | es4( bes') as
  | g2\< g4
  | c2(\! bes4)
  | as4( g) es8\dim f
  | g2.
  | es4\! r r
  | es4( as)\cresc as8( g)
  | f2 r4
  | f4( bes) bes8( as)
  | g2 r4
  | bes,4(\f es des)
  | c4( bes) as8(\dim bes)
  | c2.~\<
  | c2.\>
  | R2.\!
  | r2 c8(\p d
  | es8\< f g as bes g)
  | c,4\! r c8( d
  | es8\< f g as bes\sf g)
  | c,4 r c8(\dim d
  | es8 d es f g f)
  | es8( d es f g es)
  | c'2.~\p
  | c4 bes as
  | g4 f2
  | es4 r8 d,8(\p c d
  | es8) c( des2)~\<
  | des8\! bes( c2)~
  | c8 c(\> f c bes as)
  \override Hairpin.to-barline = ##f
  \override Hairpin.minimum-length = #5
  | << as2.(\pp\< { s2 s4\> } >>
  | g2.)\!\fermata
  \bar "|."
}

vioolTwee = \relative {
  \global
  | R2.
  | r8 es'8(\p bes es as bes
  | c2)\< as8( bes
  | c8\! bes as g) as4~
  | as8(\> g as f d4)
  | es8(\< g es g bes4)
  | as4(\cresc g f8 e)
  | f8(\< g as ces bes des)
  | c8(\! bes as2)~
  | as8 g( as2)~
  | as8 g( as2)~
  | as4. g8(\dim f g
  | as4.) g8( f es
  | d2.)~\p
  | d4 es8( d es f
  | g8\pp as bes4 as)
  | g8(\< as bes c des4)\sf
  | c4(\> bes as)\!
  | g8( f g as bes g)
  | es8( c' bes as g c)~
  | c8( d es4) c,8( d)
  | es8(\p f g c d4)
  | c8( es, c\< es g b
  | c4.)\! f8(\cresc bes,4)~
  | bes8 f( d\< f bes c)
  | d8(\! c bes2)~
  | bes8( g es) es(\cresc f g)
  | as8( bes c4) bes(\dim
  | as4 g8 as f4)
  | g8(\p\< as bes4 as)\>
  | g8(\< as bes4\> as8 f
  | e8\dim c)\! r4 r
  | r4 r as'8(\cresc ces
  | bes8 as bes c des4)\sf
  | des4( c) r
  | r8 g(\p as2)~
  | as8 g( as2)~
  | as4. g8 f( g
  | as4.) g8(\dim f es
  | d2.)~\p
  | d4 es8( d es f)
  | g8(\pp as bes4 as)
  | g8(\< as bes c des4)\sf
  | c4(\> bes as)\!
  | g8( f g as bes g)
  | es8( c' bes as g c)~
  | c8( d es4) r8 d(
  | es8 f g es d4)
  | c8( es, c es g b)
  | c4. f8(\cresc bes,4)~
  | bes8( f d f bes c)
  | d8( c bes2)~
  | bes8( g es\cresc g as bes)
  | c8( bes c4 bes)
  | as4( g8 as bes4)
  | g8( as bes4 as)
  | g8( as bes4 as8 f
  | e8 c) r4 r
  | r4 r as'8(\cresc ces
  | bes8 as bes c des4)\sf
  | des4( c) r
  | r8 g(\p as2)
  | r8 g( as2)~
  | as4.\< g8(\> f g
  | as4.)\! g8( f es
  | d4.)\cresc d8( es d')
  | es8( as, g as bes) f'(
  | es8 d es4.) as8(
  | es8) as(\f bes d, es bes)
  | bes4(\mf es) es8( d)
  | es2 des4
  | c4( es4. d8)
  | es2\< g4
  | as2(\! f4)
  | f4( es) es~(\dim
  | es4 d2)
  | es4 r r
  | c4 c8(\cresc d) es4
  | d2 r4
  | d4( es) f
  | es2 r4
  | es,4(\f f) g
  | as4( g) f\dim
  | e8(\< f g e\> c d)
  | e8(\< f g e\> c d)
  | e8(\dim c) r4 r
  | r4 r as'8(\p ces
  | bes8\< as bes c des4)\!
  | c4 r as8( ces
  | bes8\< as bes c des4)\sf
  | c4 r c8(\dim b
  | c8 b c d es d)
  | c8( b c d es c)
  | es2.~\p
  | es4 d c
  | bes4 r8 d,8(\p c d
  | es4.) d8( c d
  | es8) c( des2)~\<
  | des8\! bes( c2)~
  | c8 c(\> f c bes as)
  \override Hairpin.to-barline = ##f
  \override Hairpin.minimum-length = #5
  | << as2.(\pp\< { s2 s4\> } >>
  | g2.)\!\fermata
  \bar "|."
}

cello = \relative {
  \global
  | es,2.~\p
  | es2.~
  | es2.~
  | es2.~
  | es2.~
  | es4 r g
  | as4\cresc bes c
  | f,2\< g4
  | as2\! r4
  | bes2.~
  | bes2.
  | es,2.~\dim
  | es2.~
  | es2.~\p\dim
  | es4\! r r
  | r4 r bes'\p
  | c2 g4
  | as4 f bes
  | es,2 es4
  | as4( g8 f e4)
  | f4 g as
  | g2.\p
  | c4 r r
  | c4.(\cresc d8 es4)
  | bes2\! r4
  | bes4.( c8 d4)
  | es4. des8(\cresc c bes
  | as4) r4 r
  | R2.
  | c2(\p f4)
  | c2( f,4)
  | c'8( e c g c,4)
  | f2.
  | g2\cresc es4
  | as2 f4\p
  | bes2.~
  | bes2.
  | es,2.~\dim
  | es2.~
  | es2.~
  | es4 r r
  | r4 r bes'
  | c2 g4
  | as4 f bes
  | es,2 es4
  | as4( g8 f e4)
  | f4 g as
  | g2 g'4
  | c,2 r4
  | c4.(\cresc d8 es4)
  | bes2\! r4
  | bes4.( c8 d4)
  | es4. des8(\cresc c bes)
  | as4\! r r
  | r4 r bes\p
  | c2( f4)
  | c2 f,4
  | c'8( e c g c,4)
  | f2.\p
  | g2.
  | as2 f4
  | bes2.~
  | bes2.
  | es,2.~
  | es2.~
  | es2.~\cresc
  | es2.~
  | es4. c'8(\f bes as)
  | g8( as g f es4)~

  | es2 bes'4\mf
  | c2 g4
  | as4( g8 as) bes4
  | es,2\< es'4\!
  | as,2 bes4
  | d4( es) as\dim
  | g2.
  | c,8 g'( es g c d)
  | es4 f,,(\cresc g8 as)
  | bes8 f'( d f bes c)
  | d4 c, d
  | es8 bes'( g bes es f)
  | g4 c,,4(\f es)
  | as4( es) f\dim
  | g8(\< as bes4\> as)
  | g8(\< as bes4\> as8 f)
  | g8(\dim e c g c,4)
  | f2.\p
  | g2 es4
  | f2.\cresc
  | g2.
  | as4(\> g) f\!
  | c'2.~
  | c4 r c\p
  | as2.~
  | as2.\dim
  | bes8 g'8(\p as2)
  | r8 g8( as2)~
  | as4. g8( f g
  | as4.) g8( f es
  | d2.)\>
  \override Hairpin.to-barline = ##f
  \override Hairpin.minimum-length = #5
  | << d2.(\pp\< { s2 s4 \> } >>
  | es2.)\!\fermata
  \bar "|."
}


orgRechts = \relative {
  \global
  | R2.*2
  | <c' es>2.(
  | <es as>2.
  | <f as>2.
  | <es g>4) r <es bes'>(
  | <<
    { f4 g as8 g }
    \\
    { f2~ f8 e }
  >>
  | <f as>2 <es bes'>4
  | <es as>2) r4
  | R2.*3
  | as2.~
  | as4. as8 g f
  | f4 es r
  | R2.*8
  | es4 as4. g8
  | f4. d8 f f
  | bes4 r8 g4 f8
  | es2 des4
  | c4 r r
  | R2.*3
  | r4 r e4
  | f2.
  | es2.~
  | es2 r4
  | bes2.
  | R2.
  | <es~ bes'>2.\pp
  | <es as~>2.
  | <d f as>2.~
  | <d f as>4( <es g>4) r
  | es4(\p g f
  | es2 es4)
  | es4( bes'4 as
  | g2) g4(
  | c2 bes4
  | as4 g es8 f
  | g2.
  | es4) r r
  | es4( as as8 g
  | f2) r4
  | f4( bes bes8 as
  | g2) r4
  | c4( as g
  | f es des
  | c2.)~
  | c2 r4
  | r4 r g'(
  | as4 g f)
  | bes2.~
  | bes2 as4(
  | g4 f2
  | es4) r r
  | R2.
  | <es as>2.(\pp
  | <f as>2.
  | <es g>2.)
  | r4 <es es'>2~\mf->
  | <es es'>4 r8 <d as'> <es g> <d f>
  <<
    {
      \voiceOne
      | es4( g f
      | es2 es4
      | es4 bes' as
      | g2) g4(
      | c2 bes4
      | as4 g es8 f
      | g2.
      | es4) r r
      | es4( as as8 g
      | f2) r4
      | f4( bes bes8 as
      | g2) r4
      | bes4( es des
      | c4 bes as8 bes
      | c2.
      | c,2) r4
      | R2.*3
      | r4 r c'8 d
      | es2 des4
      | c4 bes as
      | g2.~
      | g4 r g
      | c2.~
      | c4 bes as
      | g4 f2
      | es2
    }
    \new Voice
    {
      \voiceTwo
      | bes4 es es8 d
      | es2 des4
      | c4 es4. d8
      | es2 g4
      | as2 f4
      | f4 es es
      | es4 d2
      | es4 r r
      | es4 f es
      | d2 r4
      | d4 es f
      | bes,2 r4
      | es4 f g
      | as4 g f
      | e8 f g4 f
      | e2 r4
      | R2.*2
      | r4 r g
      | as4 g f
      | bes2.
      | es,2 f4
      | g2.~
      | g4 r c,
      | c2.
      | es2 as4
      | g4 f2
      | es2
    }
  >> \oneVoice r4
  | R2.*5
  \bar "|."
}

orgLinks = \relative {
  \global
  | <g bes>2.(\pp
  | <bes es>2.)
  | R2.*13
  | es,4(\mp g f
  | es2 es4)
  | es4( bes' as
  | g2) g4(
  | c2 bes4
  | as4 g es8 f
  | g2.
  | es4) r8 c es g
  | c4 r r
  | d2 r4
  | f,4 bes4. as8
  | g4. g8( as bes
  | c8 bes as4 g
  | f4 es des
  | c2.)~
  | c2 r4
  | r4 r g'(
  | as4 g f)
  | bes2.~
  | bes2 as4
  | g4 f2
  | es2 r4
  | R2.*4
  | r2 bes4(
  | g'2.
  | as4 bes2
  | bes2.
  | as4) r g(
  | f4 g as
  | g2) r4
  | c4( g es8 d
  | c2) r4
  | bes'4( f d8 c
  | bes2) r4
  | bes'4( g es
  | as2) r4
  | R2.
  | c,4( e f
  | g4 c4. c8
  | c2) <c, e>4(
  | f4 <g bes>) <f as>(
  | g4 f es
  | es2) r4
  | r4 r as(
  | g4 f2
  | es2) r4
  | R2.*5
  | g4 bes bes
  | g2 bes4
  | es,4 g f
  | es2 es'4
  | es2 d4
  | bes2 c4
  | c2 b4
  | c4 r r
  | g4 as bes8 c
  | d2 r4
  | bes8 as g4 f
  | g2 r4
  | g4 as bes
  | c8 des es4 as,
  | g8 as bes4 as
  | g4 c4. c8
  | c2 <c, g'>4
  | as'4 g << { c8 d } \\ f,4 >>
  | <bes es>2 des4
  | c4 bes as
  | g2.
  | c2 c8 d
  | es2.~
  | es4 r es
  | es2.~
  | es4 d c
  | bes2 as4
  | g4 f2
  | es2 r4
  | <es as~>2.\pp
  | <d f as>2.
  | <d f as>2.(
  | <es g>2.)\fermata
  \bar "|."
}

orgPedaal = \relative {
  \global
  | es,2.~\p
  | es2.~
  | es2.~
  | es2.~
  | es2.~
  | es4 r g
  | as4 bes c
  | f,2 g4
  | as2 r4
  | bes2.~
  | bes2.
  | es,2.~
  | es2.~
  | es2.~
  | es4 r r
  | r4 r bes'
  | c2 g4
  | as4 f bes
  | es,2 es4
  | as4( g8 f e4)
  | f4 g as
  | g2.
  | c4 r r
  | c4.( d8 es4)
  | bes2 r4
  | bes4.( c8 d4)
  | es4. des8( c bes
  | as4) r4 r
  | R2.
  | c2( f4)
  | c2( f,4)
  | c'4 r r
  | f,2.
  | g2 es4
  | as2 f4
  | bes2.~
  | bes2.
  | es,2.~
  | es2.~
  | es2.~
  | es4 r r
  | r4 r bes'
  | c2 g4
  | as4 f bes
  | es,2 es4
  | as4( g8 f e4)
  | f4 g as
  | g2 g'4
  | c,2 r4
  | c4.( d8 es4)
  | bes2 r4
  | bes4.( c8 d4)
  | es4. des8( c bes)
  | as4 r r
  | r4 r bes
  | c2( f4)
  | c2 f,4
  | c'4 r r
  | f,2.
  | g2.
  | as2 f4
  | bes2.~
  | bes2.
  | es,2.~
  | es2.~
  | es2.~
  | es2.~
  | es4. c'8 bes as
  | g8 as g f es4~

  | es2 bes'4
  | c2 g4
  | as4( g8 as) bes4
  | es,2 es'4
  | as,2 bes4
  | d4( es) as
  | g2.
  | c,4 r r
  | c4 f,( g8 as)
  | bes2 r4
  | bes4 c d
  | es2 r4
  | es8( des) c4( es)
  | as4( es) f
  | c2 f4
  | c2 f,4
  | c'4 r2
  | f,2.
  | g2 es4
  | f2.
  | g2.
  | as4( g) f
  | c'2.~
  | c4 r c
  | as2.~
  | as2.
  | bes2.~
  | bes2.
  | es,2.~
  | es2.~
  | es2.~
  | es2.~
  | es2.\fermata
  \bar "|."
}

sopraan = \relative {
  \global
  | R2.*69
  | es'4\mf g f
  | es2 es4
  | es4( bes') as
  | g2\< g4\!
  | c2 bes4
  | as4( g) es8(\dim f)
  | g2.\p
  | es4 r r
  | es4\cresc as as8( g)
  | f2 r4
  | f4 bes bes8( as)
  | g2 r4
  | bes4\f\< es des\>
  | c4( bes)\! as8( bes)
  | c2.
  | c,2 r4
  | R2.*3
  | r4 r c'8(\cresc d)
  | es2( des4)
  | c4\> bes as\!
  | g2.~
  | g4 r g\p
  | c2.(~
  | c4\dim bes) as
  | g4( f2)
  | es2\! r4
  | R2.*4
  | R2.-\fermataMarkup
  \bar "|."

}

alt = \relative {
  \global
  | R2.*41
  \once \override DynamicText #'self-alignment-X = #LEFT
  | es'4\pedolce g f
  | es2 es4
  | es4( bes') as
  | g2 g4
  | c2 bes4
  | as4( g) es8( f)
  | g2.
  | es2 r4
  | es4 as4 as8( g)
  | f2 r4
  | f4 bes bes8( as)
  | g2 r4
  | c4 as g
  | f4( es) des
  | c2.
  | c2 r4
  | r4 r g'
  | as4 g\cresc f
  | bes2.~
  | bes2 as4\dim
  | g4( f2)
  | es4\! r r
  | R2.*6
  | bes4\mf es es8( d)
  | es2 des4
  | c4( es4.) d8
  | es2\< g4\!
  | as2 f4
  | f4( es) es\dim
  | es4(\p d2)
  | es4 r r
  | es4\cresc f es
  | d2 r4
  | d4 es f
  | bes,2 r4
  | es4\f\< f g
  | as4(\> g) f\!
  | e8( f g4 f)
  | e2 r4
  | R2.*2
  | r4 r g\p
  | as4\cresc g f
  | bes2.
  | es,2\> f4\!
  | g2.~
  | g4 r c,\p
  | c2.
  | es2\dim as4
  | g4( f2)
  | es2\! r4
  | R2.*4
  | R2.-\fermataMarkup
  \bar "|."
}

tenor = \relative {
  \global
  | R2.*69
  | g4\mf bes bes
  | g2 bes4
  | es,4( g) f
  | es2\< es'4\!
  | es2 d4
  | bes2 c4\dim
  | c2(\p b4)
  | c4 r r
  | g4\cresc as bes8( c)
  | d2 r4
  | bes8( as) g4 f
  | g2 r4
  | g4\f\< as bes
  | c8(\> des es4) as,\!
  | g8( as) bes4 as
  | g4( c4.)-> c8\>
  | c2 c,4\!
  | r4 r c'8(\p d)
  | es2( des4)
  | c4\cresc bes as
  | g2.
  | c2\> c8( d)\!
  | es2.~
  | es4 r es\p
  | es2.(~
  | es4\dim d) c
  | bes2 as4
  | g4( f2)
  | es2\! r4
  | R2.*3
  | R2.-\fermataMarkup
  \bar "|."
}

bas = \relative {
  \global
  | R2.*15
  \once \override DynamicText #'self-alignment-X = #LEFT
  | es4\pedolce g f
  | es2 es4
  | es4( bes') as
  | g2 g4
  | c2 bes4
  | as4( g) es8( f)
  | g2.
  | es2 r4
  | es4 as4 as8( g)
  | f2 r4
  | f4 bes bes8( as)
  | g2 r4
  | c4 as g
  | f4( es) des
  | c2.
  | c2 r4
  | r4 r g'
  | as4 g f
  | bes2.~\cresc
  | bes2 as4\p
  | g4( f2)
  | es4 r r
  | R2.*4
  | r4 r bes\p
  | g'2.
  | as4( bes2)
  | bes2.
  | as4 r g
  | f4( g) as
  | g2 r4
  | c4 g es8( d)
  | c2 r4
  | bes'4 f d8( c)
  | bes2 r4
  | bes'4 g es
  | as2 r4
  | R2.
  | c,4 e f\<
  | g4( c4.)\! c8
  | c2 c,4
  | r4 r f\cresc
  | g4 f es
  | es2 r4
  | r4 r \once \override DynamicText #'self-alignment-X = #LEFT as\pdim
  | g4( f2)
  | es2 r4
  | R2.*5
  | es4\mf es bes
  | c2 g4
  | as4( g8 as) bes4
  | es2\< es4\!
  | as,2 bes4
  | d4( es) as\dim
  | g2.\p
  | c,4 r r
  | c4\cresc f g8( as)
  | bes2 r4
  | bes,4 c d
  | es2 r4
  | es8(\f\< des) c4 es
  | as4(\> es) f\!
  | c2.
  | c2 r4
  | r4 r g'4\p
  | as4\< g f\!
  | bes2.
  | r4 r f
  | g2 g4
  | as4\> g f\!
  | c'2.~
  | c4 r c,\p
  | as2.~
  | as2\dim as4
  | bes2 as'4
  | g4( f2)
  | es2\! r4
  | R2.*3
  | R2.-\fermataMarkup
  \bar "|."
}

sopraanTextDE = \lyricmode {
  Ver -- leih uns Frie -- den gnä -- dig -- lich,
  Herr Gott, zu un -- sern Zei -- ten.
  Es ist doch ja kein an -- drer nicht,
  der für uns könn -- te strei -- ten,
  denn du, __ du un -- ser Gott, __ denn du __ al -- lei -- ne.


}

altTextDE = \lyricmode {
  Ver -- leih uns Frie -- den gnä -- dig -- lich,
  Herr Gott, zu un -- sern Zei -- ten.
  Es ist doch ja kein an -- drer nicht,
  der für uns könn -- te strei -- ten,
  denn du, un -- ser Gott, __ al -- lei -- ne.

  Ver -- leih uns Frie -- den gnä -- dig -- lich,
  Herr Gott, zu un -- sern Zei -- ten.
  Es ist doch ja kein an -- drer nicht,
  der für uns könn -- te strei -- ten,
  denn du, un -- ser Gott, un -- ser Gott, __ denn du, du al -- lei -- ne.

}

tenorTextDE = \lyricmode {
  Ver -- leih uns Frie -- den gnä -- dig -- lich,
  Herr Gott, zu un -- sern Zei -- ten.
  Es ist doch ja kein an -- drer nicht,
  der für uns könn -- te, der für uns könn -- te strei -- ten,
  denn du, __ du un -- ser Gott, un -- ser Gott, __
  denn du, __ denn du al -- lei -- ne.

}

basTextDE = \lyricmode {
  Ver -- leih uns Frie -- den gnä -- dig -- lich,
  Herr Gott, zu un -- sern Zei -- ten.
  Es ist doch ja kein an -- drer nicht,
  der für uns könn -- te strei -- ten,
  denn du, un -- ser Gott, __ al -- lei -- ne.

  Ver -- leih uns __ Frie -- den
  Herr Gott, Herr Gott!
  Es ist doch ja kein an -- drer nicht,
  kein an -- drer nicht,
  der für uns könn -- te strei -- ten,
  denn du, un -- ser Gott, al -- lei -- ne.

  Ver -- leih uns Frie -- den gnä -- dig -- lich,
  Herr Gott, zu un -- sern Zei -- ten.
  Es ist doch ja kein an -- drer nicht,
  der für uns könn -- te strei -- ten,
  denn du, un -- ser Gott,
  denn du, denn du, un -- ser Gott, __
  denn du, __ denn du al -- lei -- ne.
}

\book {
  \paper {
    #(layout-set-staff-size 16)
    line-width = 185\mm
    systems-per-page = 2
    page-count = 6
  }
  \score {
    <<
      \new GrandStaff \with {
        fontSize = #-2
        \override StaffSymbol #'staff-space = #(magstep -2)
      } <<
        \new Staff \with {
          instrumentName = "Violino I"
        } \vioolEen
        \new Staff \with {
          instrumentName = "Violino II"
        } \vioolTwee
      >>
      \new ChoirStaff <<
        \new Staff \with {
          instrumentName = "Soprano"
          shortInstrumentName = "S"
        } <<
          \letters
          \new Voice = "sopraan" <<
            \dynamicUp
            \sopraan
          >>
        >>
        \new Lyrics \lyricsto "sopraan" { \sopraanTextDE }
        \new Staff \with {
          instrumentName = "Alto"
          shortInstrumentName = "A"
        } <<
          \new Voice = "alt" <<
            \dynamicUp
            \alt
          >>
        >>
        \new Lyrics \lyricsto "alt" { \altTextDE }
        \new Staff \with {
          instrumentName = "Tenor"
          shortInstrumentName = "T"
        } <<
          \clef "treble_8"
          \new Voice = "tenor" <<
            \dynamicUp
            \tenor
          >>
        >>
        \new Lyrics \lyricsto "tenor" { \tenorTextDE }
        \new Staff \with {
          instrumentName = "Bass"
          shortInstrumentName = "B"
        } <<
          \clef bass
          \dynamicUp
          \new Voice = "bas" <<
            \dynamicUp
            \bas
          >>
        >>
        \new Lyrics \lyricsto "bas" { \basTextDE }
      >>
      \new Staff \with {
        instrumentName = "Violoncello"
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
      } <<
        \clef bass
        \cello
      >>
      \new PianoStaff \with {
        instrumentName = "Organ"
        shortInstrumentName = "O."
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
        \override SystemStartBar.stencil = #empty-stencil
        systemStartDelimiterHierarchy = #'
        (SystemStartBar (SystemStartBrace a b) c)
      } <<
        \new Staff <<
          \mergeRestsOn
          \orgRechts
        >>
        \new Staff <<
          \clef bass
          \orgLinks
        >>
        \new Staff <<
          \clef bass
          \orgPedaal
        >>
      >>

    >>
    \layout{
      \context {
        \ChoirStaff
        \RemoveEmptyStaves
      }
    }
    \midi {
      \tempo 4=104
    }

  }
}

\book {
  \bookOutputSuffix "stringparts"
  \paper {
    page-count = 2
    ragged-last-bottom = ##f
  }

  \bookpart {
    \header {
      instrument = "Violino I"
    }
    \score {
      \new Staff <<
        \vioolEen
        \letters
      >>
      \layout {
        system-count = 17
      }
    }
  }

  \bookpart {
    \header {
      instrument = "Violino II"
    }
    \score {
      \new Staff <<
        \vioolTwee
        \letters
      >>
      \layout {
        system-count = 17
      }
    }
  }

  \bookpart {
    \header {
      instrument = "Violoncello"
    }
    \paper {
      page-count = 1
      ragged-last-bottom = ##f
    }
    \score {
      \new Staff <<
        \clef bass
        \cello
        \letters
      >>
    }
  }
}

\book {
  \bookOutputSuffix "organpart"
  \paper {
    line-width = 185\mm
    page-count = 2
    ragged-last-bottom = ##f
  }
  \bookpart {
    \header {
      instrument = "Organ"
    }
    \score {
      \new PianoStaff \with {
        \override SystemStartBar.stencil = #empty-stencil
        systemStartDelimiterHierarchy = #'
        (SystemStartBar (SystemStartBrace a b) c)
      } <<
        \new Staff <<
          \letters
          \mergeRestsOn
          \orgRechts
        >>
        \new Staff <<
          \clef bass
          \orgLinks
        >>
        \new Staff <<
          \clef bass
          \orgPedaal
        >>
      >>
    }
  }
}

\book {
  \bookOutputSuffix "vocalscore"
  \paper {
    #(layout-set-staff-size 18)
    line-width = 185\mm
    page-count = 2
    ragged-last-bottom = ##f
  }
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \letters
        { \skip2.*69 \pageBreak }
        \new Voice = "sopraan" <<
          \dynamicUp
          \sopraan
        >>
      >>
      \new Lyrics \lyricsto "sopraan" { \sopraanTextDE }
      \new Staff \with {
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \new Voice = "alt" <<
          \dynamicUp
          \alt
        >>
      >>
      \new Lyrics \lyricsto "alt" { \altTextDE }
      \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \clef "treble_8"
        \new Voice = "tenor" <<
          \dynamicUp
          \tenor
        >>
      >>
      \new Lyrics \lyricsto "tenor" { \tenorTextDE }
      \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \clef bass
        \dynamicUp
        \new Voice = "bas" <<
          \dynamicUp
          \bas
        >>
      >>
      \new Lyrics \lyricsto "bas" { \basTextDE }
    >>
    \layout {
      \context {
        \ChoirStaff
        \RemoveEmptyStaves
      }
    }
    \header {
      instrument = "Vocal Score"
    }
  }
}
