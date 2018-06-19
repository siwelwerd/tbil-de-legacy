# tbil-la

Source files and built PDFs for running a Team-Based Inquiry Learning
differential equations course.

## For instructors

All the needed materials are available in the PDF folder.
See `facilitator-notes.pdf` for more information on implementing
these materials in your classroom.

## Development

All source files are located within `./tex`. These files are designed
to be built by `pdflatex` run from within this folder, so `.tex` files
located in this folder (not within a subfolder) may be built directly
for development purposes.

Before each commit, run `make` to compile all `.tex` files and
move their resulting PDFs to the `./pdf` folder.  The pre-commit script
will warn you if you use TeX-style delimiters (e.g. `$x$`) and abort
the commit.

For convenience, files ignored by Git (e.g. TeX auxiliary files) may be
removed by running `git clean -fX`.

### Style Guide

- Definitions should use `\term{}` for the term being defined.
- LaTeX-style math delimiters `\(x\)` and `\[x\]` should be used in
  place of TeX-style delimiters `$x$` and `$$x$$`.
- Bracket delimiters should follow [BSD/Allman style][allman].
    - Exceptions can be made for e.g. `\newcommand` issues
- Sets should use the provided `\setBuilder` and `\setList` commands.
- Use `alignat` or `alignedat` environments for systems of equations.
- Unless necessary, limit lines to 80 characters for clean `git diff`s.


[allman]: https://en.wikipedia.org/wiki/Indentation_style#Allman_style
