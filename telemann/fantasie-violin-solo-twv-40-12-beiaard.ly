\version "2.16.2"
#(set-global-staff-size 18)
\paper {
  page-count = 2
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  title = "XII Fantasie per il Violone senza Basso"
  composer = "G.Ph. Telemann (1681-1767)"
  arranger = "(orig in b) beiaardarr.: Wilbert Berendsen"
}

%% BEGIN part I

globalI = {
  \key b \minor
  \tempo "Siciliana"
  \time 12/8
  \partial 8
  \accidentalStyle modern
}

violinI = \relative c'' {
  \globalI
  fis8
  | b,4 b8 b8. d32 cis b8 g,4 g'8 g,4 d''8
  | cis8. g'16( e8) cis8. d16( b8) fis4 cis'8 fis,8. fis'16( e8)
  | dis4\trill fis,8 b,8. a''16( fis8) g4 b,8 e,8. e'16( d8)
  | cis4\trill e,8 a,8. a''16( g8) fis4\trill a,8 d,4 a''8
  | b8. cis,16( d8) a'8. cis,16( d8) b8.\p cis,16( d8) a'8. cis,16( d8)
  | g'8.\f a16( fis8) g8. a16( fis8) g4 b,8 a4 a'8
  | fis8.\trill e16 d8 a8. d16 cis8 d,4 d'8 d,4 b'8
  | c4 e,8 fis8. b16( ais8) b4 d,8 g,4 fis''8
  | g4 b,8 cis8. fis16( eis8) fis4 cis8 fis,4 ais'8
  | b8. a16( <gis d>8) a8. g16( <fis cis>8) g8. fis16( <eis b>8) fis8. e16( <d a>8)
  | e8. d16( <cis g>8) <d fis,>4 <fis d,>8 b,4 b8 b8. d32 cis b8
  | g,4 g'8 g,4 d''8 cis8. g'16( e8) cis8. d16( b8)
  | fis4 cis'8 fis,4 g'8 fis8. ais16( b8) d,8. e16( cis8)
  | e,4 b'8 e,8. g32( fis e8) <e ais,>4.\fermata r4 g8
  | fis8. d'16( ais8) b8. g'16( dis8) e8. b'16( eis,8) fis4 fis,8
  | d'8. cis16( b8) e,8. cis'16( <ais fis>8) <b fis b,>4. r4 r8
  \bar "|."
}

\score {
  \new Staff { \transpose b a \violinI }
}


%% BEGIN part II

globalII = {
  \key b \minor
  \tempo "Vivace"
  \time 2/4
  \partial 8
  \accidentalStyle modern
}

violinII = \relative c'' {
  \globalII
  \repeat volta 2 {
    fis8
    | b,16( cis d) cis fis b, b' b,
    | g'8 fis4 b8
    | b,16( cis d) b fis' d e cis
    | d8 b4 d8
    | g16 e fis g a, g' fis e
    | fis16 d a fis d fis' e d
    | a'16 fis g a b, a' g fis
    | g16 e b g e g' fis e
    | b'8 g, a' fis,
    | g'8 e, fis' d,
    | g16( b) e( dis) e( cis) d( b)
    | cis16 a e cis a8 g''
    | fis8 e16( d) a8 cis
    | d,16( d') fis( d) a'( d,) d'( d,)
    | d,16( d') g( d) b'( d,) d'( d,)
    | d,16( d') fis( d) a'( d,) d'( d,)
    | b'8 g, a' fis,
    | g'8 e, fis' d,
    | g16( b) e( dis) e( cis) d( b)
    | cis16 a e cis a8 a''
    | gis16( a b) gis fis( gis a) fis
    | eis16 gis fis gis cis,8 b
    | a8 gis16( fis) gis8 eis'
    | fis16 a, b cis fis b, cis d
    | fis16 a, b cis fis b, cis d
    | fis16 a, b cis b gis a b
    | a8 fis' cis, eis'
    | <fis cis fis,>4.
  }
  \repeat volta 2 { 
    a8
    | d,16( e fis) d a' d, d' d,
    | b'8 a4 d8
    | d,16( e fis) d a' fis g e
    | fis8 d4 a8
    | b16 g a b d, b' a g
    | c16 a b c d, c' b a
    | b16 d, g b c d, a' c
    | b16 g'( fis e d c b a)
    | b16 e( d c b a g fis)
    | g16 b( a g fis e d c)
    | b8 g' a, fis'
    | g,16( g') b( g) d'( g,) g'( g,)
    | g,16( g') c( g) e'( g,) g'( g,)
    | g,16( g') b( g) d'( g,) g'( g,)
    | fis'16 d g b, <a d,>8 fis'
    | <g b, d, g,>4. b,16 cis
    | d8 fis, gis d'
    | a,8 cis'16( b) cis8 d16( b)
    | cis16 a b cis e, cis' b a
    | d16 b cis d e, d' cis b
    | cis16 e, a cis d e, b' d
    | cis16 a'( gis fis e d cis b)
    | cis16 fis( e d cis b a gis)
    | a16 e cis e a,8 e''16( dis)
    | e8 gis, ais e'
    | b,8 d'16( cis) d( b) e( dis)
    | e8 gis, ais e'
    | b,8 d'16( cis) d( b) fis'8
    | g16 b g e \times 2/3 { cis16 d e } \times 2/3 { a,16 b cis }
    | fis16 a fis d \times 2/3 { b16 c d } \times 2/3 { g,16 a b }
    | e16 g e cis ais cis fis, cis'
    | \times 2/3 { d16 cis b } \times 2/3 { e16 d cis } \times 2/3 { d16 cis b } \times 2/3 { e16 d cis }
    | d16( b) fis'( d) e( cis) d( b)
    | cis16 ais b cis fis,8 fis'
    | b,16( cis d) b fis' b, b' b,
    | g'8 fis4 e8
    | d8 cis16( b) fis8 ais
    | b16 d, e fis b e, fis g
    | b16 d, e fis b e, fis g
    | b16 d, e fis e cis d e
    | d8 b' cis, ais'
    | <b, fis' b>4.
  }
}
 
\score {
  \new Staff { \transpose b a \violinII }
}



%% BEGIN part III

globalIII = {
  \key b \minor
  \time 9/8
  \tempo "Allegro"
  \accidentalStyle modern
}

violinIII = \relative c'' {
  \globalIII
  \repeat volta 2 {
    | b8( b') b, b( b') b, b( b') b,
    | e8 g4 b,8 d4 cis8 e4
    | a,8( a') a, a( a') a, a( a') a,
    | d8 fis4 a,8 c4 b8 d4
    | e,8( cis') cis e( cis) cis fis,( cis') cis
    | g8( cis) cis e( cis) cis fis,( cis') cis
    | e,8( cis') cis e( cis) cis g( cis) cis
    | fis,8( ais) cis ais( cis) e g( fis) e
  }
  \repeat volta 2 { 
    | dis4 b8 b4.\trill b\trill
    | fis'4 b,8 b4.\trill b\trill
    | g'8 dis( e) b' dis,( e) b dis( e)
    | fis8 dis( e) a, dis( e) b e( dis)
    | e,4 cis'8 cis4.\trill cis\trill
    | gis'4 cis,8 cis4.\trill cis\trill
    | a'8( gis fis a gis fis a gis fis)
    | g8( fis e g fis e g fis e)
    | d8( d') d, d( d') d, d( d') d,
    | d8 g4 d8 b'4 d,8 d'4
    | d,8( d') d, d( d') d, d( d') d,
    | a8 cis4 a8 e'4 a,8 g'4
    | fis8 cis( d) a'( cis, d) a cis( d)
    | e8 cis( d) g, cis( d) a d( cis)
    | d,4 fis'8 fis4.~(\trill fis8 e d)
    | ais,4 e''8 e4.~(\trill e8 d cis)
    | b,4 d'8 e,4 g'8 cis,4 e8
    | ais,4.~\trill ais4 fis8 b( cis) d
    | e,8( cis') cis e( cis) cis fis,( cis') cis
    | g8( cis) cis e( cis) cis fis,( cis') cis
    | e,8( cis') cis e( cis) cis g( cis) cis
    | fis,8( ais) cis ais( fis) ais b,4.
  }
}

\score {
  \new Staff { \transpose b a \violinIII }
}

