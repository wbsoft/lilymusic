\version "2.13.22"

#(set-default-paper-size "a4")
#(set-global-staff-size 16.4)

italicas=\override LyricText #'font-shape = #'italic
rectas=\override LyricText #'font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
incipitwidth = 14

htitle="Ne timeas Maria"
hcomposer="Victoria"

\header {
	title=\markup{\fontsize #4 "Ne timeas Maria"}
	subtitle="in Annuntiatione Beatæ Mariæ"
	subsubtitle=" "
	composer="Tomás Luis de Victoria (c.1548-1611)"
	%opus="(-)"
	poet="1572,  1583b,  1589a,  1589b,  1603"
	copyright=\markup{
		\fill-line {"Transcribed and edited by Nancho Alvarez" \typewriter "http://tomasluisdevictoria.org"}
	}
%	tagline=""
}


global={\key g \major \time 2/2  \skip 1*70 \bar "|."
}

cantus={
	d'1 |
	g'2. e'4 |
	e'2 a' |
	fis'4. g'8 a'4 g' ~ |
%5
	g' fis' g'4. fis'16 e' |
	d'2 e' ~ |
	e'1 |
	r2 r4 g' |
	c''2. b'4 |
%10
	b'1 |
	r4 d' g'2 ~ |
	g'4 e' e'2 |
	r4 d' e' g' ~ |
	g' fis' g'2 ~ |
%15
	g' r |
	R1*4/4 |
	b'4. b'8 b'4 g' |
	a' b' c''4. c''8 |
	b'2 r |
%20
	r r4 g' ~ |
	\set Staff.autoBeaming = ##f
	g'8 g' g'4 e' fis' |
	\set Staff.autoBeaming = ##t
	g'2 a'4. g'8 |
	a' b' c''4. b'8  b'[ a'16 g'] |
	a'4 a' b'2 ~ |
%25
	b' r4 b' ~ |
	b' gis' a'2 ~ |
	a'4 a' fis'2 |
	fis' g'4 e' ~ |
	e' d' \[e'2 |
%30
	d'2.\] d'4 |
	d'2 r |
	g' e'4 e' |
	fis'4. fis'8 g'2 |
	r4 g' a' b' |
%35
	c''2. b'4 |
	b'2 g' ~ |
	g' a' ~ |
	a'4 a' b'2 ~ |
	b' r |
%40
	r r4 a' ~ |
	a' d''4. c''8 b' a' |
	b'4 c''4. b'8 a'4 ~ |
	a'8 g' g'2 fis'4 |
	g'1 |
%45
	r2 r4 d' |
	g'4. e'8 fis'4 a' ~ |
	a'8 g' a'4 b' c'' ~ |
	c''8 b' b'2 a'4 |
	b'2 r |
%50
	R1*4/4 |
	R1*4/4 |
	b'1 |
	a'2 c'' |
	b'4 a'8 g' \[a'2 |
%55
	b'2.\] b'4 |
	a'2 r4 g' |
	d''2 c''4 a' |
	b'2. a'4 |
	g' e' fis'2 |
%60
	r4 g' c''2 |
	b'4 g' b' a' |
	g'2 r4 d' |
	g'2 fis'4 d' |
	e' d'4. b8 b'4 |
%65
	a' g' fis' g' ~ |
	g' fis'8 e' fis'4 fis' |
	g'1 ~ |
	g' ~ |
	g' ~ |
%70
	g'\breve*1/2
}

altus={
	r2 g ~ |
	g c' ~ |
	c'4 a a2 |
	d' c'4 b |
%5
	a2 b ~ |
	b r4 g |
	c'2. a4 |
	a2 r |
	r4 a d'2 ~ |
%10
	d'4 b b g |
	b4. c'8 d'4 e' |
	b2 r4 e' ~ |
	e'8 d' d'2 cis'4 |
	d'2 b4 d' ~ |
%15
	\set Staff.autoBeaming = ##f
	d'8 d' d'4 b c' |
	\set Staff.autoBeaming = ##t
	d' e'4. d'8 e' fis' |
	g'4. fis'16 e' d'4 e' ~ |
	e' d' c' a |
	b2 b4. b8 |
%20
	b4 g a b |
	c'2. a4 |
	g g'2 fis'8 e' |
	fis'4  e'8[ d' e' fis'] g'4 ~ |
	g' fis' g'2 |
%25
	r4 g'2 g'4 |
	fis' e'8 d' e'2 ~ |
	e'4 e' d'2 ~ |
	d' r4 g |
	a2 b4 c' |
%30
	a2. a4 |
	b2 r |
	e' cis'4 cis' |
	d'4. d'8 b4 d' |
	g'4. fis'8 e'4 d' |
%35
	c' a d'2 |
	r4 d' e'4. d'8 |
	e' fis' g' e' fis'4 e'8 d' |
	e'4 fis' g'2 |
	d'1 |
%40
	e'2. e'4 |
	fis'2 r4 d' |
	g'8 fis' e' d' c'4 d' |
	e' cis' d'2 ~ |
	d' r4 g |
%45
	d'4. d'8 e'4 d' ~ |
	d' cis' d' fis' |
	fis'4. e'8 fis'4 g' ~ |
	 g'8[ fis']  fis'[ e'16 d'] e'4 fis' |
	g' g d'4. d'8 |
%50
	e'4 d'2 cis'4 |
	d'2 r |
	d'1 |
	d'2 \[e' |
	d'2.\] d'4 |
%55
	d'1 |
	r4 d' g'2 |
	fis'4 d' e' d' ~ |
	d'8 c' b a g4 fis |
	g a4. g8 fis e |
%60
	fis4 g2 fis4 |
	g d d'2 |
	b4 g a b ~ |
	b8 a b g a4 g ~ |
	g fis g d' |
%65
	e'2 d'4 cis' |
	d'2. d'4 |
	b2 r4 d' |
	g' e' d'2 |
	e'2. e'4 |
%70
	d'\breve*1/2
}

tenor={
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%5
	d1 |
	g2. e4 |
	e2 a |
	fis4. g8 a4 g ~ |
	g fis g2 |
%10
	r4 g d'2 ~ |
	d'4 b b2 |
	e'4.  d'8[ c' b] c'4 |
	b a \[g2 |
	a\] g |
%15
	b4. b8 b4 g |
	a b c'8 b c' d' |
	e'4  d'8[ c' b a] b4 |
	a g2 fis4 |
	g d'4. d'8 d'4 |
%20
	b c' d'2 |
	e'2. d'8 c' |
	b2 r4 d' ~ |
	d' c'8 b a4 g |
	d'2 r4 d' ~ |
%25
	d' b2 e'4 ~ |
	e'8 d' d'2 cis'8 b |
	cis'4 cis' d' a ~ |
	a b2 c'4 ~ |
	c'8 b a4. g8 g4 ~ |
%30
	g fis8 e fis4 fis |
	g d'2 b4 ~ |
	b e'2 a4 ~ |
	a d' d'8 c' b a |
	g fis e4. fis8 g4 ~ |
%35
	g fis g2 ~ |
	g4 g c'4. b8 |
	c' d' e'4 d' cis'8 b |
	cis'4 d' g2 |
	r4 g b8 c' d' b |
%40
	c'4 b8 a b4 cis' |
	d' a \[b2 |
	g\] a |
	b4 a8 g a4 a |
	g b b4. g8 |
%45
	a4 b4. a8  a[ g16 fis] |
	g4 g a d |
	d'4. c'8 d'4 e' ~ |
	 e'8[ d']  d'[ c'16 b] c'4 d' ~ |
	d'8 c' b4 a b ~ |
%50
	 b8[ a]  a[ g16 fis] g4 g |
	a2 r |
	g1 |
	fis2 g4 a ~ |
	a8 g g2 fis4 |
%55
	g2 r4 g |
	d'2 b4 g |
	a g2 fis4 |
	g4.  a8[ b c'] d'4 ~ |
	d' cis' d' a |
%60
	d'2 c'4 a |
	b4. a8 g4 fis |
	e e d2 |
	r4 g d'2 |
	c'4 a \[b2 |
%65
	c'4.\] b8 a4 g |
	a2 r4 a |
	d'2 b4 g |
	b c'2 b4 |
	c'8 b c' d' e'4 c' ~ |
%70
	c' b8 a b\breve*1/4
}

bassus={
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
	R1*4/4 |
%5
	r2 g, ~ |
	g, c ~ |
	c4 a, a,2 |
	d c4 b, |
	a,2 g, ~ |
%10
	g, r4 g, |
	g2. e4 |
	e2 a |
	g4 fis \[e2 |
	d\] g, |
%15
	g4. g8 g4 e |
	fis g a4. g16 fis |
	e8 fis g4. fis8 e d |
	c4 b, a, a, |
	g,2 g4. g8 |
%20
	g4 e fis g |
	c4. b,8 c4 d |
	e e d2 |
	R1*4/4 |
	r2 g ~ |
%25
	g e |
	\[b a ~ \] |
	a4 a d2 |
	d e |
	f e4 c |
%30
	d2. d4 |
	g,2 g |
	e a |
	d4 d g4. fis8 |
	e d c2 b,4 |
%35
	a, a, g,2 ~ |
	g, r |
	R1*4/4 |
	r2 r4 g, |
	g4.  fis8[ g a] b4 |
%40
	a gis8 fis gis4 a |
	d d g4. fis8 |
	e4 c f2 |
	e d |
	r4 g, g4. e8 |
%45
	fis4 g4. fis8  fis[ e16 d] |
	e4 e d2 |
	R1*4/4 |
	r2 r4 d |
	g4. e8 fis4 g ~ |
%50
	 g8[ fis]  fis[ e16 d] e4 e |
	d2 r |
	g,1 |
	d2 \[c |
	d2.\] d4 |
%55
	g, g, g2 |
	fis4 d e2 |
	d4 b, c d |
	g,2 r |
	r4 a, d2 |
%60
	b,4 g, a,4. a,8 |
	g,2 r4 d |
	g2 fis4 d |
	e2 d4 b, |
	c d g, g, |
%65
	c2 d4 e |
	d2. d4 |
	g, g, g2 |
	e4 c \[g2 |
	c2.\] c4 |
%70
	g,\breve*1/2
}

textocantus=\lyricmode{
Ne ti -- me -- as Ma -- ri -- _ _ _ _ _ _ _ _ _ a _
ne ti -- me -- as
ne ti -- _ me -- as
Ma -- ri -- _ _ _ a _
in -- ve -- ni -- sti e -- nim gra -- ti -- am
in -- _ ve -- ni -- sti e -- nim gra -- _ _ _ _ _ _ _ _ _ ti -- am _
a -- _ pud Do -- _ mi -- num,
a -- pud Do -- _ _ _ _ mi -- num:
ec -- ce con -- ci -- pi -- es
con -- ci -- _ _ pi -- es in _ u -- _ te -- ro _
in _ u -- _ _ _ _ _ _ _ _ _ _ te -- ro
et pa -- ri -- es fi -- _ _ _ _ _ _ _ _ li -- um
et vo -- ca -- _ _ _ _ _ bi -- tur
al -- tis -- si -- mi 
fi -- _ _ li -- us
al -- tis -- si -- mi fi -- li -- us
al -- tis -- si -- mi
fi -- _ _ _ _ _ _ _ _ _ _ _ li -- us. _ _ _ 
}

textoaltus=\lyricmode{
Ne _ ti -- _ me -- as Ma -- ri -- _ _ a _
ne ti -- me -- as
ne ti -- _ me -- as Ma -- ri -- _ _ _ a
Ma -- _ _ _ _ ri -- a,
in -- _ ve -- ni -- sti e -- nim gra -- _ _ _ _ _ _ _ _ _ _ _ ti -- am,
in -- ve -- ni -- sti e -- nim gra -- ti -- am,
gra -- _ _ _ _ _ _ _ _ _ ti -- am 
a -- pud Do -- _ _ _ _ mi -- num _
a -- pud Do -- _ _ mi -- num:
ec -- ce con -- ci -- pi -- es,
con -- ci -- _ _ _ _ pi -- es
in u -- _ _ _ _ _ _ _ _ _ te -- ro,
in u -- te -- ro
in u -- _ _ _ _ _ _ te -- ro _
et pa -- ri -- es fi -- _ li -- um,
et pa -- ri -- es fi -- _ _ _ _ _ _ li -- um,
et pa -- ri -- es fi -- li -- um
et vo -- ca -- _ bi -- tur
al -- tis -- si -- mi fi -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ li -- us,
al -- tis -- si -- mi fi -- _ _ _ _ _ _ _ _ li -- us,
al -- tis -- si -- mi
fi -- li -- us
al -- tis -- si -- mi fi -- li -- us.
}

textotenor=\lyricmode{
Ne ti -- me -- as Ma -- ri -- _ _ _ _ _ a
ne ti -- _ me -- as Ma -- _ _ _ _ ri -- _ _ _ a,
in -- ve -- ni -- sti e -- nim gra -- _ _ _ _ _ _ _ _ _ _ _ ti -- am,
in -- ve -- ni -- sti e -- nim
gra -- \italicas ti -- _ am \rectas %? tiam __ _  en 1572 ?
gra -- _ _ _ _ ti -- am
a -- _ pud Do -- _ _ _ _ _ _ mi -- num,
a -- _ pud Do -- _ _ _ _ _ _ _ _ _ mi -- num:
ec -- ce, _ ec -- ce _ con -- ci -- _ _ _ _ _ _ _ _ _ pi -- es _
in u -- _ _ _ _ _ _ _ _ te -- ro
in u -- _ _ _ _ _ _ _ te -- ro,
in u -- _ _ _ _ _ _ te -- ro,
et pa -- ri -- es fi -- _ _ _ _ _ li -- um,
et pa -- ri -- es fi -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ li -- um
et vo -- ca -- _ _ _ _ bi -- tur
al -- tis -- si -- mi
fi -- _ _ _ _ _ _ _ _ li -- us,
al -- tis -- si -- mi fi -- _ _ _ _ li -- us
al -- tis -- si -- mi fi -- _ _ _ li -- us
al -- tis -- si -- mi fi -- _ _ _ _ _ _ _ _ _ li -- _ us.
}

textobassus=\lyricmode{
Ne _ ti -- _ me -- as Ma -- ri -- _ _ a _
ne ti -- me -- as Ma -- ri -- _ _ _ a,
in -- ve -- ni -- sti e -- nim gra -- _ _ _ _ _ _ _ _ _ _ _ ti -- am,
in -- ve -- ni -- sti e -- nim gra -- _ _ _ _ ti -- am
a -- _ pud Do -- _ _ mi -- num,
a -- pud Do -- _ _ _ mi -- num:
ec -- ce,
ec -- ce con -- ci -- _ _ _ _ _ _ pi -- es _
in u -- _ _ _ _ _ _ _ _ te -- ro,
in u -- _ _ _ _ te -- ro
et pa -- ri -- es fi -- _ _ _ _ _ li -- um
et pa -- ri -- es fi -- _ _ _ _ _ _ li -- um
et vo -- ca -- _ bi -- tur al -- tis -- si -- mi fi -- _ _ _ li -- us
al -- tis -- si -- mi fi -- li -- us
al -- tis -- si -- mi fi -- _ _ _ li -- us,
al -- tis -- si -- mi 
fi -- li -- us,
al -- tis -- si -- mi fi -- _ li -- us.
}



incipitcantus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Cantus "
		\override NoteHead   #'style = #'neomensural
		\override Rest #'style = #'neomensural
		\override Staff.TimeSignature #'style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-g"
		\key c \major
		\time 2/2
		g'\breve
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent = 0
	}
	}
}


incipitaltus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Altus   "
		\override NoteHead   #'style = #'neomensural 
		\override Rest #'style = #'neomensural
		\override Staff.TimeSignature #'style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-c2"
		\key c \major
		\time 2/2
		c'\breve
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent = 0
	}
	}
}


incipittenor=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Tenor   "
		\override NoteHead   #'style = #'neomensural 
		\override Rest #'style = #'neomensural
		\override Staff.TimeSignature #'style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-c3"
		\key c \major
		\time 2/2
		g\breve
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent=0
	}
	}
}


incipitbassus=\markup{
	\score{
		{ 
		\set Staff.instrumentName="Bassus "
		\override NoteHead   #'style = #'neomensural 
		\override Rest #'style = #'neomensural
		\override Staff.TimeSignature #'style = #'neomensural
		\cadenzaOn 
		\clef "petrucci-c4"
		\key c \major
		\time 2/2
		c\breve
		} 
	\layout {
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver
		}
		line-width=\incipitwidth
		indent = 0
	}
	}
}





\score {\transpose d' g'{
\new ChoirStaff<<

	\new Staff <<\global
	\new Voice="v1" {
		\set Staff.instrumentName=\incipitcantus
		\clef "treble"
		\cantus }
	\new Lyrics \lyricsto "v1" {\textocantus }
	>>

	
	\new Staff << \global
	\new Voice="v2" {
		\set Staff.instrumentName=\incipitaltus
		\clef "treble" 
		\altus}
	\new Lyrics \lyricsto "v2" {\textoaltus }
	>>

	
	\new Staff <<\global
	\new Voice="v3" {
		\set Staff.instrumentName=\incipittenor
		\clef "G_8"
		\tenor }
	\new Lyrics \lyricsto "v3" {\textotenor }
	>>
	

	\new Staff <<\global
	\new Voice="v4" {
		\set Staff.instrumentName=\incipitbassus
		\clef "bass" 
		\bassus }
	\new Lyrics \lyricsto "v4" {\textobassus }
	>>
	
>>

	}%transpose

\layout{ 
	\context {\Lyrics 
		\override VerticalAxisGroup #'minimum-Y-extent = #'(-0.0 . 0.0) 
		%\override LyricText #'font-size = #1.2
		\override LyricHyphen #'minimum-distance = #0.33
	}
	\context {\Score 
		\override BarNumber #'padding = #2 
	}
	\context {\Voice 
		melismaBusyProperties = #'() 
	}
	%\context { \RemoveEmptyStaffContext }
	\context {\Staff 
		\override VerticalAxisGroup #'minimum-Y-extent = #'(-4 . 5.6)
		\consists Ambitus_engraver 
		\override LigatureBracket #'padding = #1
	}
}

%\midi {}

}

\markup \column {
  \strut
  \wordwrap \italic {
    Vertaling: Wees niet bang, Maria, God heeft je zijn gunst geschonken.
    Luister, je zult zwanger worden en een zoon baren, en je moet hem Jezus noemen.
    Hij zal een groot man worden en Zoon van de Allerhoogste worden genoemd. (Lucas 1: 30-32)
  }
}

\paper{
	%page-limit-inter-system-space = ##t        %cuando hay 6 voces
	%page-limit-inter-system-space-factor = 1.3 %cuando hay 6 voces
	evenHeaderMarkup=\markup  \fill-line { \fromproperty #'page:page-number-string \htitle \hcomposer }
	oddHeaderMarkup= \markup  \fill-line { \on-the-fly #not-first-page \hcomposer \on-the-fly #not-first-page \htitle \on-the-fly #not-first-page \fromproperty #'page:page-number-string }
	%system-count=8
	%line-width=19.0\cm
	ragged-last-bottom = ##f
	indent=3.3\cm
	between-system-padding = 0
	foot-separation=8\mm
	head-separation=4\mm
        
        two-sided = ##t
        inner-margin = 15\mm
        outer-margin = 10\mm
}
