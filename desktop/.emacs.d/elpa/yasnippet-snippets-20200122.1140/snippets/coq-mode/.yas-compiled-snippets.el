;;; Compiled snippets and support files for `coq-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'coq-mode
		     '(("Ind" "Inductive $1 : $2 :=\n| $0\n.\n" "Inductive" nil
			("definitions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/definitions/inductive.yasnippet" nil nil)
		       ("fun" "fun ($1 : $2 => $0)\n" "fun" nil
			("definitions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/definitions/fun.yasnippet" nil nil)
		       ("Fixp" "Fixpoint $1 ($2 : $3) : $4 :=\n  $0." "Fixpoint" nil
			("definitions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/definitions/fixpoint.yasnippet" nil nil)
		       ("Fixpw" "Fixpoint $1 ($2 : $3) : $4 :=\n  $9\nwith $5 ($6 : $7) : $8 :=\n  $0." "Fixpoint-with" nil
			("definitions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/definitions/fixpoint-with.yasnippet" nil nil)
		       ("Def" "Definition $1 ($2 : $3) : $4 :=\n  $0.\n" "Definition" nil
			("definitions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/definitions/definition.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'coq-mode
		     '(("SP" "SearchPattern ($1).\n$0\n" "SearchPattern" nil
			("lookup")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/lookup/searchpattern.yasnippet" nil nil)
		       ("SA" "SearchAbout $1.\n$0\n" "SearchAbout" nil
			("lookup")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/lookup/searchabout.yasnippet" nil nil)
		       ("S" "Search $1.\n$0\n" "Search" nil
			("lookup")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/lookup/search.yasnippet" nil nil)
		       ("P" "Print $1.\n$0\n" "Print" nil
			("lookup")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/lookup/print.yasnippet" nil nil)
		       ("L" "Locate \"$1\".\n$0\n" "Locate" nil
			("lookup")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/lookup/locate.yasnippet" nil nil)
		       ("C" "Check $1.\n$0\n" "Check" nil
			("lookup")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/lookup/check.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'coq-mode
		     '(("Req" "${1:$$(coq-insert-requires)}\n$0" "Require" nil
			("misc")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/misc/require.yasnippet" nil nil)
		       ("Nota" "Notation \"$1\" := ($2) (at level $3, $4 associativity).\n$0\n" "Notation" nil
			("misc")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/misc/notation.yasnippet" nil nil)
		       ("match" "match $1 with\n  | $0 =>\nend" "match" nil
			("misc")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/misc/match.yasnippet" nil nil)
		       ("Inf" "Infix \"$1\" := $2 (at level $3, $4 associativity).\n$0\n" "Infix" nil
			("misc")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/misc/infix.yasnippet" nil nil)
		       ("if" "if $1 then $2 else $0\n" "if" nil
			("misc")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/misc/if.yasnippet" nil nil)
		       ("fa" "forall ($1 : $2), $0\n" "forall" nil
			("misc")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/misc/forall.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'coq-mode
		     '(("Vars" "Variables $1 : $0.\n" "Variables" nil
			("propositions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/variables.yasnippet" nil nil)
		       ("Var" "Variable $1 : $0.\n" "Variable" nil
			("propositions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/variable.yasnippet" nil nil)
		       ("The" "Theorem $1 :\n  $2.\nProof.\n  $0\nQed." "Theorem" nil
			("propositions")
			((yas-indent-line 'fixed))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/theorem.yasnippet" nil nil)
		       ("Rem" "Remark $1 :\n  $2.\nProof.\n  $0\nQed.\n" "Remark" nil
			("propositions")
			((yas-indent-line 'fixed))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/remark.yasnippet" nil nil)
		       ("Pro" "Proposition $1 :\n  $2.\nProof.\n  $0\nQed.\n" "Proposition" nil
			("propositions")
			((yas-indent-line 'fixed))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/proposition.yasnippet" nil nil)
		       ("Param" "Parameter $1 : $0.\n" "Parameters" nil
			("propositions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/parameter.yasnippet" nil nil)
		       ("Lem" "Lemma $1 :\n  $2.\nProof.\n  $0\nQed.\n" "Lemma" nil
			("propositions")
			((yas-indent-line 'fixed))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/lemma.yasnippet" nil nil)
		       ("Ins" "Instance $1 :\n  $2.\nProof.\n  $0\nQed.\n" "Instance" nil
			("propositions")
			((yas-indent-line 'fixed))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/instance.yasnippet" nil nil)
		       ("Hypo" "Hypothesis $1 : $0.\n" "Hypothesis" nil
			("propositions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/hypothesis.yasnippet" nil nil)
		       ("Hypos" "Hypotheses $1 : $0.\n" "Hypotheses" nil
			("propositions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/hypotheses.yasnippet" nil nil)
		       ("Fact" "Fact $1 :\n  $2.\nProof.\n  $0\nQed.\n" "Fact" nil
			("propositions")
			((yas-indent-line 'fixed))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/fact.yasnippet" nil nil)
		       ("Exp" "Example $1 :\n  $2.\nProof.\n  $0\nQed.\n" "Example" nil
			("propositions")
			((yas-indent-line 'fixed))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/example.yasnippet" nil nil)
		       ("Cor" "Corollary $1 :\n  $2.\nProof.\n  $0\nQed.\n" "Corollary" nil
			("propositions")
			((yas-indent-line 'fixed))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/corollary.yasnippet" nil nil)
		       ("Conj" "Conjecture $1 : $0.\n" "Conjecture" nil
			("propositions")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/conjecture.yasnippet" nil nil)
		       ("Axi" "Axiom $1 :\n  $0.\n" "Axiom" nil
			("propositions")
			((yas-indent-line 'fixed))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/propositions/axiom.yasnippet" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'coq-mode
		     '(("rw" "rewrite $0.\n" "rewrite" nil
			("tactics")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/tactics/rewrite.yasnippet" nil nil)
		       ("rwr" "rewrite -> $0.\n" "rewrite-right" nil
			("tactics")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/tactics/rewrite-right.yasnippet" nil nil)
		       ("rwl" "rewrite <- $0.\n" "rewrite-left" nil
			("tactics")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/tactics/rewrite-left.yasnippet" nil nil)
		       ("rename" "rename $1 into $2.\n$0" "rename" nil
			("tactics")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/tactics/rename.yasnippet" nil nil)
		       ("ind" "induction ${1:n} as [ | $1' IH_$1' ].$0" "induction" nil
			("tactics")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/tactics/induction.yasnippet" nil nil)
		       ("des" "destruct $1 as [ $0 ]." "destruct" nil
			("tactics")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/tactics/destruct.yasnippet" nil nil)
		       ("case" "case ${1:n} as [ | $1' ].$0\n" "case" nil
			("tactics")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/coq-mode/tactics/case.yasnippet" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
