;; EMACS init.el file

;; path to my customisation files
(add-to-list 'load-path "~/.emacs.d/")
;; path to vendor packages
(add-to-list 'load-path "~/.emacs.d/vendors")

;; nice theme, get more with M-x color-theme-select
(require 'color-theme)
;;(color-theme-initialize) ;; I don't understand why this is needed on some machines and not others!
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


;; Emacs is the mail editor in Mutt
(require 'post)
(add-to-list 'auto-mode-alist '("/mutt" . post-mode))
(add-hook 'post-mode-hook 'turn-on-flyspell)


; F3 to insert filename into minibuffer
; from http://stackoverflow.com/questions/455345/in-emacs-how-to-insert-file-name-in-shell-command
(define-key minibuffer-local-map [f3]
  (lambda() (interactive) (insert (buffer-file-name (nth 1 (buffer-list))))))



;; Rob's Customisations
(require 'rob-ac)
(require 'rob-php)
(require 'rob-css)
(require 'rob-lua)
(require 'rob-w3m)
(require 'rob-org)

;; Customisation I've "borrowed" from elsewhere
(require 'starter-kit-js)


;; recentf stuff
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

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


;; Twittering mode, if it takes my fancy
;; http://www.emacswiki.org/emacs/TwitteringMode
(add-to-list 'load-path "~/.emacs.d/vendors/twittering-mode")
(require 'twittering-mode)

