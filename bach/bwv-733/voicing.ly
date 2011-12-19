\version "2.14.1"

hideMMRests = {
  \override MultiMeasureRest #'stencil = #empty-stencil
}

showMMRests = {
  \revert MultiMeasureRest #'stencil
}

toUpper = {
  \change Staff = "upper"
}

toLower = {
  \change Staff = "lower"
}

sopVoicing = {
  \hideMMRests
  s1*8
  \showMMRests
  \voiceOne
  s1*9
  s2 \oneVoice s2
  s1*4
  \hideMMRests
  s1*6
  \voiceOne
  \showMMRests
  s1*16
  \oneVoice
  s1*2
  s2 \voiceOne s2
  s1*4
  s2 \oneVoice s2
  s1
  \voiceOne
  s1*9
  \oneVoice
  s1*4
  \voiceOne
  
}

altVoicing = {
  \oneVoice
  s1*8
  \voiceTwo
  s1*9
  s4 \toLower \voiceOne s2.
  s1*4
  \toUpper
  \oneVoice
  s1*6
  \voiceTwo
  s1*2
  \voiceThree
  s1*2
  \voiceTwo
  s1
  s2 \once \override Tie #'direction = #UP s2
  \voiceThree
  s1
  s2 \once \override Tie #'direction = #DOWN s2
  \voiceTwo
  s1
  \voiceThree
  s1
  s2 \voiceTwo s2
  s1
  \voiceThree
  s1
  \once \override NoteColumn #'force-hshift = #0
  s1
  s2 \once \override Rest #'staff-position = #0 s2
  \hideMMRests
  s1*11
  \showMMRests
  \toLower
  \voiceOne
  \once \override MultiMeasureRest #'staff-position = #8
  s1*6
  s4 \toUpper \voiceTwo s2.
  s2 \toLower \voiceOne s2
  s1*4
  \hideMMRests
  \toUpper
  s1*8
  \showMMRests
  \voiceThree
  s2 \voiceTwo s2
  s1*7
  \hideMMRests
  s1*6
  \showMMRests
  \voiceThree
  s1*5
  \voiceTwo
  s1*15
  s2 \voiceThree s2
  s1*3
  s2 \once \override Rest #'staff-position = #-2 s2
  \voiceTwo
  
}

tenVoicing = {
  \oneVoice
  s1*17
  \voiceTwo
  s1*5
  \oneVoice
  s1*8
  \toUpper
  \voiceTwo
  s1*2
  \toLower
  \voiceOne
  s1*2
  \toUpper
  \voiceTwo
  s1*2
  \toLower
  \voiceOne
  s1
  s2 s8 \toUpper \voiceTwo s4.
  s4. \toLower \voiceOne s8 s2
  s1
  \toUpper
  \voiceTwo
  s1*4
  \toLower
  \voiceOne
  s1*2
  s2 \toUpper \voiceTwo s2
  s1*4
  s2 \toLower \voiceOne s2
  s1
  s4 \toUpper \voiceTwo s2.
  s1*6
  \hideMMRests
  s1*6
  \showMMRests
  s1*8
  s2 \toLower \voiceOne s2
  s1*7
  s4 \toUpper \voiceTwo s2.
  s1*2
  s4 \toLower \voiceOne s2.
  s2 s8 \toUpper \voiceTwo s4.
  s1*5
  s4. \toLower \voiceOne s8 s2
  s1*15
  s2 \toUpper \voiceTwo s2
  s1*4
  \toLower \voiceOne
  \once \override MultiMeasureRest #'stencil = #empty-stencil
  s1*6
  \once \override MultiMeasureRest #'staff-position = #6
  s1*4
  \clef treble
  s1*3
  \clef bass
  
  
}

basVoicing = {
  \oneVoice
  \hideMMRests
  s1*30
  \showMMRests
  s1
  \voiceTwo
  s1*3
  \oneVoice
  s1*2
  \voiceTwo
  s1*5
  \voiceOne
  s1*2
  \oneVoice
  s1
  \voiceTwo
  s1*3
  \oneVoice
  s1*4
  s4 \voiceTwo s2.
  s1*14
  \oneVoice
  s1*8
  s2 \voiceTwo s2
  s1*7
  s2 \oneVoice s2
  s1*2
  \voiceTwo
  s1*2
  \oneVoice
  s1*4
  \voiceTwo
  
  
}

quintaVoicing = {
  \voiceTwo
}

pedalVoicing = {
  
}

music = <<
  \new PianoStaff <<
    \new Staff = "upper" <<
      \new Voice = "sop" <<
        { \sop \bar "|." }
        \sopVoicing
      >>
      \new Voice = "alt" <<
        \alt
        \altVoicing
      >>
    >>
    \new Staff = "lower" <<
      \clef bass
      \new Voice = "ten" <<
        \ten
        \tenVoicing
      >>
      \new Voice = "bas" <<
        \bas
        \basVoicing
      >>
      \new Voice = "quinta" <<
        \quinta
        \quintaVoicing
      >>
    >>
  >>
  \new Staff = "pedal" <<
    \clef bass
    \pedal
    \pedalVoicing
  >>
>>

midiMusic = <<
  \new Staff = "soprano" \sop
  \new Staff = "alto" \alt
  \new Staff = "tenor" \ten
  \new Staff = "bas" << \bas \\ \quinta >>
  \new Staff = "pedal" \pedal
>>
