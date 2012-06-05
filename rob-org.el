;;; rob-org.el --- Rob's Customisations for Org Mode
;; see http://orgmode.org/manual/Activation.html and
;; http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html

(setq load-path (cons "~/.emacs.d/vendors/org-mode/lisp" load-path))
(setq load-path (cons "~/.emacs.d/vendors/org-mode/contrib/lisp" load-path))
;(add-to-list 'org-modules "org-habit")

(setq org-refile-targets (quote ((nil :maxlevel . 4)
                                 (org-agenda-files :maxlevel . 4))))

(defun gtd ()
   (interactive)
   (find-file "~/Dropbox/Org/_gtd.org")
 )

; http://stackoverflow.com/questions/8146313/emacs-auto-save-for-org-mode-only
;(add-hook 'org-mode-hook 'my-org-mode-autosave-settings)
;(defun my-org-mode-autosave-settings
;  ;;(auto-save-mode 1)   ; this is unecessary as it is on by default
;  (set (make-local-variable 'auto-save-visited-file-name) t)
;  (setq auto-save-interval 20)
;)

(setq org-directory "~/Dropbox/Org") 
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cn" 'org-capture)


;(require 'org-velocity)
;(setq org-velocity-bucket (concat org-directory "/notes.org"))
;(define-key global-map "\C-cn" 'org-velocity-read)

(provide 'rob-org)
;;; rob-org.el ends here