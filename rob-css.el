;;; rob-css.el --- Rob's Customisations for CSS Mode
(autoload 'css-mode "css-mode")
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-indent-level '2)

(provide 'rob-css)
;;; rob-css.el ends here