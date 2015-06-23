
;; <leader> keybindings

(evil-leader/set-key
 "," 'ibuffer
 ;; Magit shortcuts
 "gs" 'magit-status
 "gl" 'magit-log
 "gd" 'magit-diff
 ;; Toggle goto-address-mode
 "m" 'goto-address-mode)


(provide 'my-evil-leader-keys)
