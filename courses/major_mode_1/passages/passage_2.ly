\version "2.24.0"

\include "../../../lilypond/trane.ly"

\header {
  title = "Major Scale - Down the scale"
}

passageTempo = 100
passageKey = c
displayHarmony = ##t

passage = {
  \defaultPassageKey
  \passageTime 4/4
  \tempo 4 = \passageTempo
  \relative {
    g'2 f |
    e d |
    c1
  }
}

passageHarmony = {
  \defaultPassageKey
  \passageTime 4/4
  \clef bass {
    \chordmode {
      g,,1 \invertChords 1 e,,1:m \invertChords 2 c,,1
    }
  }
}

\score {
  \transpose c \passageKey {
    <<
      \conditionalDisplay \displayHarmony \new ChordNames \passageHarmony
      \new Staff \passage
      \conditionalDisplay \displayHarmony \new Staff \passageHarmony
    >>
  }
  \layout {}
  \midi {}
}
