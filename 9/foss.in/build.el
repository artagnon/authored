#!/usr/bin/emacs --script

(add-to-list 'load-path "../../.org/lisp")
(load-library "org")

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
\\usepackage{alltt}
\\usepackage{amsfonts}
\\lstset{frame=single, basicstyle=\\ttfamily\\small, upquote=false, columns=fixed, breaklines=true, keywordstyle=\\color{blue}\\bfseries, commentstyle=\\color{red}, numbers=left, xleftmargin=2em}"
	       ("\\section{%s}" . "\\section*{%s}")
	       ("\\begin{frame}[fragile]\\frametitle{%s}"
		"\\end{frame}"
		"\\begin{frame}[fragile]\\frametitle{%s}"
		"\\end{frame}")))

(with-current-buffer (find-file-noselect "haskell-internals.org")
  (unwind-protect
       (progn (org-export-as-pdf nil))
    (kill-this-buffer)))

(with-current-buffer (find-file-noselect "unladen-swallow.org")
  (unwind-protect
       (progn (org-export-as-pdf nil))
    (kill-this-buffer)))
