# foss.in

Contains my talks for FOSS.IN 2009 and 2010, under /9 and /10,
respectively.  They're written using Org-Mode.

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
    
