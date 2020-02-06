
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(set-face-background 'mode-line "black")
(set-face-foreground 'mode-line "white")
(menu-bar-mode -1)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(yas-global-mode 1)
(setq TeX-PDF-mode t)
(setq TeX-parse-self t)
(setq TeX-auto-save t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/.emacs.d/glob.org")))
 '(package-selected-packages
   (quote
    (auctex-latexmk haskell-mode org latex-extra yasnippet-snippets yasnippet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
