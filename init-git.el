;; Ability to set a custom date
(magit-define-popup-option 'magit-commit-popup
  ?D "Override the author date" "--date=" #'read-from-minibuffer)
