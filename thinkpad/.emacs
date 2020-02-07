
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
(setq-default left-margin-width 8 right-margin-width 8)
(setq org-enforce-todo-dependencies 1)
(global-set-key "\C-ca" 'org-agenda)
(tool-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(line-spacing 10)
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (xresources-theme haskell-modeell- auctex-latexmk haskell-mode org latex-extra yasnippet-snippets yasnippet))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#202020" :foreground "#eee4e5" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 80 :width normal :family "Fira Code"))))
 '(fixed-pitch ((t (:family "Fira Code"))))
 '(fixed-pitch-serif ((t (:family "Fira Code")))))
