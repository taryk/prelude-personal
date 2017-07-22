;; Perl requires locale to be set
(setenv "LANG" "en_US.UTF-8")

;; Set up Perlbrew
(prelude-require-packages '(perlbrew))
(require 'perlbrew)

(defconst perlbrew-init-file (expand-file-name "~/.perlbrew/init"))

(defun get-perlbrew-env-variable (perlbrew-env-variable)
  (with-temp-buffer
    (insert-file-contents perlbrew-init-file)
    (string-match (concat perlbrew-env-variable "=\"\\([^\"]+\\)\"")
                  (buffer-string))
    (match-string 1 (buffer-string))))

(customize-set-variable 'perlbrew-dir (get-perlbrew-env-variable "PERLBREW_ROOT"))

(perlbrew-switch (get-perlbrew-env-variable "PERLBREW_PERL"))

(defun custom-perl-settings ()
  (require 'perltidy)

  (setq cperl-auto-newline nil)
  (setq cperl-auto-newline-after-colon nil)
  (setq cperl-continued-statement-offset 0)
  (setq cperl-highlight-variables-indiscriminately t)
  (setq cperl-indent-level 4)
  (setq cperl-electric-linefeed nil)
  (setq cperl-electric-parens nil)
  (setq cperl-extra-newline-before-brace nil)
  (setq cperl-electric-keywords nil)
  (setq cperl-indent-parens-as-block t)
  (setq cperl-regexp-scan nil)

  ;; Configure cperl-mode
  (custom-set-faces
   '(cperl-array-face ((t (:foreground "green" :weight bold))))
   ;; '(cperl-hash-face ((t (:foreground "Red" :slant italic :weight bold))))
   '(cperl-hash-face ((t (:foreground "orange red" :weight bold))))))

(setq custom-cperl-mode-hook 'custom-perl-settings)

(add-hook 'cperl-mode-hook (lambda ()
                             (run-hooks 'custom-cperl-mode-hook)) t)
