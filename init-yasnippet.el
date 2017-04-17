(prelude-require-packages '(yasnippet))

(require 'yasnippet)

(add-to-list 'yas-snippet-dirs (expand-file-name "~/.emacs.d/personal/snippets"))

(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)
