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

### Customize

- You can change the authors, institution (department) and University changing
  the authors_beamer.tex (for slides) and authors_pdf.tex (for the PDF version).

- You can custom the latex headers changing the beamer.tex, that will be used to
  create the latex version. The file head.tex is suppose to be fixed.
  
# Syntax (HOWTO)

The majority of that syntax come from
[Markdown](https://www.markdownguide.org/basic-syntax), but others options are
specific from [pandoc](https://pandoc.org/MANUAL.html), with few additions in
Latex, so we describe here the syntax as a tutorial.

## Creating a new Slide

The syntax is simple, you only need to use `# Slide Title` to create a new
slide.

Example:

```raw
# First slide
...

# Second slide
...
```

## Images

You can create image directly in Markdown. 

The syntax is:

- For Figures (with Caption, and numered).

```raw
![Caption](filename){width="...%"}
```

- Without caption:

```raw
![](filename){width="...%"}
```

You can add the with

## Notes for the document version
