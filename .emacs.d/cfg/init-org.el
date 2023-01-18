;; indent mode, please no more stars
(setq org-startup-indented t)

;; some helpful shortcuts
(global-set-key (kbd "C-c t") #'org-todo-list)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; some capture templates...
(setq org-capture-templates
      '(("j" "Journal" entry (file+olp+datetree "~/Documents/notes/journal.org") "* %U\n%?")
	("t" "Todo" entry (file+headline "~/Documents/notes/journal.org" "Tasks") "* TODO %?")
	("p" "Protocol" entry (file+headline "~/Documents/notes/journal.org" "Inbox")
        "* TODO %? %i \n %a")
	("L" "Protocol Link" entry (file+headline "~/Documents/notes/journal.org" "Tasks")
        "* TODO %? %a \nCaptured On: %U")))


;; org-protocol
(server-start)
(require 'org-protocol)

(provide 'init-org.el)
