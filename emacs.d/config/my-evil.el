
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
