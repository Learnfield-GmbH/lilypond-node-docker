#(set! paper-alist (cons '("customSize" . (cons (* 72 cm) (* 5 cm))) paper-alist))
\version "2.20.0"
\pointAndClickOff 
\header {
  tagline = ""
}
\paper {
  #(set-paper-size "customSize")
  indent = 5
  left-margin = 0
}
\score {
  \new PianoStaff
  <<
  \new Staff = "up" {
    \clef treble
    \key c \major
    \time 3/4
    \override Staff.Clef.output-attributes = #'((id . "clef-0"))
    \override Staff.TimeSignature.output-attributes = #'((id . "time-signature"))
    \override Staff.KeySignature.output-attributes = #'((id . "key-signature"))
    \override Staff.BarLine.output-attributes = #'((class . "barline"))
    \numericTimeSignature 
    \set fingeringOrientations = #'(up)
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) e''-5>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) dis''-4>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) e''>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) e'-1>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) dis'-2>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) e'-1>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) d''-5>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) cis''>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) d''>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) d'-1>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) cis'-2>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) d'-1>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) c''-5>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) b'>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) c''>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) c'-1>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) b-2>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) c'>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) b'-5>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) ais'>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) b'>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) b-1>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) ais>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) b>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) a'>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) gis'-4>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) a'>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) a>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) gis-2>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) a>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) g'-5>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) fis'>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) g'>4 \bar "|"
    <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) g-1>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) fis>4 <\tweak NoteHead.output-attributes #'((class . "notehead") (id . -1) (color . "black")) g>4 \bar "|."
  }
  \new Staff = "down" {
    \clef bass
    \key c \major
    \time 3/4
    \override Staff.Clef.output-attributes = #'((id . "clef-1"))
    \override Staff.TimeSignature.output-attributes = #'((id . "time-signature"))
    \override Staff.KeySignature.output-attributes = #'((id . "key-signature"))
    \override Staff.BarLine.output-attributes = #'((class . "barline"))
    \numericTimeSignature 
    \set fingeringOrientations = #'(down)
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|"
    <\tweak Rest.output-attributes #'((class . "rest") (id . -1) (color . "black")) r>1*3/4 \bar "|."
  }
  >>
  \layout {
    \context {
      \Score proportionalNotationDuration = #(ly:make-moment 1/16)
      \override SpacingSpanner.uniform-stretching = ##t
      \override SpacingSpanner.strict-note-spacing = ##t
    }
  }
}