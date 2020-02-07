;;; Compiled snippets and support files for `crystal-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'crystal-mode
		     '(("zip" "zip(${enums}) { |${row}| $0 }" "zip(...) { |...| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/zip" nil nil)
		       ("while" "while ${condition}\n  $0\nend" "while ... end" nil
			("control structure")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/while" nil nil)
		       ("when" "when ${condition}\n  $0\nend" "when ... end" nil
			("control structure")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/when" nil nil)
		       ("upt" "upto(${n}) { |${i}|\n  $0\n}" "upto(...) { |n| ... }" nil
			("control structure")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/upt" nil nil)
		       ("select" "select { |${1:element}| $0 }" "select { |...| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/select" nil nil)
		       ("require" "require '$0'" "require \"...\"" nil
			("general")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/req" nil nil)
		       ("reject" "reject { |${1:element}| $0 }" "reject { |...| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/reject" nil nil)
		       ("red" "reduce(${1:0}) { |${2:accumulator}, ${3:element}| $0 }" "reduce(...) { |...| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/red" nil nil)
		       ("mod" "module ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n         (or (buffer-file-name)\n             (buffer-name (current-buffer))))))))\n           (while (string-match \"_\" fn)\n             (setq fn (replace-match \"\" nil nil fn)))\n           fn)`}\n  $0\nend" "module ... end" nil
			("definitions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/mod" nil nil)
		       ("map" "map { |${e}| $0 }" "map { |...| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/map" nil nil)
		       ("init" "def initialize(${1:args})\n    $0\nend" "init" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/init" nil nil)
		       ("inc" "include ${1:Module}\n$0\n" "include Module" nil
			("general")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/inc" nil nil)
		       ("ife" "if ${1:condition}\n  $2\nelse\n  $3\nend" "if ... else ... end" nil
			("control structure")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/ife" nil nil)
		       ("if" "if ${1:condition}\n  $0\nend" "if ... end" nil
			("control structure")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/if" nil nil)
		       ("forin" "for ${1:element} in ${2:collection}\n  $0\nend" "for ... in ...; ... end" nil
			("control structure")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/forin" nil nil)
		       ("for" "for ${1:el} in ${2:collection}\n    $0\nend" "for" nil
			("control structure")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/for" nil nil)
		       ("esi" "elsif`(indent-for-tab-command)` ${1:condition}\n  $2" "elsif ..." nil
			("control structure")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/esi" nil nil)
		       ("el" "else`(indent-for-tab-command)`\n  $1" "else ..." nil
			("control structure")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/el" nil nil)
		       ("eawi" "each_with_index { |${e}, ${i}| $0 }" "each_with_index { |e, i| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/eawi" nil nil)
		       ("eai" "each_index { |${i}| $0 }" "each_index { |i| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/eai" nil nil)
		       ("eac" "each_cons(${1:2}) { |${group}| $0 }" "each_cons(...) { |...| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/eac" nil nil)
		       ("ea" "each { |${e}| $0 }" "each { |...| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/ea" nil nil)
		       ("def" "def ${1:method}${2:(${3:args})}\n    $0\nend" "def ... end" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/def" nil nil)
		       ("cls" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n				 (or (buffer-file-name)\n				     (buffer-name (current-buffer))))))))\n             (replace-regexp-in-string \"_\" \"\" fn t t))`}\n  $0\nend" "class ... end" nil
			("definitions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/cls" nil nil)
		       ("case" "case ${1:object}\nwhen ${2:condition}\n  $0\nend" "case ... end" nil
			("general")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/case" nil nil)
		       ("any" "any? { |${e}| $0 }" "any? { |...| ... }" nil
			("collections")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/crystal-mode/any" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
