;;; rob-notes - Customisation for easy note taking
;; Bind C-c n to capture (think C-c notes)
(setq org-default-notes-file (concat org-directory "/Documents/Dropbox/Org/notes.org"))
     (define-key global-map "\C-cn" 'org-capture)

(provide 'rob-notes)