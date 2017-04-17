;;; FIXME: After https://github.com/yasuyk/helm-git-grep/issues/34 gets fixed,
;;; do the following:
;;; * get rid of the following lines:
(add-to-list 'load-path (expand-file-name "~/.emacs.d/personal/helm-git-grep"))
(require 'helm-git-grep)
;;; * $ git submodule deinit helm-git-grep
;;; * $ git rm helm-git-grep
;;; * $ rm -rf .git/modules/helm-git-grep
;;; * uncomment the following line:
;;; (prelude-require-packages '(helm-git-grep))
;;; 

(global-set-key (kbd "C-x C-g") 'helm-git-grep)
(global-set-key (kbd "C-c C-g") 'helm-git-grep-at-point)

;; Invoke `helm-git-grep' from other helm.
(eval-after-load 'helm
  '(define-key helm-map (kbd "C-x C-g") 'helm-git-grep-from-helm))
