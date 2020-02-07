;;; Compiled snippets and support files for `scala-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'scala-mode
		     '(("vc" "case class ${1:Name}(value: ${2:Type}) extends AnyVal\n" "value class" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/valueclass" nil nil)
		       ("try" "try {\n  $0\n} catch {\n  case e: ${1:Throwable} =>\n    ${2:// TODO: handle exception}\n}" "try { .. } catch { case e => ..}" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/try" nil nil)
		       ("throw" "throw new ${1:Exception}(${2:msg}) $0" "throw new Exception" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/throw" nil nil)
		       ("ob" "object ${1:name} extends ${2:type} $0" "object name extends T" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/ob" nil nil)
		       ("match" "${1:cc} match {\n  case ${2:pattern} => $0\n}" "cc match { .. }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/match" nil nil)
		       ("main" "def main(args: Array[String]) = {\n  $0\n}" "def main(args: Array[String]) = { ... }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/main" nil nil)
		       ("ls" "List(${1:args}, ${2:args}) $0" "List(..)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/ls" nil nil)
		       ("if" "if (${1:condition}) {\n  $0\n}" "if (cond) { .. }" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/if" nil nil)
		       ("for" "for {\n  ${1:x} <- ${2:xs}\n} yield ${3:x}" "for { x <- xs } yield" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/for" nil nil)
		       ("docfun" "/**\n * $1\n * ${3:$\n    (let* ((indent\n            (concat \"\\n * \"))\n           (args\n            (mapconcat\n             '(lambda (x)\n                (if (not (string= (nth 0 x) \"\"))\n                    ;; in Scala I get a separator : for the type\n                    (let ((par-type (mapcar 'string-trim (split-string (nth 0 x) \":\")))) (concat \"@param \" (first par-type) indent \"@tparam \" (second par-type) indent))\n                    ))\n             (mapcar\n              '(lambda (x)\n                 (mapcar\n                  '(lambda (x)\n                     (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                      (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x)))\n                  x))\n              (mapcar '(lambda (x) (split-string x \"=\"))\n                      (split-string yas-text \",\")))\n             indent)))\n      (if (string= args \"\")\n          (concat indent \"@return: \" indent \"@rtype: \" indent (make-string 3 34))\n        (mapconcat\n         'identity\n         (list \"\" args )\n         indent)))\n    }\n * @return ${4:$(yas-text)}\n *\n **/\ndef ${2:name}($3): $4 = $0" "docstring function" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/docfun" nil nil)
		       ("doc" "/**\n * ${1:description}\n * $0\n */" "/** ... */" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/doc" nil nil)
		       ("def" "def ${1:name}(${2:args}): ${3:Unit} = {\n  $0\n}" "def f(arg: T): R = {...}" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/def" nil nil)
		       ("cons" "${1:element1} :: ${2:element2} $0" "element1 :: element2" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/cons" nil nil)
		       ("co" "case object ${1:name} $0" "case object T" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/co" nil nil)
		       ("cc" "case class ${1:Name}(\n  ${2:arg}: ${3:Type}\n)" "case class T(arg: A)" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/cc" nil nil)
		       ("case" "case ${1:_} => $0" "case pattern =>" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/case" nil nil)
		       ("app" "object ${1:name} extends App {\n  $0\n}" "object name extends App" nil nil nil "/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/scala-mode/app" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
