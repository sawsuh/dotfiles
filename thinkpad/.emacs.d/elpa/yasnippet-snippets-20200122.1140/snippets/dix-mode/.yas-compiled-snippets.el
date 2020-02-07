;;; Compiled snippets and support files for `dix-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'dix-mode
		     '(("w" "<with-param pos=\"$1\"/>$0" "<with-param>"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "with-param"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/with-param" "direct-keybinding" nil)
		       ("w" "<when>$0</when>" "<when> elements"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "when"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/when" "direct-keybinding" nil)
		       ("v" "<var n=\"$1\"/>$0" "<var> elements"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "var"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/var" "direct-keybinding" nil)
		       ("<s" "<section id=\"${1:main}\" type=\"${2:$$(yas-choose-value '(\"standard\" \"inconditional\" \"postblank\" \"preblank\"))}\">\n$0\n</section>\n" "<section> element"
			(progn
			  (backward-char 2)
			  (and
			   (not
			    (dix-enclosing-is-mono-section))
			   (not
			    (member
			     (dix-enclosing-elt 'noerror)
			     '("l" "r" "i" "g" "sdefs")))))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/section" "direct-keybinding" nil)
		       ("<s" "<sdef n=\"$1\"  c=\"$2\"/>\n" "<sdef> element"
			(progn
			  (backward-char 2)
			  (equal
			   (dix-enclosing-elt 'noerror)
			   "sdefs"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/sdef" "direct-keybinding" nil)
		       ("<s" "<s n=\"$1\"/>$0" "<s> element"
			(progn
			  (backward-char 2)
			  (member
			   (dix-enclosing-elt 'noerror)
			   '("l" "r" "i" "g")))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/s" "direct-keybinding" nil)
		       ("<p" "<pardef n=\"${1:corp/us__n}\">\n  <e>       <p><l>${1:$(dix-yas-pdname-to-suffix yas-text)}</l>      <r>${1:$(dix-yas-pdname-to-suffix yas-text)}${1:$(dix-yas-pdname-to-pos yas-text)}$2</r></p></e>\n  <e>       <p><l>${1:$(dix-yas-pdname-to-suffix yas-text)}$0</l>      <r>${1:$(dix-yas-pdname-to-suffix yas-text)}${1:$(dix-yas-pdname-to-pos yas-text)}$2</r></p></e>\n  <e>       <p><l>${1:$(dix-yas-pdname-to-suffix yas-text)}</l>      <r>${1:$(dix-yas-pdname-to-suffix yas-text)}${1:$(dix-yas-pdname-to-pos yas-text)}$2</r></p></e>\n  <e>       <p><l>${1:$(dix-yas-pdname-to-suffix yas-text)}</l>      <r>${1:$(dix-yas-pdname-to-suffix yas-text)}${1:$(dix-yas-pdname-to-pos yas-text)}$2</r></p></e>\n</pardef>" "<pardef> element"
			(progn
			  (backward-char 2)
			  (not
			   (equal
			    (dix-enclosing-elt 'noerror)
			    "e")))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/pardef" "direct-keybinding" nil)
		       ("<p" "<par n=\"${1::$$(dix-yas-message-pardef (yas-choose-value (dix-pardef-suggest-for (dix-lemma-at-point))))`}\"/>$0" "<par> element"
			(progn
			  (backward-char 2)
			  (equal
			   (dix-enclosing-elt 'noerror)
			   "e"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/par" "direct-keybinding" nil)
		       ("p" "<p><l>$1</l> <r>$1$0</r></p>" "<p> element"
			(progn
			  (backward-char 1)
			  (equal
			   (dix-enclosing-elt 'noerror)
			   "e"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/p" "direct-keybinding" nil)
		       ("o" "<otherwise>$0</otherwise>" "<otherwise> elements"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "otherwise"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/otherwise" "direct-keybinding" nil)
		       ("lt" "<lit-tag v=\"$1\"/>$0" "<lit-tag> elements"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "lit-tag"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/lit-tag" "direct-keybinding" nil)
		       ("l" "<lit v=\"$1\"/>$0" "<lit> elements"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "lit"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/lit" "direct-keybinding" nil)
		       ("l" "<let>$0</let>" "<let> elements"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "let"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/let" "direct-keybinding" nil)
		       ("<e" "<e> <p><l>$1</l>  <r>$1$0</r></p> </e>\n" "<e> in pardefs"
			(not
			 (dix-enclosing-is-mono-section))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/e-in-pardef" "direct-keybinding" nil)
		       ("<e" "<e lm=\"${1:`(dix-yas-prev-lemma)`}\"> <i>${1:$(dix-yas-lm-to-i)}</i> <par n=\"${3:$$(dix-yas-choose-pdname)}\"/></e>\n$0" "<e> in monodix section"
			(dix-enclosing-is-mono-section)
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/e-in-mono-section" "direct-keybinding" nil)
		       ("c" "<clip pos=\"$1\" ${2:side=\"tl\"} part=\"$3\"/>$0" "<clip> elements"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "clip"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/clip" "direct-keybinding" nil)
		       ("c" "<choose><when>\n  <test><equal>$0</equal></test>\n\n</when></choose>\n" "<choose><when><test> elements"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "choose"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/choose" "direct-keybinding" nil)
		       ("m" "<call-macro n=\"$1\"><with-param pos=\"$2\"/>$0</call-macro>\n" "<call-macro>"
			(progn
			  (backward-char 1)
			  (dix-transfer-enclosing-allows "call-macro"))
			nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dix-mode/call-macro" "direct-keybinding" nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
