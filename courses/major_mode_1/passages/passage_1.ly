\version "2.24.0"

\include "../../../lilypond/trane.ly"

\header {
  title = "Major Scale - Up the scale"
}

passageTempo = 60
passageKey = c
displayHarmony = ##t

passage = {
  \defaultPassageKey
  \passageTime 4/4
  \tempo 4 = \passageTempo
  \relative { 
    f2 g |
    a b |
    c1
  }
}

passageHarmony = {
  \defaultPassageKey
  \passageTime 4/4
  \clef bass {
    \chordmode {
      f,,1 a,,1:m \invertChords 2 c,,1
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
