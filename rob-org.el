;;; rob-org.el --- Rob's Customisations for Org Mode
;; see http://orgmode.org/manual/Activation.html and
;; http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(provide 'rob-org)
;;; rob-org.el ends here