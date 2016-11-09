;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
;; Uncomment this to increase font size
;; (set-face-attribute 'default nil :height 140)
(load-theme 'tomorrow-night-bright t)
;;; Enable linum mode
;; (global-linum-mode t)
;;; Fixes shell prompt colors
(set-face-attribute 'comint-highlight-prompt nil
                    :inherit nil)
