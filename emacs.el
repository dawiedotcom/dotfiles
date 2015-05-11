
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
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;(defvar packages
;;  '(use-package
;;    clojure-mode
;;    quack
;;    solarized-theme
;;    org
;;    diff-hl))
;;
;;(defun install-missing-packages-p (ps)
;;  (cond ((not ps) nil)
;;	((not (package-installed-p (car ps))) t)
;;	(t (install-missing-packages-p (cdr ps)))))
;;  ;(dolist (p packages)
;;  ;  (if (not (package-installed-p p))
;;  ;(return true))))
;;
;;(when (install-missing-packages-p packages)
;;  (package-refresh-contents)
;;  (dolist (p packages)
;;    (when (not (package-installed-p p))
;;      (package-install p)))
;;  (package-initialize))

;;;; Include init files

(add-to-list 'load-path (concat user-emacs-directory "config"))

(require 'use-package)

;;;; Setup Packages

;; Evil
;(add-to-list 'load-path "~/.emacs.d/elpa/evil-1.0.2")
;(require 'evil)
;(evil-mode 1)
;
;(define-key evil-normal-state-map "\C-y" 'yank)
;(define-key evil-insert-state-map "\C-y" 'yank)
;(define-key evil-visual-state-map "\C-y" 'yank)
;
;(evil-ex-define-cmd "W" 'save-buffer)
(require 'my-evil)
(require 'my-ibuffer)
(require 'my-theme)
(require 'my-evil-leader-keys)

;; Fix unicode in agda-mode
;(add-hook 'evil-insert-state-entry-hook
;          (lambda () (set-input-method "Agda")))
;(add-hook 'evil-insert-state-exit-hook
;          (lambda () (set-input-method nil)))
;(add-hook 'evil-emacs-state-entry-hook
;          (lambda () (set-input-method "Agda")))
;(add-hook 'evil-emacs-state-exit-hook
;          (lambda () (set-input-method nil)))

;; Quack - for schemeym;(setq scheme-program-name "scheme-repl")
;(require 'quack)
;(defun mechanics ()
;  (interactive)
;  (run-scheme
;   "/usr/local/scmutils/mit-scheme/bin/scheme --library /usr/local/scmutils/mit-scheme/lib"))

;; Install matlab-emacs
;(add-to-list 'load-path "~/.emacs.d/matlab-emacs")
;(load-library "matlab-load")

;; Org mode
;;  http://orgmode.org
;(add-hook 'org-mode-hook 'turn-on-front-lock)
(global-set-key "\C-c1" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; diff-hl
;(global-diff-hl-mode)

;;;; Settings

;(global-linum-mode t)
(define-key global-map (kbd "RET") 'newline-and-indent)
(tool-bar-mode -1)
;(load-theme 'zenburn t)
;(load-theme 'solarized-light t)
(setq inhibit-startup-message t)	
(setq-default tabwidth 4)
(setq-default indent-tabs-mode nil)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;(set-face-attribute 'default nil :font "Droid Sans Mono-10")
;(set-face-attribute 'default nil :font "Anonymous Pro-11")
;(set-face-attribute 'default nil :font "Source Code Pro-10")

;; iswitch buffers C-x b - http://www.emacswiki.org/emacs/IswitchBuffers
(iswitchb-mode 1)

;; Highlight parens - http://www.emacswiki.org/emacs/ShowParenMode
;(setq show-paren-delay 0
;      show-paren-style 'parenthesis)
;(show-paren-mode 1)

;;;; Language settings
;; C++
(setq-default c-default-style "linux")
(setq-default c-basic-offset 4)

(defun ddk-cc-style()
  (c-set-style "linux")
  (c-set-offset 'innamespace '0)
  (c-set-offset 'inextern-lang '0)
  (c-set-offset 'inline-open '0)
  (c-set-offset 'label '*)
  (c-set-offset 'case-label '*)
  (c-set-offset 'access-label '/)
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (setq indent-tabs-mode nil))

(add-hook 'c++-mode-hook 'ddk-cc-style)

;; Matlab
(setq auto-mode-alist
      (cons '("\\.m$" . matlab-mode) auto-mode-alist))

