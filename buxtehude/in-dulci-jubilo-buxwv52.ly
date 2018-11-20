\version "2.19.82"

structuur = {
  \key f \major
  \time 3/2

  \skip 1.*65
  \bar "||"
  \skip 1.*65
  \bar "||"
  \skip 1.*66
  \bar "||" %%% maat 196
  \skip 1.*63
  \bar "|."
}

violinoA = \relative {
  R1.*5
  r2 r b''
  c2. d4 b2
  c4 d c d b2
  c1 r2

  R1.*4
  r2 r b
  c2. d4 b2
  c4 d c d b2
  c1 r2

  R1.*7
  r2 r g
  f1 g2
  a1 g2
  f1 g2
  a1 r2

  R1.*7
  r2 r g
  f1 g2
  f1 g2
  f1 g2
  a1 r2

  R1.*6
  R1.
  d,2. e4 f2
  f1 e2f2. g4 a2
  g2. a4 g a
  g2. a4 g a
  g2. f4 e2
  e2. f4 e f
  e2. f4 e f
  e2. d4 c2
  c1 g'2
  a2 bes2. bes4
  c2. d4 c d
  c2. d4 c d
  c2. bes4 a2
  a2. bes4 a bes
  a2. bes4 a bes
  a2. g4 f2
  f1 r2

%%%% couplet 2
  R1.*4
  r2 r b
  c2. d4 b2
  c4 d c d b2
  c1 r2

  R1.*4
  r2 r b
  c2. d4 b2
  c4 d c d b2
  c1 r2

  R1.*7
  r2 r g
  f1 g2
  a1 g2
  f1 g2
  a1 r2

  R1.*7
  r2 r g
  f1 g2
  f1 g2
  f1 g2
  a1 r2

  R1.*6
  R1.
  d,2. e4 f2
  f1 e2f2. g4 a2
  g2. a4 g a
  g2. a4 g a
  g2. f4 e2
  e2. f4 e f
  e2. f4 e f
  e2. d4 c2
  c1 g'2
  a2 bes2. bes4
  c2. d4 c d
  c2. d4 c d
  c2. bes4 a2
  a2. bes4 a bes
  a2. bes4 a bes
  a2. g4 f2
  f1 r2

%%%%% couplet 3
  R1.*4
  r2 r b
  c2. d4 b2
  c4 d c d b2
  c1 r2

  R1.*4
  r2 r b
  c2. d4 b2
  c4 d c d b2
  c1 r2

  R1.*7
  r2 r g
  f1 g2
  a1 g2
  f1 g2
  a1 r2

  R1.*7
  r2 r g
  f1 g2
  f1 g2
  f1 g2
  a1 r2

  R1.*6
  R1.
  d,2. e4 f2
  f1 e2f2. g4 a2
  g2. a4 g a
  g2. a4 g a
  g2. f4 e2
  e2. f4 e f
  e2. f4 e f
  e2. d4 c2
  c1 g'2
  a2 bes2. bes4
  c2. d4 c d
  c2. d4 c d
  c2. bes4 a2
  a2. bes4 a bes
  a2. bes4 a bes
  a2. g4 f2
  f1 r2

%%% couplet 4

  a4 a8 a f4 a8 a c4 c8 bes
  a4 f8 f a4 c8 c d4 d8 d
  g,4 g8 a g4 f8 f e4 g8 g
  g4 g8 a g4 f8 f e4 e8 f
  g4 g8 a g4 g8 a bes4 bes8 c
  a4 f8 f a4 a8 a c4 c8 bes
  a4 f8 f a4 c8 c d4 d8 d
  g,4 g8 a g4 f8 f e4 g8 g
  g4 c,8 c e4 e8 f g4 g8 a
  g4 g8 f g4 g8 a bes4 bes8 c
  a4 f8 f a4 c8 c bes4 d,8 d
  a'4 bes8 bes c4 a8 a bes4 bes8 bes
  f4 e8 e f4 g8 g a4 a8 a
  d,4 f8 f bes4 d8 d c4 c8 c
  bes4 c8 c bes4 a8 a g4 g8 g
  a4 c8 c a4 bes8 bes c4 c8 c
  f,4 f8 f bes4 bes8 bes bes4 bes8 c
  a4 a8 a c4 c8 c f,4 es8 es
  d4 f8 f g4 a8 a bes4 g8 g
  a4 a8 a c4 c8 c bes4 bes8 bes
  c4 c8 c a4 a8 a bes4 bes,8 bes
  f'4 e8 e f4 g8 g a4 e8 e
  f4 f8 f a4 a8 a d4 d8 d
  bes4 bes8 bes bes4 d8 d c4 c8 c
  c4 c8 c a4 a8 a a4 a8 a
  a4 a8 a f4 f8 f d4 d8 d
  cis4 e8 e a4 e8 e cis4 a'8 a
  a,4 d8 d e4 f8 g e4. d8
  d4 f8 f f4 r r c'8 c
  c4 bes8 bes g4 g8 bes bes4 bes8 bes
  a4 c8 c c4 r r d8 d
  c4 c8 bes bes4 bes8 bes bes4 bes8 a
  a2 r r
  R1.
  a2. bes4 c2
  bes2. a4 bes2
  a2 r r
  R1.
  a2. bes4 c2
  bes2. a4 bes2
  a2 r r
  R1.
  r2 r a
  r2 r g
  R1.*4
  a2. g4 f2
  d2. f4 g2
  a2 r a
  r2 r g
  r2 r f
  r2 r es
  d2 d'2. a4
  c2. c4 c2
  c2 r r
  c2 r r
  d2 r r
  c2 r r
  d1 d4 a
  c2. d4 c2
  c1 r2
}


violinoB = \relative {
  R1.*5
  r2 r f''
  g2. a4 f2
  g4 a g a f g
  e1 r2

  R1.*4
  r2 r f
  g2. a4 f2
  g4 a g a f g
  e1 r2

  R1.*7
  r2 r e
  d1 e2
  f1 e2
  d1 e2
  f1 r2

  R1.*7
  r2 r e
  d1 e2
  d1 e2
  d1 d2
  cis1 r2

  R1.*6
  a2. b4 c2
  c1 b2
  c1 g2
  a2. bes4 c f
  e2. f4 e f
  e2. f4 e f
  e2. d4 c2
  c2. d4 c d
  c2. d4 c d
  c2. b4 c2
  c1 e2
  f2 g2. g4
  a2. bes4 a bes
  a2. bes4 a bes
  a2. g4 f2
  f2. g4 f g
  f2. g4 f g
  f2. e4 f2
  f1 r2

%%%% coupl 2

  R1.*4
  r2 r f
  g2. a4 f2
  g4 a g a f g
  e1 r2

  R1.*4
  r2 r f
  g2. a4 f2
  g4 a g a f g
  e1 r2

  R1.*7
  r2 r e
  d1 e2
  f1 e2
  d1 e2
  f1 r2

  R1.*7
  r2 r e
  d1 e2
  d1 e2
  d1 d2
  cis1 r2

  R1.*6
  a2. b4 c2
  c1 b2
  c1 g2
  a2. bes4 c f
  e2. f4 e f
  e2. f4 e f
  e2. d4 c2
  c2. d4 c d
  c2. d4 c d
  c2. b4 c2
  c1 e2
  f2 g2. g4
  a2. bes4 a bes
  a2. bes4 a bes
  a2. g4 f2
  f2. g4 f g
  f2. g4 f g
  f2. e4 f2
  f1 r2

%%%% coupl 3

  R1.*4
  r2 r f
  g2. a4 f2
  g4 a g a f g
  e1 r2

  R1.*4
  r2 r f
  g2. a4 f2
  g4 a g a f g
  e1 r2

  R1.*7
  r2 r e
  d1 e2
  f1 e2
  d1 e2
  f1 r2

  R1.*7
  r2 r e
  d1 e2
  d1 e2
  d1 d2
  cis1 r2

  R1.*6
  a2. b4 c2
  c1 b2
  c1 g2
  a2. bes4 c f
  e2. f4 e f
  e2. f4 e f
  e2. d4 c2
  c2. d4 c d
  c2. d4 c d
  c2. b4 c2
  c1 e2
  f2 g2. g4
  a2. bes4 a bes
  a2. bes4 a bes
  a2. g4 f2
  f2. g4 f g
  f2. g4 f g
  f2. e4 f2
  f1 r2

%%%% coupl 4

  f4 f8 f c4 c8 c g'4 g8 g
  c,4 c8 c f4 a8 a f4 f8 f
  e4 e8 f e4 d8 d c4 b8 b
  e4 e8 f e4 d8 d c4 c8 d
  e4 e8 f e4 e8 f g4 g8 a
  f4 c8 c f4 c8 c g'4 g8 g
  c,4 c8 c f4 a8 a f4 f8 f
  e4 e8 f e4 d8 d c4 b8 b
  e4 g8 g c,4 c8 d e4 e8 f
  e4 e8 d e4 e8 f g4 g8 a
  f4 c8 c f4 a8 a d,4 f8 f
  f4 g8 g a4 f8 f e4 d8 d
  d4 cis8 cis d4 e8 e d4 cis8 cis
  d4 d8 d f4 f8 f f4 f8 f
  g4 a8 a g4 c,8 c c4 c8 c
  c4 a8 a c4 c8 c c4 c8 c
  d4 d8 d d4 f8 f e4 g8 g
  c,4 f8 f a4 a,8 a c4 c8 c
  bes4 d8 d e4 f8 f f4 e8 e
  f4 f8 f a4 a8 a d,4 f8 f
  a4 a8 a f4 f8 f e4 d8 d
  d4 cis8 cis d4 e8 e d4 cis8 cis
  d4 d8 d f4 f8 f f4 bes8 bes
  bes4 bes8 bes bes4 a8 a g4 g8 g
  a4 a8 a f4 d8 d e4 e8 e
  f4 f8 f a4 a8 a g4 g8 d
  a'4 cis,8 cis e4 cis8 cis a4 a8 a
  a4 a8 a cis4 d8 d d4. cis8
  d4 d8 d d4 r r a'8 a
  d,4 d8 d d4 g8 g g4 g8 g
  f4 a8 a a4 r r a8 a
  g4 g8 g g4 g8 g g4 g8 f
  f2 r r
  R1.
  f2. g4 a2 g2. f4 g2
  f2 r r
  R1.
  f2. g4 a2 g2. f4 g2
  f2 r r
  R1.
  r2 r f
  r2 r e
  R1.*4
  f2. e4 c2
  f,2. a4 bes2
  c2 r c
  r2 r bes
  r2 r a
  r2 r c
  f,2 f'2. f4
  a2. bes4 c2
  a2 r r
  g2 r r
  f2 r r
  f2 r r
  f1 f2
  f2. f4 g2
  a1 r2
}

basso = \relative {
  r2 r f
  bes2. a4 g2
  f2. e4 d2
  e2. f4 d2
  d2. f4 g2
  c,1
  
  d2
  e2. f4 d2
  d2. f4 g2
  c,1
  
  f2
  bes2. a4 g2
  f2. e4 d2
  e2. f4 d2
  d2. f4 g2
  c,1
  d2
  e2. f4 d2
  d2. f4 g2
  c,1 r2
  
  f1 bes,2
  f'1 g2
  a1. 
  bes1 a2
  bes2. a4 g2
  f2. g4 a2
  bes2. a4 g2
  f2. g4 a2
  bes2. a4 g2
  f2. g4 a2
  bes2. a4 g2
  f1 f2
  f1 d2
  e1 e2
  f1.
  bes1 bes2
  g2. f4 e2
  f2. e8 d cis2
  d2. c4 bes2
  a1
  
  
  cis2
  d1 cis2
  d1 cis2
  d1 bes2
  a1.
  
  bes'1 a2
  g1 c2
  f,2. e4 d2
  e1.
  f2. g4 a2
  bes,2 c1
  f,2 f' e
  f2. e4 d2
  a2. bes4 c2
  f,1.
  c'1 d2
  e1 f2
  g1 a2
  e2 r r
  f2 r r
  g2 r r
  c,1.~
  c2 bes1
  a2 r r
  bes2 r r
  c1 d2
  a2 r r
  bes2 r r
  c2 r r
  f,1
  
  %%%% couplet 2
  
  f'2
  bes2. a4 g2
  f2. e4 d2
  e2. f4 d2
  d2. f4 g2
  c,1
  
  d2
  e2. f4 d2
  d2. f4 g2
  c,1
  
  f2
  bes2. a4 g2
  f2. e4 d2
  e2. f4 d2
  d2. f4 g2
  c,1
  d2
  e2. f4 d2
  d2. f4 g2
  c,1 r2
  
  f1 bes,2
  f'1 g2
  a1. 
  bes1 a2
  bes2. a4 g2
  f2. g4 a2
  bes2. a4 g2
  f2. g4 a2
  bes2. a4 g2
  f2. g4 a2
  bes2. a4 g2
  f1 f2
  f1 d2
  e1 e2
  f1.
  bes1 bes2
  g2. f4 e2
  f2. e8 d cis2
  d2. c4 bes2
  a1
  
  
  cis2
  d1 cis2
  d1 cis2
  d1 bes2
  a1.
  
  bes'1 a2
  g1 c2
  f,2. e4 d2
  e1.
  f2. g4 a2
  bes,2 c1
  f,2 f' e
  f2. e4 d2
  a2. bes4 c2
  f,1.
  c'1 d2
  e1 f2
  g1 a2
  e2 r r
  f2 r r
  g2 r r
  c,1.~
  c2 bes1
  a2 r r
  bes2 r r
  c1 d2
  a2 r r
  bes2 r r
  c2 r r
  f,1
  
  %%%% couplet 3
  
    f'2
  bes2. a4 g2
  f2. e4 d2
  e2. f4 d2
  d2. f4 g2
  c,1
  
  d2
  e2. f4 d2
  d2. f4 g2
  c,1
  
  f2
  bes2. a4 g2
  f2. e4 d2
  e2. f4 d2
  d2. f4 g2
  c,1
  d2
  e2. f4 d2
  d2. f4 g2
  c,1 r2
  
  f1 bes,2
  f'1 g2
  a1. 
  bes1 a2
  bes2. a4 g2
  f2. g4 a2
  bes2. a4 g2
  f2. g4 a2
  bes2. a4 g2
  f2. g4 a2
  bes2. a4 g2
  f1 f2
  f1 d2
  e1 e2
  f1.
  bes1 bes2
  g2. f4 e2
  f2. e8 d cis2
  d2. c4 bes2
  a1
  
  
  cis2
  d1 cis2
  d1 cis2
  d1 bes2
  a1.
  
  bes'1 a2
  g1 c2
  f,2. e4 d2
  e1.
  f2. g4 a2
  bes,2 c1
  f,2 f' e
  f2. e4 d2
  a2. bes4 c2
  f,1.
  c'1 d2
  e1 f2
  g1 a2
  e2 r r
  f2 r r
  g2 r r
  c,1.~
  c2 bes1
  a2 r r
  bes2 r r
  c1 d2
  a2 r r
  bes2 r r
  c2 r r
  f,1 r2
  
  %%%% couplet 4
  f'1 e2
  f1 d2
  e2. f4 g2
  c,1 c2
  c1 c2
  f1 e2
  f1 d2
  e2. f4 g2
  c,1 c2
  c1 c2
  f1 bes,2
  f'1 g2
  a1.
  bes1 a2
  g2. f4 e2
  f2. g4 a2
  bes2. a4 g2
  f1 a2
  bes2. a4 g2
  f1 bes,2
  f'1 g2
  a1 a,2
  d1 bes'2
  g2. f4 e2
  f1 cis2
  d1 bes2
  a1 a'2
  f2 e4 d a'2
  bes1 a2
  g1 c2
  f,2. e4 d2
  e1.
  f2. g4 a2
  g2. f4 g2
  f1 f2
  f1 e2
  f1 f2
  f1 e2
  f1 f2
  f1 e2
  f1 f2
  f1 e2
  f1 f,2
  c'2 r c
  d1 a2
  bes1 c2
  d2. e4 f2
  e1.
  f2. g4 a2
  bes2. a4 g2
  f1 f,2
  c'1 c2
  d1 d2
  a1 a2
  bes1 d2
  c1. 
  f2 r r
  e2 r r
  d2 r r
  a2 r r
  bes1 d2
  c1.
  f,1 r2
  
  
}


\score {
  <<
    \new Staff
    <<
      \structuur
      \violinoA

    >>

    \new Staff
    <<
      \structuur
      \violinoB

    >>
    \new Staff
    <<
      \structuur
      \clef bass
      \basso

    >>
  >>
}
