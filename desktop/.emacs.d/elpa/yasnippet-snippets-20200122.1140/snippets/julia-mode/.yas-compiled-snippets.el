;;; Compiled snippets and support files for `julia-mode'
;;; contents of the .yas-setup.el support file:
;;;
(require 'yasnippet)

(defun yas-julia-iteration-keyword-choice ()
  "Choose the iteration keyword for for-loop"
  (yas-choose-value '("=" "in" "∈")))
;;; Snippet definitions:
;;;
(yas-define-snippets 'julia-mode
		     '(("while" "while ${1:cond}\n    ${2:body}\nend\n$0" "while ... ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/while" nil nil)
		       ("using" "using ${1:${2:package}:}$0\n" "using ..." nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/using" nil nil)
		       ("try" "try\n    ${1:expr}\ncatch ${2:error}\n    ${3:e_expr}\nfinally\n    ${4:f_expr}\nend\n$0\n" "try ... catch ... finally ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/tryf" nil nil)
		       ("try" "try\n    ${1:expr}\ncatch ${2:error}\n    ${3:e_expr}\nend\n$0\n" "try ... catch ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/try" nil nil)
		       ("struct" "struct ${1:name}\n    ${2:body}\nend\n$0" "struct ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/struct" nil nil)
		       ("quote" "quote\n    ${1:expr}\nend\n$0" "quote ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/quote" nil nil)
		       ("ptype" "primitive type ${1:${2:type} <: ${3:supertype}} ${4:bits} end$0\n" "primitive type ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/ptype" nil nil)
		       ("mutstr" "mutable struct ${1:name}\n    ${2:body}\nend\n$0\n" "mutable struct ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/mutstr" nil nil)
		       ("module" "module ${1:name}\n${2:body}\nend\n$0\n" "module ... ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/module" nil nil)
		       ("macro" "macro ${1:macro}(${2:args})\n    ${3:body}\nend\n$0\n" "macro(...) ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/macro" nil nil)
		       ("let" "let ${1:x = 0}\n    ${2:body}\nend\n$0" "let ... ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/let" nil nil)
		       ("ife" "if ${1:cond}\n    ${2:true}\nelse\n    ${3:false}\nend\n$0" "if ... ... else ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/ife" nil nil)
		       ("if" "if ${1:cond}\n    ${2:body}\nend\n$0\n" "if ... ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/if" nil nil)
		       ("fun" "function ${1:fun}(${2:args})\n    ${3:body}\nend\n$0" "function(...) ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/fun" nil nil)
		       ("for" "for ${1:i} ${2:$$(yas-julia-iteration-keyword-choice)} ${3:1:n}\n    ${4:body}\nend\n$0\n" "for ... ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/for" nil nil)
		       ("do" "do ${1:x}\n    ${2:body}\nend\n$0" "do ... ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/do" nil nil)
		       ("begin" "begin\n    ${1:body}\nend\n$0\n" "begin ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/begin" nil nil)
		       ("atype" "abstract type ${1:${2:type} <: ${3:supertype}} end$0" "abstract type ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/julia-mode/atype" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
