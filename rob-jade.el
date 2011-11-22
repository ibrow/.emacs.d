;; Customisations for Jade Mode
(add-to-list 'load-path "~/.emacs.d/vendors/jade-mode")
(require 'sws-mode)
(require 'jade-mode)    
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . sws-mode))
(provide 'rob-jade)