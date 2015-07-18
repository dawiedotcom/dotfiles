
;; Setup for all MATLAB related things

;; Install matlab-emacs
;;  matlab-emacs has to be downloaded from somewhere...

(use-package matlab-load
  :load-path "matlab-emacs"
  :commands matlab-shell
  :mode ("\\.m$" . matlab-mode)
  :init
  (progn
    (custom-set-variables
     '(matlab-shell-command-switches '("-nodesktop -nosplash")))))

(provide 'my-matlab)
