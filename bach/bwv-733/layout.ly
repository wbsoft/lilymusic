\paper {
  ragged-last-bottom = ##f
}

\layout {
  \context {
    \PianoStaff
    \override StaffGrouper #'staff-staff-spacing = 
    #'((basic-distance . 9)
       (minimum-distance . 8)
       (padding . 0.5))
    \override StaffGrouper #'staffgroup-staff-spacing =
    #'((basic-distance . 9)
       (minimum-distance . 8)
       (padding . 0.5))
    
  }
}
