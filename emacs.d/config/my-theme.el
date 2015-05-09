
(use-package
 solarized-theme
 :ensure solarized-theme
 :config
 (load-theme 'solarized-light t))

;; Fonts
(set-face-attribute 'default nil :font "Anonymous Pro-11")
;(set-face-attribute 'default nil :font "Droid Sans Mono-10")
;(set-face-attribute 'default nil :font "Source Code Pro-10")

(global-linum-mode t)

;; Hide the toolbar
(tool-bar-mode -1)

;; Highlight parens - http://www.emacswiki.org/emacs/ShowParenMode
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

(provide 'my-theme)
   
