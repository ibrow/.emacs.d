;; Use iBuffer, and make it default
(require 'ibuffer) 
(global-set-key (kbd "C-x C-b") 'ibuffer)
;; keep the buffer list up-to-date
;; http://martinowen.net/blog/2010/02/tips-for-emacs-ibuffer.html
(add-hook 'ibuffer-mode-hook 
          '(lambda ()
             (ibuffer-auto-mode 1)
             (ibuffer-switch-to-saved-filter-groups "home")))

(provide 'rob-ibuffer)