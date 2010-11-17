;; EMACS init.el file

;; allow emacs to find my 
(add-to-list 'load-path "~/.emacs.d/vendors")

;; nice theme, get more with M-x color-theme-select
(require 'color-theme)
;(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-calm-forest)
;; Font Size
(set-face-attribute 'default nil :height 120)

;; Remove Gui
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Indentation, we use no tabs and 3 spaces
(setq-default indent-tabs-mode nil)
(setq standard-indent 3)
(setq tab-width 3)
(setq c-default-style "k&r" c-basic-offset 3)


;; iSpell key bindings
;; I use emacs to write email drafts. I am rubbish at spelling
(global-set-key [f5] 'ispell-buffer)
(global-set-key [f6] 'ispell-word)

;; Use iBuffer, and make it default
(require 'ibuffer) 
(global-set-key (kbd "C-x C-b") 'ibuffer)
;; keep the buffer list up-to-date
;; http://martinowen.net/blog/2010/02/tips-for-emacs-ibuffer.html
(add-hook 'ibuffer-mode-hook 
          '(lambda ()
             (ibuffer-auto-mode 1)
             (ibuffer-switch-to-saved-filter-groups "home")))

;; Use IDO
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)


;; Auto Complete
(add-to-list 'load-path "~/.emacs.d/vendors/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendors/auto-complete/dict")
(ac-config-default)
(global-auto-complete-mode t)
(define-key ac-complete-mode-map "\t" 'ac-expand)
(define-key ac-complete-mode-map "\r" 'ac-complete)
(define-key ac-complete-mode-map "\M-n" 'ac-next)
(define-key ac-complete-mode-map "\M-p" 'ac-previous)

;; CSS
(autoload 'css-mode "css-mode")
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))
(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-indent-level '2)

;; JAVASCRIPT
(autoload 'espresso-mode "espresso" "Start espresso-mode" t)
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . espresso-mode))

;; PHP
(require 'php-mode)
(require 'flymake)
(add-hook 'php-mode-hook (lambda() (flymake-mode 1)))
(define-key php-mode-map '[M-S-up] 'flymake-goto-prev-error)
(define-key php-mode-map '[M-S-down] 'flymake-goto-next-error)
(add-hook 'php-mode-user-hook 'turn-on-font-lock)

;; LUA mode for editing Awesome Window Manager files
(require 'lua-mode)
(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'lua-mode-hook 'turn-on-font-lock)
(add-hook 'lua-mode-hook 'hs-minor-mode)

;; Twittering mode, if it takes my fancy
;; http://www.emacswiki.org/emacs/TwitteringMode
(add-to-list 'load-path "~/.emacs.d/vendors/twittering-mode")
(require 'twittering-mode)

;; Web Browsing with W3M
;; https://github.com/tankrim/emacs-w3m.git
(add-to-list 'load-path "~/.emacs.d/vendors/emacs-w3m")
(require 'w3m-load)

;(setq browse-url-browser-function 'w3m-browse-url)
;(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;;; optional keyboard short-cut
;(global-set-key "\C-xm" 'browse-url-at-point)