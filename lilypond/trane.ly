\version "2.24.0"
\paper {
  markup-system-spacing.padding = 8
}

defaultPassageKey = {
  \key c \major
}

passageTime = #(define-music-function
                (time) (number-pair?)
                #{
                  \numericTimeSignature
                  \time #time
                #})

conditionalDisplay = #(define-music-function
                       (toggle music) (boolean? string-or-music?)
                       (if toggle #{ #music #} #{ #}))