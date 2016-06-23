

(use-package clojure-mode
  :ensure clojure-mode)

(use-package cider
  :ensure cider
  :config
  (progn
    (setq nrepl-hide-special-buffers t)))

(provide 'my-clojure)
