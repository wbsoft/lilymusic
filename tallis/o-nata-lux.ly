\version "2.11.36"

\header {
	title = "O nata lux de lumine"
	composer = "Thomas Tallis (c. 1505 - 1585)"
	poet = "Anon. (10th century)"
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
	indent = 18\mm
	ragged-last-bottom = ##f
}

global = {
#(set-accidental-style 'modern)
\key g \minor
\time 3/2
\partial 2.
}

superius = \relative c'' {
\global
d4 es c d2. a4 bes g a2
e'4 f d e~ e c d bes( a2) g2 r4
d'4 c a bes2. bes4 a a g4.( f8 g)
a( bes4) c c d2. bes4 c c d2 r4
f es c d2. d4 c a bes2.
a4 g e a2. d4 d cis d2 r4 \break
\repeat volta 2 {
a a g a2. a4 a g a2.
d4 a bes a2 g4 g2 fis4
} \alternative { g2. g2.\fermata }
\bar "|."
}

discantus = \relative c'' {
\global
g4 g g f4.( e8 d4) d d d e4.( d8 cis4)
c'4 bes bes a2 a4 g2 fis4 g2 r4
d e f g2. d4 f f es2.
bes4 es es d4.( es8 f4) g g c, f2 r4
f g a bes2. f4 a a g2.
d4 e e f4.( e8 f) g( a4) g e fis2 r4
\repeat volta 2 {
f f d f2. f4 f d f2.
f4 f d f2 es d4 d
} \alternative { b2. b!2.\fermata }
\bar "|."
}

contratenor = \relative c' {
\global
bes4 c g a4.( g8 f4) f d d' cis4.( b8 a2)
f'4 g e f2 bes,4 d d d2 r4
bes4 a a g2. bes4 c d g,4.( a8 bes4) 
bes bes a bes2. bes4 es es d2 r4
d c c bes4. c8( d4.) es8( f4) f d2.
a4 b cis d2. d4 e e d2 r4
\repeat volta 2 {
d4 d d d2. d4 d d d2.
d4 d bes d4. c8( bes4) c( a) a
} \alternative { g2. g2.\fermata }
\bar "|."
}

tenor = \relative c' {
\global
g4 g c, f4.( g8 a4) a g g e2 r4
c' d bes c2 a4 d4. c8( a4) b2 r4
g g f d2 g a4 f bes4.( a8 g4)
f es c f2 f4 bes2 a4 bes2 r4
bes bes a f2 bes c4 d bes4.( a8 bes)
c8( d4) g, g a2. a4 bes c a2 r4
\repeat volta 2 {
a a bes a2. a4 a bes a2.
a4 a g f2 g4 es( f4.) es8
} \alternative { d2. d2.\fermata }
\bar "|."
}

bassus = \relative c' {
\global
g4 c, es d2. d4 g, bes a2.
a'4 bes g a2 f4 g d2 g,2 r4
bes c d g,2 g4 g'( f) d es2.
d4 c c bes4.( c8 d4) es c c bes2 r4
d es f bes,2 bes4 bes'( a) f g2.
f4 e e d2. f4 g a d,2 r4
\repeat volta 2 {
d4 f g d2. d4 f g d2.
d4 d g d2 es4 c( d) d
} \alternative { g,2. g2.\fermata }
\bar "|."
}

superiusText = \lyricmode {
O na -- ta lux de lu -- mi -- ne,
Je -- su re -- demp -- tor sæ -- cu -- li,
di -- gna -- re cle -- mens sup -- pli -- cum __
lau -- des pre -- ces que su -- me -- re.
Qui car -- ne quon -- dam con -- te -- gi
di -- gna -- tus es pro per -- di -- tis.
Nos mem -- bra con -- fer ef -- fi -- ci,
tu -- i be -- a -- ti cor -- po -- ris. -ris.
}

discantusText = \lyricmode {
O na -- ta lux __ de lu -- mi -- ne, __
Je -- su re -- demp -- tor sæ -- cu -- li,
di -- gna -- re cle -- mens sup -- pli -- cum
lau -- des pre -- ces __ que su -- me -- re.
Qui car -- ne quon -- dam con -- te -- gi
di -- gna -- tus es __ pro __ per -- di -- tis.
Nos mem -- bra con -- fer ef -- fi -- ci,
tu -- i be -- a -- ti cor -- po -- ris. -ris.
}

contratenorText = \lyricmode {
O na -- ta lux __ de lu -- mi -- ne, __
Je -- su re -- demp -- tor sæ -- cu -- li,
di -- gna -- re cle -- mens sup -- pli -- cum __
lau -- des pre -- ces que su -- me -- re.
Qui car -- ne quon -- dam __ con -- te -- gi
di -- gna -- tus es pro per -- di -- tis.
Nos mem -- bra con -- fer ef -- fi -- ci,
tu -- i be -- a -- ti __ cor -- po -- ris. -ris.
}

tenorText = \lyricmode {
O na -- ta lux __ de lu -- mi -- ne,
Je -- su re -- demp -- tor sæ -- cu -- li,
di -- gna -- re cle -- mens sup -- pli -- cum __
lau -- des pre -- ces que su -- me -- re.
Qui car -- ne quon -- dam con -- te -- gi __
di -- gna -- tus es pro per -- di -- tis.
Nos mem -- bra con -- fer ef -- fi -- ci,
tu -- i be -- a -- ti cor -- po -- ris. -ris.
}

bassusText = \lyricmode {
O na -- ta lux de lu -- mi -- ne,
Je -- su re -- demp -- tor sæ -- cu -- li,
di -- gna -- re cle -- mens sup -- pli -- cum
lau -- des pre -- ces __ que su -- me -- re.
Qui car -- ne quon -- dam con -- te -- gi
di -- gna -- tus es pro per -- di -- tis.
Nos mem -- bra con -- fer ef -- fi -- ci,
tu -- i be -- a -- ti cor -- po -- ris. -ris.
}

\score {
\new ChoirStaff <<
	{ \set Staff.instrumentName = "Superius" \superius }
	\addlyrics { \superiusText }
	{ \set Staff.instrumentName = "Discantus" \discantus }
	\addlyrics { \discantusText }
	{ \set Staff.instrumentName = \markup
		\override#'(baseline-skip . 2.5)\column\right-align {Contra- "tenor "}
		\clef "G_8" \contratenor }
	\addlyrics { \contratenorText }
	{ \set Staff.instrumentName = "Tenor" \clef "G_8" \tenor }
	\addlyrics { \tenorText }
	{ \set Staff.instrumentName = "Bassus" \clef bass \bassus }
	\addlyrics { \bassusText }
>>
	\layout {
		\context {
			\Staff
			\consists "Ambitus_engraver"
			\remove "Time_signature_engraver"
		}
	}
	\midi { }
}

\markuplines \override-lines #'(baseline-skip . 2.5) \justified-lines \italic {
Vertaling: “O Licht geboren uit Licht,
Jezus, verlosser van de wereld,
verwaardig u de lofzangen en de gebeden van uw smekelingen te aanvaarden.
Gij, die u eens hebt verwaardigd met vlees te worden bekleed
terwille van hen die verloren waren,
geef dat wij ledematen mogen worden van uw zalig lichaam.”}
