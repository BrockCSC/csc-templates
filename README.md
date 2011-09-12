CSC Templates
=============

This is a set of LaTeX macros for CSC propaganda print.

+ Use the 'csc-poster' style to make posters
+ Use the 'csc-letterhead' style to write official looking letters

Included are two sample documents for you to follow, a brochure of the club, and the project's license (GNU GPL).

Getting Started
---------------

- Use the provided makefile to compile sources and produce output
  - `$ make`
- Use ImageMagick to convert images to .eps format (note that .pdf also works).
  - `$ convert image.jpg image.eps`
- Use dvipdfm to produce PDF files directly from DVI files.
  - `$ dvipdfm csc-poster.dvi`
