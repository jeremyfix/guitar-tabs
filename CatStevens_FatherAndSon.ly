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

theFretChords = \chordmode {
  g,1 d c^\upbow e:m^\downbow
}
theChords =  {
   \tempo 4=70
   %\clef "tab"
   %\key c \major
   %\time 4/4
   % G
   <g,\6 b,\5 d\4 >4^\downbow
   <g,\6 b,\5 d\4 >4^\downbow
   <d\4 g\3 b\2 g'\1 >4^\downbow
   <d\4 g\3 b\2 g'\1 >8^\downbow
   <d\4 g\3 b\2 g'\1 >8^\upbow
   % G
   <a,\5 d\4 >4^\downbow
   <a,\5 d\4 >4^\downbow
   <d\4 a\3 d'\2 fis'\1 >4^\downbow
   <d\4 a\3 d'\2 fis'\1 >8^\downbow
   <d\4 a\3 d'\2 fis'\1 >8^\upbow
}


\score {
  <<
    \new ChordNames { 
		\theFretChords 
	} 
    \new FretBoards { 
		\set predefinedDiagramTable = #default-fret-table
		\theFretChords
	}
	\new TabStaff {
		\theChords
	}
  >>
  \layout { }
  \midi { }
}
