;;; rob-php.el --- Rob's Customisations for PHP Mode
(require 'php-mode)
(require 'flymake)
(add-hook 'php-mode-hook (lambda() (flymake-mode 1)))
(define-key php-mode-map '[M-S-up] 'flymake-goto-prev-error)
(define-key php-mode-map '[M-S-down] 'flymake-goto-next-error)
(add-hook 'php-mode-user-hook 'turn-on-font-lock)

(provide 'rob-php)
;;; rob-php.el ends here