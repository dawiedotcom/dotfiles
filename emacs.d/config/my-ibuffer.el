
;; Remaping some ibuffer keybindings to play nicely with evil
;; Note: you have to (require 'my-ibuffer) after (require 'evil)
;; see
;;   http://nathantypanski.com/blog/2014-08-03-a-vim-like-emacs-config.html

(use-package ibuffer
 :commands ibuffer
 :ensure ibuffer
 :config
 (progn
   
   (eval-after-load 'ibuffer
     '(progn
        (evil-set-initial-state 'ibuffer-mode 'normal)
        (evil-define-key 'normal ibuffer-mode-map
          (kbd "0") 'digit-argument
          (kbd "1") 'digit-argument
          (kbd "2") 'digit-argument
          (kbd "3") 'digit-argument
          (kbd "4") 'digit-argument
          (kbd "5") 'digit-argument
          (kbd "6") 'digit-argument
          (kbd "7") 'digit-argument
          (kbd "8") 'digit-argument
          (kbd "9") 'digit-argument

          (kbd "j") 'evel-next-line
          (kbd "k") 'ibuffer-mark-for-delete

          (kbd "m") 'ibuffer-mark-forward
          (kbd "t") 'ibuffer-toggle-marks
          (kbd "u") 'ibuffer-unmark-forward
          (kbd "=") 'ibuffer-diff-with-file
          (kbd "J") 'ibuffer-jump-to-buffer
          (kbd "M-g") 'ibuffer-jump-to-buffer
          (kbd "M-s a C-s") 'ibuffer-do-isearch
          (kbd "M-s a M-C-s") 'ibuffer-do-isearch-regexp
          (kbd "DEL") 'ibuffer-unmark-backward
          (kbd "M-DEL") 'ibuffer-unmark-all
          (kbd "* *") 'ibuffer-unmark-all
          (kbd "* M") 'ibuffer-mark-by-mode
          (kbd "* m") 'ibuffer-mark-modified-buffers
          (kbd "* u") 'ibuffer-mark-unsaved-buffers
          (kbd "* s") 'ibuffer-mark-special-buffers
          (kbd "* r") 'ibuffer-mark-read-only-buffers
          (kbd "* /") 'ibuffer-mark-dired-buffers
          (kbd "* e") 'ibuffer-mark-dissociated-buffers
          (kbd "* h") 'ibuffer-mark-help-buffers
          (kbd "* z") 'ibuffer-mark-compressed-file-buffers
          (kbd ".") 'ibuffer-mark-old-buffers

          (kbd "d") 'ibuffer-mark-for-delete
          (kbd "C-d") 'ibuffer-mark-for-delete-backwards
          (kbd "x") 'ibuffer-do-kill-on-deletion-marks

          ;; immediate operations
          (kbd "n") 'ibuffer-forward-line
          (kbd "SPC") 'forward-line
          (kbd "p") 'ibuffer-backward-line
          (kbd "M-}") 'ibuffer-forward-next-marked
          (kbd "M-{") 'ibuffer-backwards-next-marked
          (kbd "l") 'ibuffer-redisplay
          (kbd "g") 'ibuffer-update
                                        ;"`" 'ibuffer-switch-format
                                        ;"-" 'ibuffer-add-to-tmp-hide
                                        ;"+" 'ibuffer-add-to-tmp-show
                                        ;"b" 'ibuffer-bury-buffer
          (kbd ",") 'ibuffer-toggle-sorting-mode
          (kbd "s i") 'ibuffer-invert-sorting
          (kbd "s a") 'ibuffer-do-sort-by-alphabetic
          (kbd "s v") 'ibuffer-do-sort-by-recency
          (kbd "s s") 'ibuffer-do-sort-by-size
          (kbd "s f") 'ibuffer-do-sort-by-filename/process
          (kbd "s m") 'ibuffer-do-sort-by-major-mode

          (kbd "/ m") 'ibuffer-filter-by-used-mode
          (kbd "/ M") 'ibuffer-filter-by-derived-mode
          (kbd "/ n") 'ibuffer-filter-by-name
          (kbd "/ c") 'ibuffer-filter-by-content
          (kbd "/ e") 'ibuffer-filter-by-predicate
          (kbd "/ f") 'ibuffer-filter-by-filename
          (kbd "/ >") 'ibuffer-filter-by-size-gt
          (kbd "/ <") 'ibuffer-filter-by-size-lt
          (kbd "/ r") 'ibuffer-switch-to-saved-filters
          (kbd "/ a") 'ibuffer-add-saved-filters
          (kbd "/ x") 'ibuffer-delete-saved-filters
          (kbd "/ d") 'ibuffer-decompose-filter
          (kbd "/ s") 'ibuffer-save-filters
          (kbd "/ p") 'ibuffer-pop-filter
          (kbd "/ !") 'ibuffer-negate-filter
          (kbd "/ t") 'ibuffer-exchange-filters
          (kbd "/ TAB") 'ibuffer-exchange-filters
          (kbd "/ o") 'ibuffer-or-filter
          (kbd "/ g") 'ibuffer-filters-to-filter-group
          (kbd "/ P") 'ibuffer-pop-filter-group
          (kbd "/ D") 'ibuffer-decompose-filter-group
          (kbd "/ /") 'ibuffer-filter-disable

          (kbd "M-n") 'ibuffer-forward-filter-group
          "\t" 'ibuffer-forward-filter-group
          (kbd "M-p") 'ibuffer-backward-filter-group
          [backtab] 'ibuffer-backward-filter-group
          (kbd "M-j") 'ibuffer-jump-to-filter-group
          (kbd "C-k") 'ibuffer-kill-line
          (kbd "C-y") 'ibuffer-yank
          (kbd "/ S") 'ibuffer-save-filter-groups
          (kbd "/ R") 'ibuffer-switch-to-saved-filter-groups
          (kbd "/ X") 'ibuffer-delete-saved-filter-groups
          (kbd "/ \\") 'ibuffer-clear-filter-groups

          (kbd "q") 'ibuffer-quit
          (kbd "h") 'describe-mode
          (kbd "?") 'describe-mode

          (kbd "% n") 'ibuffer-mark-by-name-regexp
          (kbd "% m") 'ibuffer-mark-by-mode-regexp
          (kbd "% f") 'ibuffer-mark-by-file-name-regexp

          (kbd "C-t") 'ibuffer-visit-tags-table

          (kbd "|") 'ibuffer-do-shell-command-pipe
          (kbd "!") 'ibuffer-do-shell-command-file
          (kbd "~") 'ibuffer-do-toggle-modified
          ;; marked operations
          (kbd "A") 'ibuffer-do-view
          (kbd "D") 'ibuffer-do-delete
          (kbd "E") 'ibuffer-do-eval
          (kbd "F") 'ibuffer-do-shell-command-file
          (kbd "I") 'ibuffer-do-query-replace-regexp
          (kbd "H") 'ibuffer-do-view-other-frame
          (kbd "N") 'ibuffer-do-shell-command-pipe-replace
          (kbd "M") 'ibuffer-do-toggle-modified
          (kbd "O") 'ibuffer-do-occur
          (kbd "P") 'ibuffer-do-print
          (kbd "Q") 'ibuffer-do-query-replace
                                        ;(kbd "R") 'ibuffer-do-rename-uniquely
          (kbd "S") 'ibuffer-do-save
          (kbd "T") 'ibuffer-do-toggle-read-only
          (kbd "U") 'ibuffer-do-replace-regexp
          (kbd "V") 'ibuffer-do-revert
          (kbd "W") 'ibuffer-do-view-and-eval
          (kbd "X") 'ibuffer-do-shell-command-pipe

          (kbd "k") 'ibuffer-do-kill-lines
          (kbd "w") 'ibuffer-copy-filename-as-kill

                                        ;(kbd "RET") 'ibuffer-visit-buffer
          (kbd "e") 'ibuffer-visit-buffer
          (kbd "f") 'ibuffer-visit-buffer
          (kbd "C-x C-f") 'ibuffer-find-file
          (kbd "o") 'ibuffer-visit-buffer-other-window
          (kbd "C-o") 'ibuffer-visit-buffer-other-window-noselect
          (kbd "M-o") 'ibuffer-visit-buffer-1-window
          (kbd "v") 'ibuffer-do-view
          (kbd "C-x v") 'ibuffer-do-view-horizontally
          (kbd "C-c C-a") 'ibuffer-auto-mode
                                        ;(kbd "C-x 4 RET") 'ibuffer-visit-buffer-other-window
                                        ;(kbd "C-x 5 RET") 'ibuffer-visit-buffer-other-frame
          )))))


(provide 'my-ibuffer)
