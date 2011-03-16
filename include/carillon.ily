\version "2.13.50"

% includes for carillon music

stich = #
(define-music-function (parser location staff-position) (number?)
  #{
    \once \override BreathingSign #'Y-offset = #(- $staff-position .5)
    \once \override BreathingSign #'text = 
    \markup {
      \override #'(thickness . 3)
      \draw-line #'(0 . 1)
    }
    \breathe
  #})

