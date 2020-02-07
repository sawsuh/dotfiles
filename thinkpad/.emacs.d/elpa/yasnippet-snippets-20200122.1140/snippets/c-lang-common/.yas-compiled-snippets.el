;;; Compiled snippets and support files for `c-lang-common'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c-lang-common
		     '(("typedef" "typedef ${1:type} ${2:alias};" "typedef" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/c-lang-common/typedef" nil nil)
		       ("once" "#ifndef ${1:`(upcase (file-name-nondirectory (file-name-sans-extension (or (buffer-file-name) \"\"))))`_H}\n#define $1\n\n$0\n\n#endif /* $1 */" "#ifndef XXX; #define XXX; #endif" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/c-lang-common/once" nil nil)
		       ("math" "#include <math.h>\n$0" "math" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/c-lang-common/math" nil nil)
		       ("main" "int main(${1:int argc, char *argv[]})\n{\n    $0\n    return 0;\n}\n" "main" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/c-lang-common/main" nil nil)
		       ("incl" "#include \"$1\"" "#include \"...\"" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/c-lang-common/inc.1" nil nil)
		       ("incs" "#include <$1>" "#include <...>" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/c-lang-common/inc" nil nil)
		       ("ifdef" "#ifdef ${1:MACRO}\n\n$0\n\n#endif // $1" "ifdef" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/c-lang-common/ifdef" nil nil)
		       ("doxy" "/**\n * @brief      ${1:function description}\n *\n * @details    ${2:detailed description}\n *\n * @param      ${3:param}\n *\n * @return     ${4:return type}\n */" "Function Doxygen Doc" nil
			("doxygen")
			nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/c-lang-common/function_doxygen_doc" nil nil)
		       ("fopen" "FILE *${fp} = fopen(${\"file\"}, \"${r}\");" "FILE *fp = fopen(..., ...);" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/c-lang-common/fopen" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:04 2020
