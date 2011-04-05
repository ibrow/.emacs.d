;;; rob-w3m.el --- Rob's Customisations for the W3M browser
;; Web Browsing with W3M
;; https://github.com/tankrim/emacs-w3m.git
(add-to-list 'load-path "~/.emacs.d/vendors/emacs-w3m")
(require 'w3m-load)

;; Set W3M to be default url handler
;; see http://www.emacswiki.org/emacs/WThreeMHintsAndTips
(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

;; optional keyboard short-cut
(global-set-key "\C-xm" 'browse-url-at-point)

(provide 'rob-w3m)
;;; rob-w3m.el ends here