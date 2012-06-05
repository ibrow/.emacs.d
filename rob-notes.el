;;; rob-notes - Customisation for easy note taking
;; Bind C-c n to capture (think C-c notes)

(require 'org-velocity)

(setq org-velocity-bucket (concat org-directory "/notes.org"))
(define-key global-map "\C-cv" 'org-velocity-read)

(provide 'rob-notes)