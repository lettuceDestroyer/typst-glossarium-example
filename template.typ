#import "@preview/glossarium:0.5.4": make-glossary, register-glossary, print-glossary, gls, glspl

#let entry-list = (
  (
    key: "kuleuven",
    short: "KU Leuven",
    long: "Katholieke Universiteit Leuven",
    description: "A university in Belgium.",
  ),
)
  
#let project(title: "", authors: (), body) = {
  // Set the document's basic properties.
  set document(author: authors, title: title)
  set page(numbering: "1", number-align: center)
  set text(font: "Libertinus Serif", lang: "en")

  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
  ]

  // Main body.
  set par(justify: true)

  //Glossary
  show: make-glossary
  register-glossary(entry-list)

  body
}
