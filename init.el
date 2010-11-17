;; EMACS init.el file

;; allow emacs to find my 
(add-to-list 'load-path "~/.emacs.d/vendors")

;; nice theme, get more with M-x color-theme-select
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(color-theme-calm-forest)
;; Font Size
(set-face-attribute 'default nil :height 100)


;; Indentation
(setq-default indent-tabs-mode nil)
(setq standard-indent 4)
(setq tab-width 4)
(setq c-default-style "k&r" c-basic-offset 4)


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