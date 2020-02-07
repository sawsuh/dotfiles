;;; Compiled snippets and support files for `dockerfile-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'dockerfile-mode
		     '(("dockerize" "ENV DOCKERIZE_VERSION ${1:v0.6.1}\n\n`(pcase (yas-choose-value \"ubuntu\" \"alpine\")\n   (\"ubuntu\" (concat\n               \"RUN wget https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/dockerize-linux-amd64-${DOCKERIZE_VERSION}.tar.gz && \\\\\\n\"\n               \"    tar -C /usr/local/bin -xzvf dockerize-linux-amd64-${DOCKERIZE_VERSION}.tar.gz && \\\\\\n\"\n               \"    rm dockerize-linux-amd64-${DOCKERIZE_VERSION}.tar.gz\"))\n   (\"alpine\" (concat\n               \"RUN apk add --no-cache openssl && \\\\\\n\"\n               \"    wget https://github.com/jwilder/dockerize/releases/download/${DOCKERIZE_VERSION}/dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz && \\\\\\n\"\n               \"    tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz && \\\\\\n\"\n               \"    rm dockerize-alpine-linux-amd64-${DOCKERIZE_VERSION}.tar.gz\")))`" "dockerize" nil nil
			((yas-indent-line 'fixed)
			 (yas-wrap-around-region nil))
			"/home/prashant/.emacs.d/elpa/yasnippet-snippets-20200122.1140/snippets/dockerfile-mode/dockerize" nil nil)))


;;; Do not edit! File generated at Fri Feb  7 17:33:05 2020
