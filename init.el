;; Personal initialisation file

;; Save extra screen space by turning scroll bars off
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Set cursor and mouse-pointer colours
(set-cursor-color "red")

;; Enable linum-mode only in prog-mode
(add-hook 'prog-mode-hook 'linum-mode)

;; Disable an intrusive whitespace mode
(setq prelude-whitespace nil)
