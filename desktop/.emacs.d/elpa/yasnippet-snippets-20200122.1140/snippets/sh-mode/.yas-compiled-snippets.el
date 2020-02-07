;;; Compiled snippets and support files for `sh-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'sh-mode
		     '(("while" "while ${1:cond}; do\n    $0\ndone" "while loop" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/while" nil nil)
		       ("until" "until ${1:cond}; do\n    $0\ndone" "until loop" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/until" nil nil)
		       ("select" "select ${1:var} in ${2:stuff}; do\n    $0\ndone\n" "select" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/select" nil nil)
		       ("script-dir" "# See https://stackoverflow.com/a/246128/3561275\nSOURCE=\"\\${BASH_SOURCE[0]}\"\nwhile [ -h \"\\$SOURCE\" ]; do # resolve \\$SOURCE until the file is no longer a symlink\n  DIR=\"\\$( cd -P \"\\$( dirname \"\\$SOURCE\" )\" >/dev/null 2>&1 && pwd )\"\n  SOURCE=\"\\$(readlink \"\\$SOURCE\")\"\n  [[ \\$SOURCE != /* ]] && SOURCE=\"\\$DIR/\\$SOURCE\" # if \\$SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located\ndone\nDIR=\"\\$( cd -P \"\\$( dirname \"\\$SOURCE\" )\" >/dev/null 2>&1 && pwd )\"\n\n$0" "the currently executing/sourced script's directory" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/script-dir" nil nil)
		       ("s!" "#!/usr/bin/env bash\nset -euo pipefail\nIFS=$'\\n\\t'\n\n$0" "safer bash settings for scripts" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/safe-bang" nil nil)
		       ("ife" "if ${1:cond}\nthen ${2:stuff}\nelse ${3:other}\nfi\n$0" "ife" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/ife" nil nil)
		       ("if" "if ${1:[ -f file]}\n   then ${2:do}\nfi\n$0" "if" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/if" nil nil)
		       ("f" "function ${1:name} {\n         $0\n}" "function" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/function" nil nil)
		       ("for" "for ${1:var} in ${2:stuff}; do\n    $0\ndone" "for loop" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/for loop" nil nil)
		       ("case" "case ${1:cond} in\n    ${2:pattern} )\n        ${3:stuff}\n        ;;\n    $0\nesac\n" "case" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/case" nil nil)
		       ("!" "#!/usr/bin/env bash\n$0" "bang" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/bang" nil nil)
		       ("args" "if [ $# -lt ${1:2} ]\n   then $0\nfi" "args" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/sh-mode/args" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
