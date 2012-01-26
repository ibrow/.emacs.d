;; EMACS init.el file

;;(require 'notmuch)

;; fonts
;;(set-default-font "-Misc-Fixed-Medium-R-Normal--10-100-75-75-C-60-ISO8859-1")
(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1");
(modify-frame-parameters nil '((wait-for-wm . nil)))

;; fix flyspell problem
;; http://stackoverflow.com/questions/1781762/enabling-flyspell-mode-gives-an-error
(setq flyspell-issue-welcome-flag nil)



;; path to my customisation files
(add-to-list 'load-path "~/.emacs.d/")
;; path to vendor packages
(add-to-list 'load-path "~/.emacs.d/vendors")

;; nice theme, get more with M-x color-theme-select
(require 'color-theme)
(color-theme-initialize) ;; I don't understand why this is needed on some machines and not others!
(setq color-theme-is-global t)
(color-theme-calm-forest)
;; Font Size
(set-face-attribute 'default nil :height 110)

;; Remove Gui
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Indentation, we use no tabs and 3 spaces
;(setq-default indent-tabs-mode nil)
(setq standard-indent 4)
(setq tab-width 4)
(setq c-default-style "k&r" c-basic-offset 4)


; disable backup
(setq backup-inhibited t)
; disable auto save
(setq auto-save-default nil)

; Magit
(require 'magit)

; tramp
;(require 'tramp)
;(setq tramp-default-method "ftp")

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

; too many buffers are called the same thing
; see
; http://emacs-fu.blogspot.com/2009/11/making-buffer-names-unique.html
(require 'uniquify) 
(setq 
  uniquify-buffer-name-style 'post-forward)


;; Rob's Customisations
(require 'rob-ac)
(require 'rob-php)
(require 'rob-css)
(require 'rob-lua)
(require 'rob-w3m)
(require 'rob-org)
(require 'rob-js)
(require 'rob-jade)
(require 'rob-recent)
(require 'rob-ibuffer)
(require 'rob-ido)
(require 'rob-twitter)


; coffeescript
(add-to-list 'load-path "~/.emacs.d/vendors/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))


; for scheme
;(require 'quack)
;(setq-default scheme-program-name "guile")

(defvar no-easy-keys-minor-mode-map (make-keymap) 
  "no-easy-keys-minor-mode keymap.")
(let ((f (lambda (m)
           `(lambda () (interactive) 
              (message (concat "No! use " ,m " instead."))))))
  (dolist (l '(("<left>" . "C-b") ("<right>" . "C-f") ("<up>" . "C-p")
               ("<down>" . "C-n")
               ("<C-left>" . "M-b") ("<C-right>" . "M-f") ("<C-up>" . "M-{")
               ("<C-down>" . "M-}")
               ("<M-left>" . "M-b") ("<M-right>" . "M-f") ("<M-up>" . "M-{")
               ("<M-down>" . "M-}")
               ("<delete>" . "C-d") ("<C-delete>" . "M-d")
               ("<M-delete>" . "M-d") ("<next>" . "C-v") ("<C-next>" . "M-x <")
               ("<prior>" . "M-v") ("<C-prior>" . "M-x >") 
               ("<home>" . "C-a") ("<C-home>" . "M->")
               ("<C-home>" . "M-<") ("<end>" . "C-e") ("<C-end>" . "M->")))
    (define-key no-easy-keys-minor-mode-map
      (read-kbd-macro (car l)) (funcall f (cdr l)))))
(define-minor-mode no-easy-keys-minor-mode
  "A minor mode that disables the arrow-keys, pg-up/down, delete
  and backspace."  t " no-easy-keys"
  'no-easy-keys-minor-mode-map :global t)
(no-easy-keys-minor-mode 1)