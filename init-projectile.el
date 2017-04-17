;;; Projectile
;;
;; Requirements:
;; $ brew install ctags ag
;;
;; Use Universal Ctags Team's ctags
(setq projectile-tags-command "/usr/local/bin/ctags -Re -f \"%s\" %s")

;; Use the silver searcher for searching files in a project
(prelude-require-packages '(ag))
