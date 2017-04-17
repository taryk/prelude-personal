;; Personal initialisation file

;; Save extra screen space by turning scroll bars off
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Set cursor and mouse-pointer colours
(set-cursor-color "red")

;; Enable linum-mode only in prog-mode
(add-hook 'prog-mode-hook 'linum-mode)

;; Disable an intrusive whitespace mode
(setq prelude-whitespace nil)

;; Disable prelude's guru mode (warnings on arrow keys, etc)
(setq prelude-guru nil)

;; Convenient keys for resizing windows
(global-set-key (kbd "M-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-s-<down>") 'shrink-window)
(global-set-key (kbd "M-s-<up>") 'enlarge-window)
