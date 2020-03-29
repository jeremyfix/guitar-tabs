\version "2.18.2"

\include "predefined-guitar-fretboards.ly"

\header {
	title = "Father and son"
		composer = "Cat Stevens"
}

verseI = \lyricmode {
  \set stanza = #"1."
  It's not time to make a change
}
verseII = \lyricmode {
  \set stanza = #"2."
  Darling darling
}

theChords = \relative c' \chordmode {
  % insert chords for chordnames and fretboards here
  g d c^\upbow e:m^\downbow
}



\score {
  <<
    \new ChordNames { 
		\theChords 
	} 
    \new FretBoards { 
		\chordmode {
		\set predefinedDiagramTable = #default-fret-table
		\theChords
		}
	}
	\new Staff {
		\theChords
	}
	\new TabStaff {
		\theChords
	}
  >>
  \layout { }
  \midi { }
}
