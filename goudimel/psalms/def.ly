\version "2.13.10"

\paper {
  ragged-last-bottom = ##f
  #(define page-breaking ly:page-turn-breaking)
}

\header {
  title = "The Genevan Psalter"
  subtitle = "in four part settings"
  composer = "tenor settings by Claude Goudimel 1565"
  arranger = "soprano settings adapted by Wilbert Berendsen 2010"
}

% default: no line breaks specified
breaks = { }

% default: no accidentals
keySig = { \key c \major }


% Tactus Minor time signature
timeSig = {
  \once \override Staff.TimeSignature #'style = #'()
  \once \override Staff.TimeSignature #'stencil = #ly:text-interface::print
  \once \override Staff.TimeSignature #'text = \markup {
    \override #'(baseline-skip . 0.5)
    \center-column { \number 1 \tiny \note #"2" #-.6 }
  }
  \time 1/2
}

% Merge rests
% Thanks LSR: http://lsr.dsi.unimi.it/LSR/Snippet?id=336
%% Usage:
%%   \new Staff \with {
%%     \override RestCollision #'positioning-done = #merge-rests-on-positioning
%%   } << \somevoice \\ \othervoice >>
%% or (globally):
%%   \layout {
%%     \context {
%%       \Staff
%%       \override RestCollision #'positioning-done = #merge-rests-on-positioning
%%     }
%%   }
%%
%% Limitations:
%% - only handles two voices
%% - does not handle multi-measure/whole-measure rests

#(define (rest-score r)
  (let ((score 0)
        (yoff (ly:grob-property-data r 'Y-offset))
        (sp (ly:grob-property-data r 'staff-position)))
    (if (number? yoff)
        (set! score (+ score 2))
        (if (eq? yoff 'calculation-in-progress)
            (set! score (- score 3))))
    (and (number? sp)
         (<= 0 2 sp)
         (set! score (+ score 2))
         (set! score (- score (abs (- 1 sp)))))
    score))

#(define (merge-rests-on-positioning grob)
  (let* ((can-merge #f)
         (elts (ly:grob-object grob 'elements))
         (num-elts (and (ly:grob-array? elts)
                        (ly:grob-array-length elts)))
         (two-voice? (= num-elts 2)))
    (if two-voice?
        (let* ((v1-grob (ly:grob-array-ref elts 0))
               (v2-grob (ly:grob-array-ref elts 1))
               (v1-rest (ly:grob-object v1-grob 'rest))
               (v2-rest (ly:grob-object v2-grob 'rest)))
          (and
           (ly:grob? v1-rest)
           (ly:grob? v2-rest)
           (let* ((v1-duration-log (ly:grob-property v1-rest 'duration-log))
                  (v2-duration-log (ly:grob-property v2-rest 'duration-log))
                  (v1-dot (ly:grob-object v1-rest 'dot))
                  (v2-dot (ly:grob-object v2-rest 'dot))
                  (v1-dot-count (and (ly:grob? v1-dot)
                                     (ly:grob-property v1-dot 'dot-count -1)))
                  (v2-dot-count (and (ly:grob? v2-dot)
                                     (ly:grob-property v2-dot 'dot-count -1))))
             (set! can-merge
                   (and
                    (number? v1-duration-log)
                    (number? v2-duration-log)
                    (= v1-duration-log v2-duration-log)
                    (eq? v1-dot-count v2-dot-count)))
             (if can-merge
                 ;; keep the rest that looks best:
                 (let* ((keep-v1? (>= (rest-score v1-rest)
                                      (rest-score v2-rest)))
                        (rest-to-keep (if keep-v1? v1-rest v2-rest))
                        (dot-to-kill (if keep-v1? v2-dot v1-dot)))
                   ;; uncomment if you're curious of which rest was chosen:
                   ;;(ly:grob-set-property! v1-rest 'color green)
                   ;;(ly:grob-set-property! v2-rest 'color blue)
                   (ly:grob-suicide! (if keep-v1? v2-rest v1-rest))
                   (if (ly:grob? dot-to-kill)
                       (ly:grob-suicide! dot-to-kill))
                   (ly:grob-set-property! rest-to-keep 'direction 0)
                   (ly:rest::y-offset-callback rest-to-keep)))))))
    (if can-merge
        #t
        (ly:rest-collision::calc-positioning-done grob))))


\layout {
  indent = 12\mm
  \context {
    \Score
    defaultBarType = #""
    \remove "Bar_number_engraver"
  }
  \context {
    \PianoStaff
%     \consists "Instrument_name_engraver"
    \override InstrumentName #'font-series = #'bold
    \override InstrumentName #'font-size = #5
%     \override InstrumentName #'self-alignment-X = #RIGHT
  }
  \context {
    \Staff
    \override RestCollision #'positioning-done = #merge-rests-on-positioning
  }
}

makeTenorSetting = #(define-music-function (parser location 
    number keySignature sop alt melody bas lineBreaks)
  (number? ly:music? ly:music? ly:music? ly:music? ly:music? ly:music?)
  (let ((psalm (format "~d." number)))
  #{
    \new PianoStaff \with {
      instrumentName = $psalm
    } <<
      \new Staff \with {
        \consists "Page_turn_engraver"
        minimumPageTurnLength = #(ly:make-moment 500 2)
      } <<
        \timeSig
        $keySignature
        \set Score.tempoWholesPerMinute = #(ly:make-moment 72 2)
        $lineBreaks
        \new Voice { \voiceOne #(set-accidental-style 'forget) $sop \bar "|." }
        \new Voice { \voiceTwo #(set-accidental-style 'forget) $alt }
      >>
      \new Staff <<
        \clef bass
        \timeSig
        $keySignature
        \new Voice <<
          \voiceOne
          #(set-accidental-style 'forget)
          \once \override TextScript #'X-offset = #-2
          s2-\markup \italic { c.f. }
          $melody
        >>
        \new Voice { \voiceTwo #(set-accidental-style 'forget) $bas }
      >>
    >>
  #}))

makeSopranoSetting = #(define-music-function (parser location
    number keySignature melody alt ten bas lineBreaks)
  (number? ly:music? ly:music? ly:music? ly:music? ly:music? ly:music?)
  (let ((psalm (format "~d." number)))
  #{
    \new PianoStaff \with {
      instrumentName = $psalm
    } <<
      \new Staff \with {
        \consists "Page_turn_engraver"
        minimumPageTurnLength = #(ly:make-moment 500 2)
      } <<
        \timeSig
        $keySignature
        \set Score.tempoWholesPerMinute = #(ly:make-moment 72 2)
        $lineBreaks
        \new Voice <<
          #(set-accidental-style 'forget)
          \once \override TextScript #'X-offset = #-2
          s2-\markup \italic { c.f. }
          { \voiceOne \transpose c c' $melody \bar "|." }
        >>
        \new Voice { \voiceTwo #(set-accidental-style 'forget) $alt }
      >>
      \new Staff <<
        \clef bass
        \timeSig
        $keySignature
        \new Voice { \voiceOne #(set-accidental-style 'forget) $ten }
        \new Voice { \voiceTwo #(set-accidental-style 'forget) $bas }
      >>
    >>
  #}))

