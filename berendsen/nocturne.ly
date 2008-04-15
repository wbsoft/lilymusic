\version "2.11.33"

#(set-global-staff-size 18)

\paper {
	#(set-paper-size "a4")
	ragged-last-bottom = ##f
}

\layout {
	indent=0
	\context {
		\Voice
		tupletSpannerDuration = #(ly:make-moment 1 2)
	}
	\context {
		\Staff
		extraNatural = ##f
	}
	\context {
		\Score
		\override RehearsalMark #'self-alignment-X = #left
		\override RehearsalMark #'break-align-symbols = #'(time-signature)
		\override RehearsalMark #'font-series = #'bold
		\override RehearsalMark #'font-size = #0
	}
}

\header {
	title = "Nocturne"
	subtitle = "voor fluit en piano"
	composer = "Wilbert Berendsen"
        copyright = \markup \italic \center-align {
                \with-url #"http://www.wilbertberendsen.nl/"
                "© 1992 Wilbert Berendsen (http://www.wilbertberendsen.nl/)"
                "Deze muziek mag worden verspreid onder de voorwaarden van de Creative Commons Licentie"
                \with-url #"http://creativecommons.org/licenses/by-nc-sa/3.0/nl/"
                "(http://creativecommons.org/licenses/by-nc-sa/3.0/nl/)."
        }
}

global = {
\key c \minor
\time 4/4
}

rh=\change Staff=rh
lh=\change Staff=lh

fluit = \relative c'' {
\mark"Andante"
r4 g_\markup\italic"grazioso" g'\fermata f8 es |
d4. es8 c2~ | c4 b8 c f es d c | ais4. b8 gis2~ | gis4 fisis8 gis cis b ais gis |
g4 c4. bes8 es, f\> | g as bes2.\! | R1*8 |
r2 r8 #(set-octavation 1) bes'\p c des | es4. des8 c bes c des | es4. des8 c bes c\> des |
bes4\pp c8 bes8~bes2~ | bes2 r8 f\< g as | bes4.\! as8 ges fes ges as |
bes4. as8 ges fes ges as | bes1 #(set-octavation 0)| R1*2 | r2 r8 es,, f ges |
as4. ges8 f es f ges | es4 f8 es8~es f4.\>_\markup\italic"rit."|es2\pp\fermata
r8\fermata \mark"Vivace" bes'-. bes-. bes-. |
bes'4. bes8-. a( g) fis-. g-. | bes4. bes8 a(\< g bes d\! | cis-.) a-. gis-. c-. b-. g-.\> fis-. bes-.\! |
g4. bes8-. a(\pp g) fis-. g-. bes4. bes8 a(\< g bes cis | d4) g4.\! des8 c bes | d4 g4. des8\> c bes\! |
as4. as8-. g( f) e-. f-. | es4. as8 g( f as c | b-.) g-. fis-. bes-. a-. f-. e-. as-. |
f4. as8 g( f) e-. f-. | as4. as8 g( f as b | c4) f4. ces8 bes as | c4 f4. b,8_\markup\italic"senza rigore"
c es | des2.( c4) | \acciaccatura f8 b,2~ b8 gis a c | b2.( ais4) | \acciaccatura dis8 a2. r4 |
R1 | R1 | r2 r8 fis,\p fis fis | d'4. d8-. cis( b) ais-. b-. | d4. d8 cis( b d fis |
eis)-. cis-. c-. e-. dis-. b-. ais-. d-. | b4. d8-. cis( b) ais-. b-. | d4. d8 cis b d eis |
fis4 b4. f8 e d | fis4 d'4. eis,8 fis a | as( g b d f) e,( f) es'( | d) ais,( b) c'( b as g f) |

}

prechts = \relative c'' {
R1 | s1*4 | s2 \voiceOne r4 bes~|bes bes'2 as8 ges | f4. ges8 es2~|es4 d8 es as ges f es|
cis4. d8 b2~|b4 ais8 b e d cis b|ais b cis d e d cis b~|b c d es f es d c~|
c bes es, f ges f bes, bes' |
c_\markup\italic"poco rit." bes es, f \set tieWaitForNote = ##t ges_~\> bes_~ es4~ | <ges, bes es>1\! |
<< {\voiceOne <a des>2 bes\< <a des>\! bes\> <d, f>\! <cis e> <d f> <c es> }
\new Voice {\voiceTwo <ges' es'>1 <ges es'> bes, bes } >> |
<bes des>2 <b dis> | <b e>1 |
r8 bes' ces bes f' ges es bes | ces bes ges' as
<<{\voiceOne f2~ | f4 es2 des4~ | des ces2 bes4~ | bes1}
\new Voice { \lh \voiceOne r8 bes, ces bes \rh \voiceTwo f' ges es
\lh \voiceOne bes ces bes \rh\voiceTwo ges' as | f2 es | <as, d ges>1 }>>
\oneVoice <bes es ges bes>1~ | <bes es ges bes>2\fermata r\fermata |
r8 \once \override DynamicText #'extra-offset = #'(-1 . -1.5)
<g'' bes d>-.\p <g, bes d>-. \lh <g, bes d>-. <c es g>-. \rh <c' es g>-. r4 |
\once \override TextScript  #'extra-offset = #'(0 . -2.5)
r8_\markup\italic"cresc." <g' bes d> <g, bes d> \lh <g, bes d> <c es g> \rh <c' es g> r4 |
r8 \once \override DynamicText #'extra-offset = #'(-3 . -1)
<a cis e>-.\mf \lh <e, gis c>-. \rh <e' gis c>-. <es g b>-.\> \lh <es, g b>-. <d as' c>-. \rh <es' ges c>-. |
%\once \override DynamicText #'extra-offset = #'(0 . 2)
\lh <g,, g,>^\p \rh <g''' bes d> <g, bes d> \lh <g, bes d> <c es g> \rh <c' es g> r4 |
r8 <g' bes d> <g, bes d> \lh <g, bes d> <ges bes d> \rh <ges' bes d>\< <c es a>4-^ |
r8\! <f, g bes d>-. \lh <f, g bes d>-. \rh <f' g bes d>-. \lh <e, g bes c>-> \rh <c' e g>-. <bes' c g'>-. r8 |
r8 <f g bes d>-. \lh <f, g bes d>-. \rh <f' g bes d>-. \lh <e, g bes c>-> \rh <c' e g>-.
<< {\voiceTwo <c' g'>-. r | r } \\ {\voiceOne c'4~\> | c8\! } >> \oneVoice
<f, as c>-. <f, as c>-. \lh <f, as c> <bes des f>-. \rh <bes' des f>-. r4 |
r8 <f' as c> <f, as c> \lh <f, as c> <bes des f> \rh <bes' des f> r4 |
r8 <g b d>-. \lh <d, fis bes>-. \rh <d' fis bes>-. <cis f a>-. \lh <cis, f a>-. <c ges' bes> \rh <c' e bes'>-. |
\lh <f,, f,> \rh <f''' as c> <f, as c> \lh <f, as c> <bes des f> \rh <bes' des f> r4 |
r8 <f' as c> <f, as c> \lh <f, as c> <fes as c> \rh <fes' as c> <bes des g>4-^ |
r8 <es, f as c>-. \lh <es, f as c>-. \rh <es' f as c>-. \lh <d, f as bes> \rh <bes' d f> <as' bes f'>4-^ |
r8 <es f as c>-. \lh <es, f as c>-. \rh <es' f as c>-. \lh <e, as c> \rh <as' c> <g bes c g'~>4-> |
\override TupletNumber #'stencil = ##f
\override TupletBracket #'stencil = ##f
\times 4/6 { g'8 f,\p as des as f\< as des f as f des\! | b b, e fis gis b cis b e fis\> gis b |
r\p dis,, fis b fis dis fis b dis fis_\markup\italic"cresc." dis b | a a, d e\< fis a b a d e fis a\f } |
r8 a, \acciaccatura c bes a a' bes g d | \acciaccatura f es d bes' c <d, fis a d>2-> |


}

plinks = \relative c' {
R1 |

<<{ \times 4/6 { r8 g c es c g r g c g' c, g |
\override TupletNumber #'stencil = ##f
\override TupletBracket #'stencil = ##f
r g c f c g r \rh\oneVoice c es bes' es, c | 
r b dis gis dis b \lh \voiceOne r dis, gis dis' gis, dis |
\rh\oneVoice r gis cis gis' cis, gis r b dis gis dis b|
r g c g' c, g \voiceTwo r bes es bes' es, bes |
r bes es bes' es, bes r bes d bes' d, bes |
r ces f as f ces r bes es bes' es, bes |
r bes es as es bes r \lh \voiceOne es, ges des' ges, es |
r fis b d b fis r fis b fis' b, fis |
r \rh\voiceTwo b cis e cis b r b d fis d b |
r b cis e cis b r b d fis d b |
r b d f d b r c es g es c |
r \lh\voiceOne bes, es bes' es, bes r bes es bes' es, bes |
r bes es bes' es, bes r bes es ges bes es~ }|
es1
}\\{  c,,2 es as \oneVoice g gis \voiceTwo b
\oneVoice e dis e g, ges f es ges ces \voiceTwo bes b
d g fis g fis a g g, ges g ges <ges' bes>1
}>> |
<< {\voiceOne <a des>2 bes <a des> bes as g as g as~ <fis as> }
\new Voice { <ges es'>1 <ges es'> f f f <b, e gis> }>> |
<<{\voiceOne bes'2 <ges bes es> | <es ges ces> <d f bes> | <ges bes> \stemDown <es ges>}
\new Voice { bes1~ bes~ bes }>>
\oneVoice r8 bes ces bes~ <<{\voiceTwo bes2 }\new Voice {\voiceOne f'8 ges es bes}>>
\oneVoice <es, ces' d>1 | <es bes' es>~ | <es bes' es>2_\fermata r2_\fermata |
s1*14 R1 | r4 <b' b'>-. <e, e'>-> r | R1 | r4 <a a'>-. <d, d'>-> r4 |
<< { \voiceTwo <g'~ bes~ d>1 \oneVoice <g bes es>2 <d fis a d>-> } \\ {\voiceOne g'4. fis8 f4 e } >>
\oneVoice
fis1~\p fis2. e4-> fis2.-> e4-> g-> fis-> r8 <g, b es>-. <fis c' e>-. r

}

\score { <<

\new Staff = fluit \new Voice { \global \fluit }

\new PianoStaff <<
\new Staff = rh { \global \prechts }
\new Staff = lh { \clef bass \global \plinks  }
>>

>> }

