\paper {
  ragged-last-bottom = ##f
}

\layout {
  \context {
    \PianoStaff
    \remove "Vertical_align_engraver"
  }
  \context {
    \Staff
    \override VerticalAxisGroup #'staff-staff-spacing =
    #'((basic-distance . 9)
       (minimum-distance . 8)
       (padding . 0.5))
  }
}
