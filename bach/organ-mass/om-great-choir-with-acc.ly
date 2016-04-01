\version "2.11"
\include "setup.ly"
#(set-global-staff-size 17)
\header { subtitle = "key: great chorals" }

\layout {
  \context {
    \PianoStaff
    \remove "Instrument_name_engraver"
  }
}

\include "01-kyrie-gott-vater.ly"
\score { 
  \transpose e g 
  <<
    \fourStaffs
    \piano
  >>
}

\include "02-christe-aller-welt.ly"
\score {
  \transpose e g
  <<
    \fourStaffs
    \piano
  >>
}

\include "03-kyrie-gott-heiliger.ly"
\score {
  \transpose e g
  <<
    \fourStaffs
    \piano
  >>  
}

\include "04-allein-gott.ly"
\score { 
  \transpose f g 
  <<
    \fourStaffsTwoLyrics
    \piano 
  >>
}

\include "05-dies-sind.ly"
\score {
  <<
    \fourStaffsTwoLyrics
    \piano
  >>
}

\include "06-wir-glauben.ly"
\score {
  \transpose e d 
  <<
    \fourStaffs
    \piano
  >>
}

\include "07-vater-unser.ly"
\score { 
  \transpose d e
  <<
    \fourStaffsTwoLyrics
    \piano
  >>
}

\include "08-christ-unser-herr.ly"
\score {
  \transpose d c
  <<
    \fourStaffs
    \piano
  >>
}

\include "09-aus-tiefer-not.ly"
\score {
  \transpose fis e
  <<
    \fourStaffsTwoLyrics
    \piano 
  >>
}

\include "10-jesus-christus.ly"
\score {
  \transpose f d
  <<
    \fourStaffsTwoLyrics
    \piano 
  >>
}

