;(add-hook 'scheme-mode-hook '(lambda ()
;      (local-set-key (kbd "RET") 'newline-and-indent)))

;(autoload 'scheme-mode "scheme"
;  "Gotta scheme sometimes" t)
;(add-to-list 'auto-mode-alist '("\\.s\\(s\\|c[mh]\\)$" . scheme-mode))

;;; Always do syntax highlighting
;(global-font-lock-mode 1)
;
;;;; Install packages

(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/")
	     t)
(package-initialize)

(defvar packages
  '(clojure-mode
    clojure-test-mode
    nrepl
    evil
    quack
    org
    diff-hl))

(defun install-missing-packages-p (ps)
  (cond ((not ps) nil)
	((not (package-installed-p (car ps))) t)
	(t (install-missing-packages-p (cdr ps)))))
  ;(dolist (p packages)
  ;  (if (not (package-installed-p p))
  ;(return true))))

(when (install-missing-packages-p packages)
  (package-refresh-contents)
  (dolist (p packages)
    (when (not (package-installed-p p))
      (package-install p)))
  (package-initialize))

;;;; Setup Packages

;; Evil
(add-to-list 'load-path "~/.emacs.d/elpa/evil-1.0.2")
(require 'evil)
(evil-mode 1)

(define-key evil-normal-state-map "\C-y" 'yank)
(define-key evil-insert-state-map "\C-y" 'yank)
(define-key evil-visual-state-map "\C-y" 'yank)

;; Quack - for scheme
;(setq scheme-program-name "scheme-repl")
(require 'quack)

;; Install matlab-emacs
;(add-to-list 'load-path "~/.emacs.d/matlab-emacs")
;(load-library "matlab-load")

;; Org mode
;;  http://orgmode.org
(add-hook 'org-mode-hook 'turn-on-front-lock)
(global-set-key "\C-c1" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; diff-hl
(global-diff-hl-mode)

;;;; Settings

(global-linum-mode t)
(define-key global-map (kbd "RET") 'newline-and-indent)
(tool-bar-mode -1)
(load-theme 'zenburn t)
(setq inhibit-startup-message t)	
(setq tabwidth 4)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;; iswitch buffers C-x b - http://www.emacswiki.org/emacs/IswitchBuffers
(iswitchb-mode 1)

;; Highlight parens - http://www.emacswiki.org/emacs/ShowParenMode
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

;(custom-set-variables
; ;; custom-set-variables was added by Custom.
; ;; If you edit it by hand, you could mess it up, so be careful.
; ;; Your init file should contain only one such instance.
; ;; If there is more than one, they won't work right.
; '(custom-safe-themes (quote ("9f443833deb3412a34d2d2c912247349d4bd1b09e0f5eaba11a3ea7872892000" default)))
; '(tool-bar-mode nil))
;(custom-set-faces
; ;; custom-set-faces was added by Custom.
; ;; If you edit it by hand, you could mess it up, so be careful.
; ;; Your init file should contain only one such instance.
; ;; If there is more than one, they won't work right.
; )
