\version "2.18.0"
% #(set-global-staff-size 16)

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
      
      \strut \strut
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
      
      \strut \strut
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
      
      \strut \strut
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
      
      \strut \strut
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
    }
  }
}
