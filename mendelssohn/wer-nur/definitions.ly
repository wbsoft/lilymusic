\version "2.12.0"

rh = \change Staff = "rh"
lh = \change Staff = "lh"

%% This function accepts one argument: a list of symbols.
%% It returns a music function that removes music events with that names
%% from a music expression.
#(define-public (define-music-event-filter names)
  (define-music-function (parser location music) (ly:music?)
    (music-filter
      (lambda (event) (not (member (ly:music-property event 'name) names)))
      music)))

filterdynamics = #(define-music-event-filter 
  '(AbsoluteDynamicEvent CrescendoEvent DecrescendoEvent TextScriptEvent))

