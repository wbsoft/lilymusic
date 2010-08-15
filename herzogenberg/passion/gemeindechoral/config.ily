\version "2.12.3"

#(set-global-staff-size 18)

\paper {
  #(set-paper-size "a5")
  between-system-space = 1\mm
  % avoid whitespace
  evenHeaderMarkup = ##f
  evenFooterMarkup = ##f
  oddHeaderMarkup = ##f
  oddFooterMarkup = ##f
}

\header {
  tagline = ##f
}

\layout {
  indent = #0
  
  \context {
    \Score
	\remove "Bar_number_engraver"
  }
  
  \context {
    \Lyrics
	\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 0)
	\override LyricHyphen #'minimum-distance = #0.6
  }
}

