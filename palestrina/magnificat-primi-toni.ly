\version "2.13.23"

#(set-global-staff-size 17)

\header {
  title = "Magnificat Primi Toni"
  subtitle = "Liber Primus"
  composer = "Giovanni Pierluigi da Palestrina (1525–1594)"
  copyright = "Typeset 2007 by Matthew Collett for the Auckland Catholic Music Schola — www.schola.org.nz"
}
runningTitle = \markup{ Palestrina: \italic {Magnificat Primi Toni} }

\paper {
  oddHeaderMarkup = \markup \fill-line {
    " "
    \on-the-fly #not-first-page \runningTitle
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
  }
  evenHeaderMarkup = \markup \fill-line {
    \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
    \on-the-fly #not-first-page \runningTitle
    " "
  }
  ragged-last-bottom = ##f
  two-sided = ##t
  inner-margin = 18 \mm
  outer-margin = 10 \mm
}

\layout {
  indent = 0.0\cm
  \context{
    \ChoirStaff
    \override NoteHead #'style = #'baroque
  }
  \context {
    \Score
    \accepts "ChantStaff"
    \override PaperColumn #'keep-inside-line = ##t
  }
  \context {
    \Staff
    \name "ChantStaff"
    \alias "Staff"
    \remove "Time_signature_engraver"
    \override Stem #'transparent = ##t
    %               \override Stem #'length = #0
  }
}

signature = { \key f \major \time 2/2 }
SATB = #(define-music-function (parser location
    sopMusic        sopWords        altoMusic       altoWords       tenorMusic      tenorWords      bassMusic       bassWords)
  (ly:music?      ly:music?       ly:music?       ly:music?       ly:music?       ly:music?       ly:music?       ly:music?)
  #{
    \new ChoirStaff <<
      \new Staff << \clef treble \signature \new Voice = "soprano" $sopMusic >>
      \new Lyrics \lyricsto "soprano" { $sopWords }
      \new Staff << \clef treble \signature \new Voice = "alto" $altoMusic >>
      \new Lyrics \lyricsto "alto" { $altoWords }
      \new Staff << \clef "treble_8" \signature \new Voice = "tenor" $tenorMusic >>
      \new Lyrics \lyricsto "tenor" { $tenorWords }
      \new Staff << \clef bass \signature \new Voice = "bass" $bassMusic >>
      \new Lyrics \lyricsto "bass" { $bassWords }
>> #} )

trio = #(define-music-function (parser location
    highClef        highMusic       highWords
    midClef         midMusic        midWords
    lowClef         lowMusic        lowWords)
  (ly:music?      ly:music?       ly:music?
    ly:music?       ly:music?       ly:music?
    ly:music?       ly:music?       ly:music?)
  #{
    \new ChoirStaff <<
      \new Staff << $highClef \signature \new Voice = "high" $highMusic >>
      \new Lyrics \lyricsto "high" { $highWords }
      \new Staff << $midClef \signature \new Voice = "mid" $midMusic >>
      \new Lyrics \lyricsto "mid" { $midWords }
      \new Staff << $lowClef \signature \new Voice = "low" $lowMusic >>
      \new Lyrics \lyricsto "low" { $lowWords }
>> #} )

SAT = #(define-music-function (parser location
    sopMusic        sopWords        altoMusic       altoWords       tenorMusic      tenorWords)
  (ly:music?      ly:music?       ly:music?       ly:music?       ly:music?       ly:music?)
  #{
    \trio << \clef treble >> $sopMusic      $sopWords               << \clef treble >>      $altoMusic      $altoWords              << \clef "treble_8" >>  $tenorMusic     $tenorWords
#} )

ATB = #(define-music-function (parser location
    altoMusic       altoWords       tenorMusic      tenorWords      bassMusic       bassWords)
  (ly:music?      ly:music?       ly:music?       ly:music?       ly:music?       ly:music?)
  #{
    \trio << \clef treble >> $altoMusic     $altoWords              << \clef "treble_8" >>  $tenorMusic     $tenorWords             << \clef bass >>        $bassMusic      $bassWords
#} )

recite=\once \override LyricText #'self-alignment-X = #left
chant = #(define-music-function (parser location
    chantMusic      chantWords) (ly:music?  ly:music?)
  #{ \new ChantStaff << \new Voice = "cantus" {
        \set Score.timing = ##f
        \key d \minor \clef "G_8" 
        $chantMusic }
      \new Lyrics \lyricsto "cantus" { $chantWords }
>> #} )


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

intonation = \lyricmode {
  Ma -- gni -- fi -- cat
}
verseOne = \lyricmode {
  a -- ni -- ma me -- a Do -- mi -- num. __
} 
verseOneA = \lyricmode {
  a -- ni -- ma me -- a Do -- mi -- num, __ a -- ni -- ma me -- a Do -- mi -- num. 
}

verseTwo = \lyricmode { 
  Et ex -- \recite sultavit spi -- ri -- tus me -- us
  \recite "in Deo salu" -- ta -- ri me- o. 
}

verseThreeA = \lyricmode {
  Qui -- a re -- spe -- xit hu -- mi -- li -- ta -- tem __ an -- cil -- lae su -- ae: 
}
ecce = \lyricmode { ec -- ce e -- nim ex hoc }
beatam = \lyricmode { be -- a -- tam me di -- cent }
omnes = \lyricmode { o -- mnes ge -- ne -- ra -- ti -- o -- nes, __ }
omness = \lyricmode { o -- mnes ge -- ne -- ra -- ti -- o -- nes. }
verseThree = { \verseThreeA \ecce \beatam \omnes }
verseThreeB = { \verseThreeA \beatam \omnes }

verseFour = \lyricmode { 
  Qu -- ia \recite "fecit mihi" mag -- na qui po -- tens est:
  \recite "et sanctum" no -- men e -- ius.
}
verseFive = \lyricmode {
  Et mi -- se -- ri -- cor -- di -- a e -- ius __
  a pro -- ge -- ni -- e __ in pro -- gen -- i -- es, in pro -- gen -- i -- es 
  ti -- men -- ti -- bus __ e -- um, ti -- men -- ti -- bus e -- um.
}
verseSix = \lyricmode {
  Fe -- cit \recite "potentiam in" bra -- chi -- o su -- o:
  \recite "dispersit superbos mente" cor -- dis su -- i.  
}

Deposuit = \lyricmode { De -- po -- su -- it po -- ten -- tes de se -- de, }
deposuit = \lyricmode { de -- po -- su -- it po -- ten -- tes de se -- de, }
exaltavit = \lyricmode { et ex -- al -- ta -- vit }
exaltavitt = \lyricmode { et ex -- al -- ta -- vit, }
humiles = \lyricmode { \exaltavit hu -- mi -- les, }
humiless = \lyricmode { hu -- mi -- les. }
verseSevenSop = \lyricmode {
  \Deposuit \deposuit de __ se -- de, __
  \humiles \exaltavit \humiless
}
verseSevenAlto = \lyricmode {
  \Deposuit po -- ten -- tes de se -- de, __
  \deposuit po -- ten -- tes de se -- de,
  et ex -- al -- ta -- vit __ hu -- mi -- les,
  \exaltavit hu -- mi -- les. __
}
verseSevenTenor = \lyricmode {
  \Deposuit de se -- de, __ \deposuit
  \humiles \exaltavit hu -- mi -- les, __ \humiless
}
verseSevenBass = \lyricmode {
  \Deposuit \deposuit \exaltavitt \exaltavitt \humiles \humiless
}
verseEight = \lyricmode {
  E -- sur -- \recite ientes im -- ple -- vit bo -- nis:
  \recite "et divites dimis"  -- it in -- a -- nes.
}

puerum = \lyricmode { pu -- e -- rum su -- um, }
Suscepit = \lyricmode {Su -- sce -- pit Is -- ra -- el \puerum }
suscepit = \lyricmode {su -- sce -- pit Is -- ra -- el }
puerumm = \lyricmode { pu -- e -- rum su -- um, __ }
misericordiae = \lyricmode { mi -- se -- ri -- cor -- di -- ae su -- ae, }
verseNineAlto = \lyricmode {
  \Suscepit \suscepit \puerum \puerum
  re -- cor -- da -- tus, re -- cor -- da -- tus __ \misericordiae
  mi -- se -- ri -- cor -- di -- ae __ su -- ae.
}
verseNineTenor = \lyricmode {
  \Suscepit \puerumm \suscepit \puerum
  re -- cor -- da -- tus \misericordiae
  mi -- se -- ri -- cor -- di -- ae __ su -- ae.
}
verseNineBass = \lyricmode {
  \Suscepit \suscepit \puerumm
  re -- cor -- da -- tus mi -- se -- ri -- cor -- di -- ae __ su -- ae,
  mi -- se -- ri -- cor -- di -- ae su -- ae.
}

verseTen = \lyricmode {
  Si -- cut \recite "locutus est" ad Pa -- tres no -- stros,
  \recite "Abraham et semini ei" -- us in sae -- cu -- la.
}

Spiritui = \lyricmode { et Spi -- ri -- tu -- i Sanc -- to, }
Spirituii = \lyricmode { et Spi -- ri -- tu -- i Sanc -- to. }
verseElevenSop = \lyricmode {
  Glo -- ri -- a Pa -- tri, et Fi -- li -- o, __
  glo -- ri -- a Pa -- tri, et Fi -- li -- o,
  \Spirituii
}
verseElevenAlto = \lyricmode {
  Glo -- ri -- a Pa -- tri, et __ Fi -- li -- o, et Fi -- li -- o, 
  glo -- ri -- a Pa -- tri, et __ Fi -- li -- o, et Fi -- li -- o, 
  \Spiritui \Spiritui \Spirituii
}
verseElevenTenor = \lyricmode {
  Glo -- ri -- a Pa -- tri, et Fi -- li -- o, et Fi -- li -- o, __
  glo -- ri -- a Pa -- tri, et Fi -- li -- o, et __ Fi -- li -- o, 
  \Spiritui \Spirituii
}
verseElevenBass = \lyricmode {
  Glo -- ri -- a Pa -- tri, et Fi -- li -- o, __ et Fi -- li -- o, __
  \Spiritui \Spirituii
}

verseTwelve = \lyricmode {
  Si -- cut \recite "erat in principio" et nunc et sem -- per:
  \recite "et in saecula saecu" -- lo -- rum. A -- men.
}

festiveTone = << \relative {
    bes4 c( d) d1 d4( c) c( es) d d( c) c2( d) \bar "|"
    d1 c4 bes c( d) c2( bes) \bar "||"
} >>

festiveToneA = << \relative {
    bes4 c( d) d1 d4( c) c( es) d d d( c) c2( d) \bar "|"
    d1 c4 bes c( d) c2( bes) \bar "||"
} >>

festiveToneB = << \relative {
    bes4 c( d) d1 d4( c) c( es) d d( c) c2( d) \bar "|"
    d1 c4 bes c( d) c c2( bes) \bar "||"
} >>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score { 
  \chant << \relative {bes4 c( d) d d \bar "|"} >> \intonation
  \header { piece = "1." }
  \layout { ragged-last = ##t }
}

sopMusic =  << \relative {
    d'2 d4 d4 c2 bes d( c~ c4 bes a) a |
    g8( a bes c d2) r4 a bes bes a8( g a bes c4) a4~ a g2 fis4 |
    \cadenzaOn g\breve\fermata \cadenzaOff \bar "||"
} >>
altoMusic = << \relative {
    r4 g' bes bes a f g4.( f16 e d8 e f g a bes a4~ a8 g g2) f4 |
    bes4.( a16 g f4 g a2) r4 d, f f e c d2. d4 | 
    d\breve\fermata  
} >>
tenorMusic = << \relative {
    R1 r2 g2 bes4 bes a f g g d'2 |
    r4 d d d c2 bes d2( c~ c4 bes a) a | 
    g\breve\fermata
} >>
bassMusic = << \relative {
    R1*4 | 
    g2 bes4 bes a f g4.( f8 d e f g a4. g8 fis4) g d2( |
    g\breve)\fermata 
} >>

\score {
  \SATB \sopMusic \verseOneA \altoMusic \verseOneA \tenorMusic \verseOneA \bassMusic \verseOne
  \layout {
    %system-count = #1
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}


\score { 
  \chant \festiveTone \verseTwo
  \header { piece = "2." }
  \layout { ragged-last = ##t }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopMusic =  << \relative {
    R1*2 bes'2 c4 c d2 d4 f f8( e d c bes4) a g2 f4 f' e d4.( c8 c4) bes( a2 g4) a1 | r4
    d4. d8 bes4 c d a d f2 e4 d4~d cis d2 |
    R1 r2 r4 d4~ d d d d c bes c( d~d c2 bes4 a2) g8( a bes c d1) |
    r2 r4 d4~d c bes4. bes8 bes4 c d8( c bes a bes4 a4. g8 g4 fis g2 fis4) |
    \cadenzaOn g\breve\fermata \cadenzaOff \bar "||"
} >>
altoMusic = << \relative {
    R1 r2 f2 g4 g a8( bes c a bes2.) a4 r4 bes4 g f bes2 a~a1 r2 d,2 c4 d e2 | d4 
    f4. f8 g4 a d, f4. g8 a4 d, g f8( e16 d e2) d |
    R1 r4 g2 f4 bes4. bes8 bes4 a g2.( f8 e f g a2 g4~g f) g4.( a8 bes4 a8 g f2) |
    r4 a2 a4 a a g f g( a2 g4~ g f es2 d1) | 
    d\breve\fermata  
} >>
tenorMusic = << \relative {
    r2 bes2 c4 c d2 d r4 f4 f8( e d c bes4) c d2 d~d r4 d4 c d e4.( f8 g4 f2 e8 d e4 d2 cis4) | d2
    r2 r2 r4 d4~d8 d bes4 c d a2 r4 d4 f2 e4 d~d c( bes a) | g
    g'2 f4 es4. es8 es4 d bes( c) d2~d1 |
    r2 r4 d4~ d c f4. f8 f4 e d2 d4 f4.( e8 d c d4) a c4. bes8 a4 g a2 |
    g\breve\fermata
} >>
bassMusic = << \relative {
    f,2 g4 g a8( bes c a bes4. a8 g2) f bes g4 f bes4.( a8 bes c d4) g,2( d) r2 a'2 g4 a bes2( a1) | d,2 
    r2 R1*2 r4 a'4 bes2 a4 f g4.( f8 e2) d |
    R1*3 r2 g2~g4 f bes4. bes8 bes4 a f d |
    a'2( bes) g4 f2 g4 d2 c d1 | 
    g\breve\fermata 
} >>

\score { 
  \SATB \sopMusic {\verseThree \omness} \altoMusic {\verseThree \omness}
  \tenorMusic {\verseThree \omnes \omness} \bassMusic {\verseThreeB \omness}
  \header { piece = "3." }
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\score { 
  \chant \festiveToneA \verseFour
  \header { piece = "4." }
  \layout { ragged-last = ##t }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopMusic =  << \relative {
    R1 d'2. d4 c g bes c d2 f4.( d8 es4) d2( c8 bes a1~a2) r2 |       r4 c2 bes4d4 es d4.( c8 bes4. a16 g a2) c4 d e( f~f8 e d2) cis4 | d2
    r4 d4~d c a8(bes c a bes4 a8 g f g a b c d e4. d8 d4~d) cis d2~d2 r2 |
    r4 d4 d2~ d4 c bes2 d 2.( c4 bes a8 g a2) g2 r4 d'4 d2. c4 bes d2( c4 bes a8 g a2) |
    \cadenzaOn g\breve\fermata \cadenzaOff \bar "||"
} >>
altoMusic = << \relative {
    g'2. g4 f d f g a bes4.( g8 a4 bes a8 g a4 bes c bes2 a8 g f4. e8 d4 cis d4. e8 f4 g~g fis) g2~ g1 |
    r4 g2 f4 a bes a2~a2 r4 g4~g f d8( e f d e4) e f a g f8( g a b c4~c8 b a4 g8 f f e16 d e4) e d2 |
    r4 a'4 a2 g4 f4.( g8 a g16 a bes4) a4.( a8 g4~g f8 e f d e f g2) d |
    r4 b'4 b2~b4 a f g(~g f8 e f g a4~a g2 fis4)
    g\breve\fermata  
} >>
tenorMusic = << \relative {
    R1*3 d2. d4 c g bes c d f4.( d8 e4 f d2 c8 bes a2) g |
    r4 c2 bes4 d es d2 r4 g2 f4 d8( e f d e4) e d4.( c8 bes2 a) r2 |
    r4 d2 c4 a8( b c a bes4) bes | a2 
    r4 d4 d2. c4 bes4.( c8 d e f4) g( c, es2 d4. c8 bes4 a g g'2 fis4) | g4
    r8 g8 g2~g4 f d es(~es d8 c bes4 c d1) |
    g,\breve\fermata
} >>

\score { 
  \SAT \sopMusic {\verseFive} \altoMusic {\verseFive}
  \tenorMusic {\verseFive}
  \header { piece = "5. Cum tribus vocibus" }
  \layout {
    %           system-count = #4
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\score { 
  \chant \festiveTone \verseSix
  \header { piece = "6." }
  \layout { ragged-last = ##t }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopMusic =  << \relative {
    R1 r2 g'2 d'4. d8 d4 e f2 d4 c4~c f4.( e16 d e4 d4. c8 bes2~bes4 a8 g f4 g) d'1 |
    r4 g,4 d'4. d8 d4 e f2 d4 c f4.( e8 d4 c bes2) a1 |
    r4 d4.( c8 bes4~bes a8 g f4) bes4(~bes8 g a4. g16 f g4) a1~a2 r2 |
    r2 r4 a4 bes c d2( c4. a8 bes c d4~ d4) c bes( a8 g8 bes4) a a2 |
    R1 r2 a2 bes4 c d2 bes4 d2( c4~c4 b) c2 
    \cadenzaOn b\breve\fermata \cadenzaOff \bar "||"
} >>
altoMusic = << \relative {
    d2 g4. g8 g4 a bes2 g4 f bes2 a2. g4 a2 f4 g a4.( g16 f g2 e) d2~ | d
    r4 d4 g4. g8 g4 a bes2 a4 f bes( a8 g a4 bes~bes a4. g8 g4~g f4. e16 d cis4) | d2 
    r4 d4 d c d bes8( c d e f4. e8 d4~d cis) d2 | 
    r4 f4 g a bes( a8 g f4) d8( e f g a2) g4~g fis g 
    d | e f g2(~g4 f8 e f g a f g f16 g a4) d, bes'(~bes a8 g f g a4~a8 g g2) fis4 g1~g~
    g\breve\fermata  
} >>
tenorMusic = << \relative {
    R1*2 r2 g2 d'4. d8 d4 e f2 d4 c f4.( e8 d f d4~d8 cis16 b cis4) d 
    g, | bes( a g4. a8 bes2. a4) g8( a bes c d2) |
    R1 r2 g,2 d'4. d8 d4 e f2 d4 g4~g f4.( e8 d c bes4 c d2 e) f4
    d | d d c2 bes d(~d4 c bes a8 g a4) a g2 |
    R1 r4 d'4 d d c2 bes d2.( c4 bes a8 g a4) a g8( a bes c d c16 d es4) d2( es4.) es8
    d\breve\fermata
} >>
bassMusic = << \relative {
    R1*5 d,2 g4. g8 g4 a bes2 g4 f bes4.( a8 g f g4. fis16 e fis4 g2) d |
    R1*3 d2 g4. g8 g4 a bes2 g4 f bes2( a) d, |
    r4 d4 e f g2 d | 
    R1*2 a'2 bes4 c d2 d,4 d e f g2(~g4 f8 e d4) f g es d2 |
    g4.( a8 bes4 c g2 c,4.) c8 
    g'\breve\fermata 
} >>

\score { 
  \SATB \sopMusic \verseSevenSop \altoMusic \verseSevenAlto
  \tenorMusic \verseSevenTenor \bassMusic \verseSevenBass
  \header { piece = "7." }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\score { 
  \chant \festiveTone \verseEight
  \header { piece = "8." }
  \layout { ragged-last = ##t }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

altoMusic = << \relative {
    r2 d2 f2. g4 a bes a a~a8 a g4 f4.( e16 d e2 f) e r2 |
    r2 r4 d4 f2. g4 a bes a a~a8 a g4 f8( e f g a2. g8 f e4 d c d~d cis) d2 |
    r4 g4. f8 f4 e2 d  r4 g4 f bes(~bes8 a16 g a4) d,2 |
    r2 r4 g4~g f bes4.( a16 g a2) a4( g8 f e2) r2 | r4 d4 f g a a bes bes~(bes a8 g f4) g |
    r4 d f g a a bes4.( g8 a4) bes4.( a8 g4~ g fis)
    \cadenzaOn g\breve\fermata \cadenzaOff \bar "||"
} >>
tenorMusic = << \relative {
    g2  bes~bes4 c d e d d4. d8 c4 a( bes c d~d cis) d2 |
    r4 g4. f8 f4 e( d f4. e8 d4 c) d4.( e8 f4 g2 f8 e f4 e d2) |
    r4 a4 c2~c4 d e f e2 f4. f8 f4 e4.( d8 d4 d cis) d2~d1 |
    r2 r4 d4 c f4.( e16 d e4) d2 r4 d4 d d c bes c2 d4.( bes8 c4 d4. c8 bes4) a2 
    r4 g4 | bes c d d bes4.( c8 d4 c8 bes a4) d4.( bes8 es4 d8 c bes a g2 a2)
    g\breve\fermata
} >>
bassMusic = << \relative {
    R1*2 d,2 f2~f4 g a bes a2 r4 d4~d8 c c4 bes( a g8 a bes c d4. c8 bes4 a bes2 a4 g) d'2 |
    r2 r4 d,4 f2. g4 a bes a2~a r4 d4~ d8 d c4 bes4.( a8 g4 a4) bes8( a g f g2) 
    r4 g4~ | g f bes4.( a16 g a4 f8 g a bes c4) bes4.( a8 g2) |
    r4 d4 f g a a bes4.( g8 a4) bes4.( a8 g4~g fis) g2 |
    r2 r4 g4 g g f e f2 g2( f4 g4. f8 es4 d2)  
    g\breve\fermata 
} >>

\score { 
  \ATB \altoMusic \verseNineAlto
  \tenorMusic \verseNineTenor \bassMusic \verseNineBass
  \header { piece = "9. Cum tribus vocibus" }
  \layout {
  
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\score { 
  \chant \festiveToneB \verseTen
  \header { piece = "10." }
  \layout { ragged-last = ##t }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopMusic =  << \relative {
    R1*2 r2 bes'2~bes4 bes c2 d bes4 bes a bes g4.( a8 bes a bes c d2 c4. bes8 a2) |
    r2 r4 bes4~bes bes c2 d1 c2 f e4( f4. e8 d4~d) cis d2 |
    R1*4 r4 d2 d4 d2 c4 bes c2( d~d4 c bes2~bes4 a g bes a8 g g2 fis4) |
    \cadenzaOn g\breve\fermata \cadenzaOff \bar "||"
} >>
altoMusic = << \relative {
    f2. f4 g2 a a4 bes4.( a8 g4) f4( g4. f8 g a bes4. a8 g f g4~g8 f f2) e4 f f bes4. a8 g2 r2 |
    f2. f4 g2 a f4 bes a bes g a4.( g8 a bes c4) f,2 g4 a2 r4 
    a4~ | a a a2 g4 f g2( a2. g4 f e8 d e2) d4 bes'2 a4 bes4.( a8 g4) f g a d,2 |
    f2. f4 g a bes8( a g f e d e4) d2 
    g\breve\fermata  
} >>
tenorMusic = << \relative {
    r2 bes2~bes4 bes c2 d bes4 es d es c2 bes4 g4.( a8 bes c d4) bes c2( d4. e8 f g f4~f8 e16 d e4 f2) |
    d4. d8 c4 d4(~d c8 bes8 f'2) d4 g f g e d4.( e8 f g a2) d,2( e4.) e8 d4
    f4~ | f e f4.( e8 d4) c d e(~e8 d c d16 e f4 e~e d2 cis4) | d4
    g2 fis4 g4.( f8 e4) d e f4.( e8 d c bes4 c d2~d1 c4. bes8 a2)
    g\breve\fermata
} >>
bassMusic = << \relative {
    R1*6 bes2. bes4 c2 d bes4 bes a bes g2( f) |
    R1 r2 d'2 c4 d bes2( a) r4 d4~d cis d4.( c8 bes4) a bes c4(~c8 bes a g f4 g a1 bes4. c8 d2) g, r2 |
    r2 r4 bes4~bes a bes4.( a8 g4) fis g2 c,( d) |
    g\breve\fermata 
} >>

\score { 
  \SATB \sopMusic \verseElevenSop \altoMusic \verseElevenAlto
  \tenorMusic \verseElevenTenor \bassMusic \verseElevenBass
  \header { piece = "11." }
  \layout {
    
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}

\score { 
  \chant \festiveTone \verseTwelve
  \header { piece = "12." }
  \layout { ragged-last = ##t }
}



