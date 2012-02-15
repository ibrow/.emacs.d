;;; rob-coffee - Coffee Script mode
(add-to-list 'load-path "~/.emacs.d/vendors/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(provide 'rob-coffee)