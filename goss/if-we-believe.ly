\version "2.11.33"

#(set-global-staff-size 18)

\header {
	title = "If we believe"
	composer = "John Goss (1800-1880)"
	poet = "1 Thessalonians 4: 14, 18"
	copyright = \markup \center-align {
 	\line { Typeset by
		\with-url #"http://www.wilbertberendsen.nl/"
		{Wilbert Berendsen (http://www.wilbertberendsen.nl/)} }
	\line { Copyright © 2007
		\with-url #"http://www.cpdl.org/"
		{The Choral Public Domain Library (http://www.cpdl.org/)} }
        \line {This edition may be freely distributed, edited, performed or recorded.}
	}
 }

\paper {
	#(set-paper-size "a4")
	bottom-margin = 12 \mm
	line-width = 185 \mm
	ragged-last-bottom = ##f
	system-count = 14
	between-system-padding = #0
}

     
\layout {
	\context {
		% a little smaller so lyrics
		% can be closer to the staff
		\Staff
 		\override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 4)
	}
	\context {
		\Lyrics
 		\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 0)
	}
	\context {
		\Voice
		\override DynamicTextSpanner #'dash-period = #-1.0

	}
}

tc = {
\setTextCresc
}

global = {
\key d \minor
\time 4/2
\dynamicUp
}


sop = \relative c'' {
R1*4/2*7
r2 c\mf f,2. g4 |
a2 a d \tc d\< |
cis cis d d |
e1 r2 f\p |
bes, a g4 g f2 |
d'1. c2 |
bes a1 g2 |
fis bes a1 |
g2 g a \tc b\< |
c c1 c2\f |
<<
{ \voiceOne f\breve~ | f2 f f1~ | f2 c1 bes2 | a }
\new Voice="sop2" { \voiceTwo f'1. c2~ | c bes a( g) | a1 g | f2 }
>>
\oneVoice
d'2.( c4 bes a) |
g2( f4 bes) a2 g |
f a\mf d,2. e4 |
f2 f bes bes |
a a c c |
bes4 bes a g es'1~ |
es2 d cis \tc cis\< |
d2. d4 e1 |
f e2( d |
cis) b cis1 |
\time 6/2
\key d \major
r2 d\p g, fis e4 e d2 |
\time 4/2
b'1. a2 |
g fis1 e2 |
dis g fis1 | 
e2 \tc e\< fis gis | 
a a1 a2\f |
d\breve~ |
d2 g fis( e) |
fis1. e2 |
d1(~d4 cis) b( a) |
g2( fis4 e) fis2 e |
a1~a4 d, g2 |
fis1 e |
\time 3/2
d1 d4\p d |
bes'2. bes4 bes bes |
bes2 a g~ |
g fis( e) |
fis1.\fermata \bar"|."
}

alt = \relative c'' {
R1*4/2*5
r2 a\mf d,2. e4 |
f2 f bes bes |
a4 g f e d( c) bes2 |
a4 c f2. e4 \tc f4\< d |
e2 a f g |
g1 r2 f\p |
g f es es4 es |
d2 d g1~ |
g2 fis1 d2 |
c bes es( d4 c) |
b2 c \tc f1~(\< |
f2 e) d c |
c1 r1 |
r2 f,\f f'1 |
f~( f4 e) d( e) |
f1~( f4 e) d( c) |
bes2( a4 bes) c( f2) e4 |
f2 r r bes,\mf |
a4 a4 d1 f2 |
c2. d4 es2 es |
d d g1~ |
g2 f e \tc e\< |
f2. f4 e2( a~ |
a) gis a1~ |
a\breve |
\time 6/2
\key d \major
r2 fis\p e d c c4 c |
\time 4/2
b2 b e1~ |
e2 dis1 b2 |
a g c( b4 a) |
gis2 a\f d1~( |
d2 cis) b cis |
d d( e fis) |
g1( a2 b) |
a1 g |
fis2 b~( b4 a g fis) |
e2 d1 cis2 |
d2. a4 b2.( e4) |
d1. cis2 |
\time 3/2
d1 d4\p d |
d2. d4 d d |
d2 d d~ |
d d1 |
d1.\fermata
}

ten = \relative c' {
R1*4/2*2
r1 r2 d\mf |
a2. b4 c2 c |
f f e4 d c b |
c2 cis d4( c) bes2 |
a4 f bes c d2 d2 |
c4( bes) a2 bes4 c d e |
f2 a, a4 g \tc a\< b |
cis4( d) e2 d bes |
bes1 r2 a\p |
c c bes4 g c2 |
bes1. c2 |
d2 d4 d c2( bes |
a g1) fis2 |
g4( f e1 \tc d2)\< |
c1 r1 |
r2 f\f es'1~ |
es2 d c( b) |
c\breve |
r4 f, g( a bes c d2~ |
d4 e f2) c bes |
a r r1 |
r2 a\mf d,2. e4 |
f( g) a( f) g2. a4 |
bes d c bes bes1~ |
bes2 r r \tc e\< |
a,2.( b4 cis1) |
d cis2( f |
e) d e1 |
\time 6/2
\key d \major
r2 d\p a a g4 e a2 |
g1. a2 |
b b4 b a2( g |
fis) e4( e') e2( dis |
e4 d \tc cis1\< b2) |
a a\f g'1~( |
g2 fis) e d |
d d d1 |
d~( d4 cis) b( cis) |
d d, e( fis g a b2~ |
b4 cis d b) a1~( |
a4 g fis e d) d e2 |
fis4( g a2~a4 e) g2 |
\time 3/2
fis1 d4\p d |
g2. g4 g g |
<<{\voiceOne g2 c bes~} \new Voice {\voiceTwo g2 fis bes} >>
\oneVoice bes a( g) |
a1.\fermata
}

bas = \relative c' {
r1 r2 a\mf
d,2. e4 f2 f |
bes bes a4 g f e |
f2 d e4 e a2~ |
a4 c b a gis2. gis4 |
a bes a g fis2 g |
d2. c4 bes( c) d( e) |
f2 r r bes, |
f'2. e4 d2 \tc d\< |
a' a bes g |
c,1 r2 d\p |
e f g4 g a2 |
bes1 es, |
d2 d d1~ |
d2 d d1 |
g,2 r r1 |
r2 c\f bes'1~( |
bes2 a) g f |
bes,2. bes4 c2( d) |
c1. c2 |
d bes1 bes2 |
c( d) c1 |
f2 r r g,\mf |
d'2. c4 bes2 bes |
f' f c4 d es c |
g'1~ g4 g f es |
bes'1~ bes4 bes \tc a\< g |
f f e d a'1~ |
a\breve~ |
a2 <a a,> <a a,>1 |
\time 6/2
\key d \major
r2 b,\p cis d e4 e fis2 |
\time 4/2
g1 c, |
b2 b b1~ |
b2 b b1 |
e2 r r1 |
R1*2 |
r2 d\f c'1~ |
c2 b a( gis) |
a1 a, |
b2 g1 g2 |
a( b4 gis a2) a'4( g) |
fis( e) d( cis) b2.( g4) |
a1. a2 |
\time 3/2
d1 d4\p d |
g,2. g4 g g |
d'2 d g |
d1. |
d\fermata
}

sopTextII = \lyricmode { God, bring, __ will God __ bring with him, }

sopText = \lyricmode {
If we be -- lieve that Je -- sus died and rose a -- gain,
ev'n so them al -- so which sleep in Je -- sus, which sleep in Je -- sus,
will God bring with him, will God, __ will God, __ bring with him,
will __ God __ bring with him.
If we be -- lieve that Je -- sus died,
if we be -- lieve that Je -- sus died, __
that Je -- sus died and rose, and rose __ a -- gain,
ev'n so them al -- so which sleep in Je -- sus,
which sleep in Je -- sus,
will God bring with him, will God, __ will God __ bring with him, __
will God __ bring with him, __
will God bring with him.
Where -- fore com -- fort one a -- no -- ther with __ these __ words.
}

altText = \lyricmode {
If we be -- lieve that Je -- sus died and rose a -- gain,
If we be -- lieve that Je -- sus died and rose a -- gain,
ev'n so them al -- so which sleep in Je -- sus, which sleep in Je -- sus,
will God __ bring with him,
will God bring __ with him, __
will God __ bring with him.
If we be -- lieve, if we be -- lieve that Je -- sus died, __
that Je -- sus died and rose __ a -- gain, __
ev'n so them al -- so which sleep in Je -- sus,
which sleep in Je -- sus,
will God __ bring with him, will __ God __ bring with him,
will __ God bring with him, will God __ bring with him.
Where -- fore com -- fort one a -- no -- ther with __ these words.
}

tenText = \lyricmode {
If we be -- lieve that Je -- sus died and rose a -- gain, and rose a -- gain,
If we be -- lieve that Je -- sus died and rose a -- gain,
be -- lieve that Je -- sus died and rose a -- gain,
ev'n so them al -- so which sleep in Je -- sus, which sleep __ in Je -- sus,
will God, __ will God __ bring,
will God __ bring with him.
If we be -- lieve that Je -- sus died, that Je -- sus died, __
and rose __ and rose __ a -- gain,
ev'n so them al -- so which sleep in Je -- sus, which sleep __ in __ Je -- sus,
will God __ bring with him,
will God bring __ with him,
will God __ bring, __ will God bring __ with him.
Where -- fore com -- fort one a -- no -- ther with __ these __ words.
}

basText = \lyricmode {
If we be -- lieve that Je -- sus died and rose a -- gain,
If we be -- lieve __ that Je -- sus died,
If we be -- lieve that Je -- sus died and rose a -- gain,
If we be -- lieve that Je -- sus rose a -- gain,
ev'n so them al -- so which sleep in Je -- sus, sleep __ in Je -- sus,
will God __ bring with him,
will God __ bring with him,
will God bring __ with him.
If we be -- lieve that Je -- sus died,
if we be -- lieve __ that Je -- sus died, __
if we be -- lieve that Je -- sus rose __ a -- gain,
ev'n so them al -- so which sleep in Je -- sus, sleep __ in Je -- sus,
will God, __ will God __ bring with him,
will God bring __ with him, will God __ bring with him.
Where -- fore com -- fort one a -- no -- ther with these words.
}

globorg = {
\key d \minor
\time 4/2
}

rhA = \relative c'' {
s1*4/2*5
\voiceOne
b2\rest a d,2. e4 |
f2 f bes bes |
r c f,2. g4 |
a2 a d d |
cis cis d d |
e1 \oneVoice r2 \voiceOne f |
bes,2 a g s |
d'1. c2 |
bes a1 g2 |
fis bes a1 |
g a2 b |
c1~ c2 c~^\f |
\voiceTwo
c1~ <c es>~ |
<c es>2 <bes d> <a c> <g b> |
<f~ a>1 f4 e d e |
\voiceOne
a2 d2. c4 bes a |
g2 f4 bes a2 g |
f a_\mf d,2. e4 |
f2 f bes bes |
a a c c |
bes4 bes a g es'1~ |
es2 d cis1 |
d e |
f e2 d |
cis b cis1 |
\oneVoice
\time 6/2
\key d \major
r2 \voiceOne d g, fis e d~ |
\time 4/2
\voiceTwo d b e1~ |
e2 dis1 \voiceOne e2 |
dis g fis1 |
e2 \tc e^\< fis gis |
a1. a2^\f |
<<
{d\breve~ |d2 g fis e | fis1. e2}
\new Voice { \voiceTwo s1*2 |
\once \override Tie #'details #'height-limit = #0.3
\once \override Tie #'details #'ratio = #1
d\breve~ | d1~ d4 cis b cis }
>>
d1~ d4 cis b a |
g2 fis4 e fis2 e |
a1~ a4 d, g2 |
fis1 e |
\time 3/2
d1 d2 |
bes'1.~ |
bes2 a g~ |
g fis e |
fis1.^\fermata \bar"|."
}

rhB = \relative c' {
R1*4/2*2
bes2 bes a d |
a2. b4 c2 c |
f f e4 d c b |
\voiceTwo
c2 cis d4 c bes2 |
s bes4 c d1 |
a'4 g f e d c d e |
f2 f2. e4 f d |
e2 <e a> <d f> g |
g1 s2 f |
g f
<< {es1 | s2 } {s2 \voiceOne \tieDown f~ |\voiceTwo <d f>} >>
d g1~ |
g2 fis1 d2 |
c bes es d4 c |
b2 c f1~ |
f2 e d e |
\voiceOne
<f_~ f'~>\breve |
<f f'~> |
<c' f>2 << {c1 bes2} {s2 g1} >> |
\voiceTwo
f~ f4 e d2 |
d4 e f2~ f2. e4 |
f2 s s bes,|
a d1 f2 |
c2. d4 es2 es |
d d g1~ |
g2 f e e |
f1 e2 a~ |
a gis
<< {s f | e d e1 } \new Voice { \tieDown a1~ a\breve } >> |
\time 6/2
\key d \major
s2 <d, fis> e d c1 |
\voiceOne b'1. a2 |
g fis1 \voiceTwo b,2~ |
b <b e~> <c e> dis |
e4 d \tc cis1 b2 |
a a g'1~ |
g2 fis e <d fis> |
\voiceFour g1 a2 b |
\voiceTwo a1 \voiceOne g |
\voiceTwo fis2 b~ b4 a g fis |
e2 d1 cis2 |
d2. a4 b2. e4 |
d1. cis2 |
\time 3/2
s1 d2~_\p |
d1.~|d~|d~|d
}

lhA = \relative c' {
\voiceOne
a1.^\mf a2 |
d,2. e4 f2 f |
d2. e4 f g f e |
f2 d e a~ |
a4 c b a gis1 |
a4 bes a g fis2 g |
a4 f s2 bes,4 c d e |
c' bes a2 bes1 |
a4 c a2. g4 \tc a^\< b |
cis d a2 bes <g bes> |
<c, bes'>1 \oneVoice r2 \voiceOne a'^\p |
c1 bes2 c |
bes1. c2 |
d1 c2 bes |
a g1 fis2 |
g4 f e1 \tc d2^\< |
c c bes'1~\! |
bes2 a g f |
<< { \voiceOne bes1 c2 d } \new Voice { f,\breve } >> |
c' |
d4 f, g a bes c d c |
bes2 a4 bes c2 bes |
a r r1 |
r2 a d,2. e4 |
f g a f g2. a4 |
bes d c bes bes1 |
s s |
a2. b4 cis1 |
d cis2 s |
s1 s |
\time 6/2
\key d \major
s a g2 a|
g1. a2 |
b2. b4 a2 g |
<fis a> <e g> a b4 a |
gis2 a^\f d1~ |
d2 cis b cis |
d1 c~ |
c2 b a gis |
a\breve |
b4 d, e fis g a b2~ |
b4 cis d b a1~ |
a4 g fis e d2 e |
<< {fis4 g a2~ a g } \new Voice {s1 a } >> |
\time 3/2
<d, fis a>1 d2 |
g1.~ |
g2 <fis c'> bes~ |
bes a g |
a1.\bar"|."
}

lhB = \relative c {
\voiceTwo
<d f>1 <c e> |
bes <a c> |
g <d d'>~ |
<d d'>2 d' c a |
<d, d'>1 <e e'> |
a4 bes a g fis2 g |
d'2. c4 bes1 |
f'2 r r bes, |
f'2. e4 d2 d |
a a bes g |
c,1 s2 d' |
e f g a |
bes1 es, |
d\breve~|
d~|
g,2 r r1 |
r2 c,\f bes'1~ |
bes2 a g f |
bes1 c2 d |
c\breve |
d2 bes1 bes2 |
c d c1 |
f2 r r g, |
d'2. c4 bes2 bes |
f f' c4 d es c |
g'1~ g4 g f es |
bes'1~ bes4 bes \tc a^\< g |
f2\! e4 d <a a'>1~ |
<a a'>\breve~ |
<a a'> |
\time 6/2
\key d \major
\oneVoice r2 b^\p \voiceTwo cis d e fis |
g,1 c |
b\breve~ |
b |
e2 r r1 |
R1*2 |
r2 <d, d'> c'1~ |
c2 b a gis |
a\breve |
b2 g1 g2 |
a b4 gis a2 a'4 g |
fis e d cis b2. g4 |
a\breve |
\time 3/2
d,1 d'2 |
g,1. |
<d d'>1.~ |
<d d'>~ |
<d d'>_\fermata
}

\score {
<<
	\new ChoirStaff <<
		\new Staff="sopstaff" \with { \consists "Ambitus_engraver" }
		\new Voice="sop" {
			\set Staff.instrumentName = "Soprano "
			\global \sop
		}
		\new Lyrics \lyricsto "sop" \sopText
		\new Lyrics \lyricsto "sop2" \sopTextII

		\new Staff \with { \consists "Ambitus_engraver" }
		\new Voice="alt" {
			\set Staff.instrumentName = "Alto "
			\global \alt
		}
		\new Lyrics \lyricsto "alt" \altText

		\new Staff \with { \consists "Ambitus_engraver" }
		\new Voice="ten" {
			\set Staff.instrumentName = "Tenor "
			\clef "G_8" \global \ten
		}
		\new Lyrics \lyricsto "ten" \tenText

		\new Staff \with { \consists "Ambitus_engraver" }
		\new Voice="bas" {
			\set Staff.instrumentName = "Bass "
			\clef bass \global \bas
		}
		\new Lyrics \lyricsto "bas" \basText
	>>
	\new PianoStaff <<
		\set PianoStaff.instrumentName = "Organ "
		\new Staff="rh"
		\with {\override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 5)} <<
			\new Voice {\globorg \rhA }
			\new Voice {\globorg \rhB }
		>>
		\new Staff="lh" <<
			\clef bass
			\new Voice {\globorg \lhA }
			\new Voice {\globorg \lhB }
		>>
	>>
>>
	\midi {
		\context {
		\Score
       		tempoWholesPerMinute = #(ly:make-moment 60 2)
		}
     	}
	\layout { }
}



\markup {
	\italic \column {
		\fill-line {
			"Statenvertaling: “Want indien wij geloven, dat Jezus gestorven is en opgestaan, alzo zal ook God degenen,"
		}
		\fill-line {
			"die ontslapen zijn in Jezus, wederbrengen met Hem. Zo dan, vertroost elkander met deze woorden.”"
		}
	}
}
