# authored

Includes all the documents and presentations I've authored.  Either in
TeX, or in Org-Mode, which is subsequently converted to TeX before
producing a pdf.

## Contents

:: /\<year\>/\<conference/ document name\>

* /7/cs-pointers: Cellophane sheet pointers I envisioned in high
  school.  Explains C pointers to a beginner.
* /9/curve-fitting: A presentation on curve fitting I made while in
  IIT Kharagpur.  Explains, most significantly, chi-square fitting.
* /9/foss.in: Contains my FOSS.IN 2009 presentations, namely "Haskell
  Internals", and "An Insight into CPython Compiler Design"
  (unladen-swallow).
* /9/naurk: Experimental introductory computer science course.
* /9/squid-breaking: A partially finished mini-book on breaking out of
  the Squid proxy server.
* /10/foss.in: Contains my FOSS.IN 2010 presentation "Leveraging the
  Git Object Store" (git-object-store).
* /13/fossmeet: Contains my FOSSMeet 2013 presentation "Git Unchained"
  (git-unchained).

## Build instructions

A LaTeX implemenatation like Tex Live is an obvious requirement.
Further, to compile the documents written in Org-Mode, you need Emacs.
Org-Mode itself is included as a submodule (see .org/).  Makefiles are
provided for all projects.
