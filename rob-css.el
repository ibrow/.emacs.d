;;; rob-css.el --- Rob's Customisations for CSS Mode
(require 'css-mode)
(autoload 'css-mode "css-mode")
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(add-to-list 'auto-mode-alist '("\\.less\\'" . css-mode))
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-indent-level '2)

; stop the really irritating auto-completion in this mode
; see
; http://stackoverflow.com/questions/4597536/emacs-auto-complete-mode-css-pain-illustrated
(define-key ac-complete-mode-map "\r" nil)

(provide 'rob-css)
;;; rob-css.el ends here