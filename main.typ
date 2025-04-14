#import "template.typ": *
#import "@preview/glossarium:0.5.4": make-glossary, register-glossary, print-glossary, gls, glspl

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Glossarium",
  authors: (
    "John Doe",
  ),
)

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= Introduction
#include "sections/Indroduction.typ"

== In this paper
#lorem(20)

=== Contributions
#lorem(40)

=== Glossary
#show: make-glossary
#let entry-list = (
  (
    key: "kuleuven",
    short: "KU Leuven",
    long: "Katholieke Universiteit Leuven",
    description: "A university in Belgium.",
  ),
)
#register-glossary(entry-list)

#print-glossary(
 entry-list
)

= Related Work
#lorem(500)
