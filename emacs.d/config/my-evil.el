
;; Load evil-leader before evil-mode
(use-package evil-leader
  :commands (evil-leader-mode global-evil-leader-mode)
  :ensure evil-leader
  :demand evil-leader
  :init
  (progn
    (global-evil-leader-mode t)
    (evil-leader/set-leader ",")))

;; Vim modal editing in Emacs
(use-package evil
 :ensure evil
 :config
 (progn
   (evil-mode 1)

   ;; Yank a line on Y
   (define-key evil-normal-state-map "\C-y" 'yank)
   (define-key evil-insert-state-map "\C-y" 'yank)
   (define-key evil-visual-state-map "\C-y" 'yank)

   ;; Save on :W
   (evil-ex-define-cmd "W" 'save-buffer)))

(provide 'my-evil)  
