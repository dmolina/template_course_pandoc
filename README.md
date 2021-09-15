# Template for courses using Pandoc

This repository allows teacher to eqasily create slides (and extended PDF
documents) using Pandoc.

## Requirements

- Pandoc version 2.14.
- Latex

The different pandoc-plugins:

- pandoc-beamer-block
- pandoc-include
- pandic-latex-fontsize

# Process

1. Go to common directory.
2. do `bash createma.sh <topic> <course>`.
3. go to `../topic`.
4. Update <topic>.md file.
5. compile with make.

# Output of the code

Compiling with make create two type of outputs:

- **course\_topic.pdf**: Slides in PDF (through Beamer).

- **course\_topic\_doc.pdf**: Document in PDF.

## Slides

The Slides are presented through Latex and Beamer (so it should be previously
installed).

The source 

# Tutorial

The majority of that syntax come from
[Markdown](https://www.markdownguide.org/basic-syntax), but others options are
specific from [pandoc](https://pandoc.org/MANUAL.html), with few additions in
Latex, so we describe here the syntax as a tutorial.

## Creating a new Slide

The syntax is simple, you only need to use `# Slide Title` to create a new slide 

## Notes for the document version
