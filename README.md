# authored

Includes all the documents and presentations I've authored.  Either in
TeX, or in Org-Mode, which is subsequently converted to TeX before
producing a pdf.

## Contents

:: /\<year\>/\<conference/ document name\>

* /7/cs-pointers: Cellophane sheet pointers I envisioned in high
  school.  Explains C pointers to a beginner.  Written in plain TeX.
* /9/curve-fitting: A presentation on curve fitting I made while in
  IIT Kharagpur.  Explains, most significantly, chi-square fitting.
  Written in plain TeX.
* /9/foss.in: Contains my FOSS.IN 2009 presentations, namely "Haskell
  Internals", and "An Insight into CPython Compiler Design"
  (unladen-swallow).  Written in Org-Mode.
* /10/foss.in: Contains my FOSS.IN 2010 presentation "Leveraging the
  Git Object Store" (git-object-store).  Written in Org-Mode.

## Build instructions

For projects written in Org-Mode:

To compile them into a finished PDF,

    $ aptitude install texlive

Then, load the following snippet into Emacs and `org-export` the
corresponding *.org file:

    ;; allow for export=>beamer by placing
    ;; #+LaTeX_CLASS: beamer in org files
    (unless (boundp 'org-export-latex-classes)
      (setq org-export-latex-classes nil))
    (add-to-list 'org-export-latex-classes
    	     '("beamer"
    	       "\\documentclass[8pt]{beamer}
    \\beamertemplateballitem
    \\usepackage{hyperref}
    \\usepackage{color}
    \\usepackage{listings}
    \\usepackage{natbib}
    \\usepackage{upquote}
    \\usepackage{amsfonts}
    \\lstset{frame=single, basicstyle=\\ttfamily\\small, upquote=false, columns=fixed, breaklines=true, keywordstyle=\\color{blue}\\bfseries, commentstyle=\\color{red}, numbers=left, xleftmargin=2em}"
    	       ("\\section{%s}" . "\\section*{%s}")
    	       ("\\begin{frame}[fragile]\\frametitle{%s}"
    		"\\end{frame}"
    		"\\begin{frame}[fragile]\\frametitle{%s}"
    		"\\end{frame}")))
    
