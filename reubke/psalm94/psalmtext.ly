\version "2.13.1"
%#(set-global-staff-size 16)

% set the column width here (50 is good for global staff size 16)
#(define psalm-column-width 50)


#(define psalm-column-width-override
  (cons 'line-width psalm-column-width))

\bookpart {
  \paper {
    top-margin = 2.5\cm
    bottom-margin = 2.5\cm
    left-margin = 3\cm
    line-width = 15\cm
  }
  \header {
    tagline = ##f
  }
  \markup {
    \fontsize #0.5
    \column {
      
      \fill-line {
        \fontsize #4 \line { PSALM 94 }
      }
      
      \strut
      \italic \line { Grave, Larghetto (vs. 1, 2) }
      \fill-line {
        \override #psalm-column-width-override
        \justify {
          Herr Gott, des die Rache ist, erscheine.
          Erhebe Dich, Du Richter der Welt; vergilt
          den Hoffärtigen, was sie verdienen.
        }
        \override #psalm-column-width-override
        \italic \justify {
          O \smaller LORD God, to whom vengeance belongeth, shew thyself.
          Lift up thyself, thou judge of the earth:
          render a reward to the proud.
        }
      }
      
      \strut
      \italic \line { Allegro con fuoco (vs. 3, 6, 7) }
      
      \fill-line {
        \override #psalm-column-width-override
        \justify {
          Herr, wie lange sollen die Gottlosen prahlen?
          Witwen und Fremdlinge erwürgen sie und töten die Waisen
          und sagen: der Herr sieht es nicht und
          der Gott Jacobs achtet es nicht.
        }
        \override #psalm-column-width-override
        \italic \justify {
          \smaller LORD, how long shall the wicked triumph?
          They slay the widow and the stranger,
          and murder the fatherless.
          Yet they say, The \smaller LORD shall not see,
          neither shall the God of Jacob regard it.
        }
      }
      
      \strut
      \italic \line { Adagio (vs. 17, 19) }
      
      \fill-line {
        \override #psalm-column-width-override
        \justify {
          Wo der Herr mir nicht hülfe,
          so läge meine Seele schier in der Stille.
          Ich hatte viel Bekümmernis in meinem Herzen,
          aber deine Tröstungen ergötzen meine Seele.
        }
        \override #psalm-column-width-override
        \italic \justify {
          Unless the \smaller LORD had been my help,
          my soul had almost dwelt in silence. 
          In the multitude of my thoughts within me
          thy comforts delight my soul. 
        }
      }
      
      \strut
      \italic \line { Allegro (vs. 22, 23) }
      
      \fill-line {
        \override #psalm-column-width-override
        \justify {
          Aber der Herr ist mein Hort und meine Zuversicht.
          Er wird ihnen ihr Unrecht vergelten
          und sie um ihre Bosheit vertilgen.
        }
        \override #psalm-column-width-override
        \italic \justify {
          But the \smaller LORD is my defence;
          and my God is the rock of my refuge. 
          And he shall bring upon them their own iniquity,
          and shall cut them off in their own wickedness.
        }
      }
      
      \strut \strut
      
      \fill-line {
        \fontsize #4 \line { Notes }
      }
      
      \strut
      \justify {
        
        I created this score to deepen my understanding of, and as a tribute to,
        both Reubke’s splendid Organ Sonata, and the LilyPond development
        community’s truly amazing LilyPond music typesetter.

        This edition exactly follows its source: the 1871 score from the
        \with-url #"http://www.imslp.org/"
        { International Music Score Library Project (http://imslp.org/); }
        only where the original sometimes writes the music for both hands
        in one staff, I use both staffs to improve readability.
      }
      
      \strut
      \justify {
        The performer should have a thorough understanding of how the stops
        sound on a typical German organ from the second half of the 19th century
        and find matching registrations at the organ on which the piece is
        performed.
        The original score has a “Vorbemerkung” which notes that, if stops
        are named without “allein” (only) appended, some other stops may be
        added as well, to create a good balance with the foreground melody.
        Some registrations possibly refer to the new Ladegast organ of Merseburg
        Cathedral, where Reubke played the premiere of this piece on June 17th, 1857.
        The Aeoline 16' on that organ was a soft free reed stop and the Posaune 32'
        had a warm-round sound, not very loud.
      }
      
      \strut
      \justify {
        Hairpins most times denote the use of a swell box, while
        directions like \italic cresc. and \italic dim. in most cases
        refer to the adding resp. removing of stops.
        The \italic slanted hairpins that sometimes appear below ranges of 16th
        notes do not refer to swell or adding stops, but rather mean that the
        performer should \italic suggest an increasing tension by playing the notes
        a little over-legato (tenuto).
      }
      
      \strut
      \fill-line { \null \line { Wilbert Berendsen, Easter 2009 } }
      
      \strut
      \fill-line {
        \fontsize #4 \line { Translations of German terms }
      }
      
      \strut
      \fill-line {
        \column {
          \line { \italic { alle Bässe } all bass stops }
          \line { \italic allein only }
          \line { \italic düster dark, gloomy }
          \line { \italic { etwas belebter } more lively }
          \line { \italic heller brighter }
          \line { \italic hervortretend on the foreground }
          \line { \italic { leiser werdend } becoming softer }
        }
        \column {
          \line { \italic { nach und nach schneller } accellerate bit by bit }
          \line { \italic { nicht schleppend } do not slow down }
          \line { \italic oder or }
          \line { \italic ohne without }
          \line { \italic schwächer weaker }
          \line { \italic { Trompete fort } remove Trumpet }
          \line { \italic { (viel) stärker } (much) louder }
        }
      }
      
      \strut
      \line {
        \italic { \bold NB on page 8: }
        Hold the notes from the broken
        chords as long as possible
      }
    }
  }
}
