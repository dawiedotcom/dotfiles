
;; Git mode in emacs
(use-package magit
  :ensure magit
  :config
  (progn
    (setq magit-last-seen-setup-instructions "1.4.0")

    ;; Set evil to normal state when switching to magit's modes
    (evil-set-initial-state 'magit-mode 'normal)
    (evil-set-initial-state 'magit-status-mode 'normal)
    (evil-set-initial-state 'magit-diff-mode 'normal)
    (evil-set-initial-state 'magit-log-mode 'normal)

    ;; Evil-like key bindings for magit-mode
    (evil-define-key 'normal magit-mode-map
      "j" 'magit-goto-next-section
      "k" 'magit-goto-previous-section
      (kbd "RET") 'magit-visit-item
      "q" 'magit-mode-quit-window)

    (evil-define-key 'normal magit-log-mode-map
      "j" 'magit-goto-next-section
      "k" 'magit-goto-previous-section)

    (evil-define-key 'normal magit-diff-mode-map
      "j" 'magit-goto-next-section
      "k" 'magit-goto-previous-section)))

(provide 'my-magit)
