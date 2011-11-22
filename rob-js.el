;;; starter-kit-js.el --- Some helpful Javascript helpers
;; see https://github.com/technomancy/emacs-starter-kit
;;
(autoload 'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))
(add-hook 'espresso-mode-hook 'moz-minor-mode)
(add-hook 'espresso-mode-hook 'esk-paredit-nonlisp)
(add-hook 'espresso-mode-hook 'run-coding-hook)
(setq espresso-indent-level 2)
(add-to-list 'ac-modes 'espresso-mode)

(provide 'rob-js)
;;; starter-kit-js.el ends here