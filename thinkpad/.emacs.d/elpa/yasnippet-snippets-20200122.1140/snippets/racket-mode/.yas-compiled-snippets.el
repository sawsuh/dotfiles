;;; Compiled snippets and support files for `racket-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'racket-mode
		     '(("when" "(when ${1:(${2:predicate})} $0)" "(when ...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/when" nil nil)
		       ("unless" "(unless ${1:(${2:predicate})} $0)" "(unless ...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/unless" nil nil)
		       ("match" "(match ${1:expression} [${2:clause} $0])" "(match ... [... ...]...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/match" nil nil)
		       ("let" "(let$1 ([${2:name} ${3:expression}]$4) $0)" "(let... ([... ...]...) ...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/let" nil nil)
		       ("lambda" "(lambda ${1:(${2:arguments})} $0)" "(lambda (...) ...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/lambda" nil nil)
		       ("if" "(if ${1:(${2:predicate})}\n    $0)" "(if ... ... ...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/if" nil nil)
		       ("for" "(for$1 (${2:for-clause}) $0)" "(for... (...) ...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/for" nil nil)
		       ("do" "(do ([${1:name} ${2:init} ${3:step}]$4)\n    (${5:stop-predicate} ${6:finish})\n  $0)" "(do ([... ... ...]...) (... ...) ...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/do" nil nil)
		       ("define" "(define ${1:(${2:name} ${3:arguments})} $0)" "(define ... ...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/define" nil nil)
		       ("cond" "(cond [${1:predicate} $0])" "(cond [... ...]...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/cond" nil nil)
		       ("case-lambda" "(case-lambda [${1:arguments} $0])" "(case-lambda [... ...]...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/caselambda" nil nil)
		       ("case" "(case ${1:expression} [${2:datum} $0])" "(case ... [... ...]...)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/racket-mode/case" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
