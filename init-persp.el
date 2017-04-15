;; Enable perspective mode
(persp-mode)

(defmacro custom-persp (name &rest body)
  `(let ((initialize (not (gethash ,name perspectives-hash)))
         (current-perspective persp-curr))
     (persp-switch ,name)
     (when initialize ,@body)
     (setq persp-last current-perspective)))

(defun custom-persp/last ()
  (interactive)
  (persp-switch (persp-name persp-last)))

(defun custom-persp/ielm ()
  (interactive)
  (custom-persp "@ielm"
                (ielm)))

(defun custom-persp/notes ()
  (interactive)
  (custom-persp "@notes"
                (find-file "~/Documents/phrases.txt")))

;; Keybindings
(global-set-key (kbd "M-p l") 'custom-persp/last)
(global-set-key (kbd "M-p i") 'custom-persp/ielm)
(global-set-key (kbd "M-p n") 'custom-persp/notes)
