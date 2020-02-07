;;; Compiled snippets and support files for `hy-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'hy-mode
		     '(("when" "(when ${1:condition}\n  $0)" "when" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/when" "direct-keybinding" nil)
		       ("unless" "(unless ${1:condition}\n  $0)" "unless" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/unless" "direct-keybinding" nil)
		       ("s" "(setv $0)" "s" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/s" "direct-keybinding" nil)
		       ("req" "(req [${1:module-name} [${2:exposing}]])" "req" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/req" "direct-keybinding" nil)
		       ("main" "(defmain [&rest ${1:args}]\n  $0)" "main" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/main" "direct-keybinding" nil)
		       ("let" "(let [${1:arg}]\n  $0)" "let" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/let" "direct-keybinding" nil)
		       ("import" "(import [${1:module-name} [${2:exposing}]])" "import" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/imp" "direct-keybinding" nil)
		       ("ifn" "(if-not ${1:condition}\n  ${2:result-false}\n  ${3:result-true})" "ifn" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/ifn" "direct-keybinding" nil)
		       ("if" "(if ${1:condition}\n  ${2:result-true}\n  ${3:result-false})" "if" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/if" "direct-keybinding" nil)
		       ("for" "(for [${1:item items}] $0)" "for" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/for" "direct-keybinding" nil)
		       ("do" "(do $0)" "do" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/do" "direct-keybinding" nil)
		       ("defm" "(defmacro ${1:macro-name} [${2:arg}]\n  ${3:`($0)})" "defm" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/defm" "direct-keybinding" nil)
		       ("def" "(defn ${1:function-name} [${2:arg}]\n  $0)" "def" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/def" "direct-keybinding" nil)
		       ("cond" "(cond\n  [${1:condition} ${result:2}]\n  [${3:condition} ${result:4}]\n  ${5:[True $6]})" "cond" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/cond" "direct-keybinding" nil)
		       ("class" "(defclass ${1:ClassName} [${2:BaseClass}]\n${3:  (defn --init-- [${4:arg}]\n    (setv $0))})" "class" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/hy-mode/class" "direct-keybinding" nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
