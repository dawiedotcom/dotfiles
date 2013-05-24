;(add-hook 'scheme-mode-hook '(lambda ()
;      (local-set-key (kbd "RET") 'newline-and-indent)))

;(autoload 'scheme-mode "scheme"
;  "Gotta scheme sometimes" t)
;(add-to-list 'auto-mode-alist '("\\.s\\(s\\|c[mh]\\)$" . scheme-mode))

;;; Always do syntax highlighting
;(global-font-lock-mode 1)
;
;;;; Also highlight parens
;(setq show-paren-delay 0
;      show-paren-style 'parenthesis)
;(show-paren-mode 1)

;;;; Setup packages

(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defvar packages
  '(clojure-mode
    clojure-test-mode
    nrepl
    evil
    quack))

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
      (package-install p))))

;;;; Setup evil

(add-to-list 'load-path "~/.emacs.d/elpa/evil-1.0.2")
(require 'evil)
(evil-mode 1)

(define-key evil-normal-state-map "\C-y" 'yank)
(define-key evil-insert-state-map "\C-y" 'yank)
(define-key evil-visual-state-map "\C-y" 'yank)

;;;; This is the binary name of my scheme implementation
;(setq scheme-program-name "scheme-repl")
(require 'quack)

;; Enable line numbers 
(global-linum-mode t)

;; Indent on return
(define-key global-map (kbd "RET") 'newline-and-indent)
