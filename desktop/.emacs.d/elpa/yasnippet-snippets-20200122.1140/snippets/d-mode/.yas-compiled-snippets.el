;;; Compiled snippets and support files for `d-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'd-mode
		     '(("while" "while (${1:condition})\n{\n  $0\n}" "while (…) { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/while" nil nil)
		       ("version" "version (${1:$$(yas-choose-value \"unittest\" \"DigitalMars\" \"GNU\" \"LDC\" \"SDC\" \"Windows\" \"linux\" \"OSX\" \"FreeBSD\" \"OpenBSD\" \"NetBSD\" \"DragonFlyBSD\" \"BSD\" \"Posix\" \"Android\" \"X64\" \"X86_64\" \"ARM\" \"PPC\" \"LittleEndian\" \"BigEndian\" \"D_BetterC\" \"D_Coverage\" \"D_Ddoc\" \"D_InlineAsm_X86\" \"D_InlineAsm_X86_64\" \"D_LP64\" \"D_X32\" \"D_HardFloat\" \"D_SoftFloat\" \"D_PIC\" \"D_SIMD\" \"D_AVX\" \"D_AVX2\" \"D_Version2\" \"D_NoBoundsChecks\" \"D_ObjectiveC\" \"Core\" \"Std\" \"assert\" \"none\" \"all\")})\n{\n  $0\n}\n" "version (ident) { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/version" nil nil)
		       ("unittest" "@(\"${1:test name}\") unittest\n{\n	$0\n}" "unittest { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/unit" nil nil)
		       ("tryf" "try\n{\n  $0\n}\nfinally\n{\n  $1\n}\n" "try … finally …" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/tf" nil nil)
		       ("tcf" "try\n{\n  $0\n}\ncatch (${1:Exception} e)\n{\n  $2\n}\nfinally\n{\n  $3\n}\n" "try … catch … finally" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/tcf" nil nil)
		       ("tc" "try\n{\n  $0\n}\ncatch (${1:Exception} e)\n{\n  $2\n}\n" "try … catch …" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/tc" nil nil)
		       ("struct" "/++\n + $1\n +/\nstruct ${1:StructName}\n{\n	$0\n}\n" "struct … { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/struct" nil nil)
		       ("return" "return $0;\n" "return …" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/r" nil nil)
		       ("method" "/++\n + $2\n +/\n${1:void} ${2:method}(${3:args})\n{\n	$0\n}\n" "method … { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/me" nil nil)
		       ("main" "int main(string[] args)\n{\n	$0\n}\n" "int main(string[] args) { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/main" nil nil)
		       ("import" "import ${1:module};\n$0" "import …" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/im" nil nil)
		       ("ife" "if ($1)\n{\n  $2\n}\nelse\n{\n	$3\n}\n$0" "if … else" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/ife" nil nil)
		       ("if" "if ($1)\n{\n  $2\n}\n$0" "if …" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/if" nil nil)
		       ("fer" "foreach_reverse (${1:e} ; $2)\n{\n	$0\n}\n" "foreach_reverse (e ; …) { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/fer" nil nil)
		       ("fe" "foreach (${1:e} ; $2)\n{\n	$0\n}\n" "foreach (e ; …) { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/fe" nil nil)
		       ("enum" "enum ${1:name}\n{\n	$0\n}" "enum … { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/enum" nil nil)
		       ("debugm" "debugm (${1:module})\n{\n	$0\n}" "debugm" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/debugm" nil nil)
		       ("debug" "debug\n{\n	$0\n}\n" "debug" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/debug" nil nil)
		       ("class" "/++\n + $1\n +/\nclass ${1:ClassName}\n{\n	this($2)\n	{\n      $0\n	}\n}\n" "class … { … }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/d-mode/class" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
