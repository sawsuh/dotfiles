;;; Compiled snippets and support files for `lua-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'lua-mode
		     '(("while" "while $1 do\n	$0\nend\n" "while" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/while" nil nil)
		       ("require" "local $1 = require \"$2\"\n" "require" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/require" nil nil)
		       ("repeat" "repeat\n	$0\nuntil $1\n" "repeat util" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/repeat" nil nil)
		       ("pairs" "for ${1:name}, ${2:val} in pairs(${3:table_name}) do\n	$0\nend\n" "for in pairs" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/pairs" nil nil)
		       ("ipairs" "for ${1:idx}, ${2:val} in ipairs(${3:table_name}) do\n	$0\nend\n" "for in ipairs" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/ipairs" nil nil)
		       ("ife" "if $1 then\n	$2\nelse\n	$0\nend\n" "if else" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/ife" nil nil)
		       ("if" "if $1 then\n	$0\nend\n" "if" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/if" nil nil)
		       ("fun" "function ($1)\n	$0\nend\n" "fun" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/fun" nil nil)
		       ("eife" "if $1 then\n	$2\nelseif $3 then\n	$4\nelse\n	$0\nend\n" "if elseif else" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/eife" nil nil)
		       ("eif" "if $1 then\n	$2\nelseif $3 then\n	$0\nend\n" "if elseif" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/eif" nil nil)
		       ("do" "do\n	$0\nend\n" "do" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/lua-mode/do" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
