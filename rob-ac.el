;;; rob-ac.el --- Rob's Customisations for Auto Complete Mode
(add-to-list 'load-path "~/.emacs.d/vendors/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendors/auto-complete/dict")
(ac-config-default)
(global-auto-complete-mode t)
(define-key ac-complete-mode-map "\t" 'ac-expand)
(define-key ac-complete-mode-map "\r" 'ac-complete)
(define-key ac-complete-mode-map "\M-n" 'ac-next)
(define-key ac-complete-mode-map "\M-p" 'ac-previous)

(provide 'rob-ac)
;;; rob-ac.el ends here