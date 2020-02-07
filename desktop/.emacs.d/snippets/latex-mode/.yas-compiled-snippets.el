;;; Compiled snippets and support files for `latex-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'latex-mode
		     '(("sum" "\\sum_{${1:lower}}^{${2:upper}}{${3:expression}}$0" "sum" nil nil nil "/home/prashant/.emacs.d/snippets/latex-mode/sum" nil nil)
		       ("sqb" "\\left[ $1 \\right] $0\n" "[" nil nil nil "/home/prashant/.emacs.d/snippets/latex-mode/sqbrac" nil nil)
		       ("frac" "\\frac{${1:numerator}}{${2:denominator}}$0" "frac" nil nil nil "/home/prashant/.emacs.d/snippets/latex-mode/frac" nil nil)
		       ("env" "\\begin{${1:environment}}\n	$0\n\\end{$1}" "env" nil nil nil "/home/prashant/.emacs.d/snippets/latex-mode/env" nil nil)
		       ("cub" "\\left\\{ $1 \\right\\} $0\n" "{" nil nil nil "/home/prashant/.emacs.d/snippets/latex-mode/cubrac" nil nil)
		       ("nob" "\\left( $1 \\right) $0\n" "(" nil nil nil "/home/prashant/.emacs.d/snippets/latex-mode/brack" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:04 2020
