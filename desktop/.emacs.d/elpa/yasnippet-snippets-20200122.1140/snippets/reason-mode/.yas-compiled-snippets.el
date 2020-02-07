;;; Compiled snippets and support files for `reason-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'reason-mode
		     '(("while" "while (${1:cond}) {\n  $0\n};" "while" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/while" nil nil)
		       ("switch" "switch (${1:to_match}) {\n| ${2:matching} => $0\n}" "switch" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/switch" nil nil)
		       ("module" "module ${1:M} = {\n  $0\n};" "module" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/module" nil nil)
		       ("|" "| ${1:Case} => $0" "match case" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/match_case" nil nil)
		       ("let" "let ${1:var} = ${2:e};\n$0" "let" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/let" nil nil)
		       ("if" "if (${1:cond}) {\n  $2\n} else {\n  $0\n}" "ifelse" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/ifelse" nil nil)
		       ("if" "if (${1:cond}) {\n  $0\n}" "if" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/if" nil nil)
		       ("functor" "module ${1:Functor} = (${2:Module}: ${3:ModuleType}) => {\n  $0\n};" "functor" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/functor" nil nil)
		       ("func" "(${1:paramters}) -> $0" "function" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/function" nil nil)
		       ("for" "for (${1:i} in ${2:iFirst} to ${3:iLast}) {\n  $0\n};" "for" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/for" nil nil)
		       ("component" "module ${1:Component} = {\n  [@react.component]\n  let make = (${2:parameters}) => {\n    $0\n  };\n};" "component" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/reason-mode/component" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
